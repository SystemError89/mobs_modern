--	Soldiers ( Team C - Group C )


-- Special Forces

mobs:register_mob("mobs_badplayer:TCsspeC", {
	-- animal, monster, npc
	name = "TCsspeC",
	type = "tc", "armyc", "monster",
	factions = {
			member = {
				"armyc",
				"tc"
				}
			},
	owner = "PresidentC",
	-- aggressive, shoots shuriken
	damage = 7,
	attack_type = "shoot",
	shoot_interval = .1,
	arrow = "mobs_badplayer:bullet",
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
		{"TC_sol_spe2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_badplayer:weapon_scar"].inventory_image,},
   		{"TC_sol_spe3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_badplayer:weapon_kriss"].inventory_image,},
   		{"TC_sol_spe4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_badplayer:weapon_scar"].inventory_image,},
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
	on_rightclick = function(self, clicker)

		-- Monty Python tribute
		local item = clicker:get_wielded_item()

		if item:get_name() == "mobs:lava_orb" then

			if not mobs.is_creative(clicker:get_player_name()) then
				item:take_item()
				clicker:set_wielded_item(item)
			end

			self.object:set_properties({
				textures = {"TC_sol_spe1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_badplayer:weapon_ak47"].inventory_image,},
			})

			return
		end
	end,
	-- damaged by
	water_damage = 0,
	lava_damage = 3,
	light_damage = 0,
	fall_damage = 5,
	view_range = 24,
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


-- Soldier	( C : blibli )

mobs:register_mob("mobs_badplayer:TCssolC", {
	-- animal, monster, npc
	name = "TCssolC",
	type = "tc", "armyc", "monster",
	factions = {
			member = {
				"armyc",
				"tc"
				}
			},
	owner = "PresidentC",
	owner_loyal = true,
	-- aggressive, shoots grenode
	damage = 8,
	attack_type = "dogshoot",
	dogshoot_switch = 1,
	dogshoot_count_max = 4, -- shoot for 4 seconds
	dogshoot_count2_max = 2, -- dogfight for 2 seconds
	reach = 2,
	punch_interval = 1.5,
	shoot_interval = 0.3,
	arrow = "mobs_badplayer:bullet",
	shoot_offset = 1.7,
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
		{"TC_sol_infC1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_badplayer:weapon_kriss"].inventory_image,},
		{"TC_sol_infC2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_badplayer:weapon_ak47"].inventory_image,},
		{"TC_sol_infC3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_badplayer:weapon_ump"].inventory_image,},
		{"TC_sol_infC4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_badplayer:weapon_m60"].inventory_image,},
   		{"TC_sol_infC5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_badplayer:weapon_rpk"].inventory_image,},
		{"TC_sol_infC6.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_badplayer:weapon_benelli"].inventory_image,},
		{"TC_sol_infC7.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_badplayer:weapon_m4"].inventory_image,},
		{"TC_sol_infC8.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_badplayer:weapon_kriss"].inventory_image,},
		{"TC_sol_infC9.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_badplayer:weapon_ak47"].inventory_image,},
		{"TC_sol_infC10.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_badplayer:weapon_ump"].inventory_image,},
		{"TC_sol_infC11.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_badplayer:weapon_m60"].inventory_image,},
--		{"TC_sol_infC12.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_badplayer:weapon_kriss"].inventory_image,},
		{"TC_sol_infC13.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_badplayer:weapon_ak47"].inventory_image,},
		{"TC_sol_infC14.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_badplayer:weapon_ump"].inventory_image,},
--		{"TC_sol_infC15.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_badplayer:weapon_m60"].inventory_image,},
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


mobs:register_mob("mobs_badplayer:TCdrone", {
	type = "tc", "armyc", "monster",
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
	walk_velocity = 1.6,
	run_velocity = 3.2,
	drops = {
		{name = "default:apple",
		chance = 1, min = 1, max = 5},
	},
	animation = {
		stand_speed = 50, walk_speed = 50, run_speed = 50,
		stand_start = 15,		stand_end = 25,
		walk_start = 15,		walk_end = 25,
		run_start = 0,		run_end = 40,
	},
	lava_damage = 4,
	light_damage = 0,
	fall_damage = 10,
	view_range = 57,
	--attack_type = "dogshoot",
	damage = 20,
	attack_type = "shoot",
	arrow = "mobs_badplayer:shot_bazooka2",
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
	attack_armyes = true,
	attacks_tes = true,
	attack_armyfs = true,
	attacks_tfs = true,
	attack_evils = true,
	passive = false,
	jump = true,
	jump_height = 4,
	floats=1,
	fly = true,
	fly_in = {"air"},
	jump_chance = 58,
	fear_height = 120,	
	blood_amount = 0,
})



-- soldier spawn on top of trees
--mobs:register_spawn("mobs_badplayer:TCscout", {"default:leaves"}, 5, 0, 10000, 1, 31000)

mobs:register_egg("mobs_badplayer:TCsspeC", "Special Force C (TC)", "default_desert_sand.png", 1)
mobs:register_egg("mobs_badplayer:TCssolC", "Soldier C (TC)", "default_desert_sand.png", 1)
mobs:register_egg("mobs_badplayer:TCdrone", "Drone (TC)", "default_desert_sand.png", 1)