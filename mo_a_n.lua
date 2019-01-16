--	----	------- Territorial Nodes -------	----	--


--	---- New Time ----	--


--	-- Team A --	--

--	nTA Villager-Spawn	--
minetest.register_node("mobs_modern:ntac", {
	description = "moTA City-Spawner",
	tiles = {"moTA_dirt.png"},
	groups = {crumbly = 3, soil = 1, falling_node = 1, mota = 1},
	sounds = default.node_sound_dirt_defaults(),
})

--	nTA Soldier-Spawn	--
minetest.register_node("mobs_modern:ntas", {
	description = "nTA Soldier-Spawner",
	tiles = {"moTA_dirt.png"},
	groups = {crumbly = 3, soil = 1, falling_node = 1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("mobs_modern:ntas_with_grass", {
	description = "nTAs with Grass",
	tiles = {"moTA_grass.png", "moTA_dirt.png",
		{name = "moTA_dirt.png^moTA_grassS.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1, falling_node = 1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("mobs_modern:ntas_with_grass_footsteps", {
	description = "nTAs with Grass and Footsteps",
	tiles = {"moTA_grass.png^default_footprint.png", "moTA_dirt.png",
		{name = "moTA_dirt.png^moTA_grassS.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, not_in_creative_inventory = 1, falling_node = 1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("mobs_modern:ntas_with_dry_grass", {
	description = "nTAs with Dry Grass",
	tiles = {"moTA_dgrass.png",
		"moTA_dirt.png",
		{name = "moTA_dirt.png^moTA_dgrassS.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1, falling_node = 1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.4},
	}),
})

minetest.register_node("mobs_modern:ntas_with_snow", {
	description = "nTAs with Snow",
	tiles = {"moTA_snow.png", "moTA_dirt.png",
		{name = "moTA_dirt.png^moTA_snowS.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1, snowy = 1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_snow_footstep", gain = 0.15},
	}),
})

minetest.register_node("mobs_modern:ntas_with_rainforest_litter", {
	description = "nTAs with Rainforest Litter",
	tiles = {
		"moTA_rfl.png",
		"moTA_dirt.png",
		{name = "moTA_dirt.png^moTA_rflS.png",
			tileable_vertical = false}
	},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1, falling_node = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.4},
	}),
})

minetest.register_abm({
	label = "moa spread",
	nodenames = {"mobs_modern:ntas"},
	neighbors = {
		"air",
		"group:grass",
		"group:dry_grass",
		"default:snow",
	},
	interval = 6,
	chance = 50,
	catch_up = false,
	action = function(pos, node)
		-- Check for darkness: night, shadow or under a light-blocking node
		-- Returns if ignore above
		local above = {x = pos.x, y = pos.y + 1, z = pos.z}
		local besidel = {x = pos.x - 1, y = pos.y, z = pos.z}
		local besider = {x = pos.x + 1, y = pos.y, z = pos.z}
		local infront = {x = pos.x, y = pos.y, z = pos.z + 1}
		if (minetest.get_node_light(above) or 0) < 13 then
			return
		end

		-- Look for spreading dirt-type neighbours
		local p2 = minetest.find_node_near(pos, 1, "group:spreading_dirt_type")
		if p2 then
			local n3 = minetest.get_node(p2)
			minetest.set_node(pos, {name = n3.name})
			return
		end

		-- Else, any seeding nodes on top?
		local name = minetest.get_node(above).name
		-- Snow check is cheapest, so comes first
		if name == "default:snow" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_snow"})	-- snow	--
		-- Most likely case first
		elseif minetest.get_item_group(name, "grass") ~= 0 then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_grass"})	-- grass --

--		elseif minetest.get_item_group("default:dirt_with_grass") ~= 0 then
--			minetest.set_node(pos, {name = "mobs_modern:ntas_with_grass"})

		elseif minetest.get_item_group(name, "dry_grass") ~= 0 then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_dry_grass"})	-- dgrass --

--		elseif minetest.get_item_group(name, "default:dirt_with_grass") ~= 0 then
--			minetest.set_node(pos, {name = "mobs_modern:ntas_with_dry_grass"})

		elseif minetest.get_item_group(name, "rainforest_litter") ~= 0 then	-- rainforest	--
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_rainforest_litter"})

--		elseif minetest.get_item_group(name, "default:dirt_with_rainforest_litter") ~= 0 then
--			minetest.set_node(pos, {name = "mobs_modern:ntas_with_rainforest_litter"})

		elseif minetest.get_item_group(name, "dirt") ~= 0 then
			minetest.set_node(pos, {name = "mobs_modern:ntas"})
		end
		
		-- alsoElse, any seeding nodes on top?
		local name = minetest.get_node(besidel).name
		-- Snow check is cheapest, so comes first
		if name == "default:dirt_with_snow" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_snow"})
		-- Most likely case first
		elseif name == "default:dirt_with_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_grass"})
		elseif name == "default:dirt_with_dry_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_dry_grass"})
		end
		
		-- alsoooElse, any seeding nodes on top?
		local name = minetest.get_node(besider).name
		-- Snow check is cheapest, so comes first
		if name == "default:dirt_with_snow" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_snow"})
		-- Most likely case first
		elseif name == "default:dirt_with_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_grass"})
		elseif name == "default:dirt_with_dry_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_dry_grass"})
		end
		
		-- alsoooElse, any seeding nodes on top?
		local name = minetest.get_node(infront).name
		-- Snow check is cheapest, so comes first
		if name == "default:dirt_with_snow" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_snow"})
		-- Most likely case first
		elseif name == "default:dirt_with_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_grass"})
		elseif name == "default:dirt_with_dry_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_dry_grass"})
		end
	end
})

