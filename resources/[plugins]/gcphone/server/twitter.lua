function TwitterGetTweets(accountId, cb)
	if accountId == nil then
		MySQL.Async.fetchAll([===[
			SELECT twitter_tweets.*,
				twitter_accounts.username as author,
				twitter_accounts.avatar_url as authorIcon
			FROM twitter_tweets
				LEFT JOIN twitter_accounts
				ON twitter_tweets.authorId = twitter_accounts.id
			ORDER BY time DESC LIMIT 130
		]===], {}, cb)
	else
		MySQL.Async.fetchAll([===[
			SELECT twitter_tweets.*,
				twitter_accounts.username as author,
				twitter_accounts.avatar_url as authorIcon,
				twitter_likes.id AS isLikes
			FROM twitter_tweets
				LEFT JOIN twitter_accounts
					ON twitter_tweets.authorId = twitter_accounts.id
				LEFT JOIN twitter_likes 
					ON twitter_tweets.id = twitter_likes.tweetId AND twitter_likes.authorId = @accountId
			ORDER BY time DESC LIMIT 130
		]===], { ['@accountId'] = accountId }, cb)
	end
end

function TwitterGetFavotireTweets(accountId, cb)
	if accountId == nil then
		MySQL.Async.fetchAll([===[
			SELECT twitter_tweets.*,
				twitter_accounts.username as author,
				twitter_accounts.avatar_url as authorIcon
			FROM twitter_tweets
				LEFT JOIN twitter_accounts
					ON twitter_tweets.authorId = twitter_accounts.id
			WHERE twitter_tweets.TIME > CURRENT_TIMESTAMP() - INTERVAL '15' DAY
			ORDER BY likes DESC, TIME DESC LIMIT 30
		]===], {}, cb)
	else
		MySQL.Async.fetchAll([===[
			SELECT twitter_tweets.*,
				twitter_accounts.username as author,
				twitter_accounts.avatar_url as authorIcon,
				twitter_likes.id AS isLikes
			FROM twitter_tweets
				LEFT JOIN twitter_accounts
					ON twitter_tweets.authorId = twitter_accounts.id
				LEFT JOIN twitter_likes 
					ON twitter_tweets.id = twitter_likes.tweetId AND twitter_likes.authorId = @accountId
			WHERE twitter_tweets.TIME > CURRENT_TIMESTAMP() - INTERVAL '15' DAY
			ORDER BY likes DESC, TIME DESC LIMIT 30
		]===], { ['@accountId'] = accountId }, cb)
	end
end

function getUser(username, password, cb)
	MySQL.Async.fetchAll("SELECT id, username as author, avatar_url as authorIcon FROM twitter_accounts WHERE twitter_accounts.username = @username AND twitter_accounts.password = @password", {
		['@username'] = username,
		['@password'] = password
	}, function(data)
		cb(data[1])
	end)
end

function TwitterPostTweet(username, password, message, sourcePlayer, realUser, cb)
	TriggerEvent("ratelimit", source, "TwitterPostTweet")
	getUser(username, password, function(user)
		if user == nil then
			if sourcePlayer ~= nil then
				TwitterShowError(sourcePlayer, 'Twitter Info', 'APP_TWITTER_NOTIF_LOGIN_ERROR')
			end

			return
		end

		MySQL.Async.execute("INSERT INTO twitter_tweets (`authorId`, `message`, `realUser`) VALUES(@authorId, @message, @realUser);", {
			['@authorId'] = user.id,
			['@message'] = message,
			['@realUser'] = realUser
		}, function(id)
			MySQL.Async.fetchAll('SELECT * from twitter_tweets WHERE id = @id', {
				['@id'] = id
			}, function(tweets)
				tweet = tweets[1]
				tweet['author'] = user.author
				tweet['authorIcon'] = user.authorIcon
				TriggerClientEvent('::{korioz#0110}::gcPhone:twitter_newTweets', -1, tweet)
				TriggerEvent('::{korioz#0110}::gcPhone:twitter_newTweets', tweet)
			end)
		end)
	end)
