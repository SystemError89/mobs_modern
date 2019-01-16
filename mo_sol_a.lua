-- Soldiers ( Team A )

-- Officer
mobs:register_mob("mobs_modern:moTAof", {
	-- animal, monster, npc
	name = "TAoff",
	type = "armya", "ta",
	owner = "PresidentA",
	-- aggressive, shoots shuriken
	damage = 3,
	attack_type = "shoot",
	shoot_interval = 1,
	arrow = "mobs_modern:bullet",
	shoot_offset = 2,
	attacks_npcs = false,
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
	attack_evils = true,
	group_attack = false,
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
		{"TA_sol_ofi1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_sol_ofi2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
--		{"TA_sol_ofi3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = 3,
	run_velocity = 3,
	jump = true,
	jump_height = 1.6,
	fear_height = 2.2,
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
	view_range = 20,
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

-- Special Force
mobs:register_mob("mobs_modern:moTAsp", {
	-- animal, monster, npc
	name = "TAspe",
	type = "armya", "ta",
	owner = "PresidentA",
	-- aggressive, shoots shuriken
	damage = 4,
	attack_type = "dogshoot",
	dogshoot_switch = 1,
	dogshoot_count_max = 3, -- shoot for 4 seconds
	dogshoot_count2_max = 1, -- dogfight for 2 seconds
	reach = 2,
	punch_interval = 1.5,
	shoot_interval = .2,
	arrow = "mobs_modern:bullet",
	shoot_offset = 2,
	attacks_npcs = false,
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
	group_attack = true,
	peaceful = true,
	passive = false,
	pathfinding = true,
	-- health & armor
	hp_min = 24, hp_max = 33, armor = 85,
	-- textures and model
	collisionbox = {-0.35,-1.0,-0.35, 0.35,0.8,0.35},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	drawtype = "front",
	textures = {
		{"TA_sol_spe1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_sol_spe2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
--		{"TA_sol_spe3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = 3,
	run_velocity = 3,
	jump = true,
	jump_height = 2.4,
	fear_height = 3.2,
	-- drops shuriken when dead
	drops = {
		{name = "default:apple",
		chance = 1, min = 1, max = 5},
	},
	-- damaged by
	water_damage = 1,
	lava_damage = 8,
	light_damage = 0,
	fall_damage = 3,
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
mobs:register_mob("mobs_modern:moTAso", {
	-- animal, monster, npc
	name = "TAsoldier",
	type = "armya", "ta",
	owner = "PresidentA",
	-- aggressive, shoots shuriken
	recovery_time = .5,
	damage = 3,
	attack_type = "dogshoot",
	dogshoot_switch = 1,
	dogshoot_count_max = 4.3, -- shoot for 4 seconds
	dogshoot_count2_max = .8, -- dogfight for 2 seconds
	reach = 1.8,
	punch_interval = .6,
	shoot_interval = .3,
	arrow = "mobs_modern:bullet",
	shoot_offset = 2,
	attacks_npcs = false,
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
	group_attack = false,
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
		{"TA_sol_infA1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m16"].inventory_image,},
   		{"TA_sol_infA2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
		{"TA_sol_infA3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m16"].inventory_image,},
		{"TA_sol_infA4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
		{"TA_sol_infA5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m16"].inventory_image,},
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = 1,
	run_velocity = 3,
	jump = true,
	jump_height = 1.8,
	fear_height = 2.4,
	-- drops shuriken when dead
	drops = {
		{name = "default:apple",
		chance = 1, min = 1, max = 5},
	},
	on_rightclick = function(self, clicker)

		local item = clicker:get_wielded_item()

		if item:get_name() == "wool:yellow" then

			if not mobs.is_creative(clicker:get_player_name()) then
				item:take_item()
				clicker:set_wielded_item(item)
			end
			
			if math.random(1,5) == 1 then
				self.object:set_properties({
				textures = 	{"TA_sol_infB1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
				})
			elseif math.random(1,5) == 2 then
				self.object:set_properties({
				textures = 	{"TA_sol_infB2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m16"].inventory_image,},
				})
			elseif math.random(1,5) == 3 then
				self.object:set_properties({
				textures = 	{"TA_sol_infB3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
				})
			elseif math.random(1,5) == 4 then
				self.object:set_properties({
				textures = 	{"TA_sol_infB4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m16"].inventory_image,},
				})
			elseif math.random(1,5) == 5 then
				self.object:set_properties({
				textures = 	{"TA_sol_infB5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
				})
			else
				self.object:set_properties({
				textures = 	{"TA_sol_infB1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
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
				textures = 	{"TA_sol_infC1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
				})
			elseif math.random(1,10) == 2 then
				self.object:set_properties({
				textures = 	{"TA_sol_infC2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m16"].inventory_image,},
				})
			elseif math.random(1,10) == 3 then
				self.object:set_properties({
				textures = 	{"TA_sol_infC3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
				})
			elseif math.random(1,10) == 4 then
				self.object:set_properties({
				textures = 	{"TA_sol_infC4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m16"].inventory_image,},
				})
			elseif math.random(1,10) == 5 then
				self.object:set_properties({
				textures = 	{"TA_sol_infC5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
				})
			elseif math.random(1,10) == 6 then
				self.object:set_properties({
				textures = 	{"TA_sol_infC6.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
				})
			elseif math.random(1,10) == 7 then
				self.object:set_properties({
				textures = 	{"TA_sol_infC7.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
				})
			elseif math.random(1,10) == 8 then
				self.object:set_properties({
				textures = 	{"TA_sol_infC8.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m16"].inventory_image,},
				})
			elseif math.random(1,10) == 9 then
				self.object:set_properties({
				textures = 	{"TA_sol_infC9.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
				})
			elseif math.random(1,10) == 10 then
				self.object:set_properties({
				textures = 	{"TA_sol_infC10.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m16"].inventory_image,},
				})
--			elseif math.random(1,11) == 11 then
--				self.object:set_properties({
--				textures = 	{"TA_sol_infC11.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
--				})
			else
				self.object:set_properties({
				textures = 	{"TA_sol_infC1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
				})
			end

			return
		end
	end,
	-- damaged by
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	fall_damage = 3,
	view_range = 25,
	replace_rate = 10,
	replace_what = {
		{"group:grass", "mobs_modern:ntds", 0},
		{"mobs_modern:ntbs", "mobs_modern:ntas", -1},
		{"mobs_modern:ntbs_with_grass", "mobs_modern:ntas_with_grass", -1},
		{"mobs_modern:ntbs_with_dry_grass", "mobs_modern:ntas_with_dry_grass", -1},
		{"mobs_modern:ntbs_with_snow", "mobs_modern:ntas_with_snow", -1},
		{"mobs_modern:ntbs_with_rainforest_litter", "mobs_modern:ntas_with_rainforest_litter", -1},
		{"mobs_modern:ntcs", "mobs_modern:ntas", -1},
		{"mobs_modern:ntds", "mobs_modern:ntas", -1},
		{"mobs_modern:ntds_with_grass", "mobs_modern:ntas_with_grass", -1},
		{"mobs_modern:ntds_with_dry_grass", "mobs_modern:ntas_with_dry_grass", -1},
		{"mobs_modern:ntds_with_snow", "mobs_modern:ntas_with_snow", -1},
		{"mobs_modern:ntds_with_rainforest_litter", "mobs_modern:ntas_with_rainforest_litter", -1},
		{"mobs_modern:ntes", "mobs_modern:ntas", -1},
		{"mobs_modern:ntfs", "mobs_modern:ntas", -1},
		{"default:dirt", "mobs_modern:ntas", -1},
		{"default:dirt_with_grass", "mobs_modern:ntas_with_grass", -1},
		{"default:dirt_with_dry_grass", "mobs_modern:ntas_with_dry_grass", -1},
		{"default:dirt_with_snow", "mobs_modern:ntas_with_snow", -1},
		{"default:dirt_with_rainforest_litter", "mobs_modern:ntas_with_rainforest_litter", -1},
		{"default:dirt", "mobs_modern:ntas", -2},
		{"default:dirt_with_grass", "mobs_modern:ntas_with_grass", -2},
		{"default:dirt_with_dry_grass", "mobs_modern:ntas_with_dry_grass", -2},
		{"default:dirt_with_snow", "mobs_modern:ntas_with_snow", -2},
		{"default:dirt_with_rainforest_litter", "mobs_modern:ntas_with_rainforest_litter", -2}
	},
	replace_with = "air",
	-- model animation
	animation = {
		speed_normal = 20,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		shoot_start = 200,		shoot_end = 219,
	},
})

-- Sniper
mobs:register_mob("mobs_modern:moTAsn", {
	-- animal, monster, npc
	name = "TAsniper",
	type = "ta", "armya",
	owner = "PresidentA",
	-- aggressive, shoots shuriken
	damage = 10,
	attack_type = "shoot",
	shoot_interval = 1.6,
	arrow = "mobs_modern:snibul",
	shoot_offset = 2,
	attacks_npcs = false,
	attack_armyas = false,
	attack_tas = false,
	attack_armybs = true,
	attacks_tbs = true,
	attack_armycs = true,
	attacks_tcs = true,
	attack_armyds = true,
	attacks_tds = true,
	attack_armyes = false,
	attacks_tes = false,
	attack_armyfs = false,
	attacks_tfs = false,
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
   		{"TA_sol_sni1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_awp"].inventory_image,},
--		{"TA_sol_sni2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_awp"].inventory_image,},
		{"TA_sol_sco1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_sol_sco2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = 1,
	run_velocity = 3,
	jump = true,
	fear_height = 2,
	-- drops shuriken when dead
	drops = {
		{name = "default:apple",
		chance = 1, min = 1, max = 5},
	},
	-- damaged by
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	fall_damage = 3,
	view_range = 55,
	-- model animation
	animation = {
		speed_normal = 10,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		shoot_start = 211,		shoot_end = 215,
	},
})

--	Rocket Dude
mobs:register_mob("mobs_modern:moTArp", {
	-- animal, monster, npc
	name = "TArpgGuy",
	type = "ta", "armya",
	owner = "PresidentA",
	-- aggressive, shoots shuriken
	damage = 3,
	reach = 2,
	attack_type = "shoot",
	shoot_interval = 5,
	arrow = "mobs_modern:shot_bazooka",
	shoot_offset = 1,
	attacks_monsters = true,
	attack_animals = false,
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
		{"TA_sol_infA6.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpg"].inventory_image,},
   		{"TA_sol_infA8.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpg"].inventory_image,},
   		{"TA_sol_infB5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_bazooka"].inventory_image,},
		{"TA_sol_infC11.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpg"].inventory_image,},
--		{"TA_sol_inf3.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_bazooka"].inventory_image,}
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = 2,
	run_velocity = 2,
	jump = true,
	fear_height = 2,
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
	view_range = 32,
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


mobs:register_mob("mobs_modern:moTAdr", {
	type = "ta", "armya", "monster",
	pathfinding = true,
	group_attack = true,
	hp_min = 10,
	hp_max = 10,
	collisionbox = {-0.25, -0.01, -0.25, 0.25, 0.89, 0.25},
	visual = "mesh",
	mesh = "mobs_mc_bat.b3d",
	textures = {
		{"mobs_mc_bat.png"},
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


-- Uncle Sam

mobs:register_mob("mobs_modern:moTAun", {
	-- animal, monster, npc
	name = "Uncle Sam",
	nametag = "Uncle Sam",
	type = "ta", "armya",
	owner = "PresidentA",
	-- aggressive, shoots shuriken
	damage = 30,
	attack_type = "dogshoot",
	dogshoot_switch = 1,
	dogshoot_count_max = 2, -- shoot for 2 seconds
	dogshoot_count2_max = 3, -- dogfight for 3 seconds
	reach = 23,
	punch_interval = 1,
	shoot_interval = 1.5,
	arrow = "mobs_modern:dgrenade",
	shoot_offset = 2,
	attacks_npcs = false,
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
	attack_evils = true,
	group_attack = false,
	peaceful = false,
	passive = false,
	pathfinding = true,
	-- health & armor
	hp_min = 30, hp_max = 40, armor = 85,
	-- textures and model
	collisionbox = {-0.35,-1.0,-0.35, 0.35,0.8,0.35},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	drawtype = "front",
	textures = {
--		{"TA_sol_infS1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_taurus"].inventory_image,},
   		{"TA_sol_infS2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_taurus"].inventory_image,},
--		{"TA_sol_infS3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
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


-- ninja spawn on top of trees
mobs:register_spawn("mobs_modern:moTAof", {"mobs_modern:ntas"}, 6, 0, 500, 10, 1500)
mobs:register_spawn("mobs_modern:moTAsp", {"mobs_modern:ntas"}, 4, 0, 10000, 1, 31000)
mobs:register_spawn("mobs_modern:moTAso", {"mobs_modern:ntas"}, 5, 0, 120, 1, 31000)
--mobs:register_spawn("mobs_modern:TAre", {"mobs_modern:ntas"}, 5, 0, 10000, 1, 31000)
mobs:register_spawn("mobs_modern:moTAsn", {"mobs_modern:ntas"}, 5, 0, 1500, 1, 31000)
mobs:register_spawn("mobs_modern:moTArp", {"mobs_modern:ntas"}, 5, 0, 10000, 1, 31000)
mobs:register_spawn("mobs_modern:moTAdr", {"mobs_modern:ntas"}, 5, 0, 10000, 1, 31000)
mobs:register_spawn("mobs_modern:moTAun", {"mobs_modern:ntas"}, 5, 0, 10000, 1, 31000)

mobs:spawn({
	name = "mobs_modern:moTAof",
	nodes = {"mobs_modern:ntas", "mobs_modern:ntas_with_grass", "mobs_modern:ntas_with_dry_grass", "mobs_modern:ntas_with_snow", "mobs_modern:ntas_with_rainforest_litter"},
	neighbors = {"group:grass"},
	min_light = 5,
	interval = 10,
	chance = 1, -- 15000
	min_height = 4,
	max_height = 120,
	day_toggle = true,
})

mobs:spawn({
	name = "mobs_modern:moTAso",
	nodes = {"mobs_modern:ntas", "mobs_modern:ntas_with_grass", "mobs_modern:ntas_with_dry_grass", "mobs_modern:ntas_with_snow", "mobs_modern:ntas_with_rainforest_litter"},
	neighbors = {"group:grass"},
	min_light = 12,
	interval = 10,
	chance = 5000, -- 15000
	min_height = 4,
	max_height = 120,
	day_toggle = true,
})

mobs:spawn({
	name = "mobs_modern:moTAsn",
	nodes = {"mobs_modern:ntas", "mobs_modern:ntas_with_grass", "mobs_modern:ntas_with_dry_grass", "mobs_modern:ntas_with_snow", "mobs_modern:ntas_with_rainforest_litter"},
	neighbors = {"group:grass"},
	min_light = 12,
	interval = 20,
	chance = 10000, -- 15000
	min_height = 4,
	max_height = 120,
	day_toggle = false,
})

mobs:spawn({
	name = "mobs_modern:moTAdr",
	nodes = {"air", "mobs_modern:ntas_with_grass", "mobs_modern:ntas_with_dry_grass", "mobs_modern:ntas_with_snow", "mobs_modern:ntas_with_rainforest_litter"},
	neighbors = {"group:grass"},
	min_light = 12,
	interval = 30,
	chance = 10000, -- 15000
	min_height = 24,
	max_height = 120,
	day_toggle = false,
})

mobs:register_egg("mobs_modern:moTAof", "Officer (moTA)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:moTAsp", "Special Unit (moTA)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:moTAso", "Soldier (moTA)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:moTAsn", "Sniper (moTA)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:moTArp", "RPG Unit (moTA)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:moTAun", "Uncle Sam (moTA)", "default_leaves.png", 1)