minetest.register_abm({
	label = "moag spread",
	nodenames = {"mobs_modern:ntas_with_grass"},
	neighbors = {
		"air",
		"group:grass",
		"group:dry_grass",
		"default:snow",
	},
	interval = 5,
	chance = 50,
	catch_up = false,
	action = function(pos, node)
		-- Check for darkness: night, shadow or under a light-blocking node
		-- Returns if ignore above
		local above = {x = pos.x, y = pos.y + 1, z = pos.z}
		local besidel = {x = pos.x - 1, y = pos.y, z = pos.z}
		local besider = {x = pos.x + 1, y = pos.y, z = pos.z}
		local infront = {x = pos.x, y = pos.y, z = pos.z + 1}
		if (minetest.get_node_light(above) or 0) < 13 then
			return
		end

		-- Look for spreading dirt-type neighbours
--		local p2 = minetest.find_node_near(pos, 1, "group:spreading_dirt_type")
--		if p2 then
--			local n3 = minetest.get_node(p2)
--			minetest.set_node(pos, {name = n3.name})
--			return
--		end

		-- Else, any seeding nodes on top?
		local name = minetest.get_node(above).name
		-- Snow check is cheapest, so comes first
		if name == "default:snow" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_snow"})	-- snow	--
		elseif name == "default:dirt_with_snow" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_snow"})	-- snow --


		elseif name == "default:grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_grass"})	-- grass --
			
		elseif name == "default:dirt_with_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_grass"})	-- grass --
			
		elseif minetest.get_item_group(name, "grass") ~= 0 then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_grass"})	-- grass --


		elseif name == "default:dry_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_dry_grass"})	-- dgrass --
		elseif name == "default:dirt_with_dry_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_dry_grass"})	-- dgrass --


		elseif name == "mobs_modern:ntcs" then
			minetest.set_node(pos, {name = "mobs_modern:ntas"})
		-- Most likely case first
		elseif minetest.get_item_group(name, "dirt") ~= 0 then
			minetest.set_node(pos, {name = "mobs_modern:ntas"})
		end
		
		-- alsoElse, any seeding nodes on top?
		local name = minetest.get_node(besidel).name
		-- Snow check is cheapest, so comes first
		if name == "default:dirt_with_snow" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_snow"})
		-- Most likely case first
		elseif name == "default:dirt_with_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_grass"})
		elseif name == "default:dirt_with_dry_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_dry_grass"})
		end
		
		-- alsoooElse, any seeding nodes on top?
		local name = minetest.get_node(besider).name
		-- Snow check is cheapest, so comes first
		if name == "default:dirt_with_snow" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_snow"})
		-- Most likely case first
		elseif name == "default:dirt_with_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_grass"})
		elseif name == "default:dirt_with_dry_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_dry_grass"})
		end
		
		-- alsoooElse, any seeding nodes on top?
		local name = minetest.get_node(infront).name
		-- Snow check is cheapest, so comes first
		if name == "default:dirt_with_snow" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_snow"})
		-- Most likely case first
		elseif name == "default:dirt_with_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_grass"})
		elseif name == "default:dirt_with_dry_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_dry_grass"})
		end
	end
})

