-- Soldiers ( Team C )


-- Officer

mobs:register_mob("mobs_modern:moTCof", {
	-- animal, monster, npc
	name = "moTCofficer",
	type = "armyc", "tc",
	owner = "PresidentC",
	-- aggressive, shoots shuriken
	damage = 10,
	attack_type = "shoot",
	shoot_interval = 1,
	arrow = "mobs_modern:bullet",
	shoot_offset = 2,
	attack_armyas = false,
	attack_tas = false,
	attack_armybs = true,
	attacks_tbs = true,
	attack_armycs = false,
	attacks_tcs = false,
	attack_armyds = true,
	attacks_tds = true,
	attack_armyes = true,
	attacks_tes = true,
	attack_armyfs = true,
	attacks_tfs = true,
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
		{"TC_sol_ofi1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
		{"TC_sol_ofi2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_scar"].inventory_image,},
   		{"TC_sol_ofi3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_taurus"].inventory_image,},
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = 2,
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
	view_range = 18,
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


-- Special Forces

mobs:register_mob("mobs_modern:moTCsp", {
	-- animal, monster, npc
	name = "moTCsp",
	type = "armyc", "tc",
	owner = "PresidentC",
	-- aggressive, shoots shuriken
	damage = 7,
	attack_type = "shoot",
	shoot_interval = .1,
	arrow = "mobs_modern:bullet",
	shoot_offset = 2,
	attack_players = true,
	attack_armyas = false,
	attack_tas = false,
	attack_armybs = true,
	attacks_tbs = true,
	attack_armycs = false,
	attacks_tcs = false,
	attack_armyds = true,
	attacks_tds = true,
	attack_armyes = true,
	attacks_tes = true,
	attack_armyfs = true,
	attacks_tfs = true,
	attack_evils = true,
	peaceful = false,
	passive = false,
	pathfinding = true,
	-- health & armor
	hp_min = 20, hp_max = 36, armor = 90,
	-- textures and model
	collisionbox = {-0.35,-1.0,-0.35, 0.35,0.8,0.35},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	drawtype = "front",
	textures = {
		{"TC_sol_spe1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
		{"TC_sol_spe2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_scar"].inventory_image,},
   		{"TC_sol_spe3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_kriss"].inventory_image,},
   		{"TC_sol_spe4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_scar"].inventory_image,},
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = 1.25,
	run_velocity = 2,
	jump = true,
	-- drops shuriken when dead
	drops = {
		{name = "default:apple",
		chance = 1, min = 1, max = 5},
	},
	-- damaged by
	water_damage = 0,
	lava_damage = 3,
	light_damage = 0,
	fall_damage = 5,
	view_range = 23,
	-- model animation
	animation = {
		speed_normal = 25,		speed_run = 40,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		shoot_start = 200,		shoot_end = 219,
	},
})


-- Soldier	( A : blabla )

