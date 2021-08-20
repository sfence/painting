-- painting - in-game painting for minetest

local items =
{
	wood = "default:wood",
	stick = "default:stick",
	canvas_source = "default:paper",
}

if minetest.get_modpath("mcl_core") then
	items.wood = "mcl_core:wood"
	items.stick = "mcl_core:stick"
	items.canvas_source = "mcl_core:paper"
elseif minetest.get_modpath("hades_core") then
	items.wood = "group:wood"
	items.stick = "hades_core:stick"
	items.canvas_source = "hades_core:paper"
end

if minetest.get_modpath("clothing") then
	items.canvas_source = "clothing:fabric_white"
elseif minetest.get_modpath("hades_clothing") then
	items.canvas_source = "hades_clothing:fabric_white"
end

minetest.register_craft({
	output = 'painting:easel 1',
	recipe = {
		{ '', items.wood, '' },
		{ '', items.wood, '' },
		{ items.stick,'', items.stick },
	}})

minetest.register_craft({
	output = 'painting:canvas_16 1',
	recipe = {
		{ '', '', '' },
		{ '', '', '' },
		{ items.canvas_source, '', '' },
	}})

minetest.register_craft({
	output = 'painting:canvas_32 1',
	recipe = {
		{ '', '', '' },
		{ items.canvas_source, items.canvas_source, '' },
		{ items.canvas_source, items.canvas_source, '' },
	}})

minetest.register_craft({
	output = 'painting:canvas_64 1',
	recipe = {
		{ items.canvas_source, items.canvas_source, items.canvas_source },
		{ items.canvas_source, items.canvas_source, items.canvas_source },
		{ items.canvas_source, items.canvas_source, items.canvas_source },
	}})

