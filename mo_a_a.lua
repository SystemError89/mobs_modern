-- -------------------------------------------------------------------------------------------------------------
-- ----  ----  ----  ----  ----  ----  ----  ----  -- Weapons --  ----  ----  ----  ----  ----  ----  ----  ----
-- -------------------------------------------------------------------------------------------------------------

-- Nuke Flame

minetest.register_node("mobs_modern:nuke_flame", {
	drawtype = "firelike",
	tiles = {
		{
			name = "weapon_nuke_flame_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1
			},
		},
	},
	inventory_image = "weapon_nuke_flame.png",
	paramtype = "light",
	light_source = 8,
	walkable = false,
	buildable_to = true,
	sunlight_propagates = true,
	damage_per_second = 6,
	groups = {igniter = 2, dig_immediate = 3, radioactive=4, not_in_creative_inventory = 1},
	on_timer = function(pos)
		local f = minetest.find_node_near(pos, 1, {"group:flammable", "group:dirt"})
		if not f then
			minetest.remove_node(pos)
			return
		end
		-- Restart timer
		return true
	end,
	drop = "",

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(30, 60))
	end,
})


-- ---- Bullett ----

mobs:register_arrow("mobs_modern:bullet", {
	visual = "sprite",
	visual_size = {x=.1, y=.1},
	textures = {"bullet_45.png"},
	velocity = 32,
	drop = false,
	glow = 6,
	expire = 1.1,

	hit_player = function(self, player)
		player:punch(self.object, 1.0, {
		full_punch_interval=1.0,
		damage_groups = {fleshy=7},
		}, 0)
	end,

	hit_mob = function(self, player)
		player:punch(self.object, 1.0, {
		full_punch_interval=1.0,
		damage_groups = {fleshy=8},
		}, 0)
	end,

	hit_node = function(self, pos, node)
	end,
})

-- bullet throwing item

local bullet_GRAVITY=6
local bullet_VELOCITY=34

--	Shoot bullet
local mobs_shoot_bullet=function (item, player, pointed_thing)
	local playerpos=player:getpos()
	local obj=minetest.add_entity({x=playerpos.x,y=playerpos.y+1.6,z=playerpos.z}, "mobs_modern:bullet")
	local dir=player:get_look_dir()
	obj:get_luaentity().velocity = bullet_VELOCITY -- needed for api internal timing
	obj:setvelocity({x=dir.x*bullet_VELOCITY, y=dir.y*bullet_VELOCITY, z=dir.z*bullet_VELOCITY})
	obj:setacceleration({x=dir.x*-3, y=-bullet_GRAVITY, z=dir.z*-3})
	item:take_item()
	return item
end

-- bullet item
minetest.register_craftitem("mobs_modern:bullet", {
description = "Bullet 45",
	inventory_image = "bullet_45.png",
	on_use = function(item, player)
		if mobs_shoot_bullet(item, player, pointed_thing) then
			if not minetest.setting_getbool("creative_mode") then
				item:add_wear(65535/50)
			end
		end
		return item
	end,
})

-- recipe
minetest.register_craft({
	output = "mobs_modern:bullet 45",
	recipe = {
		{"", "default:steel_ingot", ""},
		{"default:steel_ingot", "", "default:steel_ingot"},
		{"", "default:steel_ingot", ""},
	}
})


--	-----	sniper bullet	-----

mobs:register_arrow("mobs_modern:snibul", {
	visual = "sprite",
	visual_size = {x=.5, y=.5},
	textures = {"mobs_shuriken.png"},
	velocity = 77,
	drop = false,
	glow = 4,
	expire = 0.1,

	hit_player = function(self, player)
		player:punch(self.object, 1.0, {
		full_punch_interval=1.0,
		damage_groups = {fleshy=15},
		}, 0)
	end,

	hit_mob = function(self, player)
		player:punch(self.object, 1.0, {
		full_punch_interval=1.0,
		damage_groups = {fleshy=20},
		}, 0)
	end,

	hit_node = function(self, pos, node)
	end,
})

-- BAZOOKA SHOT

mobs:register_arrow("mobs_modern:shot_bazooka", {
	visual = "sprite",
	visual_size = {x=.3, y=.3},
	textures = {"rocket.png"},
	velocity = 24,
	tail = 1,
	tail_texture = {"weapon_rocketflame.png"},
	tail_size = {x = 3, y = 3},
	glow = 10,
	expire = 0.5,
	

	hit_player = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 0.2,
			damage_groups = {fleshy = 35},
		}, nil)
		local pos = self.object:getpos()
		minetest.sound_play("explo", {pos = pos, gain = 5, max_hear_distance = 50,})
		mobs:explosion(pos, 1, 1, 1)
	end,

	hit_mob = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 0.2,
			damage_groups = {fleshy = 65},
		}, nil)
		local pos = self.object:getpos()
		minetest.sound_play("explo", {pos = pos, gain = 5, max_hear_distance = 50,})
		mobs:explosion(pos, 1, 1, 1)
	end,

	
	hit_node = function(self, pos, node)
		mobs:explosion(pos, 1, 1, 1)
		minetest.sound_play("explo", {pos = pos, gain = 5, max_hear_distance = 50,})
	end
})

