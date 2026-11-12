-- Set to unlock our recipes when Foundries are unlocked
if data.raw['technology']['foundry'] then
	table.insert(
		data.raw['technology']['foundry'].effects,
		{type = "unlock-recipe", recipe = "foundry-magazine-yellow"}
	)
	table.insert(
		data.raw['technology']['foundry'].effects,
		{type = "unlock-recipe", recipe = "foundry-magazine-red"}
	)
	table.insert(
		data.raw['technology']['foundry'].effects,
		{type = "unlock-recipe", recipe = "foundry-railgun-ammo"}
	)
end

-- Set up our recipes
data:extend({
	{
		type = "recipe",
		name = "foundry-magazine-yellow",
		icon = "__ninjrs-foundry-ammo__/graphics/casting-yellow.png",
		categories = {"metallurgy"},
		subgroup = "vulcanus-processes",
		order = "b[casting]-z[casting-ammo-a]",
		auto_recycle = false,
		enabled = false,
		ingredients =
		{
			{ type = "fluid", name = "molten-iron",    amount = 30 },
		},
		energy_required = 1,
		results =
		{
			{ type = "item",  name = "firearm-magazine",       amount = 1 },
		},
		allow_productivity = true,
		hide_from_player_crafting = true
	},
	{
		type = "recipe",
		name = "foundry-magazine-red",
		icon = "__ninjrs-foundry-ammo__/graphics/casting-red.png",
		categories = {"metallurgy"},
		subgroup = "vulcanus-processes",
		order = "b[casting]-z[casting-ammo-b]",
		auto_recycle = false,
		enabled = false,
		ingredients =
		{
			{ type = "fluid", name = "molten-iron",    amount = 60 },
			{ type = "fluid", name = "molten-copper",    amount = 40 },
		},
		energy_required = 3,
		results =
		{
			{ type = "item",  name = "piercing-rounds-magazine",       amount = 1 },
		},
		allow_productivity = true,
		hide_from_player_crafting = true
	},
	{
		type = "recipe",
		name = "foundry-railgun-ammo",
		icon = "__ninjrs-foundry-ammo__/graphics/casting-railgun-ammo.png",
		categories = {"metallurgy"},
		subgroup = "vulcanus-processes",
		order = "b[casting]-z[casting-ammo-c]",
		auto_recycle = false,
		enabled = false,
		ingredients =
		{
			{ type = "fluid", name = "molten-iron",    amount = 300 },
			{ type = "fluid", name = "molten-copper",    amount = 30 },
			{ type = "item",  name = "explosives",       amount = 2 },
		},
		energy_required = 25,
		results =
		{
			{ type = "item",  name = "railgun-ammo",       amount = 1 },
		},
		allow_productivity = true,
		hide_from_player_crafting = true
	},
})
