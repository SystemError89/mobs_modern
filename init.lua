--mobs_badplayer v1.4
--maikerumine
--made for Extreme Survival game
--License for code WTFPL


local path = minetest.get_modpath("mobs_modern")

--	spawn nodes
dofile(path .. "/mo_a_n.lua") --

--  weapons & stuff
dofile(path .. "/mo_a_a.lua") --
dofile(path .. "/mo_a_w.lua") --

--  npc folks
dofile(path .. "/mo_fol_a.lua") --
dofile(path .. "/mo_fol_aa.lua") --
dofile(path .. "/mo_fol_ab.lua") --
dofile(path .. "/mo_fol_ac.lua") --
--	dofile(path .. "/mo_fol_b.lua") --
--	dofile(path .. "/mo_fol_c.lua") --
dofile(path .. "/mo_fol_d.lua") --
dofile(path .. "/mo_fol_da.lua") --
--	dofile(path .. "/mo_fol_e.lua") --
--	dofile(path .. "/mo_fol_e.lua")	--
--	dofile(path .. "/mo_fol_f.lua") --

--  npc armys
dofile(path .. "/mo_sol_a.lua") --
dofile(path .. "/mo_sol_b.lua") --
dofile(path .. "/mo_sol_c.lua") --
dofile(path .. "/mo_sol_d.lua") --
dofile(path .. "/mo_sol_e.lua") --
dofile(path .. "/mo_sol_e.lua")	--
dofile(path .. "/mo_sol_f.lua") --
dofile(path .. "/mo_sol_t.lua") --



print("[Mobs-World] Modern")
print("[Mobs-World] World")
print("[Mobs-World] Mobs")
print("[Mobs-World] Loaded!")