-- BAZOOKA SHOT 2

mobs:register_arrow("mobs_modern:shot_bazooka2", {
	visual = "sprite",
	visual_size = {x=.4, y=.4},
	textures = {"rocket.png"},
	velocity = 35,
	tail = 1,
	tail_texture = {"weapon_rocketflame.png"},
	tail_size = {x = 3, y = 2},
	glow = 9,
	expire = 0.3,
	

	hit_player = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 0.2,
			damage_groups = {fleshy = 45},
		}, nil)
		local pos = self.object:getpos()
		minetest.sound_play("explo", {pos = pos, gain = 5, max_hear_distance = 50,})
		mobs:explosion(pos, 1, 1, 0)
		mobs:explosion(pos, 2, 2, 2)
	end,

	hit_mob = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 0.2,
			damage_groups = {fleshy = 95},
		}, nil)
		local pos = self.object:getpos()
		minetest.sound_play("explo", {pos = pos, gain = 5, max_hear_distance = 50,})
		mobs:explosion(pos, 1, 1, 0)
		mobs:explosion(pos, 2, 0, 2)
		mobs:explosion(pos, 3, 1, 1)
	end,

	
	hit_node = function(self, pos, node)
		mobs:explosion(pos, 1, 1, 0)
		mobs:explosion(pos, 2, 2, 2)
		mobs:explosion(pos, 2, 3, 1)
		minetest.sound_play("explo", {pos = pos, gain = 5, max_hear_distance = 50,})
	end
})


-- Rocket
mobs:register_arrow("mobs_modern:rocket", {
	visual = "sprite",
	visual_size = {x = 0.7, y = 0.7},
	textures = {"rocket.png"},
	velocity = 12,
	tail = 1,
	tail_texture = "rocket.png",
	tail_size = 10,
	glow = 8,
	expire = 0.1,

	-- direct hit, no fire... just plenty of pain
	hit_player = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 14},
		}, nil)
	end,

	hit_mob = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 20},
		}, nil)
	end,

	-- node hit
	hit_node = function(self, pos, node)
		mobs:boom(self, pos, 1)
	end
})


-- FlAMETHROWER SHOT
--fire:basic_flame

mobs:register_arrow("mobs_modern:shot_flame", {
	visual = "sprite",
	visual_size = {x = 2, y = 2},
	textures = {"fire_basic_flame.png"},
	velocity = 8,
	tail = 1,
	tail_texture = "fire_basic_flame.png",
	tail_size = {x = 2, y = 2},
	expire = 0.5,
	glow = 10,


	hit_player = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 0.2,
			damage_groups = {fleshy = 20},
		}, nil)
		local pos = self.object:getpos()
		minetest.sound_play("fire_large", {pos = pos, gain = 1, max_hear_distance = 50,})
		minetest.set_node(pos, {name = "fire:basic_flame"})
	end,

	hit_mob = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 0.2,
			damage_groups = {fleshy = 20},
		}, nil)
		local pos = self.object:getpos()
		minetest.sound_play("fire_large", {pos = pos, gain = 1, max_hear_distance = 50,})
		minetest.set_node(pos, {name = "fire:basic_flame"})
	end,

	
	hit_node = function(self, pos, node)
		local newplace = minetest.get_node(pos)
		if minetest.get_item_group(newplace.name, "flammable") == 1 then
		minetest.sound_play("fire_large", {pos = pos, gain = 1, max_hear_distance = 50,})
		minetest.set_node(pos, {name = "fire:basic_flame"})
		end
	end
})


--	-----	Grenade	-----

mobs:register_arrow("mobs_modern:grenade", {
	physical = false,
	timer = 0,
	visual = "sprite",
	visual_size = {x=.2, y=.2},
	textures = {"grenade.png"},
	velocity = 7,
	gravity = 900,
	drop = false,
	expire = 0.1,

	hit_player = function(self, player)
		player:punch(self.object, 1.8, {
		full_punch_interval=1.8,
		damage_groups = {fleshy=5},
		}, 0)
		local pos = self.object:getpos()
		minetest.sound_play("explo", {pos = pos, gain = 5, max_hear_distance = 50,})
		mobs:boom(self, pos, 1)
		mobs:explosion(pos, 1, 1, 1)
	end,

	hit_mob = function(self, player)
		player:punch(self.object, 1.8, {
		full_punch_interval=1.8,
		damage_groups = {fleshy=50},
		}, 0)
		local pos = self.object:getpos()
		minetest.sound_play("explo", {pos = pos, gain = 5, max_hear_distance = 50,})
		mobs:explosion(pos, 1, 1, 1)
		mobs:boom(self, pos, 1)
	end,

	hit_node = function(self, pos, node)
		mobs:boom(self, pos, 1)
		mobs:explosion(pos, 1, 1, 1)
		minetest.sound_play("explo", {pos = pos, gain = 5, max_hear_distance = 50,})
	end,
})