minetest.register_abm({
	label = "moadg spread",
	nodenames = {"mobs_modern:ntas_with_dry_grass"},
	neighbors = {
		"air",
		"group:grass",
		"group:dry_grass",
		"default:snow",
	},
	interval = 5,
	chance = 50,
	catch_up = false,
	action = function(pos, node)
		-- Check for darkness: night, shadow or under a light-blocking node
		-- Returns if ignore above
		local above = {x = pos.x, y = pos.y + 1, z = pos.z}
		local besidel = {x = pos.x - 1, y = pos.y, z = pos.z}
		local besider = {x = pos.x + 1, y = pos.y, z = pos.z}
		local infront = {x = pos.x, y = pos.y, z = pos.z + 1}
		if (minetest.get_node_light(above) or 0) < 13 then
			return
		end

		-- Look for spreading dirt-type neighbours
		local p2 = minetest.find_node_near(pos, 1, "group:spreading_dirt_type")
		if p2 then
			local n3 = minetest.get_node(p2)
			minetest.set_node(pos, {name = n3.name})
			return
		end

		-- Else, any seeding nodes on top?
		local name = minetest.get_node(above).name
		-- Snow check is cheapest, so comes first
		if name == "default:snow" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_snow"})	-- snow	--
		elseif name == "default:dirt_with_snow" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_snow"})	-- snow --


		elseif name == "default:grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_grass"})	-- grass --
			
		elseif name == "default:dirt_with_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_grass"})	-- grass --
			
		elseif minetest.get_item_group(name, "grass") ~= 0 then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_grass"})	-- grass --


		elseif name == "default:dry_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_dry_grass"})	-- dgrass --
		elseif name == "default:dirt_with_dry_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_dry_grass"})	-- dgrass --


		elseif name == "mobs_modern:ntcs" then
			minetest.set_node(pos, {name = "mobs_modern:ntas"})
		-- Most likely case first
		elseif minetest.get_item_group(name, "dirt") ~= 0 then
			minetest.set_node(pos, {name = "mobs_modern:ntas"})
		end
		
		-- alsoElse, any seeding nodes on top?
		local name = minetest.get_node(besidel).name
		-- Snow check is cheapest, so comes first
		if name == "default:dirt_with_snow" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_snow"})
		-- Most likely case first
		elseif name == "default:dirt_with_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_grass"})
		elseif name == "default:dirt_with_dry_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_dry_grass"})
		end
		
		-- alsoooElse, any seeding nodes on top?
		local name = minetest.get_node(besider).name
		-- Snow check is cheapest, so comes first
		if name == "default:dirt_with_snow" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_snow"})
		-- Most likely case first
		elseif name == "default:dirt_with_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_grass"})
		elseif name == "default:dirt_with_dry_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_dry_grass"})
		end
		
		-- alsoooElse, any seeding nodes on top?
		local name = minetest.get_node(infront).name
		-- Snow check is cheapest, so comes first
		if name == "default:dirt_with_snow" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_snow"})
		-- Most likely case first
		elseif name == "default:dirt_with_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_grass"})
		elseif name == "default:dirt_with_dry_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntas_with_dry_grass"})
		end
	end
})


--	-- Team B --	--

--	nTB Villager-Spawn	--
minetest.register_node("mobs_modern:ntbc", {
	description = "moTB City-Spawner",
	tiles = {"moTB_dirt.png"},
	groups = {crumbly = 3, soil = 1, falling_node = 1, mota = 1},
	sounds = default.node_sound_dirt_defaults(),
})

