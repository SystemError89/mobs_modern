--	----	----	----		Modern Mobs 	----	----	----	--

--	----	Team AC - Gang 2	----	--

--	Boss
mobs:register_mob("mobs_modern:moTACb", {
	type = "tac", "ta",
	hp_min = 33,
	hp_max = 35,
	collisionbox = {-0.3, -0.8, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {
		{"TAC_b1.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
--		{"TAC_b2.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
--		{"TAC_b3.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
	},
	visual_size = {x=1, y=.8},
	makes_footstep_sound = true,
	view_range = 25,
	walk_velocity = 1.6,
	run_velocity = 4,
	damage = 2.5,
	drops = {
		{name = "default:leaves",
		chance = 1,
		min = 3,
		max = 5,},
		{name = "default:sword_steel",
		chance = 2,
		min = 0,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 13,
			max=30,},

	},
	armor = 80,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 50,
	light_damage = 0,
	fear_height = 5,
	follow = "default:apple",
	attack_type = "dogshoot",
	dogshoot_switch = 1,
	dogshoot_count_max = 3, -- shoot for 4 seconds
	dogshoot_count2_max = 1, -- dogfight for 2 seconds
	reach = 2,
	punch_interval = 1,
	shoot_interval = .3,
	arrow = "mobs_modern:bullet",
	shoot_offset = 2,
	pathfinding = true,
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_oerkki_attack",
		death = "mobs_death1",
		attack = "default_punch",
		},
	blood_amount = 3,
	blood_texture = "mobs_blood.png",
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})

--	Gang Member
mobs:register_mob("mobs_modern:moTACg", {
	type = "tac", "ta", "npc",
	hp_min = 19,
	hp_max = 28,
	collisionbox = {-0.3, -0.6, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {
		{"TAC_g1.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TAC_g2.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TAC_g3.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TAC_g4.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
	 	{"TAC_g5.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TAC_g6.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TAC_g7.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TAC_g8.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TAC_g9.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TAC_g10.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TAC_g11.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TAC_g12.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
	 	{"TAC_g13.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TAC_g14.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
--		{"TAC_g15.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
	},
	visual_size = {x=1.2, y=1},
	makes_footstep_sound = true,
	view_range = 22,
	walk_velocity = 0.1,
	run_velocity = 2,
	damage = 3,
	drops = {
		{name = "default:stone_with_mese",
		chance = 7,
		min = 0,
		max = 5,},
		{name = "default:sword_steel",
		chance = 1,
		min = 0,
		max = 1,},
		{name = "default:apple",
			chance = 1,
			min = 1,
			max=3,},

	},
	armor = 80,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 1,
	fear_height = 5,
	on_rightclick = nil,
	attack_type = "dogshoot",
	dogshoot_switch = 1,
	dogshoot_count_max = 4, -- shoot for 4 seconds
	dogshoot_count2_max = 8, -- dogfight for 2 seconds
	reach = 2,
	punch_interval = 1.2,
	shoot_interval = .5,
	arrow = "mobs_modern:bullet",
	shoot_offset = 2,
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	attacks_tabs = true,
	attack_chance = 25,
	peaceful = false,
	on_blast = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat = function(pos,text,radius)
           if radius == nil then
              radius = 25
           end
           if pos ~= nil then
              local oir = minetest.get_objects_inside_radius(pos, radius)
              for _,p in pairs(oir) do
                 if p:is_player() then
                    minetest.chat_send_player(p:get_player_name(),text)
                 end
              end
           end
        end
        local_chat(clicker:getpos(),"CGangmember: Oh shiiat !!!",3)
	end,
	on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		local_chat = function(pos,text,radius)
           if radius == nil then
              radius = 25
           end
           if pos ~= nil then
              local oir = minetest.get_objects_inside_radius(pos, radius)
              for _,p in pairs(oir) do
                 if p:is_player() then
                    minetest.chat_send_player(p:get_player_name(),text)
                 end
              end
           end
        end
        local_chat(clicker:getpos(),"CGangmember: What's crackin ?!",3)
	end,
	blood_amount = 5,
	blood_texture = "mobs_blood.png",
	animation = {
		speed_normal = 30,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
	},
	sounds = {
		war_cry = "mobs_barbarian_yell2",
		death = "mobs_howl",
		attack = "default_punch3",
		},
})


--mobs:register_spawn("mobs_modern:moTABg", {"mobs_modern:ntac"}, 5, 0, 10000, 1, 31000)
--mobs:register_spawn("mobs_modern:moTABl", {"mobs_modern:ntac"}, 5, 0, 10000, 1, 31000)

mobs:register_egg("mobs_modern:moTACb", "Gang Boss (moTAc)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:moTACg", "Gang Member (moTAc)", "default_leaves.png", 1)