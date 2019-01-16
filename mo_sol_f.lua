-- Soldiers ( Team F )


-- Officer

mobs:register_mob("mobs_modern:moTFof", {
	-- animal, monster, npc
	name = "moTFofficer",
	type = "armyf", "tf",
	owner = "PresidentF",
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
	attack_armyfs = false,
	attacks_tfs = false,
	attack_evils = true,
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
		{"TF_sol_ofi1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_uzi"].inventory_image,},
   		{"TF_sol_ofi2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_mp5"].inventory_image,},
		{"TF_sol_ofi3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
--		{"TF_sol_ofi4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
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

mobs:register_mob("mobs_modern:moTFsp", {
	-- animal, monster, npc
	name = "moTFsp",
	type = "armyf", "tf",
	owner = "PresidentF",
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
	attack_armyes = true,
	attacks_tes = true,
	attack_armyfs = false,
	attacks_tfs = false,
	attack_evils = true,
	group_attack = false,
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
		{"TF_sol_infC1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
   		{"TF_sol_infC2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
		{"TF_sol_infC3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
		{"TF_sol_infC4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_uzi"].inventory_image,},
		{"TF_sol_infC5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_mp5"].inventory_image,},
		{"TF_sol_infC6.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
--		{"TF_sol_infC7.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
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
		{name = "farming:bread",
		chance = 1, min = 1, max = 5},
	},
	-- damaged by
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	fall_damage = 0,
	view_range = 23,
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


-- Soldier	( A : blabla camo )

mobs:register_mob("mobs_modern:moTFso", {
	-- animal, monster, npc
	name = "moTFsoldier",
	type = "armyf", "tf",
	owner = "PresidentF",
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
		{"TF_sol_infA1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_uzi"].inventory_image,},
   		{"TF_sol_infA2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_mp5"].inventory_image,},
		{"TF_sol_infA3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
		{"TF_sol_infA4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
		{"TF_sol_infA5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_uzi"].inventory_image,},
   		{"TF_sol_infA6.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_mp5"].inventory_image,},
		{"TF_sol_infA7.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = 3,
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


-- Soldier	( B : blublu camo )

mobs:register_mob("mobs_modern:TFssolB", {
	-- animal, monster, npc
	name = "TFssolB",
	type = "tf", "armyf",
	factions = {
			member = {
				"armyf",
				"tf"
				}
			},
	owner = "PresidentF",
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
	attack_armyfs = false,
	attacks_tfs = false,
	attack_evils = true,
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
		{"TF_sol_infB1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
		{"TF_sol_infB2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_uzi"].inventory_image,},
--		{"TF_sol_infB3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_uzi"].inventory_image,},
   		{"TF_sol_infB4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_mp5"].inventory_image,},
		{"TF_sol_infB5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
		{"TF_sol_infB6.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
--		{"TF_sol_infB7.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_uzi"].inventory_image,},
		{"TF_sol_infB8.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_mp5"].inventory_image,},
		{"TF_sol_infB9.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = 3,
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


-- Soldier ( D: Dark Jungle)

mobs:register_mob("mobs_modern:TFssolD", {
	-- animal, monster, npc
	name = "TFssolD",
	type = "tf", "armyf",
	factions = {
			member = {
				"armyf",
				"tf"
				}
			},
	owner = "PresidentF",
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
	attack_armyes = true,
	attacks_tes = true,
	attack_armyfs = false,
	attacks_tfs = false,
	attack_evils = true,
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
		{"TF_sol_infD1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_uzi"].inventory_image,},
		{"TF_sol_infD2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_mp5"].inventory_image,},
		{"TF_sol_infD3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
		{"TF_sol_infD4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
		{"TF_sol_infD5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
		{"TF_sol_infD6.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_uzi"].inventory_image,},
		{"TF_sol_infD7.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_mp5"].inventory_image,},
		{"TF_sol_infD8.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
		{"TF_sol_infD9.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
		{"TF_sol_infD10.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
		{"TF_sol_infD11.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_uzi"].inventory_image,},
		{"TF_sol_infD12.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_mp5"].inventory_image,},
		{"TF_sol_infD14.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
		{"TF_sol_infD16.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
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


--	Scout

mobs:register_mob("mobs_modern:TFssco", {
	-- animal, monster, npc
	name = "TFssco",
	type = "tf", "armyf",
	owner = "PresidentF",
	-- aggressive, shoots shuriken
	damage = 5,
	attack_type = "shoot",
	shoot_interval = .7,
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
	attack_armyes = true,
	attacks_tes = true,
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
		{"TF_sol_sco1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
   		{"TF_sol_sco2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
		{"TF_sol_sco3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
		{"TF_sol_sco4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_uzi"].inventory_image,},
		{"TF_sol_sco5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_mp5"].inventory_image,},
		{"TF_sol_sco6.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
		{"TF_sol_sco7.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = 3,
	run_velocity = 3,
	jump = true,
	fear_height = 2.2,
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


--	Sniper

mobs:register_mob("mobs_modern:moTFsn", {
	-- animal, monster, npc
	name = "moTFsniper",
	type = "armyf", "tf",
	owner = "PresidentF",
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
	attack_armyes = true,
	attacks_tes = true,
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
		{"TF_sol_sni1.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_uzi"].inventory_image,},
   		{"TF_sol_sni2.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_mp5"].inventory_image,},
		{"TF_sol_sni3.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
		{"TF_sol_sni4.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
		{"TF_sol_sni5.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_uzi"].inventory_image,},
--		{"TF_sol_sni6.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_mp5"].inventory_image,},
--		{"TF_sol_sni7.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
--		{"TF_sol_sni8.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
--		{"TF_sol_sni9.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_svd"].inventory_image,},
--		{"TF_sol_sni10.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_svd"].inventory_image,},
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = 1,
	run_velocity = 3,
	walk_chance = 55,
	jump = true,
	fear_height = 1.8,
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
	view_range = 48,
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


mobs:register_mob("mobs_modern:moTFrp", {
	-- animal, monster, npc
	name = "moTFrpgGuy",
	type = "armyf", "tf",
	owner = "PresidentF",
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
	attack_armyes = true,
	attacks_tes = true,
	attack_armyfs = false,
	attacks_tfs = false,
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
		{"TF_sol_infA3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpg"].inventory_image,},
   		{"TF_sol_infB2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpg"].inventory_image,},
   		{"TF_sol_infB8.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpg"].inventory_image,},
		{"TF_sol_infD3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_bazooka"].inventory_image,},
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = 2,
	run_velocity = 2,
	jump = true,
	fear_height = 2.1,
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


mobs:register_mob("mobs_modern:moTFdr", {
	type = "armyf", "tf",
	pathfinding = true,
	group_attack = true,
	hp_min = 18,
	hp_max = 18,
	collisionbox = {-0.25, -0.01, -0.25, 0.25, 0.89, 0.25},
	visual = "mesh",
	mesh = "mobs_mc_bat.b3d",
	textures = {
		{"mobs_drone.jpg"},
	},
	visual_size = {x=3, y=3},
	sounds = {
		shoot = "mobs_war_shot",
		death = "mobs_zombiedeath",
		damage = "mobs_zombiehurt",
		attack = "mobs_war_shot2",
		random = "mobs_eerie",
	},
	walk_velocity = 2.5,
	run_velocity = 3.2,
	drops = {
		{name = "default:apple",
		chance = 1, min = 1, max = 5},
	},
	animation = {
		stand_speed = 25, walk_speed = 50, run_speed = 75,
		stand_start = 0,		stand_end = 40,
		walk_start = 0,		walk_end = 40,
		run_start = 0,		run_end = 40,
	},
	lava_damage = 6,
	light_damage = 0,
	fall_damage = 12,
	view_range = 60,
	--attack_type = "dogshoot",
	damage = 20,
	attack_type = "shoot",
	arrow = "mobs_modern:shot_bazooka2",
	shoot_interval = 2.9,
	shoot_offset = .1,
		--'dogshoot_switch' allows switching between shoot and dogfight modes inside dogshoot using timer (1 = shoot, 2 = dogfight)
	--'dogshoot_count_max' number of seconds before switching above modes.
	attack_players = true,
	attack_armyas = false,
	attack_tas = false,
	attack_armybs = true,
	attacks_tbs = true,
	attack_armycs = true,
	attacks_tcs = true,
	attack_armyds = true,
	attacks_tds = true,
	attack_armyes = true,
	attacks_tes = true,
	attack_armyfs = false,
	attacks_tfs = false,
	attack_evils = true,
	passive = true,
	jump = true,
	jump_height = 5,
	floats=1,
	fly = true,
	fly_in = {"air"},
	jump_chance = 18,
	fear_height = 120,	
	blood_amount = 0,
})


-- ninja spawn on top of trees
--mobs:register_spawn("testmobs:ninja", {"default:leaves"}, 5, 0, 10000, 1, 31000)

mobs:register_egg("mobs_modern:moTFof", "Officer (moTF)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:moTFsp", "Special Unit (moTF)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:moTFso", "Soldier A (moTF)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:TFssolB", "Soldier B (TF)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:TFssolD", "Soldier D (TF)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:TFssco", "Scout (TF)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:moTFsn", "Sniper (moTF)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:moTFrp", "RPG Unit (moTF)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:moTFdr", "Drone (moTF)", "default_leaves.png", 2)