--	nTB Soldier-Spawn	--
minetest.register_node("mobs_modern:ntbs", {
	description = "nTB Soldier-Spawner",
	tiles = {"moTB_dirt.png"},
	groups = {crumbly = 3, soil = 1, falling_node = 1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("mobs_modern:ntbs_with_grass", {
	description = "nTBs with Grass",
	tiles = {"moTB_grass.png", "moTB_dirt.png",
		{name = "moTB_dirt.png^moTB_grassS.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("mobs_modern:ntbs_with_grass_footsteps", {
	description = "nTBs with Grass and Footsteps",
	tiles = {"moTB_grass.png^default_footprint.png", "moTB_dirt.png",
		{name = "moTB_dirt.png^moTB_grassS.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, not_in_creative_inventory = 1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("mobs_modern:ntbs_with_dry_grass", {
	description = "nTBs with Dry Grass",
	tiles = {"moTB_dgrass.png",
		"moTB_dirt.png",
		{name = "moTB_dirt.png^moTB_dgrassS.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.4},
	}),
})

minetest.register_node("mobs_modern:ntbs_with_snow", {
	description = "nTBs with Snow",
	tiles = {"moTB_snow.png", "moTB_dirt.png",
		{name = "moTB_dirt.png^moTB_snowS.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1, snowy = 1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_snow_footstep", gain = 0.15},
	}),
})

minetest.register_node("mobs_modern:ntbs_with_rainforest_litter", {
	description = "nTBs with Rainforest Litter",
	tiles = {
		"moTB_rfl.png",
		"moTB_dirt.png",
		{name = "moTB_dirt.png^moTB_rflS.png",
			tileable_vertical = false}
	},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.4},
	}),
})

minetest.register_abm({
	label = "mob spread",
	nodenames = {"mobs_modern:ntbs"},
	neighbors = {
		"air",
		"group:grass",
		"group:dry_grass",
		"default:snow",
	},
	interval = 6,
	chance = 50,
	catch_up = false,
	action = function(pos, node)
		-- Check for darkness: night, shadow or under a light-blocking node
		-- Returns if ignore above
		local above = {x = pos.x, y = pos.y + 1, z = pos.z}
		if (minetest.get_node_light(above) or 0) < 13 then
			return
		end

		-- Look for spreading dirt-type neighbours
		local p2 = minetest.find_node_near(pos, 1, "group:spreading_dirt_type")
		if p2 then
			local n3 = minetest.get_node(p2)
			minetest.set_node(pos, {name = n3.name})
			return
		end

		-- Else, any seeding nodes on top?
		local name = minetest.get_node(above).name
		-- Snow check is cheapest, so comes first
		if name == "default:snow" then
			minetest.set_node(pos, {name = "mobs_modern:ntbs_with_snow"})
		elseif name == "mobs_modern:ntcs" then
			minetest.set_node(pos, {name = "mobs_modern:ntbs_with_snow"})
		-- Most likely case first
		elseif minetest.get_item_group(name, "grass") ~= 0 then
			minetest.set_node(pos, {name = "mobs_modern:ntbs_with_grass"})
		elseif minetest.get_item_group(name, "dry_grass") ~= 0 then
			minetest.set_node(pos, {name = "mobs_modern:ntbs_with_dry_grass"})
		end
	end
})


--	-- Team C --	--

--	nTC Villager-Spawn	--
minetest.register_node("mobs_modern:ntcc", {
	description = "moTC City-Spawner",
	tiles = {"moTC_dirt.png"},
	groups = {crumbly = 3, soil = 1, falling_node = 1, mota = 1},
	sounds = default.node_sound_dirt_defaults(),
})

--	nTC Soldier-Spawn	--
minetest.register_node("mobs_modern:ntcs", {
	description = "nTC Soldier-Spawner",
	tiles = {"moTC_dirt.png"},
	groups = {crumbly = 3, soil = 1, falling_node = 1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("mobs_modern:ntcs_with_grass", {
	description = "nTCs with Grass",
	tiles = {"moTC_grass.png", "moTC_dirt.png",
		{name = "moTC_dirt.png^moTC_grassS.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
--	after_place_node = function replace_node( pos, node )
--		local p = self.object:get_pos()

--			p.x = p.x + 1,
--			p.y = p.y,
--			p.z = p.z,

--		pos = p
--      node = "mobs_modern:ntcs_with_grass"
--		node.param2 = 0  -- set the rotation to zero
--      minetest.swap_node( pos, node )
--	end,
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("mobs_modern:ntcs_with_grass_footsteps", {
	description = "nTCs with Grass and Footsteps",
	tiles = {"moTC_grass.png^default_footprint.png", "moTC_dirt.png",
		{name = "moTC_dirt.png^moTC_grassS.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, not_in_creative_inventory = 1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("mobs_modern:ntcs_with_dry_grass", {
	description = "nTCs with Dry Grass",
	tiles = {"moTC_dgrass.png",
		"moTC_dirt.png",
		{name = "moTC_dirt.png^moTC_dgrassS.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.4},
	}),
})

minetest.register_node("mobs_modern:ntcs_with_snow", {
	description = "nTCs with Snow",
	tiles = {"moTC_snow.png", "moTC_dirt.png",
		{name = "moTC_dirt.png^moTC_snowS.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1, snowy = 1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_snow_footstep", gain = 0.15},
	}),
})

minetest.register_node("mobs_modern:ntcs_with_rainforest_litter", {
	description = "nTCs with Rainforest Litter",
	tiles = {
		"default_rfl.png",
		"default_dirt.png",
		{name = "moTC_dirt.png^moTC_rflS.png",
			tileable_vertical = false}
	},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.4},
	}),
})

minetest.register_abm({
	label = "moc spread",
	nodenames = {"mobs_modern:ntcs"},
	neighbors = {
		"air",
		"group:grass",
		"group:dry_grass",
		"default:snow",
	},
	interval = 6,
	chance = 50,
	catch_up = false,
	action = function(pos, node)
		-- Check for darkness: night, shadow or under a light-blocking node
		-- Returns if ignore above
		local above = {x = pos.x, y = pos.y + 1, z = pos.z}
		if (minetest.get_node_light(above) or 0) < 13 then
			return
		end

		-- Look for spreading dirt-type neighbours
		local p2 = minetest.find_node_near(pos, 1, "group:spreading_dirt_type")
		if p2 then
			local n3 = minetest.get_node(p2)
			minetest.set_node(pos, {name = n3.name})
			return
		end

		-- Else, any seeding nodes on top?
		local name = minetest.get_node(above).name
		-- Snow check is cheapest, so comes first
		if name == "default:snow" then
			minetest.set_node(pos, {name = "mobs_modern:ntcs_with_snow"})
		-- Most likely case first
		elseif minetest.get_item_group(name, "grass") ~= 0 then
			minetest.set_node(pos, {name = "mobs_modern:ntcs_with_grass"})
		elseif minetest.get_item_group(name, "dry_grass") ~= 0 then
			minetest.set_node(pos, {name = "mobs_modern:ntcs_with_dry_grass"})
		end
	end
})


--	-- Team D --	--

--	nTD Villager-Spawn	--
minetest.register_node("mobs_modern:ntdc", {
	description = "moTD City-Spawner",
	tiles = {"moTD_dirt.png"},
	groups = {crumbly = 3, soil = 1, falling_node = 1, mota = 1},
	sounds = default.node_sound_dirt_defaults(),
})

--	nTD Soldier-Spawn	--
minetest.register_node("mobs_modern:ntds", {
	description = "nTD Soldier-Spawner",
	tiles = {"moTD_grass.png", "moTD_dirt.png",
		{name = "moTD_dirt.png^moTD_grassS.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, falling_node = 1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("mobs_modern:ntds_with_grass", {
	description = "nTDs with Grass",
	tiles = {"moTD_grass.png", "moTD_dirt.png",
		{name = "moTD_dirt.png^moTD_grassS.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("mobs_modern:ntds_with_grass_footsteps", {
	description = "nTDs with Grass and Footsteps",
	tiles = {"moTD_grass.png^default_footprint.png", "moTD_dirt.png",
		{name = "moTD_dirt.png^moTD_grassS.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, not_in_creative_inventory = 1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("mobs_modern:ntds_with_dry_grass", {
	description = "nTDs with Dry Grass",
	tiles = {"moTD_dgrass.png",
		"moTD_dirt.png",
		{name = "moTD_dirt.png^moTD_dgrassS.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.4},
	}),
})

minetest.register_node("mobs_modern:ntds_with_snow", {
	description = "nTDs with Snow",
	tiles = {"moTD_snow.png", "moTD_dirt.png",
		{name = "moTD_dirt.png^moTD_snowS.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1, snowy = 1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_snow_footstep", gain = 0.15},
	}),
})

minetest.register_node("mobs_modern:ntds_with_rainforest_litter", {
	description = "nTDs with Rainforest Litter",
	tiles = {
		"moTD_rfl.png",
		"moTD_dirt.png",
		{name = "moTD_dirt.png^moTD_rflS.png",
			tileable_vertical = false}
	},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.4},
	}),
})

minetest.register_abm({
	label = "mod spread",
	nodenames = {"mobs_modern:ntds"},
	neighbors = {
		"air",
		"group:grass",
		"group:dry_grass",
		"default:snow",
	},
	interval = 6,
	chance = 50,
	catch_up = false,
	action = function(pos, node)
		-- Check for darkness: night, shadow or under a light-blocking node
		-- Returns if ignore above
		local above = {x = pos.x, y = pos.y + 1, z = pos.z}
		local besidel = {x = pos.x - 1, y = pos.y, z = pos.z}
		local besider = {x = pos.x + 1, y = pos.y, z = pos.z}
		if (minetest.get_node_light(above) or 0) < 13 then
			return
		end

		-- Look for spreading dirt-type neighbours
		local p2 = minetest.find_node_near(pos, 1, "group:spreading_dirt_type")
		if p2 then
			local n3 = minetest.get_node(p2)
			minetest.set_node(pos, {name = n3.name})
			return
		end

		-- Else, any seeding nodes on top?
		local name = minetest.get_node(above).name
		-- Snow check is cheapest, so comes first
		if name == "default:snow" then
			minetest.set_node(pos, {name = "mobs_modern:ntds_with_snow"})
		-- Most likely case first
		elseif minetest.get_item_group(name, "grass") ~= 0 then
			minetest.set_node(pos, {name = "mobs_modern:ntds_with_grass"})
		elseif minetest.get_item_group(name, "ntas_with_grass") ~= 0 then
			minetest.set_node(pos, {name = "mobs_modern:ntds_with_grass"})
		elseif minetest.get_item_group(name, "dry_grass") ~= 0 then
			minetest.set_node(pos, {name = "mobs_modern:ntds_with_dry_grass"})
		elseif minetest.get_item_group(name, "ntas_with_dry_grass") ~= 0 then
			minetest.set_node(pos, {name = "mobs_modern:ntds_with_dry_grass"})
		end
		
		-- alsoElse, any seeding nodes on top?
		local name = minetest.get_node(besidel).name
		-- Snow check is cheapest, so comes first
		if name == "default:dirt_with_snow" then
			minetest.set_node(pos, {name = "mobs_modern:ntds_with_snow"})
		-- Most likely case first
		elseif name == "default:dirt_with_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntds_with_grass"})
		elseif name == "default:dirt_with_dry_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntds_with_dry_grass"})
		end
		
		-- alsoooElse, any seeding nodes on top?
		local name = minetest.get_node(besider).name
		-- Snow check is cheapest, so comes first
		if name == "default:dirt_with_snow" then
			minetest.set_node(pos, {name = "mobs_modern:ntds_with_snow"})
		-- Most likely case first
		elseif name == "default:dirt_with_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntds_with_grass"})
		elseif name == "default:dirt_with_dry_grass" then
			minetest.set_node(pos, {name = "mobs_modern:ntds_with_dry_grass"})
		end
	end
})


--	nTE Soldier-Spawn	--
minetest.register_node("mobs_modern:ntes", {
	description = "nTE Soldier-Spawner",
	tiles = {"default_dirt.png"},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1, falling_node = 1},
	sounds = default.node_sound_dirt_defaults(),
})

--	nTF Soldier-Spawn	--
minetest.register_node("mobs_modern:ntfs", {
	description = "nTF Soldier-Spawner",
	tiles = {"me_dirt.png"},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1, falling_node = 1},
	sounds = default.node_sound_dirt_defaults(),
})

--	nTT Soldier-Spawn	--
--	minetest.register_node("mobs_modern:ntts", {
--		description = "Terrorist-Spawner",
--		tiles = {"me_dirt.png"},
--		groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1, falling_node = 1},
--		sounds = default.node_sound_dirt_defaults(),
--	})