end

function TwitterToogleLike(username, password, tweetId, sourcePlayer)
	TriggerEvent("ratelimit", source, "TwitterToogleLike")
	getUser(username, password, function(user)
		if user == nil then
			if sourcePlayer ~= nil then
				TwitterShowError(sourcePlayer, 'Twitter Info', 'APP_TWITTER_NOTIF_LOGIN_ERROR')
			end

			return
		end

		MySQL.Async.fetchAll('SELECT * FROM twitter_tweets WHERE id = @id', {
			['@id'] = tweetId
		}, function(tweets)
			if tweets[1] == nil then
				return
			end

			local tweet = tweets[1]

			MySQL.Async.fetchAll('SELECT * FROM twitter_likes WHERE authorId = @authorId AND tweetId = @tweetId', {
				['authorId'] = user.id,
				['tweetId'] = tweetId
			}, function(row)
				if row[1] == nil then
					MySQL.Async.execute('INSERT INTO twitter_likes (`authorId`, `tweetId`) VALUES(@authorId, @tweetId)', {
						['authorId'] = user.id,
						['tweetId'] = tweetId
					}, function(newrow)
						MySQL.Async.execute('UPDATE `twitter_tweets` SET `likes`= likes + 1 WHERE id = @id', {
							['@id'] = tweet.id
						}, function ()
							TriggerClientEvent('::{korioz#0110}::gcPhone:twitter_updateTweetLikes', -1, tweet.id, tweet.likes + 1)
							TriggerClientEvent('::{korioz#0110}::gcPhone:twitter_setTweetLikes', sourcePlayer, tweet.id, true)
							TriggerEvent('::{korioz#0110}::gcPhone:twitter_updateTweetLikes', tweet.id, tweet.likes + 1)
						end)
					end)
				else
					MySQL.Async.execute('DELETE FROM twitter_likes WHERE id = @id', {
						['@id'] = row[1].id,
					}, function(newrow)
						MySQL.Async.execute('UPDATE `twitter_tweets` SET `likes`= likes - 1 WHERE id = @id', {
							['@id'] = tweet.id
						}, function ()
							TriggerClientEvent('::{korioz#0110}::gcPhone:twitter_updateTweetLikes', -1, tweet.id, tweet.likes - 1)
							TriggerClientEvent('::{korioz#0110}::gcPhone:twitter_setTweetLikes', sourcePlayer, tweet.id, false)
							TriggerEvent('::{korioz#0110}::gcPhone:twitter_updateTweetLikes', tweet.id, tweet.likes - 1)
						end)
					end)
				end
			end)
		end)
	end)
end

function TwitterCreateAccount(username, password, avatarUrl, cb)
	MySQL.Async.execute('INSERT IGNORE INTO twitter_accounts (`username`, `password`, `avatar_url`) VALUES (@username, @password, @avatarUrl)', {
		['username'] = username,
		['password'] = password,
		['avatarUrl'] = avatarUrl
	}, cb)
end

function TwitterShowError(sourcePlayer, title, message)
	TriggerClientEvent('::{korioz#0110}::gcPhone:twitter_showError', sourcePlayer, message)
end

function TwitterShowSuccess(sourcePlayer, title, message)
	TriggerClientEvent('::{korioz#0110}::gcPhone:twitter_showSuccess', sourcePlayer, title, message)
end

RegisterServerEvent('::{korioz#0110}::gcPhone:twitter_login')
AddEventHandler('::{korioz#0110}::gcPhone:twitter_login', function(username, password)
	TriggerEvent("ratelimit", source, "::{korioz#0110}::gcPhone:twitter_login")

	local sourcePlayer = tonumber(source)
	getUser(username, password, function(user)
		if user == nil then
			TwitterShowError(sourcePlayer, 'Twitter Info', 'APP_TWITTER_NOTIF_LOGIN_ERROR')
		else
			TwitterShowSuccess(sourcePlayer, 'Twitter Info', 'APP_TWITTER_NOTIF_LOGIN_SUCCESS')
			TriggerClientEvent('::{korioz#0110}::gcPhone:twitter_setAccount', sourcePlayer, username, password, user.authorIcon)
		end
	end)
end)

