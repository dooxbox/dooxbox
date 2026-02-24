local a=game:GetService("Players").LocalPlayer local b=game:GetService("TeleportService")local c,d,e,f,g=13772394625,8665470667,90568084448279,142823291,109983668079237 local h={blade="https://raw.githubusercontent.com/dooxbox/dooxbox/refs/heads/main/Loader/bladeball.lua",mail="https://raw.githubusercontent.com/dooxbox/dooxbox/refs/heads/main/Loader/mailbase5v5.lua",onetap="https://raw.githubusercontent.com/dooxbox/dooxbox/refs/heads/main/Loader/onetap.lua",brainrot="https://raw.githubusercontent.com/dooxbox/dooxbox/refs/heads/main/Loader/sab.lua"}local function i()local j=game.PlaceId print("[dooxbox] place id: "..j)if j==c then return"blade"elseif j==d then return"mail"elseif j==e or j==f then return"onetap"elseif j==g then return"brainrot"end return nil end local function k(l)local m,n=pcall(function()local o=game:HttpGet(l)loadstring(o)()end)return m end local function p()local q=[[
Dooxbox Not Supported

-- supported games:
-- Blade Ball
-- 5v5 Milbase
-- One Tap / MM2
-- Steal a Brainrot

use the correct game]]print("[dooxbox] Dooxbox Not Supported")task.wait(1)pcall(function()a:Kick(q)end)pcall(function()b:Teleport(4483381587,a)end)end task.wait(1)local r=i()if r then local s={blade="blade ball",mail="5v5 milbase",onetap="onetap/mm2",brainrot="steal a brainrot"}print("[dooxbox] loading "..s[r].."...")local t=k(h[r])if t then print("[dooxbox] loaded successfully")else print("[dooxbox] failed to load")end else p()end