-- Grenade throwing item

local grenade_GRAVITY=90
local grenade_VELOCITY=12

--	Shoot grenade
local mobs_shoot_grenade=function (item, player, pointed_thing)
	local playerpos=player:getpos()
	local obj=minetest.add_entity({x=playerpos.x,y=playerpos.y+1.7,z=playerpos.z}, "mobs_modern:grenade")
	local dir=player:get_look_dir()
	obj:get_luaentity().velocity = grenade_VELOCITY -- needed for api internal timing
	obj:setvelocity({x=dir.x*22, y=dir.y*22, z=dir.z*22})
	obj:setacceleration({x=dir.x*-3, y=-10, z=dir.z*-3})
	obj:setyaw(player:get_look_yaw()+math.pi)
	item:take_item()
	return item
end

-- grenade item
minetest.register_craftitem("mobs_modern:grenade", {
description = "grenade",
	inventory_image = "grenade.png",
	on_use = function(item, player)
		if mobs_shoot_grenade(item, player, pointed_thing) then
			if not minetest.setting_getbool("creative_mode") then
				item:add_wear(65535/50)
			end
		end
		return item
	end,
})


--	-----	Dirty Grenade	-----

mobs:register_arrow("mobs_modern:dgrenade", {
	physical = false,
	groups = {cracky=1, radioactive = (state == "source" and 12 or 6),},
	timer = 3,
	visual = "sprite",
	visual_size = {x=.2, y=.2},
	textures = {"grenade.png"},
	velocity = 6.5,
	gravity = 90,
	drop = false,
	expire = 4,

	hit_player = function(self, player)
		player:punch(self.object, 1.4, {
		full_punch_interval=1.4,
		damage_groups = {fleshy=15},
		}, 0)
		local pos = self.object:getpos()
		minetest.sound_play("explo", {pos = pos, gain = 5, max_hear_distance = 50,})
		mobs:boom(self, pos, 1)
		mobs:explosion(pos, 1, 1, 1)
		minetest.set_node(pos, {name = "mobs_modern:nuke_flame"})
	end,

	hit_mob = function(self, player)
		player:punch(self.object, 1.8, {
		full_punch_interval=1.8,
		damage_groups = {fleshy=50},
		}, 0)
		local pos = self.object:getpos()
		minetest.sound_play("explo", {pos = pos, gain = 5, max_hear_distance = 50,})
		mobs:explosion(pos, 1, 1, 1)
		mobs:boom(self, pos, 1)
		minetest.set_node(pos, {name = "mobs_modern:nuke_flame"})
	end,

	hit_node = function(self, pos, node)
		mobs:boom(self, pos, 1)
		mobs:explosion(pos, 0, 1, 1)
		minetest.set_node({pos, 0, 2, 0}, {name = "mobs_modern:nuke_flame"})
		minetest.set_node({pos, 2, 0, 2}, {name = "mobs_modern:nuke_flame"})
		minetest.set_node({pos, 3, 1, 3}, {name = "technic:corium_flowing"})
		minetest.set_node(pos, {name = "mobs_modern:nuke_flame"})
		minetest.sound_play("explo", {pos = pos, gain = 5, max_hear_distance = 50,})
	end,
})

-- D-Grenade throwing item

local dgrenade_GRAVITY=90
local dgrenade_VELOCITY=12

--	Shoot d-grenade
local mobs_shoot_dgrenade=function (item, player, pointed_thing)
	local playerpos=player:getpos()
	local obj=minetest.add_entity({x=playerpos.x,y=playerpos.y+1.7,z=playerpos.z}, "mobs_modern:dgrenade")
	local dir=player:get_look_dir()
	obj:get_luaentity().velocity = dgrenade_VELOCITY -- needed for api internal timing
	obj:setvelocity({x=dir.x*22, y=dir.y*22, z=dir.z*22})
	obj:setacceleration({x=dir.x*-3, y=-10, z=dir.z*-3})
	obj:setyaw(player:get_look_yaw()+math.pi)
	item:take_item()
	return item
end

-- d-grenade item
minetest.register_craftitem("mobs_modern:dgrenade", {
description = "dgrenade",
	inventory_image = "grenade.png",
	on_use = function(item, player)
		if mobs_shoot_dgrenade(item, player, pointed_thing) then
			if not minetest.setting_getbool("creative_mode") then
				item:add_wear(65535/50)
			end
		end
		return item
	end,
})

-- recipe
--	minetest.register_craft({
-- 	output = "mobs_modern:dgrenade 3",
--		recipe = {
--			{"", "default:steel_ingot", ""},
--			{"default:steel_ingot", "", "default:steel_ingot"},
--			{"", "default:steel_ingot", ""},
--		}
--	})