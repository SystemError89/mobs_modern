
-- Soldiers (Team B)


-- Officer

mobs:register_mob("mobs_modern:TBsofi", {
	-- animal, monster, npc
	name = "TBsofi",
	type = "tb", "armyb",
	factions = {
			member = {
				"armyb",
				"tb"
				}
			},
	owner = "PresidentB",
	-- aggressive, shoots shuriken
	passive = false,
	damage = 3,
	reach = 2,
	attack_type = "dogshoot",
	dogshoot_switch = 1,
	dogshoot_count_max = 60,
	dogshoot_count2_max = 10,
	shoot_interval = 1,
	arrow = "mobs_modern:bullet",
	shoot_offset = 2,
	attacks_monsters = true,
	attack_armyas = true,
	attacks_tas = true,
	attacks_armybs = false,
	attacks_tbs = false,
	attack_armycs = true,
	attacks_tcs = true,
	attack_armyds = false,
	attacks_tds = false,
	attack_armyes = true,
	attacks_tes = true,
	attack_armyfs = true,
	attacks_tfs = true,
	attack_evils = true,
	attacks_animals = true,
	attacks_npcs = true,
	attacks_players = false,
	group_attack = false,
	-- health & armor
	hp_min = 20, hp_max = 30, armor = 100,
	-- textures and model
	collisionbox = {-0.35,-1.0,-0.35, 0.35,0.8,0.35},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	drawtype = "front",
	textures = {
		{"TB_sol_ofi1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_beretta"].inventory_image,},
   		{"TB_sol_ofi2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_mp40"].inventory_image,},
   		{"TB_sol_ofi3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_beretta"].inventory_image,},
   		{"TB_sol_ofi4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_mp40"].inventory_image,},
   		{"TB_sol_ofi5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_mp40"].inventory_image,},
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = 3,
	run_velocity = 3,
	jump = true,
	-- drops shuriken when dead
	drops = {
		{name = "default:apple",
		chance = 1, min = 1, max = 5},
	},
	-- damaged by
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	fall_damage = 0,
	view_range = 16,
	-- model animation
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		shoot_start = 200,		shoot_end = 219,
	},
})


-- Special Forces