RegisterServerEvent('::{korioz#0110}::gcPhone:twitter_changePassword')
AddEventHandler('::{korioz#0110}::gcPhone:twitter_changePassword', function(username, password, newPassword)
	TriggerEvent("ratelimit", source, "::{korioz#0110}::gcPhone:twitter_changePassword")

	local sourcePlayer = tonumber(source)
	getUser(username, password, function(user)
		if user == nil then
			TwitterShowError(sourcePlayer, 'Twitter Info', 'APP_TWITTER_NOTIF_NEW_PASSWORD_ERROR')
		else
			MySQL.Async.execute("UPDATE `twitter_accounts` SET `password`= @newPassword WHERE twitter_accounts.username = @username AND twitter_accounts.password = @password", {
				['@username'] = username,
				['@password'] = password,
				['@newPassword'] = newPassword
			}, function(result)
				if (result == 1) then
					TriggerClientEvent('::{korioz#0110}::gcPhone:twitter_setAccount', sourcePlayer, username, newPassword, user.authorIcon)
					TwitterShowSuccess(sourcePlayer, 'Twitter Info', 'APP_TWITTER_NOTIF_NEW_PASSWORD_SUCCESS')
				else
					TwitterShowError(sourcePlayer, 'Twitter Info', 'APP_TWITTER_NOTIF_NEW_PASSWORD_ERROR')
				end
			end)
		end
	end)
end)

RegisterServerEvent('::{korioz#0110}::gcPhone:twitter_createAccount')
AddEventHandler('::{korioz#0110}::gcPhone:twitter_createAccount', function(username, password, avatarUrl)
	TriggerEvent("ratelimit", source, "::{korioz#0110}::gcPhone:twitter_createAccount")

	local sourcePlayer = tonumber(source)

	TwitterCreateAccount(username, password, avatarUrl, function(id)
		if id ~= 0 then
			TriggerClientEvent('::{korioz#0110}::gcPhone:twitter_setAccount', sourcePlayer, username, password, avatarUrl)
			TwitterShowSuccess(sourcePlayer, 'Twitter Info', 'APP_TWITTER_NOTIF_ACCOUNT_CREATE_SUCCESS')
		else
			TwitterShowError(sourcePlayer, 'Twitter Info', 'APP_TWITTER_NOTIF_ACCOUNT_CREATE_ERROR')
		end
	end)
end)

RegisterServerEvent('::{korioz#0110}::gcPhone:twitter_getTweets')
AddEventHandler('::{korioz#0110}::gcPhone:twitter_getTweets', function(username, password)
	TriggerEvent("ratelimit", source, "::{korioz#0110}::gcPhone:twitter_getTweets")
	local sourcePlayer = tonumber(source)
	if username ~= nil and username ~= "" and password ~= nil and password ~= "" then
		getUser(username, password, function(user)
			local accountId = user and user.id
			TwitterGetTweets(accountId, function(tweets)
				TriggerClientEvent('::{korioz#0110}::gcPhone:twitter_getTweets', sourcePlayer, tweets)
			end)
		end)
	else
		TwitterGetTweets(nil, function(tweets)
			TriggerClientEvent('::{korioz#0110}::gcPhone:twitter_getTweets', sourcePlayer, tweets)
		end)
	end
end)

