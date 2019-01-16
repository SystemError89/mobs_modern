-- Soldiers ( Team D )

--soldier drops when right click with gold lump.
mobs.npc_drops = { "default:pick_steel", "mobs:meat", "default:sword_steel", "default:shovel_steel", "farming:bread", "default:wood" }--Added 20151121
mobs.npc2_drops = { "default:pick_mese", "mobs:meat", "default:sword_diamond", "default:pick_diamond", "farming:bread", "default:wood" }--Added 20151121


-- Officer

mobs:register_mob("mobs_modern:moTDof", {
	-- animal, monster, npc
	name = "moTDof",
	type = "td", "armyd",
	owner = "PresidentD",
	-- aggressive, shoots shuriken
	knock_back = 0,
	damage = 3,
	attack_type = "shoot",
	shoot_interval = 1,
	arrow = "mobs_modern:bullet",
	shoot_offset = 2,
	attacks_npcs = false,
	attack_armyas = true,
	attacks_tas = true,
	attack_armybs = false,
	attacks_tbs = false,
	attack_armycs = true,
	attack_tcs = true,
	attacks_armyds = false,
	attack_tds = false,
	attack_armyes = true,
	attacks_tes = true,
	attack_armyfs = true,
	attacks_tfs = true,
	attack_evils = true,
	group_attack = false,
	peaceful = true,
	passive = false,
	pathfinding = 2,
	-- health & armor
	hp_min = 22, hp_max = 33, armor = 100,
	-- textures and model
	collisionbox = {-0.35,-1.0,-0.35, 0.35,0.8,0.35},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	drawtype = "front",
	textures = {
		{"TD_sol_ofi1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_beretta"].inventory_image,},
   		{"TD_sol_ofi2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_taurus"].inventory_image,},
   		{"TD_sol_ofi3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_beretta"].inventory_image,},
   		{"TD_sol_ofi4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_taurus"].inventory_image,},
   		{"TD_sol_ofi5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_beretta"].inventory_image,},
   		{"TD_sol_ofi6.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_taurus"].inventory_image,},
   		{"TD_sol_ofi7.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_beretta"].inventory_image,},
--		{"TD_sol_ofi8.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_taurus"].inventory_image,},
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = .75,
	walk_chance = 85,
	run_velocity = 3,
	jump = true,
	fear_height = 4.5,
	-- drops shuriken when dead
	drops = {
		{name = "default:apple",
		chance = 1, min = 1, max = 5},
	},
	on_rightclick = function(self, clicker)
		self.order = "stand"
		local item = clicker:get_wielded_item()
		--local_chat(clicker:getpos(),"John: Let's go grief some monsters!",3)
		if item:get_name() == "mobs:meat" or item:get_name() == "farming:bread" then
			local hp = self.object:get_hp()
			if hp + 8 > self.hp_max then return end
			if not minetest.setting_getbool("creative_mode") then
				item:take_item()
				clicker:set_wielded_item(item)
			end
			self.object:set_hp(hp+8)


		else
			if self.owner == "" then
				self.owner = clicker:get_player_name()
			else
				local formspec = "size[8,4]"
				formspec = formspec .. "textlist[2.85,0;2.1,0.5;dialog;Blyat!!?!]"
				formspec = formspec .. "button_exit[1,1;2,2;gspe;Special Unit]"
				formspec = formspec .. "button_exit[5,1;2,2;grpg;RPG Unit]"
				formspec = formspec .. "button_exit[0,2;4,4;gsol;Soldier]"
				formspec = formspec .. "button_exit[4,2;4,4;gsni;Sniper]"
				--formspec = formspec .. "button_exit[1,2;2,2;ggohome; go home]"
				--formspec = formspec .. "button_exit[5,2;2,2;gsethome; sethome]"
				minetest.show_formspec(clicker:get_player_name(), "order", formspec)
				local pos = self.object:getpos()
				minetest.register_on_player_receive_fields(function(clicker, formname, fields)
					if fields.gspe then
						minetest.add_entity(pos, "mobs_modern:TDsspe")
					end
					if fields.grpg then
						self.order = "stand"
						local pos = self.object:getpos()
						pos.y = pos.y + 1.5
						pos.x = pos.x + 1
						minetest.add_entity(pos, "mobs_modern:TDsrpg")
					end
					if fields.gsol then
						local pos = self.object:getpos()
						pos.y = pos.y + 3
						minetest.add_entity(pos, "mobs_modern:TDssol")
					end
					if fields.gsni then
						self.order = "stand"
						local pos = self.object:getpos()
						minetest.add_entity(pos, "mobs_modern:TDssni")
					end
					if fields.gsethome then
						self.floats = self.object:getpos()
					end
					if fields.ggohome then
						if self.floats then
							self.order = "stand"
							self.object:setpos(self.floats)
						end
					end
				end)

			end
		end
	end,
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