mobs:register_mob("mobs_modern:TBsspe", {
	-- animal, monster, npc
	name = "TBsspe",
	type = "tb", "armyb",
	owner = "PresidentB",
	-- aggressive, shoots shuriken
	passive = false,
	damage = 3,
	reach = 2,
	attack_type = "dogshoot",
	dogshoot_switch = 1,
	dogshoot_count_max = 3, -- shoot for 4 seconds
	dogshoot_count2_max = 1, -- dogfight for 2 seconds
	punch_interval = 1.5,
	shoot_interval = .2,
	arrow = "mobs_modern:bullet",
	shoot_offset = 2,
	attacks_monsters = true,
	attack_armyas = true,
	attacks_tas = true,
	attacks_armybs = false,
	attacks_tbs = false,
	attack_armycs = true,
	attacks_tcs = true,
	attack_armyds = false,
	attacks_tds = false,
	attack_armyes = true,
	attacks_tes = true,
	attack_armyfs = true,
	attacks_tfs = true,
	attack_evils = true,
	attacks_animals = true,
	attacks_npcs = true,
	attacks_players = false,
	group_attack = false,
	-- health & armor
	hp_min = 20, hp_max = 30, armor = 100,
	-- textures and model
	collisionbox = {-0.35,-1.0,-0.35, 0.35,0.8,0.35},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	drawtype = "front",
	textures = {
		{"TB_sol_spe1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:dick_wood"].inventory_image,},
   		{"TB_sol_spe2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
		{"TB_sol_spe3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_kriss"].inventory_image,}, -- female by nuttmeg20
		{"TB_sol_spe4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
--		{"TB_sol_spe5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = 3,
	run_velocity = 3,
	jump = true,
	-- drops shuriken when dead
	drops = {
		{name = "default:apple",
		chance = 1, min = 1, max = 5},
	},
	-- damaged by
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	fall_damage = 0,
	view_range = 27,
	-- model animation
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		shoot_start = 200,		shoot_end = 219,
	},
})


-- Soldier

mobs:register_mob("mobs_modern:TBssol", {
	-- animal, monster, npc
	name = "TBssol",
	type = "tb", "armyb",
	-- aggressive, shoots shuriken
	passive = false,
	damage = 3,
	reach = 2,
	attack_type = "dogshoot",
	dogshoot_switch = 1,
	dogshoot_count_max = 5,
	dogshoot_count2_max = 1.5,
	shoot_interval = .3,
	arrow = "mobs_modern:bullet",
	shoot_offset = 2,
	attacks_monsters = true,
	attack_armyas = true,
	attacks_tas = true,
	attacks_armybs = false,
	attacks_tbs = false,
	attack_armycs = true,
	attacks_tcs = true,
	attack_armyds = false,
	attacks_tds = false,
	attack_armyes = true,
	attacks_tes = true,
	attack_armyfs = true,
	attacks_tfs = true,
	attack_evils = true,
	attacks_animals = true,
	attacks_npcs = true,
	attacks_players = false,
	group_attack = false,
	-- health & armor
	hp_min = 20, hp_max = 30, armor = 100,
	-- textures and model
	collisionbox = {-0.35,-1.0,-0.35, 0.35,0.8,0.35},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	drawtype = "front",
	textures = {
		{"TB_sol_infA1.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:dick_wood"].inventory_image,},
   		{"TB_sol_infA2.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
		{"TB_sol_infA3.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_kriss"].inventory_image,},
		{"TB_sol_infA4.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
		{"TB_sol_infA5.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
		{"TB_sol_infA6.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:dick_wood"].inventory_image,},
   		{"TB_sol_infA7.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
		{"TB_sol_infA8.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_kriss"].inventory_image,},
		{"TB_sol_infA9.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
		{"TB_sol_infA10.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
		{"TB_sol_infA11.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = 3,
	run_velocity = 3,
	jump = true,
	-- drops shuriken when dead
	drops = {
		{name = "default:apple",
		chance = 1, min = 1, max = 5},
	},
	on_rightclick = function(self, clicker)

		local item = clicker:get_wielded_item()

		if item:get_name() == "wool:blue" then

			if not mobs.is_creative(clicker:get_player_name()) then
				item:take_item()
				clicker:set_wielded_item(item)
			end
			
			if math.random(1,5) == 1 then
				self.object:set_properties({
				textures = 	{"TB_sol_infC1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
				})
			elseif math.random(1,5) == 2 then
				self.object:set_properties({
				textures = 	{"TB_sol_infC2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m16"].inventory_image,},
				})
			elseif math.random(1,5) == 3 then
				self.object:set_properties({
				textures = 	{"TB_sol_infC3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
				})
			elseif math.random(1,5) == 4 then
				self.object:set_properties({
				textures = 	{"TB_sol_infC4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m16"].inventory_image,},
				})
			elseif math.random(1,5) == 5 then
				self.object:set_properties({
				textures = 	{"TB_sol_infC5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
				})
			else
				self.object:set_properties({
				textures = 	{"TB_sol_infC1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
				})
			end

			return
		end
		
		if item:get_name() == "wool:brown" then

			if not mobs.is_creative(clicker:get_player_name()) then
				item:take_item()
				clicker:set_wielded_item(item)
			end
			
			if math.random(1,10) == 1 then
				self.object:set_properties({
				textures = 	{"TB_sol_infB1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
				})
			elseif math.random(1,10) == 2 then
				self.object:set_properties({
				textures = 	{"TB_sol_infB2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m16"].inventory_image,},
				})
			elseif math.random(1,10) == 3 then
				self.object:set_properties({
				textures = 	{"TB_sol_infB3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
				})
			elseif math.random(1,10) == 4 then
				self.object:set_properties({
				textures = 	{"TB_sol_infB4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m16"].inventory_image,},
				})
			elseif math.random(1,10) == 5 then
				self.object:set_properties({
				textures = 	{"TB_sol_infB5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
				})
			elseif math.random(1,10) == 6 then
				self.object:set_properties({
				textures = 	{"TB_sol_infB6.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
				})
			elseif math.random(1,10) == 7 then
				self.object:set_properties({
				textures = 	{"TB_sol_infB7.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
				})
--			elseif math.random(1,10) == 8 then
--				self.object:set_properties({
--				textures = 	{"TB_sol_infB8.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m16"].inventory_image,},
--				})
			elseif math.random(1,10) == 9 then
				self.object:set_properties({
				textures = 	{"TB_sol_infB9.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
				})
			elseif math.random(1,10) == 10 then
				self.object:set_properties({
				textures = 	{"TB_sol_infB10.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m16"].inventory_image,},
				})
--			elseif math.random(1,11) == 11 then
--				self.object:set_properties({
--				textures = 	{"TB_sol_infB11.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
--				})
			else
				self.object:set_properties({
				textures = 	{"TB_sol_infB1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
				})
			end

			return
		end
		
		if item:get_name() == "wool:red" then

			if not mobs.is_creative(clicker:get_player_name()) then
				item:take_item()
				clicker:set_wielded_item(item)
			end
			
			if math.random(1,2) == 1 then
				self.object:set_properties({
				textures = 	{"TB_sol_infD1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
				})
			elseif math.random(1,2) == 2 then
				self.object:set_properties({
				textures = 	{"TB_sol_infD2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m16"].inventory_image,},
				})
--			elseif math.random(1,5) == 3 then
--				self.object:set_properties({
--				textures = 	{"TB_sol_infD3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
--				})
--			elseif math.random(1,5) == 4 then
--				self.object:set_properties({
--				textures = 	{"TB_sol_infD4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m16"].inventory_image,},
--				})
--			elseif math.random(1,5) == 5 then
--				self.object:set_properties({
--				textures = 	{"TB_sol_infD5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
--				})
			else
				self.object:set_properties({
				textures = 	{"TB_sol_infD1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
				})
			end

			return
		end
	end,
	-- damaged by
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	fall_damage = 0,
	view_range = 24,
	-- model animation
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		shoot_start = 200,		shoot_end = 219,
	},
})


-- Scout

mobs:register_mob("mobs_modern:TBssco", {
	-- animal, monster, npc
	name = "TBssco",
	type = "tb", "armyb",
	owner = "PresidentB",
	-- aggressive, shoots shuriken
	passive = false,
	damage = 3,
	reach = 2,
	attack_type = "dogshoot",
	dogshoot_switch = 1,
	dogshoot_count_max = 2,
	dogshoot_count2_max = 1.2,
	shoot_interval = .7,
	arrow = "mobs_modern:bullet",
	shoot_offset = 2,
	attacks_monsters = true,
	attack_armyas = true,
	attacks_tas = true,
	attacks_armybs = false,
	attacks_tbs = false,
	attack_armycs = true,
	attacks_tcs = true,
	attack_armyds = false,
	attacks_tds = false,
	attack_armyes = true,
	attacks_tes = true,
	attack_armyfs = true,
	attacks_tfs = true,
	attack_evils = true,
	attacks_animals = true,
	attacks_npcs = true,
	attacks_players = false,
	group_attack = false,
	-- health & armor
	hp_min = 20, hp_max = 30, armor = 100,
	-- textures and model
	collisionbox = {-0.35,-1.0,-0.35, 0.35,0.8,0.35},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	drawtype = "front",
	textures = {
		{"TB_sol_sco1.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:dick_wood"].inventory_image,},
   		{"TB_sol_sco2.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
		{"TB_sol_sco3.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_kriss"].inventory_image,},
		{"TB_sol_sco4.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
--		{"TB_sol_sco5.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
--		{"TB_sol_sco6.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:dick_wood"].inventory_image,},
--		{"TB_sol_sco7.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
--		{"TB_sol_sco8.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_kriss"].inventory_image,},
--		{"TB_sol_sco9.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = 3,
	run_velocity = 3,
	jump = true,
	-- drops shuriken when dead
	drops = {
		{name = "default:apple",
		chance = 1, min = 1, max = 5},
	},
	-- damaged by
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	fall_damage = 0,
	view_range = 29,
	-- model animation
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		shoot_start = 200,		shoot_end = 219,
	},
})


-- Sniper

mobs:register_mob("mobs_modern:TBssni", {
	-- animal, monster, npc
	name = "TBssni",
	type = "tb", "armyb",
	owner = "PresidentB",
	-- aggressive, shoots shuriken
	damage = 10,
	attack_type = "shoot",
	shoot_interval = 1.5,
	arrow = "mobs_modern:snibul",
	shoot_offset = 2,
	attacks_npcs = false,
	attack_armyas = true,
	attack_tas = true,
	attack_armybs = false,
	attacks_tbs = false,
	attack_armycs = true,
	attacks_tcs = true,
	attack_armyds = false,
	attacks_tds = false,
	attack_armyes = true,
	attacks_tes = true,
	attack_armyfs = true,
	attacks_tfs = true,
	attack_evils = true,
	group_attack = true,
	peaceful = true,
	passive = false,
	pathfinding = true,
	-- health & armor
	hp_min = 20, hp_max = 30, armor = 100,
	-- textures and model
	collisionbox = {-0.35,-1.0,-0.35, 0.35,0.8,0.35},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	drawtype = "front",
	textures = {
   		{"TB_sol_sni1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_svd"].inventory_image,},
		{"TB_sol_sni2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TB_sol_sni3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_awp"].inventory_image,},
		{"TB_sol_sni4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
--		{"TB_sol_sni5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_awp"].inventory_image,},
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = 1,
	run_velocity = 3,
	jump = true,
	-- drops shuriken when dead
	drops = {
		{name = "default:apple",
		chance = 1, min = 1, max = 5},
	},
	-- damaged by
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	fall_damage = 0,
	view_range = 50,
	-- model animation
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		shoot_start = 200,		shoot_end = 219,
	},
})


--	Rocket Dude

mobs:register_mob("mobs_modern:TBsrpg", {
	-- animal, monster, npc
	name = "TBrpgGuy",
	type = "tb", "armyb",
	owner = "PresidentB",
	-- aggressive, shoots shuriken
	damage = 3,
	reach = 2,
	attack_type = "shoot",
	shoot_interval = 5,
	arrow = "mobs_modern:shot_bazooka",
	shoot_offset = 1,
	attacks_monsters = true,
	attack_animals = false,
	attack_armyas = true,
	attack_tas = true,
	attack_armybs = false,
	attacks_tbs = false,
	attack_armycs = true,
	attacks_tcs = true,
	attack_armyds = false,
	attacks_tds = false,
	attack_armyes = true,
	attacks_tes = true,
	attack_armyfs = true,
	attacks_tfs = true,
	attack_evils = true,
	group_attack = false,
	peaceful = true,
	passive = false,
	-- health & armor
	hp_min = 20, hp_max = 30, armor = 95,
	-- textures and model
	collisionbox = {-0.35,-1.0,-0.35, 0.35,0.8,0.35},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	drawtype = "front",
	textures = {
		{"TB_sol_infA5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpg"].inventory_image,},
   		{"TB_sol_infA6.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpg"].inventory_image,},
   		{"TB_sol_infA8.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_bazooka"].inventory_image,},
		{"TB_sol_infA9.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpg"].inventory_image,},
		{"TB_sol_infB10.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_bazooka"].inventory_image,}, -- female by nuttmeg20
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = 2,
	run_velocity = 2,
	jump = true,
	-- drops shuriken when dead
	drops = {
		{name = "default:apple",
		chance = 1, min = 1, max = 5},
	},
	-- damaged by
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	fall_damage = 0,
	view_range = 25,
	-- model animation
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		shoot_start = 200,		shoot_end = 219,
	},
})


-- Drone

mobs:register_mob("mobs_modern:TBdrone", {
	type = "armyb",
	pathfinding = true,
	group_attack = true,
	hp_min = 10,
	hp_max = 10,
	collisionbox = {-0.25, -0.01, -0.25, 0.25, 0.89, 0.25},
	visual = "mesh",
	mesh = "mobs_mc_bat.b3d",
	textures = {
		{"mobs_drone.jpg"},
	},
	visual_size = {x=4, y=4},
	sounds = {
		shoot = "mobs_war_shot",
		death = "mobs_zombiedeath",
		damage = "mobs_zombiehurt",
		attack = "mobs_war_shot2",
		random = "mobs_eerie",
	},
	walk_velocity = 1.5,
	run_velocity = 3.2,
	drops = {
		{name = "default:apple",
		chance = 1, min = 1, max = 5},
	},
	animation = {
		stand_speed = 50, walk_speed = 50, run_speed = 50,
		stand_start = 19,		stand_end = 21,
		walk_start = 19,		walk_end = 21,
		run_start = 20,		run_end = 20,
	},
	lava_damage = 5,
	light_damage = 0,
	fall_damage = 10,
	view_range = 60,
	--attack_type = "dogshoot",
	damage = 40,
	attack_type = "shoot",
	arrow = "mobs_modern:shot_bazooka2",
	shoot_interval = 3.5,
	shoot_offset = 1,
		--'dogshoot_switch' allows switching between shoot and dogfight modes inside dogshoot using timer (1 = shoot, 2 = dogfight)
	--'dogshoot_count_max' number of seconds before switching above modes.
	attack_players = true,
	attack_armyas = false,
	attack_tas = false,
	attack_armybs = true,
	attacks_tbs = true,
	attack_armycs = false,
	attacks_tcs = false,
	attack_armyds = true,
	attacks_tds = true,
	attack_armyes = false,
	attacks_tes = false,
	attack_armyfs = false,
	attacks_tfs = false,
	attack_evils = true,
	passive = false,
	jump = true,
	jump_height = 4,
	floats = 1,
	fly = true,
	fly_in = {"air"},
	jump_chance = 15,
	fear_height = 75,	
	blood_amount = 0,
})


-- Officer Shen

mobs:register_mob("mobs_modern:TBshen", {
	-- animal, monster, npc
	name = "TBshen",
	type = "armyb", "tb",
	owner = "PresidentB",
	-- aggressive, shoots shuriken
	passive = false,
	damage = 3,
	reach = 2,
	attack_type = "dogshoot",
	dogshoot_switch = 1,
	dogshoot_count_max = 4.5,
	dogshoot_count2_max = 2,
	shoot_interval = .4,
	arrow = "mobs_modern:shot_flame",
	shoot_offset = 2,
	attacks_monsters = true,
	attack_armyas = true,
	attacks_tas = true,
	attacks_armybs = false,
	attacks_tbs = false,
	attack_armycs = true,
	attacks_tcs = true,
	attack_armyds = false,
	attacks_tds = false,
	attack_armyes = true,
	attacks_tes = true,
	attack_armyfs = true,
	attacks_tfs = true,
	attack_evils = true,
	attacks_animals = true,
	attacks_npcs = true,
	attack_players = true,
	group_attack = false,
	-- health & armor
	hp_min = 20, hp_max = 30, armor = 90,
	-- textures and model
	collisionbox = {-0.35,-1.0,-0.35, 0.35,0.8,0.35},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	drawtype = "front",
	textures = {
		{"TB_sol_infA7.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_flamethrower"].inventory_image,},
		{"TB_sol_infA9.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_flamethrower"].inventory_image,},
 		{"TB_sol_infB5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_flamethrower"].inventory_image,},
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = 3,
	run_velocity = 3,
	jump = true,
	-- drops shuriken when dead
	drops = {
		{name = "default:apple",
		chance = 1, min = 1, max = 5},
	},
	-- damaged by
	water_damage = 5,
	lava_damage = 2,
	light_damage = 0,
	fall_damage = 5,
	view_range = 16,
	-- model animation
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		shoot_start = 200,		shoot_end = 219,
	},
})


-- ninja spawn on top of trees
--mobs:register_spawn("testmobs:ninja", {"default:leaves"}, 5, 0, 10000, 1, 31000)

mobs:register_egg("mobs_modern:TBsofi", "Officer (TB)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:TBsspe", "Special Force (TB)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:TBssol", "Soldier (TB)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:TBssco", "Scout (TB)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:TBssni", "Sniper (TB)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:TBsrpg", "RPG Guy (TB)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:TBshen", "Officer Shen (TB)", "default_leaves.png", 1)