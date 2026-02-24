local _C=game:GetService("Players").LocalPlayer local _D=game:GetService("TeleportService")local _E,_F,_G,_H=13772394625,8665470667,90568084448279,142823291 local _I={blade="https://raw.githubusercontent.com/dooxbox/dooxbox/refs/heads/main/Loader/bladeball.lua",mail="https://raw.githubusercontent.com/dooxbox/dooxbox/refs/heads/main/Loader/mailbase5v5.lua",onetap="https://raw.githubusercontent.com/dooxbox/dooxbox/refs/heads/main/Loader/onetap.lua"}local function _J()local _K=game.PlaceId print("[dooxbox] place id: ".._K)if _K==_E then return"blade"elseif _K==_F then return"mail"elseif _K==_G or _K==_H then return"onetap"end return nil end local function _L(_M)local _N,_O=pcall(function()local _P=game:HttpGet(_M)loadstring(_P)()end)return _N end local function _Q()local _R=[[
Dooxbox Not Supported

supported games:
- Blade Ball
- 5v5 Milbase
- One Tap / MM2

use the correct game]]print("[dooxbox] Dooxbox Not Supported")task.wait(1)pcall(function()_C:Kick(_R)end)pcall(function()_D:Teleport(4483381587,_C)end)end task.wait(1)local _S=_J()if _S then local _T={blade="blade ball",mail="5v5 milbase",onetap="onetap/mm2"}print("[dooxbox] loading ".._T[_S].."...")local _U=_L(_I[_S])if _U then print("[dooxbox] loaded successfully")else print("[dooxbox] failed to load")end else _Q()end