-- Special Forces

mobs:register_mob("mobs_modern:TDsspe", {
	-- animal, monster, npc
	name = "TDsspe",
	type = "td", "armyd",
	owner = "PresidentD",
	-- aggressive, shoots shuriken
	recovery_time = .1,
	knock_back = .5,
	damage = 3,
	attack_type = "dogshoot",
	dogshoot_switch = 1,
	dogshoot_count_max = 3.6, -- shoot for 4 seconds
	dogshoot_count2_max = .4, -- dogfight for 2 seconds
	reach = 2,
	punch_interval = 1.2,
	shoot_interval = .2,
	arrow = "mobs_modern:bullet",
	shoot_offset = 2,
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
	peaceful = false,
	passive = false,
	pathfinding = true,
	follow = "mobs_modern:TDsofi",
	-- health & armor
	hp_min = 20, hp_max = 33, armor = 90,
	-- textures and model
	collisionbox = {-0.35,-1.0,-0.35, 0.35,0.8,0.35},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	drawtype = "front",
	textures = {
		{"TD_sol_spe1.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
		{"TD_sol_spe2.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
   		{"TD_sol_spe3.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_scar"].inventory_image,},
   		{"TD_sol_spe4.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
   		{"TD_sol_spe5.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
   		{"TD_sol_spe6.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
--		{"TD_sol_spe7.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_remington"].inventory_image,},
--		{"TD_sol_spe8.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_aa12"].inventory_image,},
--		{"TD_sol_spe9.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = 3,
	run_velocity = 3,
	jump = true,
	jump_height = 2.1,
	fear_height = 2.5,
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
	view_range = 29,
	replace_rate = 10,
	replace_offset = -1,
	replace_what = {
		{"group:grass", "mobs_modern:ntds", 0},
		{"mobs_modern:ntas", "mobs_modern:ntds", -1},
		{"mobs_modern:ntas", "mobs_modern:ntds", -2}
	},
	replace_with = "default:air",
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

mobs:register_mob("mobs_modern:TDssol", {
	-- animal, monster, npc
	name = "TDssol",
	type = "td", "armyd",
	owner = "PresidentD",
	-- aggressive, shoots shuriken
	recovery_time = .4,
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
	peaceful = false,
	passive = false,
	pathfinding = true,
	follow = "wool:red",
	-- health & armor
	hp_min = 20, hp_max = 33, armor = 95,
	-- textures and model
	collisionbox = {-0.35,-1.0,-0.35, 0.35,0.8,0.35},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	drawtype = "front",
	textures = {
		{"TD_sol_infA1.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
		{"TD_sol_infA2.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
   		{"TD_sol_infA3.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_scar"].inventory_image,},
   		{"TD_sol_infA4.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
   		{"TD_sol_infA5.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
   		{"TD_sol_infA6.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
   		{"TD_sol_infA7.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_remington"].inventory_image,},
--		{"TD_sol_infA8.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_aa12"].inventory_image,},
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

		if item:get_name() == "wool:brown" then

			if not mobs.is_creative(clicker:get_player_name()) then
				item:take_item()
				clicker:set_wielded_item(item)
			end
			
			if math.random(1,8) == 1 then
				self.object:set_properties({
				textures = 	{"TD_sol_infB1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
				})
			elseif math.random(1,8) == 2 then
				self.object:set_properties({
				textures = 	{"TD_sol_infB2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
				})
			elseif math.random(1,8) == 3 then
				self.object:set_properties({
				textures = 	{"TD_sol_infB3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_scar"].inventory_image,},
				})
			elseif math.random(1,8) == 4 then
				self.object:set_properties({
				textures = 	{"TD_sol_infB4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
				})
			elseif math.random(1,8) == 5 then
				self.object:set_properties({
				textures = 	{"TD_sol_infB5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
				})
			elseif math.random(1,8) == 6 then
				self.object:set_properties({
				textures = 	{"TD_sol_infB6.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
				})
			elseif math.random(1,8) == 7 then
				self.object:set_properties({
				textures = 	{"TD_sol_infB7.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_remington"].inventory_image,},
				})
			elseif math.random(1,8) == 8 then
				self.object:set_properties({
				textures = 	{"TD_sol_infB8.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
				})
			else
				self.object:set_properties({
				textures = 	{"TD_sol_infB1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
				})
			end

			return
		end
		
		if item:get_name() == "wool:green" then

			if not mobs.is_creative(clicker:get_player_name()) then
				item:take_item()
				clicker:set_wielded_item(item)
			end
			
			if math.random(1,9) == 1 then
				self.object:set_properties({
				textures = 	{"TD_sol_infC2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
				})
			elseif math.random(1,10) == 2 then
				self.object:set_properties({
				textures = 	{"TD_sol_infC3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m16"].inventory_image,},
				})
			elseif math.random(1,10) == 3 then
				self.object:set_properties({
				textures = 	{"TD_sol_infC4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
				})
			elseif math.random(1,10) == 4 then
				self.object:set_properties({
				textures = 	{"TD_sol_infC5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m16"].inventory_image,},
				})
			elseif math.random(1,10) == 5 then
				self.object:set_properties({
				textures = 	{"TD_sol_infC6.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
				})
			elseif math.random(1,10) == 6 then
				self.object:set_properties({
				textures = 	{"TD_sol_infC7.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
				})
			elseif math.random(1,10) == 7 then
				self.object:set_properties({
				textures = 	{"TD_sol_infC8.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
				})
			elseif math.random(1,10) == 8 then
				self.object:set_properties({
				textures = 	{"TD_sol_infC9.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m16"].inventory_image,},
				})
			elseif math.random(1,10) == 9 then
				self.object:set_properties({
				textures = 	{"TD_sol_infC10.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
				})
			elseif math.random(1,10) == 10 then
				self.object:set_properties({
				textures = 	{"TD_sol_infC11.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m16"].inventory_image,},
				})
			else
				self.object:set_properties({
				textures = 	{"TD_sol_infB1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
				})
			end

			return
		end
		
		if item:get_name() == "wool:dark_green" then

			if not mobs.is_creative(clicker:get_player_name()) then
				item:take_item()
				clicker:set_wielded_item(item)
			end
			
			if math.random(1,3) == 1 then
				self.object:set_properties({
				textures = 	{"TD_sol_infD1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
				})
			elseif math.random(1,3) == 2 then
				self.object:set_properties({
				textures = 	{"TD_sol_infD2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m16"].inventory_image,},
				})
			elseif math.random(1,3) == 3 then
				self.object:set_properties({
				textures = 	{"TD_sol_infD3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
				})
--			elseif math.random(1,5) == 4 then
--				self.object:set_properties({
--				textures = 	{"TD_sol_infD4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m16"].inventory_image,},
--				})
--			elseif math.random(1,5) == 5 then
--				self.object:set_properties({
--				textures = 	{"TD_sol_infD5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
--				})
			else
				self.object:set_properties({
				textures = 	{"TD_sol_infD1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ump"].inventory_image,},
				})
			end

			return
		end
	end,
	-- damaged by
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	fall_damage = 3,
	view_range = 25,
	replace_rate = 10,
	replace_what = {
		{"group:grass", "mobs_modern:ntds", 0},
		{"mobs_modern:ntas", "mobs_modern:ntds", -1},
		{"mobs_modern:ntas_with_grass", "mobs_modern:ntds_with_grass", -1},
		{"mobs_modern:ntas_with_dry_grass", "mobs_modern:ntds_with_dry_grass", -1},
		{"mobs_modern:ntas_with_snow", "mobs_modern:ntds_with_snow", -1},
		{"mobs_modern:ntas_with_rainforest_litter", "mobs_modern:ntds_with_rainforest_litter", -1},
		{"mobs_modern:ntas", "mobs_modern:ntds", -2},
		{"mobs_modern:ntas_with_grass", "mobs_modern:ntds_with_grass", -2},
		{"mobs_modern:ntas_with_dry_grass", "mobs_modern:ntds_with_dry_grass", -2},
		{"mobs_modern:ntas_with_snow", "mobs_modern:ntds_with_snow", -2},
		{"mobs_modern:ntas_with_rainforest_litter", "mobs_modern:ntds_with_rainforest_litter", -2},
		{"mobs_modern:ntbs", "mobs_modern:ntds", -1},
		{"mobs_modern:ntbs_with_grass", "mobs_modern:ntds_with_grass", -1},
		{"mobs_modern:ntbs_with_dry_grass", "mobs_modern:ntds_with_dry_grass", -1},
		{"mobs_modern:ntbs_with_snow", "mobs_modern:ntds_with_snow", -1},
		{"mobs_modern:ntbs_with_rainforest_litter", "mobs_modern:ntds_with_rainforest_litter", -1},
		{"mobs_modern:ntbs", "mobs_modern:ntds", -2},
		{"mobs_modern:ntbs_with_grass", "mobs_modern:ntds_with_grass", -2},
		{"mobs_modern:ntbs_with_dry_grass", "mobs_modern:ntds_with_dry_grass", -2},
		{"mobs_modern:ntbs_with_snow", "mobs_modern:ntds_with_snow", -2},
		{"mobs_modern:ntbs_with_rainforest_litter", "mobs_modern:ntds_with_rainforest_litter", -2},
		{"mobs_modern:ntcs", "mobs_modern:ntds", -1},
		{"mobs_modern:ntcs_with_grass", "mobs_modern:ntds_with_grass", -1},
		{"mobs_modern:ntcs_with_dry_grass", "mobs_modern:ntds_with_dry_grass", -1},
		{"mobs_modern:ntcs_with_snow", "mobs_modern:ntds_with_snow", -1},
		{"mobs_modern:ntcs_with_rainforest_litter", "mobs_modern:ntds_with_rainforest_litter", -1},
		{"mobs_modern:ntcs", "mobs_modern:ntds", -2},
		{"mobs_modern:ntcs_with_grass", "mobs_modern:ntds_with_grass", -2},
		{"mobs_modern:ntcs_with_dry_grass", "mobs_modern:ntds_with_dry_grass", -2},
		{"mobs_modern:ntcs_with_snow", "mobs_modern:ntds_with_snow", -2},
		{"mobs_modern:ntcs_with_rainforest_litter", "mobs_modern:ntds_with_rainforest_litter", -2},
		{"mobs_modern:ntes", "mobs_modern:ntds", -1},
		{"mobs_modern:ntes", "mobs_modern:ntds", -2},
		{"mobs_modern:ntfs", "mobs_modern:ntds", -1},
		{"mobs_modern:ntfs", "mobs_modern:ntds", -2},
		{"default:dirt_with_grass", "mobs_modern:ntds_with_grass", -2},
		{"default:dirt_with_dry_grass", "mobs_modern:ntds_with_dry_grass", -2},
		{"default:dirt_with_snow", "mobs_modern:ntds_with_snow", -2},
		{"default:dirt_with_rainforest_litter", "mobs_modern:ntds_with_rainforest_litter", -2}
	},
	replace_with = "mobs_modern:ntds",
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


-- Reserve Soldier

mobs:register_mob("mobs_modern:TDsres", {
	-- animal, monster, npc
	type = "td", "armyd", "npc",
	owner = "",
	-- aggressive, shoots shuriken
	knock_back = 0,
	damage = 3,
	attack_type = "shoot",
	shoot_interval = .3,
	arrow = "mobs_modern:bullet",
	shoot_offset = 2,
	attacks_monsters = true,
	attack_armyas = true,
	attacks_tas = true,
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
	passive = false,
	group_attack = false,
	pathfinfing = 2,
	-- health & armor
	hp_min = 20, hp_max = 36, armor = 95,
	-- textures and model
	collisionbox = {-0.35,-1.0,-0.35, 0.35,0.8,0.35},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	drawtype = "front",
	textures = {
		{"TD_sol_infR1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
--		{"TD_sol_infR2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
--		{"TD_sol_infR3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,}, -- female by nuttmeg20
--		{"TD_sol_infR4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
--		{"TD_sol_infR5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = .5,
	walk_chance = 1455,
	run_velocity = 2,
	jump = true,
	jump_height = 2.4,
	fear_height = 2.5,
	-- drops shuriken when dead
	drops = {
		{name = "default:apple",
		chance = 1, min = 1, max = 5},
	},
	-- on rightclick function
	on_rightclick = function(self, clicker)
		local item = clicker:get_wielded_item()
		--local_chat(clicker:getpos(),"John: Let's go grief some monsters!",3)
		if item:get_name() == "mobs:meat" or item:get_name() == "farming:bread" then
			local hp = self.object:get_hp()
			if hp + 8 > self.hp_max then return end
			if not minetest.setting_getbool("creative_mode") then
				item:take_item()
				clicker:set_wielded_item(item)
			end
			self.object:set_hp(hp+8)


		-- right clicking with gold lump drops random item from mobs.npc_drops
		elseif item:get_name() == "default:gold_lump" then
			if not minetest.setting_getbool("creative_mode") then
				item:take_item()
				clicker:set_wielded_item(item)
			end
			local pos = self.object:getpos()
			pos.y = pos.y + 0.5
			minetest.add_item(pos, {name = mobs.npc_drops[math.random(1,#mobs.npc_drops)]})
		-- chocolate in the air
		elseif item:get_name() == "wool:red" then
			if not minetest.setting_getbool("creative_mode") then
				item:take_item()
				clicker:set_wielded_item(item)
			end
			local pos = self.object:getpos()
			pos.y = pos.y + 1.5
			pos.x = pos.x + 1
			minetest.add_entity(pos, "mobs_modern:TDsres")
		-- blast
		elseif item:get_name() == "wool:green" then
			if not minetest.setting_getbool("creative_mode") then
				item:take_item()
				clicker:set_wielded_item(item)
			end
			local pos = self.object:getpos()
			pos.y = pos.y + 2
			minetest.set_node(pos, {name = "fire:basic_flame"})
		else
			if self.owner == "" then
				self.owner = clicker:get_player_name()
			else
				local formspec = "size[8,4]"
				formspec = formspec .. "textlist[2.85,0;2.1,0.5;dialog;Blyat!!?!]"
				formspec = formspec .. "button_exit[1,1;2,2;gfollow;follow]"
				--formspec = formspec .. "button_exit[5,1;2,2;gstand;stand]"
				formspec = formspec .. "button_exit[0,2;4,4;gfandp;follow and protect]"
				formspec = formspec .. "button_exit[4,2;4,4;gsandp;stand and protect]"
				--formspec = formspec .. "button_exit[1,2;2,2;ggohome; go home]"
				--formspec = formspec .. "button_exit[5,2;2,2;gsethome; sethome]"
				minetest.show_formspec(clicker:get_player_name(), "order", formspec)
				minetest.register_on_player_receive_fields(function(clicker, formname, fields)
					if fields.gfollow then
						self.order = "follow"
						self.attacks_monsters = false
					end
					if fields.gstand then
						self.order = "stand"
						self.attacks_monsters = false
						self.peaceful = true
					end
					if fields.gfandp then
						self.order = "follow"
					end
					if fields.gsandp then
						self.order = "stand"
						self.attacks_monsters = true
						self.peaceful = true
					end
					if fields.gsethome then
						self.floats = self.object:getpos()
					end
					if fields.ggohome then
						if self.floats then
							self.order = "stand"
							self.object:setpos(self.floats)
						end
					end
				end)

			end
		end
	end,
	-- damaged by
	water_damage = 3,
	lava_damage = 9,
	light_damage = 0,
	fall_damage = 5,
	view_range = 25,
	replace_rate = 10,
	replace_what = {
		{"group:grass", "farming:wheat_8", 0},
		{"mobs_modern:ntas", "mobs_modern:ntds", -1},
		{"mobs_modern:ntas", "mobs_modern:ntds", -2}
	},
	replace_with = "mobs_modern:ntds",
	-- model animation
	animation = {
		speed_normal = 20,		speed_run = 40,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		shoot_start = 200,		shoot_end = 219,
	},
})


-- Scout

mobs:register_mob("mobs_modern:TDssco", {
	-- animal, monster, npc
	name = "TDssco",
	type = "td", "armyd",
	owner = "PresidentD",
	-- aggressive, shoots shuriken
	damage = 3,
	attack_type = "shoot",
	shoot_interval = .7,
	arrow = "mobs_modern:bullet",
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
	follow = "mobs_modern:TDsofi",
	-- health & armor
	hp_min = 20, hp_max = 33, armor = 95,
	-- textures and model
	collisionbox = {-0.35,-1.0,-0.35, 0.35,0.8,0.35},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	drawtype = "front",
	textures = {
--		{"TD_sol_sco1.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
		{"TD_sol_sco2.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
   		{"TD_sol_sco3.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_scar"].inventory_image,},
   		{"TD_sol_sco4.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpk"].inventory_image,},
   		{"TD_sol_sco5.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_ak47"].inventory_image,},
--		{"TD_sol_sco6.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
--		{"TD_sol_sco7.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_remington"].inventory_image,},
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
	fall_damage = 3,
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

mobs:register_mob("mobs_modern:TDssni", {
	-- animal, monster, npc
	name = "TDssni",
	type = "td", "armyd",
	owner = "PresidentD",
	-- aggressive, shoots shuriken
	follow = "mobs_modern:TDsofi",
	damage = 9,
	attack_type = "shoot",
	shoot_interval = 1.5,
	arrow = "mobs_modern:snibul",
	shoot_offset = 2,
	attacks_npcs = false,
	attacks_monsters = true,
	attack_animals = false,
	attack_armyas = true,
	attack_tas = true,
	attack_armybs = false,
	attacks_tbs = false,
	attack_armycs = true,
	attacks_tcs = true,
	attack_armyds = false,
	attacks_tds= false,
	attack_armyes = true,
	attacks_tes= true,
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
		{"TD_sol_sni1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_awp"].inventory_image,},
   		{"TD_sol_sni2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
   		{"TD_sol_sni3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_awp"].inventory_image,},
   		{"TD_sol_sni4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
   		{"TD_sol_sni5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_awp"].inventory_image,},
--		{"TD_sol_sni6.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
	},
	visual_size = {x=1, y=1},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = 1,
	walk_chance = 45,
	run_velocity = 1.5,
	jump = true,
	fear_height = 2.2,
	drops = {
		{name = "default:apple",
		chance = 1, min = 1, max = 5},
	},
	-- damaged by
	water_damage = 1,
	lava_damage = 2,
	light_damage = 0,
	fall_damage = 4,
	view_range = 60,
	-- model animation
	animation = {
		speed_normal = 10,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		shoot_start = 202,		shoot_end = 218,
	},
})


-- RPG Guy

mobs:register_mob("mobs_modern:TDsrpg", {
	-- animal, monster, npc
	name = "TDsrpg",
	type = "td", "armyd",
	owner = "PresidentD",
	-- aggressive, shoots shuriken
	damage = 5,
	attack_type = "shoot",
	shoot_interval = 3.5,
	arrow = "mobs_modern:shot_bazooka",
	shoot_offset = 2,
	attacks_monsters = true,
	attack_animals = false,
	attack_armyas = true,
	attack_tas = true,
	attack_armybs = false,
	attacks_tbs = false,
	attack_armycs = true,
	attack_tcs = true,
	attack_armyds = false,
	attacks_tds = false,
	attack_armyes = true,
	attacks_tes= true,
	attack_armyfs = true,
	attacks_tfs = true,
	attack_evils = true,
	group_attack = true,
	peaceful = true,
	passive = false,
	-- health & armor
	hp_min = 20, hp_max = 33, armor = 90,
	-- textures and model
	collisionbox = {-0.35,-1.0,-0.35, 0.35,0.8,0.35},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	drawtype = "front",
	textures = {
		{"TD_sol_infA7.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_bazooka"].inventory_image,},
   		{"TD_sol_infB7.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpg"].inventory_image,},
   		{"TD_sol_infB8.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_bazooka"].inventory_image,},
   		{"TD_sol_sco4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_rpg"].inventory_image,},
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
	view_range = 28,
	-- model animation
	animation = {
		speed_normal = 20,		speed_run = 20,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		shoot_start = 200,		shoot_end = 219,
	},
})


-- Drone

mobs:register_mob("mobs_modern:TDdrone", {
	type = "td", "armyd", "monster",
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


-- Ivan

mobs:register_mob("mobs_modern:TDivan", {
	-- animal, monster, npc
	name = "TDivan",
	type = "td", "armyd",
	owner = "PresidentD",
	-- aggressive, shoots shuriken
	knock_back = .1,
	recovery_time = .1,
	damage = 8,
	attack_type = "dogshoot",
	dogshoot_switch = 1,
	dogshoot_count_max = 5.5, -- shoot for 4 seconds
	dogshoot_count2_max = 2.5, -- dogfight for 2 seconds
	reach = 2.6,
	punch_interval = 1.5,
	shoot_interval = .1,
	arrow = "mobs_modern:bullet",
	shoot_offset = 2.2,
	attack_animals = true,
	attacks_npcs = true,
	attacks_players = true,
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
	peaceful = false,
	passive = false,
	pathfinding = true,
	follow = "mobs_modern:TDsofi",
	-- health & armor
	hp_min = 45, hp_max = 55, armor = 35,
	-- textures and model
	collisionbox = {-0.35,-1.0,-0.35, 0.35,0.8,0.35},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	drawtype = "front",
	textures = {
		{"TD_sol_infS1.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
		{"TD_sol_infS2.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_benelli"].inventory_image,},
--		{"TD_sol_spe3.png",			"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_scar"].inventory_image,},
	},
	visual_size = {x=1.4, y=1.3},
	-- sounds
	makes_footstep_sound = true,
	sounds = {},
	-- speed and jump
	walk_velocity = 1.2,
	run_velocity = 3,
	jump = true,
	jump_height = 2.2,
	-- drops shuriken when dead
	drops = {
		{name = "farming:bread",
		chance = 1, min = 1, max = 5},
	},
	-- damaged by
	water_damage = 2,
	lava_damage = 4,
	light_damage = 0,
	fall_damage = 4,
	view_range = 28,
	-- model animation
	animation = {
		speed_normal = 12,		speed_run = 30,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 187,
		run_start = 168,		run_end = 187,
		punch_start = 200,		punch_end = 219,
		shoot_start = 204,		shoot_end = 216,
	},
})


--	Tank

mobs:register_mob("mobs_modern:TDtank", {
	type = "td", "armyd",
	passive = false,
	recovery_time = .1,
	damage = 8,
	pathfinding = true,
	attack_type = "shoot",
	attacks_monsters = true,
	attack_npcs = true,
	attack_players = true,
	attack_armyas = true,
	attacks_tas = true,
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
	reach = 2,
	shoot_interval = 2.5,
	arrow = "mobs_modern:shot_bazooka",
	shoot_offset = .9,
	hp_min = 400,
	hp_max = 420,
	armor = 15,
	collisionbox = {-1.7, 0, -1.7, 1.7, 2.6, 1.7},
	visual = "mesh",
	mesh = "tank.b3d",
	textures = {"TD_sol_tank.png"},
	--blood_texture = "mobs_blood.png",
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_war_tank_engine",
		war_cry = "mobs_war_tank_engine",
		death = "mobs_war_explode",
		attack = "mobs_war_tank_engine",
		shoot_attack = "mobs_war_shot_tank",
		distance = 50,
	},
	replace_what = {
		{"mobs_modern:ntas", "mobs_modern:ntds", 0},
		{"default:dirt_with_grass", "default:dirt", -1.5},
		{"default:dirt_with_dry_grass","default:dirt", -1.5},
		{"default:dirt_with_snow","default:dirt", -1.5},
		{"mobs_modern:ntas", "mobs_modern:ntds", -1.5}
	},
	replace_rate = 1,
	walk_chance = 8,
	walk_velocity = 1,
	run_velocity = 2,
	runaway = false,
	jump = false,
	knock_back = 0,
	--jump_height = 1,
	drops = {
		{name = "tnt:tnt", chance = 1, min = 1, max = 50},
	},
	on_die = function(self, pos)
		local below = {x = pos.x, y = pos.y -1, z = pos.z}
		minetest.set_node(below, {name = "default:steelblock"})
		minetest.set_node(pos, {name = "fire:basic_flame"})
		end,
	water_damage = 3,
	lava_damage = 5,
	light_damage = 0,
	view_range = 55,
	fear_height = 2,
	floats = 0,
	animation = {
		stand_start = 1,
		stand_end = 1,
		walk_start = 3,
		walk_end = 8,
		run_start = 3,
		run_end = 8,
		punch_start = 1,
		punch_end = 1,
		shoot_start = 1,
		shoot_end = 11,
		speed_normal = 35,
		speed_run = 35,
	},
	follow = {"tnt:gunpowder", "tnt:tnt", "mobs_war:defender_rifle", "mobs_war:defender_machinegun", "mobs_war:bazooka", "mobs_war:flamethrower", "mobs_war:landmine",},
	on_rightclick = function(self, clicker)
	-- make sure player is clicking
		if not clicker or not clicker:is_player() then
			return
		end
	-- feed, tame or heal
		if mobs:feed_tame(self, clicker, 1, false, true) then
			self.order = stand
			self.nametag = "Tank"
			self.object:set_properties({walk_chance = 0})
		minetest.chat_send_player(clicker:get_player_name(),
					"Tank ready and standing ground commander!")
			return
		end

	--order to stand
		if self.tamed and self.owner == clicker:get_player_name() then
			if clicker:get_wielded_item():get_name() ~= "default:torch" then
				self.order = stand
				self.object:set_properties({walk_chance = 0})
		minetest.chat_send_player(clicker:get_player_name(),
					"Tank holding ground commander!")
			return
			end
		end

	--order to follow
		if self.tamed and self.owner == clicker:get_player_name() then
			if clicker:get_wielded_item():get_name() == "wool:red" then
				self.order = follow
				self.object:set_properties({walk_chance = 200})
		minetest.chat_send_player(clicker:get_player_name(),
					"Tank following commander!")
			return
			end
		end

end

	})


-- ninja spawn on top of trees
mobs:register_spawn("mobs_modern:TDsofi", {"mobs_modern:ntds"}, 5, 0, 500, 10, 1500)
mobs:register_spawn("mobs_modern:TDsspe", {"mobs_modern:ntds"}, 5, 0, 10000, 1, 31000)
mobs:register_spawn("mobs_modern:TDssol", {"mobs_modern:ntds"}, 5, 0, 10000, 1, 31000)
mobs:register_spawn("mobs_modern:TDsres", {"mobs_modern:ntds"}, 5, 0, 10000, 1, 31000)
mobs:register_spawn("mobs_modern:TDssco", {"mobs_modern:ntds"}, 5, 0, 10000, 1, 31000)
mobs:register_spawn("mobs_modern:TDssni", {"mobs_modern:ntds"}, 5, 0, 10000, 1, 31000)
mobs:register_spawn("mobs_modern:TDsrpg", {"mobs_modern:ntds"}, 5, 0, 10000, 1, 31000)
mobs:register_spawn("mobs_modern:TDdrone", {"mobs_modern:ntds"}, 5, 0, 10000, 1, 31000)
mobs:register_spawn("mobs_modern:TDivan", {"mobs_modern:ntds"}, 5, 0, 10000, 1, 31000)

mobs:spawn({
	name = "mobs_modern:moTDof",
	nodes = {"mobs_modern:ntds", "ethereal:green_dirt"},
	neighbors = {"group:grass"},
	min_light = 5,
	interval = 10,
	chance = 1, -- 15000
	min_height = 4,
	max_height = 120,
	day_toggle = true,
})

mobs:spawn({
	name = "mobs_modern:TDssol",
	nodes = {"mobs_modern:ntds", "ethereal:green_dirt"},
	neighbors = {"group:grass"},
	min_light = 12,
	interval = 20,
	chance = 2, -- 15000
	min_height = 4,
	max_height = 120,
	day_toggle = true,
})

mobs:spawn({
	name = "mobs_modern:TDssco",
	nodes = {"mobs_modern:ntds", "ethereal:green_dirt"},
	neighbors = {"group:grass"},
	min_light = 12,
	interval = 60,
	chance = 10, -- 15000
	min_height = 4,
	max_height = 120,
	day_toggle = true,
})

mobs:spawn({
	name = "mobs_modern:TDssni",
	nodes = {"mobs_modern:ntds", "ethereal:green_dirt"},
	neighbors = {"group:grass"},
	min_light = 12,
	interval = 30,
	chance = 3, -- 15000
	min_height = 4,
	max_height = 120,
	day_toggle = false,
})

mobs:register_egg("mobs_modern:moTDof", "Officer (moTD)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:TDsspe", "Special Unit (moTD)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:TDssol", "Soldier (moTD)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:TDsres", "Reservist (moTD)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:TDssco", "Scout (moTD)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:TDssni", "Sniper (moTD)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:TDsrpg", "Rocket Guy (moTD)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:TDdrone", "Drone (moTD)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:TDivan", "Ivan (moTD)", "wool_red.png", 1)
mobs:register_egg("mobs_modern:TDtank", "Tank (moTD)", "wool_red.png", 1)
