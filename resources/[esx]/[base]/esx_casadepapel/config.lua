Config = {}
Config.Locale = 'fr'
Config.NumberOfCopsRequired = 7

Banks = {
	['Casa'] = {
		position = vector3(3589.88, 3683.94, 27.62),
		reward = math.random(25000, 50000),
		nameofbank = "Maison de fabrication des billet",
		lastrobbed = 0
	},
	['PrincipalBank'] = {
		position = vector3(265.447, 214.128, 101.6833),
		reward = math.random(75000, 100000),
		nameofbank = "Never Life Principal Bank",
		lastrobbed = 0
	},
	['FleecaBank'] = {
		position = vector3(-2957.49, 480.72, 15.38),
		reward = math.random(15000, 25000),
		nameofbank = "Fleeca Bank",
		lastrobbed = 0
	},
	['PaletoBank'] = {
		position = vector3(-103.86, 6477.80, 31.63),
		reward = math.random(15000, 27000),
		nameofbank = "Paleto Bank",
		lastrobbed = 0
	}
}