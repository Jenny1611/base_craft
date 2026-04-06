-- Example: List all registered nodes containing "base_craft" in name
for name, def in pairs(core.registered_nodes) do
    if name:find("base_craft") then
        print("Found block: " .. name)
    end
end

stairs = {}

-- Node will be called myblocks:stair_<subname>
function stairs.register_stair(subname, recipeitem, groups, images, description)
	core.register_node(":myblocks:stair_" .. subname, {
		description = description.."\n"..
			"param2 = facedir rotation (0..23)",
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
	})
end

-- Node will be called myblocks:slab_<subname>
function stairs.register_slab(subname, recipeitem, groups, images, description)
	core.register_node(":myblocks:slab_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		is_ground_content = true,
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

-- Nodes will be called myblocks:{stair,slab}_<subname>
function stairs.register_stair_and_slab(subname, recipeitem, groups, images, desc_stair, desc_slab)
	stairs.register_stair(subname, recipeitem, groups, images, desc_stair)
	stairs.register_slab(subname, recipeitem, groups, images, desc_slab)
end

stairs.register_stair_and_slab("concrete_white", "myblocks:concrete_white",
    {cracky=3},
    {"concrete_white.png"},
    "White Concrete Stair",
    "White Concrete Slab")

stairs.register_stair_and_slab("concrete_black", "myblocks:concrete_black",
    {cracky=3},
    {"concrete_black.png"},
    "Black Concrete Stair",
    "Black Concrete Slab")
