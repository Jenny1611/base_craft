stairs = {}

-- Node will be called base_craft:<subname>_stair
function stairs.register_stair(subname, recipeitem, groups, images, description)
	core.register_node(":base_craft:" .. subname .. "_stair", {
		description = description.."\n"..
			"param2 = facedir rotation (0..23)",
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
	})
	stairs.register_inner_stair(subname, recipeitem, groups, images, description .. " (inner corner)")
	stairs.register_outer_stair(subname, recipeitem, groups, images, description .. " (outer corner)")
end

-- Node will be called base_craft:<subname>_inner_corner_stair
function stairs.register_inner_stair(subname, recipeitem, groups, images, description)
	core.register_node(":base_craft:" .. subname .. "_inner_corner_stair", {
		description = description.."\n"..
			"param2 = facedir rotation (0..23)",
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{0, 0, -0.5, -0.5, 0.5, 0.5}
			},
		},
	})
end

-- Node will be called base_craft:<subname>_outer_corner_stair
function stairs.register_outer_stair(subname, recipeitem, groups, images, description)
	core.register_node(":base_craft:" .. subname .. "_outer_corner_stair", {
		description = description.."\n"..
			"param2 = facedir rotation (0..23)",
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0, 0.5, 0.5}
			},
		},
	})
end

-- Node will be called base_craft:<subname>_slab
function stairs.register_slab(subname, recipeitem, groups, images, description)
	core.register_node(":base_craft:" .. subname .. "_slab", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		is_ground_content = false,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
	})
end

-- Nodes will be called base_craft:{stair,slab}_<subname>
function stairs.register_stair_and_slab(subname, recipeitem, groups, images, desc_stair, desc_slab)
	stairs.register_stair(subname, recipeitem, groups, images, desc_stair)
	stairs.register_slab(subname, recipeitem, groups, images, desc_slab)
end

local colors = {
    "black","blue","brown","darkgrey","green","grey","lightblue",
    "lightgreen","magenta","orange","pink","red","turquoise","violet",
    "white","yellow"
}

local function prettify(name)
    local s = name:gsub("_", " ")
    return (s:gsub("(%a)([%w']*)", function(a,b) return a:upper()..b:lower() end))
end

for _, c in ipairs(colors) do
    local subname = c .. "_concrete"
    local recipeitem = "base_craft:" .. subname
    local images = { "concrete_" .. c .. ".png" }
    local base_desc = prettify(subname)
    stairs.register_stair_and_slab(subname, recipeitem, {cracky=3}, images, base_desc .. " Stair", base_desc .. " Slab")
end
