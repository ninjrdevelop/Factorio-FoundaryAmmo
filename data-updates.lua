data:extend({
	{
		type = "recipe",
		name = "foundry-magazine-yellow",
		icon = "__ninjrs-foundry-ammo__/graphics/casting-yellow.png",
		category = "metallurgy",
		subgroup = "vulcanus-processes",
		order = "b[casting]-z[casting-ammo-a]",
		auto_recycle = false,
		enabled = true,
		ingredients =
		{
			{ type = "fluid", name = "molten-iron",    amount = 30 },
		},
		energy_required = 1,
		results =
		{
			{ type = "item",  name = "firearm-magazine",       amount = 1 },
		},
		allow_productivity = true
	},
	{
		type = "recipe",
		name = "foundry-magazine-red",
		icon = "__ninjrs-foundry-ammo__/graphics/casting-red.png",
		category = "metallurgy",
		subgroup = "vulcanus-processes",
		order = "b[casting]-z[casting-ammo-b]",
		auto_recycle = false,
		enabled = true,
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
		allow_productivity = true
	},
})