RegisterServerEvent('::{korioz#0110}::gcPhone:twitter_getFavoriteTweets')
AddEventHandler('::{korioz#0110}::gcPhone:twitter_getFavoriteTweets', function(username, password)
	TriggerEvent("ratelimit", source, "::{korioz#0110}::gcPhone:twitter_getFavoriteTweets")

	local sourcePlayer = tonumber(source)
	if username ~= nil and username ~= "" and password ~= nil and password ~= "" then
		getUser(username, password, function(user)
			local accountId = user and user.id
			TwitterGetFavotireTweets(accountId, function(tweets)
				TriggerClientEvent('::{korioz#0110}::gcPhone:twitter_getFavoriteTweets', sourcePlayer, tweets)
			end)
		end)
	else
		TwitterGetFavotireTweets(nil, function(tweets)
			TriggerClientEvent('::{korioz#0110}::gcPhone:twitter_getFavoriteTweets', sourcePlayer, tweets)
		end)
	end
end)

RegisterServerEvent('::{korioz#0110}::gcPhone:twitter_postTweets')
AddEventHandler('::{korioz#0110}::gcPhone:twitter_postTweets', function(username, password, message)
	TriggerEvent("ratelimit", source, "::{korioz#0110}::gcPhone:twitter_postTweets")

	local sourcePlayer = tonumber(source)
	local srcIdentifier = ESX.GetIdentifierFromId(sourcePlayer)
	TwitterPostTweet(username, password, message, sourcePlayer, srcIdentifier)
end)

RegisterServerEvent('::{korioz#0110}::gcPhone:twitter_toogleLikeTweet')
AddEventHandler('::{korioz#0110}::gcPhone:twitter_toogleLikeTweet', function(username, password, tweetId)
	TriggerEvent("ratelimit", source, "::{korioz#0110}::gcPhone:twitter_toogleLikeTweet")

	local sourcePlayer = tonumber(source)
	TwitterToogleLike(username, password, tweetId, sourcePlayer)
end)

RegisterServerEvent('::{korioz#0110}::gcPhone:twitter_setAvatarUrl')
AddEventHandler('::{korioz#0110}::gcPhone:twitter_setAvatarUrl', function(username, password, avatarUrl)
	TriggerEvent("ratelimit", source, "::{korioz#0110}::gcPhone:twitter_setAvatarUrl")

	local sourcePlayer = tonumber(source)
	MySQL.Async.execute("UPDATE `twitter_accounts` SET `avatar_url`= @avatarUrl WHERE twitter_accounts.username = @username AND twitter_accounts.password = @password", {
		['@username'] = username,
		['@password'] = password,
		['@avatarUrl'] = avatarUrl
	}, function(result)
		if (result == 1) then
			TriggerClientEvent('::{korioz#0110}::gcPhone:twitter_setAccount', sourcePlayer, username, password, avatarUrl)
			TwitterShowSuccess(sourcePlayer, 'Twitter Info', 'APP_TWITTER_NOTIF_AVATAR_SUCCESS')
		else
			TwitterShowError(sourcePlayer, 'Twitter Info', 'APP_TWITTER_NOTIF_LOGIN_ERROR')
		end
	end)
end)

AddEventHandler('::{korioz#0110}::gcPhone:twitter_newTweets', function(tweet)

	local discord_webhook = GetConvar('discord_webhook', '')

	if discord_webhook == '' then
		return
	end

	local headers = {
		['Content-Type'] = 'application/json'
	}

	local data = {
		["username"] = tweet.author,
		["embeds"] = {{
			["thumbnail"] = {
				["url"] = tweet.authorIcon
			},
			["color"] = 1942002,
			["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ", tweet.time / 1000 )
		}}
	}

	local isHttp = string.sub(tweet.message, 0, 7) == 'http://' or string.sub(tweet.message, 0, 8) == 'https://'
	local ext = string.sub(tweet.message, -4)
	local isImg = ext == '.png' or ext == '.pjg' or ext == '.gif' or string.sub(tweet.message, -5) == '.jpeg'

	if (isHttp and isImg) and true then
		data['embeds'][1]['image'] = { ['url'] = tweet.message }
	else
		data['embeds'][1]['description'] = tweet.message
	end

	PerformHttpRequest(discord_webhook, function(err, text, headers) end, 'POST', json.encode(data), headers)
end)