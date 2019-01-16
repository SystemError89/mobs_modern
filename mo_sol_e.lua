-- Soldiers ( Team E )


-- Officer

mobs:register_mob("mobs_modern:moTEof", {
	-- animal, monster, npc
	name = "moTEofficer",
	type = "armye", "te",
	owner = "MisterE",
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
	attack_armycs = true,
	attacks_tcs = true,
	attack_armyds = true,
	attacks_tds = true,
	attack_armyes = false,
	attacks_tes = false,
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
		{"TE_sol_ofi1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_uzi"].inventory_image,},
   		{"TE_sol_ofi2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_mp5"].inventory_image,},
--		{"TE_sol_ofi3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
--		{"TE_sol_ofi4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
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
	view_range = 18,
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


--	Special Forces

mobs:register_mob("mobs_modern:moTEsp", {
	-- animal, monster, npc
	name = "moTEsp",
	type = "armye", "te",
	owner = "PresidentE",
	-- aggressive, shoots shuriken
	damage = 5,
	attack_type = "shoot",
	shoot_interval = .2,
	arrow = "mobs_modern:bullet",
	shoot_offset = 2,
	attack_monsters = true,
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
	attack_evils = true,
	group_attack = true,
	peaceful = true,
	passive = false,
	pathfinding = true,
	-- health & armor
	hp_min = 24, hp_max = 36, armor = 90,
	-- textures and model
	collisionbox = {-0.35,-1.0,-0.35, 0.35,0.8,0.35},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	drawtype = "front",
	textures = {
		{"TE_sol_spe1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
   		{"TE_sol_spe2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
		{"TE_sol_spe3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
--		{"TE_sol_spe4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_uzi"].inventory_image,},
--		{"TE_sol_spe5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_mp5"].inventory_image,},
--		{"TE_sol_spe6.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
--		{"TE_sol_spe7.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = 1.5,
	run_velocity = 3,
	jump = true,
	-- drops shuriken when dead
	drops = {
		{name = "mobs:shurikent",
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
		speed_normal = 15,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		shoot_start = 200,		shoot_end = 219,
	},
})


-- Soldier

mobs:register_mob("mobs_modern:moTEso", {
	-- animal, monster, npc
	name = "moTEsoldier",
	type = "armye", "te",
	owner = "PresidentE",
	-- aggressive, shoots shuriken
	damage = 3,
	attack_type = "shoot",
	shoot_interval = .2,
	arrow = "mobs_modern:bullet",
	shoot_offset = 2,
	attack_monsters = true,
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
		{"TE_sol_infA1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_uzi"].inventory_image,},
   		{"TE_sol_infA2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_mp5"].inventory_image,},
		{"TE_sol_infA3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
		{"TE_sol_infA4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
		{"TE_sol_infA5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_uzi"].inventory_image,},
   		{"TE_sol_infA6.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_mp5"].inventory_image,},
		{"TE_sol_infA7.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
		{"TE_sol_infA8.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
		{"TE_sol_infA9.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_uzi"].inventory_image,},
   		{"TE_sol_infA10.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_mp5"].inventory_image,},
		{"TE_sol_infA11.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
		{"TE_sol_infB1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
		{"TE_sol_infB2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_uzi"].inventory_image,},
   		{"TE_sol_infB3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_mp5"].inventory_image,},
		{"TE_sol_infB4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
		{"TE_sol_infB5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
		{"TE_sol_infB6.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_uzi"].inventory_image,},
   		{"TE_sol_infB7.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_mp5"].inventory_image,},
		{"TE_sol_infB8.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
--		{"TE_sol_infC1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_uzi"].inventory_image,},
   		{"TE_sol_infC2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_mp5"].inventory_image,},
		{"TE_sol_infC3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
		{"TE_sol_infC4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
		{"TE_sol_infC5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
		{"TE_sol_infC6.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_uzi"].inventory_image,},
   		{"TE_sol_infC7.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_mp5"].inventory_image,},
		{"TE_sol_infC8.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
		{"TE_sol_infC9.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
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
	view_range = 18,
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


--	Sniper

mobs:register_mob("mobs_modern:moTEsn", {
	-- animal, monster, npc
	name = "moTEsniper",
	type = "armye", "te",
	owner = "PresidentE",
	-- aggressive, shoots shuriken
	damage = 10,
	attack_type = "shoot",
	shoot_interval = 1.5,
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
		{"TE_sol_sni1.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_uzi"].inventory_image,},
   		{"TE_sol_sni2.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_mp5"].inventory_image,},
		{"TE_sol_sni3.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
		{"TE_sol_sni4.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
--		{"TE_sol_sni5.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_uzi"].inventory_image,},
   		{"TE_sol_sni6.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_mp5"].inventory_image,},
		{"TE_sol_sni7.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
		{"TE_sol_sni8.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
--		{"TE_sol_sni9.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_svd"].inventory_image,},
--		{"TE_sol_sni10.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_svd"].inventory_image,},
		{"TE_sol_sco1.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
   		{"TE_sol_sco2.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
		{"TE_sol_sco3.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
		{"TE_sol_sco4.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_uzi"].inventory_image,},
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
	view_range = 38,
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


mobs:register_mob("mobs_modern:moTErp", {
	-- animal, monster, npc
	name = "moTErpgGuy",
	type = "armye", "te",
	owner = "PresidentE",
	-- aggressive, shoots shuriken
	damage = 3,
	reach = 5,
	attack_type = "shoot",
	shoot_interval = 3.4,
	arrow = "mobs_modern:shot_bazooka",
	shoot_offset = 2,
	attacks_monsters = true,
	attack_animals = false,
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
	attack_evils = true,
	group_attack = false,
	peaceful = true,
	passive = false,
	-- health & armor
	hp_min = 20, hp_max = 30, armor = 100,
	-- textures and model
	collisionbox = {-0.35,-1.0,-0.35, 0.35,0.8,0.35},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	drawtype = "front",
	textures = {
		{"TE_sol_infA10.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpg"].inventory_image,},
   		{"TE_sol_infB6.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpg"].inventory_image,},
   		{"TE_sol_infB8.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpg"].inventory_image,},
		{"TE_sol_infC9.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_bazooka"].inventory_image,},
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
--mobs:register_spawn("testmobs:ninja", {"default:leaves"}, 5, 0, 10000, 1, 31000)

mobs:register_egg("mobs_modern:moTEof", "Officer (moTE)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:moTEsp", "Special Unit (moTE)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:moTEso", "Soldier (moTE)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:moTEsn", "Sniper (moTE)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:moTErp", "RPG Unit (moTE)", "default_leaves.png", 1)