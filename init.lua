stairs = {}

-- Node will be called base_craft:stair_<subname>
function stairs.register_stair(subname, recipeitem, groups, images, description)
	core.register_node(":base_craft:stair_" .. subname, {
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

-- Node will be called base_craft:slab_<subname>
function stairs.register_slab(subname, recipeitem, groups, images, description)
	core.register_node(":base_craft:slab_" .. subname, {
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

-- Nodes will be called base_craft:{stair,slab}_<subname>
function stairs.register_stair_and_slab(subname, recipeitem, groups, images, desc_stair, desc_slab)
	stairs.register_stair(subname, recipeitem, groups, images, desc_stair)
	stairs.register_slab(subname, recipeitem, groups, images, desc_slab)
end

stairs.register_stair_and_slab("concrete_black", "base_craft:concrete_black", {cracky=3}, {"concrete_black.png"}, "Black Concrete Stair", "Black Concrete Slab")

stairs.register_stair_and_slab("concrete_blue", "base_craft:concrete_blue", {cracky=3}, {"concrete_blue.png"}, "Blue Concrete Stair", "Blue Concrete Slab")

stairs.register_stair_and_slab("concrete_brown", "base_craft:concrete_brown", {cracky=3}, {"concrete_brown.png"}, "Blue Concrete Stair", "Blue Concrete Slab")

stairs.register_stair_and_slab("concrete_cyan", "base_craft:concrete_cyan", {cracky=3}, {"concrete_cyan.png"}, "Cyan Concrete Stair", "Cyan Concrete Slab")

stairs.register_stair_and_slab("concrete_dark_grey", "base_craft:concrete_dark_grey", {cracky=3}, {"concrete_dark_grey.png"}, "Dark Grey Concrete Stair", "Dark Grey Concrete Slab")

stairs.register_stair_and_slab("concrete_green", "base_craft:concrete_green", {cracky=3}, {"concrete_green.png"}, "Green Concrete Stair", "Green Concrete Slab")

stairs.register_stair_and_slab("concrete_grey", "base_craft:concrete_grey", {cracky=3}, {"concrete_grey.png"}, "Grey Concrete Stair", "Grey Concrete Slab")

stairs.register_stair_and_slab("concrete_lightblue", "base_craft:concrete_lightblue", {cracky=3}, {"concrete_lightblue.png"}, "Lightblue Concrete Stair", "Lightblue Concrete Slab")

stairs.register_stair_and_slab("concrete_lightgreen", "base_craft:concrete_lightgreen", {cracky=3}, {"concrete_lightgreen.png"}, "Lightgreen Concrete Stair", "Lightgreen Concrete Slab")

stairs.register_stair_and_slab("concrete_magenta", "base_craft:concrete_magenta", {cracky=3}, {"concrete_magenta.png"}, "Magenta Concrete Stair", "Magenta Concrete Slab")

stairs.register_stair_and_slab("concrete_orange", "base_craft:concrete_orange", {cracky=3}, {"concrete_orange.png"}, "Orange Concrete Stair", "Orange Concrete Slab")

stairs.register_stair_and_slab("concrete_pink", "base_craft:concrete_pink", {cracky=3}, {"concrete_pink.png"}, "Pink Concrete Stair", "Pink Concrete Slab")

stairs.register_stair_and_slab("concrete_red", "base_craft:concrete_red", {cracky=3}, {"concrete_red.png"}, "Red Concrete Stair", "Red Concrete Slab")

stairs.register_stair_and_slab("concrete_turquoise", "base_craft:concrete_turquoise", {cracky=3}, {"concrete_turquoise.png"}, "Turquoise Concrete Stair", "Turquoise Concrete Slab")

stairs.register_stair_and_slab("concrete_violet", "base_craft:concrete_violet", {cracky=3}, {"concrete_violet.png"}, "Violet Concrete Stair", "Violet Concrete Slab")

stairs.register_stair_and_slab("concrete_white", "base_craft:concrete_white", {cracky=3}, {"concrete_white.png"}, "White Concrete Stair", "White Concrete Slab")

stairs.register_stair_and_slab("concrete_yellow", "base_craft:concrete_yellow", {cracky=3}, {"concrete_yellow.png"}, "Yellow Concrete Stair", "Yellow Concrete Slab")