mobs:register_mob("mobs_modern:moTCso", {
	-- animal, monster, npc
	name = "moTCsoldier",
	type = "armyc", "tc",
	owner = "PresidentC",
	-- aggressive, shoots shuriken
	damage = 3,
	attack_type = "shoot",
	shoot_interval = .3,
	arrow = "mobs_modern:bullet",
	shoot_offset = 2,
	attack_npcs = false,
	attack_monsters = true,
	attack_armyas = false,
	attack_tas = false,
	attack_armybs = true,
	attacks_tbs = true,
	attack_armycs = false,
	attacks_tcs = false,
	attack_armyds = true,
	attacks_tds = true,
	attack_armyes = true,
	attacks_tes = true,
	attack_armyfs = true,
	attacks_tfs = true,
	attack_evils = true,
	group_attack = true,
	peaceful = false,
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
		{"TC_sol_infA1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_kriss"].inventory_image,},
		{"TC_sol_infA2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
		{"TC_sol_infA3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
		{"TC_sol_infA4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m60"].inventory_image,},
   		{"TC_sol_infA5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
		{"TC_sol_infA6.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
		{"TC_sol_infA7.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m4"].inventory_image,},
--		{"TC_sol_infA8.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_kriss"].inventory_image,},
		{"TC_sol_infA9.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
		{"TC_sol_infA10.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
		{"TC_sol_infA11.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m60"].inventory_image,},
--		{"TC_sol_infA12.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
--		{"TC_sol_infA13.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m60"].inventory_image,},
--		{"TC_sol_infA14.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
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
		{name = "default:apple",
		chance = 1, min = 1, max = 5},
	},
	-- damaged by
	water_damage = 2,
	lava_damage = 4,
	light_damage = 0,
	fall_damage = 5,
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


-- Soldier	( B : blabla )

mobs:register_mob("mobs_modern:mTCsolB", {
	-- animal, monster, npc
	name = "TCssolB",
	type = "armyc", "tc",
	owner = "PresidentC",
	-- aggressive, shoots shuriken
	damage = 3,
	attack_type = "shoot",
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
	attack_armyes = true,
	attacks_tes = true,
	attack_armyfs = true,
	attacks_tfs = true,
	attack_evils = true,
	group_attack = false,
	peaceful = false,
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
		{"TC_sol_infB1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_kriss"].inventory_image,},
		{"TC_sol_infB2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
		{"TC_sol_infB3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
		{"TC_sol_infB4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m60"].inventory_image,},
   		{"TC_sol_infB5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
		{"TC_sol_infB6.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
--		{"TC_sol_infB7.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m4"].inventory_image,},
--		{"TC_sol_infB8.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_kriss"].inventory_image,},
--		{"TC_sol_infB9.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
--		{"TC_sol_infB10.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
--		{"TC_sol_infB11.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m60"].inventory_image,},
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = 3,
	run_velocity = 3,
	jump = true,
	fear_height = 2.1,
	-- drops shuriken when dead
	drops = {
		{name = "default:apple",
		chance = 1, min = 1, max = 5},
	},
	-- damaged by
	water_damage = 3,
	lava_damage = 5,
	light_damage = 0,
	fall_damage = 4,
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


-- Scout

mobs:register_mob("mobs_modern:moTCsc", {
	-- animal, monster, npc
	name = "moTCscout",
	type = "armyc", "tc",
	owner = "PresidentC",
	-- aggressive, shoots shuriken
	damage = 3,
	attack_type = "shoot",
	shoot_interval = .8,
	arrow = "mobs_modern:bullet",
	shoot_offset = 4,
	attacks_npcs = false,
	attack_armyas = false,
	attack_tas = false,
	attack_armybs = true,
	attacks_tbs = true,
	attack_armycs = false,
	attacks_tcs = false,
	attack_armyds = true,
	attacks_tds = true,
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
   		{"TC_sol_sco1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_remington"].inventory_image,},
   		{"TC_sol_sco2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
   		{"TC_sol_sco3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
   		{"TC_sol_sco4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
--		{"TC_sol_sco5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_sniper"].inventory_image,},
--		{"TC_sol_sco6.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
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


-- Sniper

mobs:register_mob("mobs_modern:moTCsn", {
	-- animal, monster, npc
	name = "moTCsniper",
	type = "armyc", "tc",
	owner = "PresidentC",
	-- aggressive, shoots shuriken
	damage = 9,
	attack_type = "shoot",
	shoot_interval = 1.8,
	arrow = "mobs_modern:snibul",
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
	attack_armyes = true,
	attacks_tes = true,
	attack_armyfs = true,
	attacks_tfs = true,
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
   		{"TC_sol_sni1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_svd"].inventory_image,},
		{"TC_sol_sni2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_svd"].inventory_image,},
		{"TC_sol_sni3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_svd"].inventory_image,},
		{"TC_sol_sni4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
--		{"TC_sol_sni5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_svd"].inventory_image,},
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = 1,
	run_velocity = 1.5,
	walk_chance = 45,
	jump = true,
	fear_height = 2.2,
	-- drops shuriken when dead
	drops = {
		{name = "default:apple",
		chance = 1, min = 1, max = 5},
	},
	-- damaged by
	water_damage = 2,
	lava_damage = 4,
	light_damage = 0,
	fall_damage = 5,
	view_range = 48,
	-- model animation
	animation = {
		speed_normal = 10,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		shoot_start = 207,		shoot_end = 214,
	},
})


-- RPG Guy

mobs:register_mob("mobs_modern:moTCrp", {
	-- animal, monster, npc
	name = "moTCrpgGuy",
	type = "armyc", "tc",
	owner = "PresidentC",
	-- aggressive, shoots shuriken
	damage = 3,
	reach = 5,
	attack_type = "shoot",
	shoot_interval = 5,
	arrow = "mobs_modern:rocket",
	shoot_offset = 2,
	attack_armyas = false,
	attack_tas = false,
	attack_armybs = true,
	attacks_tbs = true,
	attack_armycs = false,
	attacks_tcs = false,
	attack_armyds = true,
	attacks_tds = true,
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
		{"TC_sol_infA7.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpg"].inventory_image,},
   		{"TC_sol_infA10.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_bazooka"].inventory_image,},
   		{"TC_sol_infB5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpg"].inventory_image,},
		{"TC_sol_infC7.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpg"].inventory_image,},
		{"TC_sol_infC13.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpg"].inventory_image,},
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = .5,
	run_velocity = 1.1,
	jump = true,
	fear_height = 2.1,
	-- drops shuriken when dead
	drops = {
		{name = "default:apple",
		chance = 1, min = 1, max = 5},
	},
	-- damaged by
	water_damage = 5,
	lava_damage = 5,
	light_damage = 0,
	fall_damage = 6,
	view_range = 32,
	-- model animation
	animation = {
		speed_normal = 15,		speed_run = 22,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		shoot_start = 200,		shoot_end = 219,
	},
})



-- soldier spawn on top of trees
--mobs:register_spawn("mobs_modern:TCscout", {"default:leaves"}, 5, 0, 10000, 1, 31000)

mobs:register_egg("mobs_modern:moTCof", "Officer (moTC)", "default_desert_sand.png", 1)
mobs:register_egg("mobs_modern:moTCsp", "Special Force (moTC)", "default_desert_sand.png", 1)
mobs:register_egg("mobs_modern:moTCso", "Soldier A (moTC)", "default_desert_sand.png", 1)
mobs:register_egg("mobs_modern:mTCsolB", "Soldier B (moTC)", "default_desert_sand.png", 1)
--	mobs:register_egg("mobs_modern:TCssolC", "Soldier C (TC)", "default_desert_sand.png", 1)
mobs:register_egg("mobs_modern:moTCsc", "Scout (moTC)", "default_desert_sand.png", 1)
mobs:register_egg("mobs_modern:moTCsn", "Sniper (moTC)", "default_desert_sand.png", 1)
mobs:register_egg("mobs_modern:moTCrp", "RPG Unit (moTC)", "default_desert_sand.png", 1)