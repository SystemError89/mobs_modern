--	----	----	----		Modern Mobs 	----	----	----	--

mobs.moTA_drops = { "default:pick_steel", "mobs:meat", "default:sword_steel", "default:shovel_steel", "farming:bread", "default:wood" }
mobs.moTA2_drops = { "default:pick_mese", "mobs:meat", "default:sword_diamond", "default:pick_diamond", "farming:bread", "default:wood" }

local function is_night()
	return minetest.get_timeofday() < 0.2 or minetest.get_timeofday() > 0.76
end

local function is_bti()
	return minetest.get_timeofday() < 0.24 or minetest.get_timeofday() > 0.2
end

mobs.moTA_homes = { {pos = {x=1 ,y=4, z=3}}, {pos = {x=5 ,y=7 ,z=9}}, {pos = {x=-5, y=3, z=4}}, {pos = {x=-5, y=3, z=4}}, {pos = {x=-9, y=5, z=-2}}, {pos = {x=10, y=9, z=-7}} }

local function homes(pos)
	homes = mobs.moTA_homes[math.random(1,#mobs.moTA_homes)]
end

--	----	Team A - Citizens	----	--

--	Nice Citizen
mobs:register_mob("mobs_modern:moTAva", {
	type = "ta", "npc",
	hp_min = 25,
	hp_max = 45,
	collisionbox = {-0.3, -0.8, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {
		{"TA_vil_cit1.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit2.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit3.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit4.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit5.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit6.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit7.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit8.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit9.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vilf_cit1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vilf_cit2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vilf_cit3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vilf_cit4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vilf_cit5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vilf_cit6.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_bea1.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_bea2.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_bea3.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vilf_bea1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
	},
	visual_size = {x=1, y=.8},
	makes_footstep_sound = true,
	view_range = 15,
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
	armor = 40,
	drawtype = "front",
	owner = "",
	water_damage = 0,
	lava_damage = 50,
	light_damage = 0,
	fear_height = 5,
	follow = "default:apple",
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
		if item:get_name() == "mobs:meat" or item:get_name() == "farming:bread" then
			local hp = self.object:get_hp()
			local_chat(clicker:getpos(),"Citizen: Thank you!",3)
			if hp + 4 > self.hp_max then return end
			if not minetest.setting_getbool("creative_mode") then
				item:take_item()
				clicker:set_wielded_item(item)
			end
			self.object:set_hp(hp+4)

		else
			if self.owner == "" then
				self.owner = clicker:get_player_name()
			else
				local formspec = "size[8,4]"
				formspec = formspec .. "textlist[2.85,0;2.1,0.5;dialog;Excuse me ?!]"
				formspec = formspec .. "button_exit[1,1;2,2;gfollow;Come on let's go]"
				formspec = formspec .. "button_exit[5,1;2,2;gstand;It's me!]"
				formspec = formspec .. "button_exit[0,2;4,4;gfandp;I respawn!]"
				formspec = formspec .. "button_exit[4,2;4,4;gsandp;How is it going ?]"
				--formspec = formspec .. "button_exit[1,2;2,2;ggohome; go home]"
				--formspec = formspec .. "button_exit[5,2;2,2;gsethome; sethome]"
				minetest.show_formspec(clicker:get_player_name(), "order", formspec)
				minetest.register_on_player_receive_fields(function(clicker, formname, fields)
					if fields.gfollow then
						self.order = "follow"
						local_chat(clicker:getpos(),"Citizen: Okay!",3)
					end
					if fields.gstand then
						local_chat(clicker:getpos(),"Citizen: You Suck!",3)
					end
					if fields.gfandp then
						local_chat(clicker:getpos(),"Citizen: Damn you!",3)
					end
					if fields.gsandp then
						local_chat(clicker:getpos(),"Citizen: Fuck off!",3)
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
	attack_type = "dogfight",
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
	blood_amount = 6,
	blood_texture = "mobs_blood.png",
	attacks_monsters = false,
	peaceful = true,
	group_attack = false,
--	on_activate = function(self, pos)
--		self.floats = self.object:getpos()
--	end,
--	do_custom = function(self, dtime)
--		local function homes(pos)
--			homes = mobs.moTA_homes[math.random(1,#mobs.moTA_homes)]
--		end
		
--		if is_night() then
--			self.order = "stand"
--			self.object:setpos(self.floats)
--		elseif is_bti() then
--			local pos = self.object:get_pos()

--			{minetest.add_item(pos, "mobs:egg"),
--			chance = 3, min = 1, max = 5,},
--			{minetest.add_item(pos, "default:apple"),
--			chance = 4, min = 1, max = 5,},

--			minetest.sound_play("default_place_node_hard", {
--				pos = pos,
--				gain = 1.0,
--				max_hear_distance = 4,
--			})
--		end
--	end,
	step = 1,
})

--	Normal Citizen
mobs:register_mob("mobs_modern:moTAvb", {
	type = "ta", "npc",
	hp_min = 18,
	hp_max = 34,
	collisionbox = {-0.3, -0.6, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {
		{"TA_vil_cit1.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit2.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit3.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit4.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit5.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit6.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit7.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit8.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit9.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit10.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit11.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit12.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit13.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit14.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit15.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit16.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit17.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit18.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit19.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit20.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit21.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit22.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit23.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit24.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit25.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit26.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit27.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit28.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit29.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit30.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit31.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit32.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit33.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit34.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit35.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit36.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit37.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit38.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit39.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit40.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit41.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit42.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit43.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit44.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit45.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit46.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit47.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit48.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit49.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit50.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit51.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit52.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit53.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit54.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit55.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit56.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit57.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit58.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit59.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit60.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit61.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit62.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit63.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit64.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit65.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit66.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit67.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit68.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit69.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit70.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit71.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit72.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit73.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit74.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit75.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit76.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit77.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit78.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit79.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit80.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit81.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit82.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit83.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit84.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit85.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit86.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit87.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit88.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit89.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit90.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit91.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cit92.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit93.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cit94.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cit95.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
--		{"TA_vil_cit96.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
--		{"TA_vil_cit97.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
--		{"TA_vil_cit98.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
--		{"TA_vil_cit99.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vilf_cit1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vilf_cit2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vilf_cit3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vilf_cit4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vilf_cit5.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vilf_cit6.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vilf_cit7.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vilf_cit8.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vilf_cit9.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vilf_cit10.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vilf_cit11.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vilf_cit12.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vilf_cit13.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vilf_cit14.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vilf_cit15.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vilf_cit16.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_bea1.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_bea2.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_bea3.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_bea4.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vilf_bea1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
	},
	visual_size = {x=1.2, y=1},
	makes_footstep_sound = true,
	view_range = 14,
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
	light_damage = 0,
	fall_damage = 8,
	fear_height = 5,
	on_rightclick = nil,
	attack_type = "dogfight",
	pathfinding = true,
	group_attack = false,
	replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = true,
	runaway = true,
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
	blood_amount = 7,
	blood_texture = "mobs_blood.png",
})

--	Poor Citizen
mobs:register_mob("mobs_modern:moTAvc", {
	type = "animal", "ta", "npc",
	hp_min = 22,
	hp_max = 38,
	collisionbox = {-0.3, -0.8, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {
		{"TA_vil_gut1.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_gut2.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_gut3.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_gut4.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_gut5.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_gut6.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_gut7.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_gut8.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_gut9.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_gut10.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_gut11.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_gut12.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_gut13.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_gut14.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_gut15.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_gut16.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_gut17.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_gut18.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_gut19.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
--		{"TA_vilf_gut1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
	},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 18,
	walk_velocity = 0.1,
	run_velocity = 2,
	damage = 6,
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
	light_damage = 0,
	fall_damage = 15,
	fear_height = 5,
	on_rightclick = nil,
	docile_by_day = true,
	attack_type = "dogfight",
	attack_npcs = true,
	attacks_tas = true,
	attack_chance = 15,
	runaway_from = {"mobs_modern:moTAAof", "mobs_modern:moTABg", "mobs_modern:moTACg"},
	pathfinding = true,
	group_attack = false,
	replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
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

		if item:get_name() == "default:gold_lump" then
			local_chat(clicker:getpos(),"Citizen: Here you got some!",3)
			if not minetest.setting_getbool("creative_mode") then
				item:take_item()
				clicker:set_wielded_item(item)
			end
			local pos = self.object:getpos()
			pos.y = pos.y + 0.5
			minetest.add_item(pos, {name = mobs.npc_drops[math.random(1,#mobs.moTA_drops)]})
		end
	end,
	blood_amount = 4,
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

--	Criminal
mobs:register_mob("mobs_modern:moTAvd", {
	type = "monster",
	hp_min = 24,
	hp_max = 49,
	collisionbox = {-0.3, -0.8, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.b3d",
	textures = {
		{"TA_vil_cri1.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cri2.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cri3.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cri4.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
   		{"TA_vil_cri5.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vil_cri6.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
		{"TA_vil_cri7.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
--   	{"TA_vil_cri8.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
--		{"TA_vil_cri9.png",		"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
--		{"TA_vil_cri10.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
		{"TA_vilf_cri1.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
--		{"TA_vilf_cri2.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
--		{"TA_vilf_cri3.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_m200"].inventory_image,},
--		{"TA_vilf_cri4.png",	"3d_armor_trans.png",	minetest.registered_items["mobs_modern:weapon_g36"].inventory_image,},
	},
	visual_size = {x=1.1, y=1},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 0.1,
	run_velocity = 2,
	damage = 5,
	drops = {
		{name = "default:torch",
		chance = 7,
		min = 0,
		max = 5,},
		{name = "default:sword_steel",
		chance = 1,
		min = 0,
		max = 1,},
	},
	armor = 85,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 0,
	fall_damage = 10,
	fear_height = 5,
	on_rightclick = nil,
	attack_type = "dogfight",
	attacks_tas = true,
	attack_chance = 50,
	pathfinding = true,
	group_attack = true,
		replace_rate = 5,
	replace_what = {"default:torch"},
	replace_with = "air",
	replace_offset = -1,
	peaceful = false,
	blood_amount = 2,
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


mobs:register_spawn("mobs_modern:moTAva", {"mobs_modern:ntac"}, 5, 0, 5000, 1, 31000)
mobs:register_spawn("mobs_modern:moTAvb", {"mobs_modern:ntac"}, 5, 0, 10000, 1, 31000)
mobs:register_spawn("mobs_modern:moTAvc", {"mobs_modern:ntac"}, 5, 0, 10000, 1, 31000)
mobs:register_spawn("mobs_modern:moTAvd", {"mobs_modern:ntac"}, 5, 0, 15000, 1, 31000)

mobs:register_egg("mobs_modern:moTAva", "Nice Person (moTA)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:moTAvb", "Citizen (moTA)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:moTAvc", "Poor Citizen (moTA)", "default_leaves.png", 1)
mobs:register_egg("mobs_modern:moTAvd", "Criminal (moTA)", "default_leaves.png", 1)