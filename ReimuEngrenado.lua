if not (game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 or game.PlaceId == 79868761121850) then
	warn("You are running this script outside of Lua Sandbox. Expect missing sounds/voices.")
end
require(11007181783)()
local owner = game:GetService("Players"):GetPlayerFromCharacter(script.Parent)
local NLS = require(13482937602)
--------------------------------------
print([[
--Reimu Engrenado--
By Hiko Zukusanagi / IkariGames                            
--------------------------------
Basically my version of Reimu Hakurei from Touhou that has a personality
mixed with Sol Badguy's, Ibuki (Street Fighter)'s, Ravager's / Berzerker's (Black Magic classes),
and even the normal Reimu Hakurei.
--------------------------------
(Controls)

Dash: double tap W or S, hold to keep dashing, release to end (ground only)

Taunt: G
Respect: H
Grab (can be done in air): SAE
Weak Attack: Z
Medium Attack: X
Strong Attack: C
Special Attack: Q
Grab: E

Charge: SDE
Burst: SADE

Hakurei Amulet: SDQ

Ascension Kick: DDSX
+ Benkei: hold Z after move finishes

Double Resemblance Kick: SAX

Eiga: ASDQ (hold W or S to change direction)

Jyushi-Kaihou: DSDC

Divine Spirit "Fantasy Seal": SASAQ

Divine Arts "Omnidirectional Demon Binding Circle": DSASSC

Treasure "Yin-Yang Asuka'i": ADADWZ

G.I.G.A.: DSADDQ

Trigun Blast-Off: SDSDC

Razing Stomp of the 100th Year: SASDX

Activate Spell Overdrive (requires 100% heat): ADADADQ

----------------------------------------------
Moves that require low health or Spell Overdrive to be active
----------------------------------------------
	||
	||
	||
	||
	||
	||
	||
	VV
	
Fantasy Nature: DSADSAQ


]])
local ply = owner
local char = ply.Character
local hum = char:FindFirstChildOfClass("Humanoid")
if char:FindFirstChild("Animate") then char:FindFirstChild("Animate").Disabled = true end	
NLS([==[
local chr = owner.Character
local hum = chr:FindFirstChildOfClass("Humanoid") or chr:FindFirstChildOfClass("AnimationController")
local ani = hum:FindFirstChildOfClass("Animator")
for i,v in ipairs(ani:GetPlayingAnimationTracks()) do
	v:Stop()
end]==],char)
if hum.RigType == Enum.HumanoidRigType.R15 then
	error([[This script will not run if your avatar type is set to R15.
	Switch to the R6 avatar type to use this script.
	]])
end
local head = char:FindFirstChild("Head")
local torso = char:FindFirstChild("Torso")
local ra = char:FindFirstChild("Right Arm")
local la = char:FindFirstChild("Left Arm")
local rl = char:FindFirstChild("Right Leg")
local ll = char:FindFirstChild("Left Leg")
local root = char:FindFirstChild("HumanoidRootPart")
local rj = root:FindFirstChild("Root Hip") or root:FindFirstChild("RootJoint")
local nk = torso.Neck
local rs = torso:FindFirstChild("Right Shoulder")
local ls = torso:FindFirstChild("Left Shoulder")
local rh = torso:FindFirstChild("Right Hip")
local lh = torso:FindFirstChild("Left Hip")
local cframe = CFrame.new
local angles = CFrame.Angles
local rad = math.rad
local new = Instance.new
local bc = BrickColor.new
local cos = math.cos
local acos = math.acos
local sin = math.sin
local random = math.random
local vect2 = Vector2.new
local vect3 = Vector3.new
local rservice = game:GetService("RunService")
local debris = game:GetService("Debris")
local tweens = game:GetService("TweenService")
local color = Color3.new
local udim2 = UDim2.new
local anim = "idle"
local frame = 1
local sine = tick()*60
local spin = 0
local rjC0 = cframe(0, 0, 0) * angles(rad(-90), rad(0), rad(180))
local nkC0 = cframe(0, 1, 0) * angles(rad(-90), rad(0), rad(180))
local rsC0 = cframe(-0.5, 0, 0) * angles(rad(0), rad(90), rad(0))
local lsC0 = cframe(0.5, 0, 0) * angles(rad(0), rad(-90), rad(0))
local mouse = ply:GetMouse()
local keycombo = ""
local keycombotime = 0
local keycombobreaktime = 0.5
local keycount = 0
local keytime = 0
local holdingw = false
local holdings = false
local holdingc = false
local holdingz = false
local holdingx = false
local holdingq = false
local holdinge = false
local holdingv = false
local running = false
local sitting = false
local attack = false
local fallen = false
local ducking = false
local inair = false
local guarding = false
local moving = false
local drive = false
local dead = false
local voices = true
local mp = 1000
local heat = 0
local instakill = true
local anchorm = false
local doingcounter = false
local countered = false
local specialcooldown = false
hum.WalkSpeed = 18
hum.BreakJointsOnDeath = false
if hum.MaxHealth < 3000 then
	hum.MaxHealth = 3000
	hum.Health = hum.MaxHealth
end
hum.UseJumpPower = true
if hum.JumpPower < 100 then
	hum.JumpPower = 100
end
local ogws = hum.WalkSpeed
local ogjp = hum.JumpPower
local ogjh = hum.JumpHeight
local maxhp = hum.MaxHealth
if not char:FindFirstChild("IsAllyOfReimuEngrenado") then
	new("BoolValue",char).Name = "IsAllyOfReimuEngrenado"
end
local Gohei = char:FindFirstChild("ReimuGohei")
function raycast(pos, dir, ran, ignore)
	return workspace:FindPartOnRay(Ray.new(pos, dir.unit * ran), ignore)
end
function castproperyray(start,ende,dist,ignore)
	local direct = cframe(start,ende).lookVector
	return raycast(start, direct, dist, ignore)
end
function sound(id, volume, pitch, parent, tpos, looped, debree, dtime,wav)
	local sound = new("Sound")
	if not wav then
		sound.SoundId = "rbxassetid://"..id
	else
		sound.SoundId = "rbxasset://sounds/"..id
	end
	sound.Volume = volume
	sound.Pitch = pitch
	sound.Parent = parent
	sound.Name = "CSUFSound"
	sound.TimePosition = tpos or 0
	sound.Looped = looped or false
	sound:Play()
	sound.Ended:connect(function()
		sound:Destroy()
	end)
	if debree == true then
		debris:AddItem(sound,dtime)
	end
end
function sound2(id, volume, pitch, parent, tpos,wav)
	local sound = new("Sound")
	if not wav then
		sound.SoundId = "rbxassetid://"..id
	else
		sound.SoundId = "rbxasset://sounds/"..id
	end
	sound.Volume = volume
	sound.Pitch = pitch
	sound.Parent = parent
	sound.Name = "CSUFSound"
	sound.TimePosition = tpos or 0
	sound.PlayOnRemove = true
	task.wait(0.001)
	sound:Destroy()
end
function super(type,nosphere)
	if type == 1 then
		sound(160772554,3,1.1,root,0,false)
	elseif type == 2 then
		sound(6892632909,3,1,root,0,false)
	elseif type == 3 then
		sound(131445648085306,11.5,1,torso,127.92,false,true,1.615)
		sound(131445648085306,11.5,1,torso,127.92,false,true,1.615)
		sound(131445648085306,11.5,1,torso,127.92,false,true,1.615)
	else
		sound(3723411843,2.5,1,root,0,false)
	end
	if not nosphere then
		local sphere = new("Part")
		sphere.Parent = script
		sphere.Name = "SuperSphere"
		sphere.Shape = "Ball"
		sphere.Size = vect3(2.5,2.5,2.5)
		sphere.Transparency = 0
		sphere.BrickColor = bc("Institutional white")
		sphere.Material = "Neon"
		sphere.CanCollide = false
		sphere.Anchored = true
		sphere.CanTouch = false
		sphere.CFrame = root.CFrame
		local tween = tweens:Create(sphere, TweenInfo.new(1.5), {Size = vect3(45,45,45), Transparency = 1})
		tween:Play()
		tween.Completed:Connect(function() sphere:Destroy() end)
	else
		local explosion = new("Explosion")
		explosion.Parent = workspace
		explosion.Position = root.Position
		explosion.BlastRadius = 0
		explosion.BlastPressure = 0
	end
end
function checkninja()
	if ply.UserId == 50203523 then
		return true
	else
		return false
	end
end
function spellcircle(timei)
	local judas = true
	local doingspell = true
	spawn(function()
		task.wait(timei)
		doingspell = false
	end)
	spawn(function()
		local spellc = new("Part")
		local spellcm = new("BlockMesh")
		local spellcd = new("Decal")
		local spellcl = new("PointLight")
		spellc.Name = "SpellCircle"
		spellc.Parent = char
		spellc.Transparency = 1
		spellc.Size = vect3(11.5, 0.15, 11.5)
		spellc.BottomSurface = Enum.SurfaceType.Smooth
		spellc.TopSurface = Enum.SurfaceType.Smooth
		spellc.Anchored = true
		spellc.CanCollide = false
		spellc.Locked = true
		spellc.CanTouch = false
		spellcm.Parent = spellc
		spellcm.Scale = vect3(1.5, 1.5, 1.5)
		spellcd.Parent = spellc
		spellcd.Texture = "http://www.roblox.com/asset/?id=238111016"
		spellcd.Face = Enum.NormalId.Top
		spellcd.Transparency = 1
		spellcl.Parent = spellc
		spellcl.Brightness = 1.75
		spellcl.Range = 15
		spellcl.Color = color(1, 0.333333, 0)
		local tween = tweens:Create(spellcd, TweenInfo.new(1), {Transparency = 0})
		tween:Play()
		local angle = 0
		while judas do
			wait()
			angle = angle + 15
			if doingspell then
				spellc.CFrame = root.CFrame * cframe(0, -3, 0) * angles(0, rad(angle), 0)
			else
				if spellcd.Transparency < 1 then
					if spellc ~= nil then
						spellcd.Transparency = spellcd.Transparency + 0.05
					end
				else
					spellc:Destroy()
					judas = false
					break							
				end
			end
		end
	end)
end
function hiteffect(effect,hitpart)
	if effect == nil then return end
	if effect == "blood" then
		spawn(function()
			for i = 1,random(20,30) do
				local blood = new("Part")
				local blc = {"Maroon","Cocoa","Crimson"}
				blood.Parent = workspace
				blood.Name = "Bloodey"
				blood.BrickColor = bc(blc[random(#blc)])
				blood.Material = "Glass"
				blood.CanCollide = false
				blood.Locked = true
				blood.CanTouch = true
				blood.Shape = Enum.PartType.Ball
				blood.Size = vect3(random(5)/10,0.45,0.45)
				blood.CFrame = hitpart.CFrame * cframe(random(-1,1),random(-1,1),random(-1,1))
				blood.Velocity = vect3(random(-30,30),random(-30,30),random(-30,30))
				blood.Touched:Connect(function(touch)
					if touch.Parent and not (touch.Parent:IsA("Tool") or touch:IsDescendantOf(char) or touch.Parent:IsDescendantOf(char) or touch.Parent.Parent:FindFirstChildOfClass("Humanoid") or touch.Parent:FindFirstChildOfClass("Humanoid") or touch.Name == "Blaud" or touch.Name == "Bloodey" or touch.Name == "ColaSpill" or touch.Name == "HeruSmashed" or touch.Parent == char or touch.Parent:IsA("Accessory") or touch.Parent:IsA("Hat")) then
						local bpud = new("Part")
						local bpudm = new("SpecialMesh")
						bpud.Name = "BloodPart"
						bpud.Parent = workspace
						bpud.Size = vect3(1, 0.1, 1)
						bpud.Anchored = true
						bpud.BottomSurface = Enum.SurfaceType.Smooth
						bpud.BrickColor = blood.BrickColor
						bpud.CanCollide = false
						bpud.Material = Enum.Material.Glass
						bpud.TopSurface = Enum.SurfaceType.Smooth
						bpud.CanTouch = false
						bpudm.Parent = bpud
						bpudm.Offset = vect3(0, -0.05, 0)
						bpudm.MeshType = Enum.MeshType.Sphere
						local rsi = random(2, 20) / 10
						bpud.CFrame = cframe(vect3(blood.Position.X,(touch.Position.Y+(touch.Size.Y/2))+0.02,blood.Position.Z)) + vect3(0, 0.05, 0)
						blood:Destroy()
						bpud.Size = vect3(rsi, 0.1, rsi)
						local ring = random(5, 10) / 10
						tweens:Create(bpud, TweenInfo.new(5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Size = vect3(bpud.Size.X + ring, 0.1, bpud.Size.Z + ring)}):Play()
						sound(180083298,2,1,bpud,0,false)
						spawn(function()
							task.wait(7.5)
							local tween = tweens:Create(bpud, TweenInfo.new(3), {Transparency = 1})
							tween:Play()
							tween.Completed:Connect(function() bpud:Destroy() end)
						end)
					end
				end)
			end
		end)
	end
	if effect == "burn" then
		local hum = hitpart.Parent:FindFirstChildOfClass("Humanoid")
		local fire = new("Fire")
		fire.Parent = hitpart
		fire.Size = 15
		fire.Heat = 30
		local firesound = new("Sound")
		firesound.SoundId = "rbxassetid://269252174"
		firesound.Volume = 4.5
		firesound.Looped = true
		firesound.Parent = hitpart
		firesound:Play()
		local burning = true
		spawn(function()
			while burning do
				--creator value
				local creator = new("ObjectValue")
				creator.Name = "creator"
				creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
				creator.Parent = hum
				debris:AddItem(creator,0.5)
				if not drive then
					hum:TakeDamage(1)
				else
					hum:TakeDamage(2)
				end
				task.wait(1)
			end
		end)
		spawn(function()
			task.wait(11.5)
			fire.Enabled = false
			burning = false
			firesound:Destroy()
			task.wait(2.5)
			fire:Destroy()
		end)
		debris:AddItem(fire, 16.5)
	end
	if effect == "sphere" then
		local sphere = new("Part")
		sphere.Parent = script
		sphere.Name = "HitSphere"
		sphere.Shape = "Ball"
		sphere.Size = vect3(1,1,1)
		sphere.Transparency = 0.5
		sphere.BrickColor = bc("Institutional white")
		sphere.Material = "Neon"
		sphere.CanCollide = false
		sphere.Anchored = true
		sphere.CFrame = hitpart.CFrame
		local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(7.5,7.5,7.5), Transparency = 1})
		tween:Play()
		debris:AddItem(sphere,1.5)
	end
	if effect == "boom" then
		hiteffect("sphere",hitpart)
		local explosion = new("Explosion")
		explosion.Parent = workspace
		explosion.Position = hitpart.Position
		explosion.BlastRadius = 15
		explosion.BlastPressure = 0
		sound2(88378838573475,3,1,hitpart,0)
	end
	if effect == "grab" then
		local sphere = new("Part")
		sphere.Parent = script
		sphere.Name = "HitSphere"
		sphere.Shape = "Ball"
		sphere.Size = vect3(1,1,1)
		sphere.Transparency = 0.5
		sphere.BrickColor = bc("Cyan")
		sphere.Material = "Neon"
		sphere.CanCollide = false
		sphere.Anchored = true
		sphere.CFrame = hitpart.CFrame
		local tween = tweens:Create(sphere, TweenInfo.new(0.35), {Size = vect3(5,5,5), Transparency = 1})
		tween:Play()
		debris:AddItem(sphere,1.5)
	end
	if effect == "block" then
		local sphere = new("Part")
		sphere.Parent = script
		sphere.Name = "HitSphere"
		sphere.Shape = "Ball"
		sphere.Size = vect3(1,1,1)
		sphere.Transparency = 0.5
		sphere.BrickColor = bc("Cyan")
		sphere.Material = "Neon"
		sphere.CanCollide = false
		sphere.Anchored = true
		sphere.CFrame = hitpart.CFrame
		local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(6.66,6.66,6.66), Transparency = 1})
		tween:Play()
		debris:AddItem(sphere,1.5)
	end
end
function damage(humanoid, damage, hitsfx, hitvol, hitpitch, hitpart, hittpos, effect)
	local huma = humanoid
	local damage = damage or 10
	--creator value
	local creator = new("ObjectValue")
	creator.Name = "creator"
	creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
	creator.Parent = huma
	debris:AddItem(creator, 2)
	--Damage the humanoid.
	sound(hitsfx, hitvol, hitpitch, hitpart, hittpos, false)
	--Give me a break...
	if checkninja() then
		if huma.Parent:IsA("Model") and huma.Parent.Name ~= "ninjakaiden1" then
			if huma.MaxHealth >= 1000000 then
				huma.MaxHealth = 100
				huma.Health = 100
			end
		end
	end
	if not drive then
		huma:TakeDamage(damage)
	else
		huma:TakeDamage(damage * 2)
	end
	hiteffect(effect,hitpart)
end
function magnitudedamage(dmg, effect, hitpos, hitarea, hitsfx, hitvol, hitpitch, part, move, typa, type2)
	for i,v in pairs(workspace:GetDescendants()) do
		if v:FindFirstChildOfClass("Humanoid") and v ~= char then
			local vhum = v:FindFirstChildOfClass("Humanoid")
			local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
			if vtorso then
				local vdistance = (vtorso.Position - part.CFrame*cframe(0,0,-1.5).p).magnitude
				if vdistance <= hitarea and vhum.Health > 0 and not v:FindFirstChild("IsAllyOfReimuEngrenado") then
					damage(vhum, dmg, hitsfx, hitvol, hitpitch, vtorso, hitpos, effect)
					if move == true then
						if type2 == "flight" then
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = root.CFrame.lookVector * 45
							debris:AddItem(vel,0.125)
						elseif type2 == "special" then
							vtorso.Velocity = root.CFrame.lookVector * 75
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
						elseif type2 == "burst" then
							vtorso.Velocity = root.CFrame.upVector * 100
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
						elseif type2 == "fstrong" then
							if vtorso:FindFirstChild("FStrongHitBy") then vtorso:FindFirstChild("FStrongHitBy"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Name = "FStrongHitBy"
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(39999,39999,39999)
							bpos.D = 1150
							bpos.Position = root.CFrame * cframe(0,5,-47.5).Position
							debris:AddItem(bpos,0.45)
						elseif type2 == "dstrong" then
							if vtorso:FindFirstChild("DStrongHitBy") then vtorso:FindFirstChild("DStrongHitBy"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Name = "DStrongHitBy"
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(39999,39999,39999)
							bpos.D = 1150
							bpos.Position = root.CFrame * cframe(0,30,-25).Position
							debris:AddItem(bpos,0.45)
						elseif type2 == "knockdown" then
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = root.CFrame.lookVector * 55
							debris:AddItem(vel,0.025)
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
						elseif type2 == "resemblance" then
							if vtorso:FindFirstChild("ResemblanceHitBy") then vtorso:FindFirstChild("ResemblanceHitBy"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Name = "ResemblanceHitBy"
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
							bpos.D = 2000
							bpos.Position = root.CFrame * cframe(0,15,-45).Position
							debris:AddItem(bpos,0.15)
						elseif type2 == "resemblance2" then
							if vtorso:FindFirstChild("ResemblanceHitBy") then vtorso:FindFirstChild("ResemblanceHitBy"):Destroy() end
							vtorso.Velocity = root.CFrame.lookVector*75 + root.CFrame.upVector * 35
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
							if checkninja() then
								if instakill and random(0,20) == 0 then
									if not game:GetService("Players"):GetPlayerFromCharacter(v) then
										instantkill(v,true)
										sound2(138169148,3.5,1,vtorso,0)
										sound(7441099080,2,1,vtorso,0,false)
										hiteffect("blood",vtorso)
										vtorso.Velocity = root.CFrame.lookVector*360
									end
								end
							end	
						elseif type2 == "ascension" then
							if vtorso:FindFirstChild("AscensionHitBy") then vtorso:FindFirstChild("AscensionHitBy"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Name = "AscensionHitBy"
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(39999,39999,39999)
							bpos.D = 1500
							bpos.Position = root.CFrame * cframe(0,45,-15).Position
							debris:AddItem(bpos,0.1)
						elseif type2 == "benkei" then
							if vtorso:FindFirstChild("AscensionHitBy") then vtorso:FindFirstChild("AscensionHitBy"):Destroy() end
							vtorso.Velocity = root.CFrame.lookVector*115
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
							if checkninja() then
								if instakill and random(0,20) == 0 then
									if not game:GetService("Players"):GetPlayerFromCharacter(v) then
										instantkill(v,true)
										sound2(138169148,3.5,1,vtorso,0)
										sound(7441099080,2,1,vtorso,0,false)
										hiteffect("blood",vtorso)
										vtorso.Velocity = root.CFrame.lookVector*425
									end
								end
							end	
						elseif type2 == "eigav" then
							if vtorso:FindFirstChild("EigaVHitBy") then vtorso:FindFirstChild("EigaVHitBy"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Name = "EigaVHitBy"
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(39999,39999,39999)
							bpos.D = 1750
							bpos.Position = root.CFrame * cframe(0,0,-72.5).Position
							debris:AddItem(bpos,0.1)	
						elseif type2 == "eiga" then
							if vtorso:FindFirstChild("EigaVHitBy") then vtorso:FindFirstChild("EigaVHitBy"):Destroy() end
							vtorso.Velocity = root.CFrame.lookVector*15 + root.CFrame.upVector * 100
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
							if checkninja() then
								if instakill and random(0,20) == 0 then
									if not game:GetService("Players"):GetPlayerFromCharacter(v) then
										instantkill(v,true)
										sound2(138169148,3.5,1,vtorso,0)
										sound(7441099080,2,1,vtorso,0,false)
										hiteffect("blood",vtorso)
										vtorso.Velocity = root.CFrame.lookVector*360
									end
								end
							end	
						elseif type2 == "giga" then
							if vtorso:FindFirstChild("GigaHitBy") then vtorso:FindFirstChild("GigaHitBy"):Destroy() end
							local bpos = new("BodyPosition")
							bpos.Name = "GigaHitBy"
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
							bpos.D = 1500
							bpos.Position = root.CFrame * cframe(0,10,-10).Position
							debris:AddItem(bpos,0.3)
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
						elseif type2 == "giga2" then
							if vtorso:FindFirstChild("GigaHitBy") then vtorso:FindFirstChild("GigaHitBy"):Destroy() end
							vtorso.Velocity = root.CFrame.lookVector*75 + root.CFrame.upVector * 50
							vhum.PlatformStand = true
							spawn(function() 
								task.wait(5)
								vhum.PlatformStand = false
							end)
							if checkninja() then
								if instakill and random(0,10) == 0 then
									if not game:GetService("Players"):GetPlayerFromCharacter(v) then
										instantkill(v,true)
										sound2(138169148,3.5,1,vtorso,0)
										sound(7441099080,2,1,vtorso,0,false)
										hiteffect("blood",vtorso)
										vtorso.Velocity = root.CFrame.lookVector*500+ root.CFrame.upVector * 75
									end
								end
							end	
						elseif type2 == "kaihou" then
							if vtorso:FindFirstChild("KaihouHitBy") then vtorso:FindFirstChild("KaihouHitBy"):Destroy() end
							local vel = new("BodyVelocity")
							vel.Name = "KaihouHitBy"
							vel.Parent = vtorso
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = root.CFrame.lookVector * 45 + root.CFrame.upVector * 45
							debris:AddItem(vel,0.1)
						elseif type2 == "kaihou2" then
							if vtorso:FindFirstChild("KaihouHitBy") then vtorso:FindFirstChild("KaihouHitBy"):Destroy() end
							local vel = new("BodyVelocity")
							vel.Name = "KaihouHitBy"
							vel.Parent = vtorso
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = root.CFrame.lookVector * 45 + root.CFrame.upVector * -15
							debris:AddItem(vel,0.1)
						else
							local vel = new("BodyVelocity")
							vel.Parent = vtorso
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.Velocity = root.CFrame.lookVector * 5
							debris:AddItem(vel,0.5)
						end
					end
					if typa == "burn" then
						sound(96730847431500,1.5,1,vtorso,0,false)
						hiteffect("burn",vtorso)
					elseif typa == "slash" then
						if random(0,6) <= 2 then
							sound(17493997647,4.5,1,vtorso,0,false)
							sound(7441099080,2,1,vtorso,0,false)
							hiteffect("blood",vtorso)
						end
					elseif typa == "wood" then
						local randomu = random(0,9)
						if random(0,9) <= 4 then
							local rng = random(0,5)
							if rng == 0 then
								sound(8542226017, 3, 1, Gohei, 0, false)
							elseif rng == 1 then
								sound(8542224819, 3, 1, Gohei, 0, false)
							elseif rng == 2 then
								sound(8542224235, 3, 1, Gohei, 0, false)
							elseif rng == 3 then
								sound(8542225504, 3, 1, Gohei, 0, false)
							else
								sound(8542223682, 3, 1, Gohei, 0, false)
							end
						end	
					end
				end
			end
		end
	end
end
function partdamage(damage, effect, hitpos, hitarea, hitsfx, hitvol, hitpitch, part, move, typa, type2, dtime, pos)
	local hashit = false
	local Part = new("Part",script)
	Part.Name = "HitboxThing"
	Part.Transparency = 1
	Part.Size = vect3(5, 7.5, 5)
	Part.CanCollide = false
	Part.Massless = true
	Part.Locked = true
	debris:AddItem(Part,dtime)
	local Weld = new("Weld",Part)
	Weld.Part0 = part
	Weld.Part1 = Part
	if pos == "eiga" then
		Weld.C0 = Weld.C0 * cframe(0, -1.25, -2)
	else
		Weld.C0 = Weld.C0 * cframe(0,0,-4)
	end
	Part.Touched:Connect(function(persona)
		if persona:IsA("BasePart") or persona:IsA("MeshPart") then
			if persona.Parent ~= nil and not persona.Parent:IsDescendantOf(char) then
				if persona.Parent:FindFirstChildOfClass("Humanoid") and persona.Parent ~= char and hashit == false then
					local humi = persona.Parent:FindFirstChildOfClass("Humanoid")
					local torsou = persona.Parent:FindFirstChild("Torso") or persona.Parent:FindFirstChild("UpperTorso") or persona.Parent:FindFirstChild("HumanoidRootPart")
					if torsou and not persona.Parent:FindFirstChild("IsAllyOfReimuEngrenado") then
						hashit = true
						magnitudedamage(damage, effect, hitpos, hitarea, hitsfx, hitvol, hitpitch, part, move, typa, type2)
					end
				end
			end	
		end
	end)
end
function ragdoll(victim,head)
	for i,v in pairs(victim:GetDescendants()) do
		if v:IsA("Motor6D") then
			if not head then
				local socket = new("BallSocketConstraint")
				local a1 = new("Attachment")
				a1.Name = "CSUFAttachment"
				local a2 = new("Attachment")
				a2.Name = "CSUFAttachment"
				a1.Parent = v.Part0
				a2.Parent = v.Part1
				socket.Parent = v.Parent
				socket.Attachment0 = a1
				socket.Attachment1 = a2
				a1.CFrame = v.C0
				a2.CFrame = v.C1
				socket.LimitsEnabled = true
				socket.TwistLimitsEnabled = true
				v:Destroy()
			else
				if v.Part0 ~= nil and v.Part1 ~= nil then
					if v.Part1.Name ~= "Head" and v.Part0.Name ~= "HumanoidRootPart" then
						local socket = new("BallSocketConstraint")
						local a1 = new("Attachment")
						a1.Name = "CSUFAttachment"
						local a2 = new("Attachment")
						a2.Name = "CSUFAttachment"
						a1.Parent = v.Part0
						a2.Parent = v.Part1
						socket.Parent = v.Parent
						socket.Attachment0 = a1
						socket.Attachment1 = a2
						a1.CFrame = v.C0
						a2.CFrame = v.C1
						socket.LimitsEnabled = true
						socket.TwistLimitsEnabled = true
						v:Destroy()
					end
				end				
			end
		end
	end
end
function instantkill(victim,canscream,alt,noblood)
	if not victim:FindFirstChild("CSDeathByHiko") then
		new("BoolValue",victim).Name = "CSDeathByHiko"
		local vhum = victim:FindFirstChildOfClass("Humanoid")
		local vtorso = victim:FindFirstChild("Torso") or victim:FindFirstChild("UpperTorso") or victim:FindFirstChild("HumanoidRootPart")
		local vhead = victim:FindFirstChild("Head")
		if alt then
			ragdoll(victim,true)
		else
			ragdoll(victim,false)
		end
		if not noblood then
			hiteffect("blood",vtorso)
			sound2(5951833277, 4.5, 1, vtorso, 0,false)
		end
		vhum.BreakJointsOnDeath = false
		if canscream then 
			if random(0,6) >= 4 then
				scream(vhead)
			else
				scream2(vhead)
			end
		end
		local creator = new("ObjectValue")
		creator.Name = "creator"
		creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
		creator.Parent = hum
		debris:AddItem(creator,0.5)
		vhum:TakeDamage(math.huge)
		vhum:TakeDamage(math.huge)
		vhum.Health = vhum.Health - math.huge
		vhum.Health = 0
		vhum:SetStateEnabled(Enum.HumanoidStateType.Dead, true)
		vhum:ChangeState(Enum.HumanoidStateType.Dead)
		if vhum.Health >= 1 then
			victim:BreakJoints()
		end
	end
end
function scream(part)
	local scream = random(0,60)
	if scream == 0 then
		sound(565424177,4.5,1,part,0,false)
	elseif scream == 1 then
		sound(1080610583,4.5,1,part,0,false)
	elseif scream == 2 then
		sound(4602905960,0.25,1,part,0.155,false)
	elseif scream == 3 then
		sound(566988981,4.5,1,part,0,false)
	elseif scream == 4 then
		sound(887549084,4.5,1,part,0,false)
	elseif scream == 5 then
		sound(884348443,4.5,1,part,0,false)
	elseif scream == 6 then
		sound(884348070,4.5,1,part,0,false)
	elseif scream == 7 then
		sound(2898498606,4.5,1,part,0,false)
	elseif scream == 8 then
		sound(6108565657,4.5,1,part,0,false)
	elseif scream == 9 then
		sound(6108540937,4.5,1,part,0,false)
	elseif scream == 10 then
		sound(6108566293,4.5,1,part,0,false)
	elseif scream == 11 then
		sound(5986548269,4.5,1,part,0,false)
	elseif scream == 12 then
		sound(8399859908,7.5,1,part,0,false)
	elseif scream == 13 then
		sound(5538532722,4.5,1,part,0,false)
	elseif scream == 14 then
		sound(5538517651,4.5,1,part,0,false)
	elseif scream == 15 then
		sound(5965159676,5.5,1,part,0,false)
	elseif scream == 16 then
		sound(8327314343,4.5,1,part,0,false)
	elseif scream == 17 then
		sound(481775819,4.5,1,part,0,false)
	elseif scream == 18 then
		sound(6472521644,4.5,1,part,0,false)
	elseif scream == 19 then
		sound(6006696349,4.5,1,part,0,false)
	elseif scream == 20 then
		sound(1354972481,4.5,1,part,0,false)
	elseif scream == 21 then
		sound(6905236222,4.5,1,part,0,false)
	elseif scream == 22 then
		sound(1080611063,4.5,1,part,0,false)
	elseif scream == 23 then
		sound(6403034370,4.5,1,part,0,false)
	elseif scream == 24 then
		sound(887549720,4.5,1,part,0,false)
	elseif scream == 25 then
		sound(885897978,4.5,1,part,0,false)
	elseif scream == 26 then
		sound(163154423,4.5,1,part,0,false)
	elseif scream == 27 then
		sound(884349060,4.5,1,part,0,false)
	elseif scream == 28 then
		sound(7817657151,4.5,1,part,0,false)
	elseif scream == 29 then
		sound(9058794788,4.5,1,part,0,false) --Mortal Kombat 2 moment
	elseif scream == 30 then
		sound(6413066681,4.5,1,part,0,false)
	elseif scream == 31 then
		sound(136374598719661,4.5,1,part,0,false)
	elseif scream == 32 then
		sound(147758746,4.5,1,part,0,false)
	elseif scream == 33 then
		sound(565424468,4.5,1,part,0,false)
	elseif scream == 34 then
		sound(129121946455691,4.5,1,part,0,false)
	elseif scream == 35 then
		sound(262160265,4.5,1,part,0,false)
	elseif scream == 36 then
		sound(8975620480,4.5,1,part,0,false)
	elseif scream == 37 then
		sound(639675977,4.5,1,part,2.76,false) --OH YEAH, MR KRABS! *unintelligible screaming*
	elseif scream == 38 then
		sound(180479971,4.5,1,part,0,false)
	elseif scream == 39 then
		sound(4463242823,4.5,1,part,0,false) --Gachimuchi moment (R.I.P. Billy Herrington)
	elseif scream == 40 then
		sound(87427985942369,4.5,1,part,0,false) --Mortal Kombat Deadly Alliance moment
	elseif scream == 41 then
		sound(1007368252,4.5,1,part,0,false)
	elseif scream == 42 then
		sound(108878609785615,4.5,1,part,0,false)
	elseif scream == 43 then
		sound(108995088673865,4.5,1,part,0,false)
	elseif scream == 44 then
		sound(7546980364,4.5,1,part,0,false)
	elseif scream == 45 then
		sound(7355782867,10,1,part,2.8,false)
	elseif scream == 46 then
		sound(565423860,4.5,1,part,0,false)
	elseif scream == 47 then
		sound(126645155359570,4.5,1,part,0,false) --LittleBigPlanet 2 moment (fun fact, I used to play the game when I was younger)
	elseif scream == 48 then
		sound(87645109019991,4.5,1,part,0,false) --LittleBigPlanet 2 moment (fun fact, I used to play the game when I was younger)
	elseif scream == 49 then
		sound(122651956822042,4.5,1,part,0,false)
	elseif scream == 50 then
		sound(4326152202,5,1,part,0,false)
	elseif scream == 51 then
		sound(1106908323,4.5,1,part,0,false)
	elseif scream == 52 then
		sound(553084572,10,1,part,0,false)
	elseif scream == 53 then
		sound(4494920504,4.5,1,part,0,false)
	elseif scream == 54 then
		sound(111896685,4.5,1,part,0,false)
	elseif scream == 55 then
		sound(535528169,4.5,1,part,0,false)
	elseif scream == 56 then
		sound(1080610827,4.5,1,part,0,false)
	elseif scream == 57 then
		sound(3483587416,4.5,1,part,0,false)
	elseif scream == 58 then
		sound(18880054772,4.5,1,part,1,false) -- Street Fighter 2 moment
	elseif scream == 59 then
		sound(95269786475747,4.5,1,part,0,false) -- Kyo Kusanagi, is that you?
	else
		sound(105941380396244,5,1,part,0,false)
	end					
end
function scream2(part)
	local scream = random(0,60)
	if scream == 0 then
		sound(78997187941440,4.5,1,part,0,false)
	elseif scream == 1 then
		sound(475550904,4.5,1,part,0,false)
	elseif scream == 2 then
		sound(982278034,4.55,1,part,0,false)
	elseif scream == 3 then
		sound(531185355,4.5,1,part,0,false)
	elseif scream == 4 then
		sound(1006111829,4.5,1,part,0,false)
	elseif scream == 5 then
		sound(58435367,4.5,1,part,0,false)
	elseif scream == 6 then
		sound(113306429,4.5,1,part,0,false)
	elseif scream == 7 then
		sound(89342465,4.5,1,part,0,false)
	elseif scream == 8 then
		sound(571884894,4.5,1,part,0,false)
	elseif scream == 9 then
		sound(1080634048,4.5,1,part,0,false)
	elseif scream == 10 then
		sound(1080653127,4.5,1,part,0,false)
	elseif scream == 11 then
		sound(1106909528,4.5,1,part,0,false)
	elseif scream == 12 then
		sound(3408562999,7.5,1,part,0,false)
	elseif scream == 13 then
		sound(3408561087,4.5,1,part,0,false)
	elseif scream == 14 then
		sound(3408562264,4.5,1,part,0,false)
	elseif scream == 15 then
		sound(212389449,5.5,1,part,0,false)
	elseif scream == 16 then
		sound(5538518805,4.5,1,part,0,false)
	elseif scream == 17 then
		sound(5538514793,4.5,1,part,0,false)
	elseif scream == 18 then
		sound(5538531501,4.5,1,part,0,false)
	elseif scream == 19 then
		sound(5538535113,4.5,1,part,0,false)
	elseif scream == 20 then
		sound(5538532206,4.5,1,part,0,false)
	elseif scream == 21 then
		sound(5538533945,4.5,1,part,0,false)
	elseif scream == 22 then
		sound(5538534570,4.5,1,part,0,false)
	elseif scream == 23 then
		sound(7393651770,4.5,1,part,0,false)
	elseif scream == 24 then
		sound(147690580,4.5,1,part,0,false)
	elseif scream == 25 then
		sound(147656634,4.5,1,part,0,false)
	elseif scream == 26 then
		sound(3614962759,4.5,1,part,0,false)
	elseif scream == 27 then
		sound(147656625,4.5,1,part,0,false)
	elseif scream == 28 then
		sound(147656618,4.5,1,part,0,false)
	elseif scream == 29 then
		sound(147656613,4.5,1,part,0,false)
	elseif scream == 30 then
		sound(147656596,4.5,1,part,0,false)
	elseif scream == 31 then
		sound(147656589,4.5,1,part,0,false)
	elseif scream == 32 then
		sound(147758746,4.5,1,part,0,false)
	elseif scream == 33 then
		sound(209527175,4.5,1,part,0,false)
	elseif scream == 34 then
		sound(209527245,4.5,1,part,0,false)
	elseif scream == 35 then
		sound(209527203,4.5,1,part,0,false)
	elseif scream == 36 then
		sound(209527206,4.5,1,part,0,false)
	elseif scream == 37 then
		sound(232921590,4.5,1,part,0,false)
	elseif scream == 38 then
		sound(232921580,4.5,1,part,0,false)
	elseif scream == 39 then
		sound(232921573,4.5,1,part,0,false)
	elseif scream == 40 then
		sound(169907033,4.5,1,part,0,false) 
	elseif scream == 41 then
		sound(167094166,4.5,1,part,0,false)
	elseif scream == 42 then
		sound(166221396,4.5,1,part,0,false)
	elseif scream == 43 then
		sound(166221367,4.5,1,part,0,false)
	elseif scream == 44 then
		sound(166221318,4.5,1,part,0,false)
	elseif scream == 45 then
		sound(166221285,4.5,1,part,0,false)
	elseif scream == 46 then
		sound(8174714586,4.5,1,part,0,false)
	elseif scream == 47 then
		sound(8174714346,4.5,1,part,0,false)
	elseif scream == 48 then
		sound(8174713836,4.5,1,part,0,false)
	elseif scream == 49 then
		sound(8174714090,4.5,1,part,0,false)
	elseif scream == 50 then
		sound(565424701,4.5,1,part,0,false)
	elseif scream == 51 then
		sound(4802153284,4.5,1,part,0.15,false)
	elseif scream == 52 then
		sound(1543452819,4.5,1,part,0,false)
	elseif scream == 53 then
		sound(3649662024,4.5,1,part,0,false)
	elseif scream == 54 then
		sound(88551063071877,4.5,1,part,0,false)
	elseif scream == 55 then
		sound(5647369862,4.5,1,part,0,false)
	elseif scream == 56 then
		sound(94010124945262,4.5,1,part,0,false)
	elseif scream == 57 then
		sound(97283412462134,4.5,1,part,0,false)
	elseif scream == 58 then
		sound(101478553895837,4.5,1,part,0,false)
	elseif scream == 59 then
		sound(106503313921653,4.5,1,part,0,false)
	else
		sound(106210004649689,5,1,part,0,false)
	end					
end
local canchat = true
function chatter(message,emote)
	if not canchat then return end
	spawn(function()
		if char:FindFirstChild("ReimuChatbox") then
			char:FindFirstChild("ReimuChatbox"):Destroy()
		end
		local reimuc = new("BillboardGui")
		local reimucf = new("Frame")
		local reimuci = new("ImageLabel")
		local reimucf2 = new("Frame")
		local reimut = new("TextLabel")
		reimuc.Name = "ReimuChatbox"
		reimuc.Parent = char
		reimuc.Size = udim2(9, 0, 9, 0)
		reimuc.Active = true
		reimuc.Adornee = head
		reimuc.ClipsDescendants = true
		reimuc.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		reimuc.AlwaysOnTop = true
		reimuc.StudsOffset = vect3(0, 4, 0)
		reimucf.Name = "BackFrame"
		reimucf.Parent = reimuc
		reimucf.Position = udim2(0, 0, 0.5, 0)
		reimucf.Size = udim2(1, 0, 0.333000004, 0)
		reimucf.AnchorPoint = vect2(0, 0.5)
		reimucf.BackgroundColor3 = color(0.117647, 0.117647, 0.117647)
		reimucf.BorderColor3 = color(0, 0, 0)
		reimucf.BorderSizePixel = 0
		reimucf.Style = Enum.FrameStyle.Custom
		reimuci.Name = "Icon"
		reimuci.Parent = reimuc
		reimuci.Position = udim2(0.0250000004, 0, 0.5, 0)
		reimuci.Size = udim2(0.300000012, 0, 0.300000012, 0)
		reimuci.AnchorPoint = vect2(0, 0.5)
		reimuci.BackgroundColor3 = color(0.356863, 0.356863, 0.356863)
		reimuci.BorderColor3 = color(0, 0, 0)
		reimuci.BorderSizePixel = 0
		reimuci.ZIndex = 2
		reimuci.ScaleType = Enum.ScaleType.Fit
		reimucf2.Name = "TextFrame"
		reimucf2.Parent = reimuc
		reimucf2.Position = udim2(0.975000024, 0, 0.5, 0)
		reimucf2.Size = udim2(0.633000016, 0, 0.300000012, 0)
		reimucf2.AnchorPoint = vect2(1, 0.5)
		reimucf2.BackgroundColor3 = color(0.356863, 0.356863, 0.356863)
		reimucf2.BorderColor3 = color(0, 0, 0)
		reimucf2.BorderSizePixel = 0
		reimucf2.ZIndex = 2
		reimut.Parent = reimucf2
		reimut.Position = udim2(0.5, 0, 0.5, 0)
		reimut.Size = udim2(0.949999988, 0, 0.949999988, 0)
		reimut.AnchorPoint = vect2(0.5, 0.5)
		reimut.BackgroundColor3 = color(0, 0, 0)
		reimut.BackgroundTransparency = 1
		reimut.BorderColor3 = color(0, 0, 0)
		reimut.BorderSizePixel = 0
		reimut.ZIndex = 2
		reimut.Font = Enum.Font.Michroma
		reimut.FontSize = Enum.FontSize.Size24
		reimut.TextColor3 = color(1, 1, 1)
		reimut.TextScaled = true
		reimut.TextSize = 24
		reimut.TextWrap = true
		reimut.TextWrapped = true
		reimut.TextXAlignment = Enum.TextXAlignment.Left
		reimut.TextYAlignment = Enum.TextYAlignment.Top
		reimuci.ResampleMode = "Pixelated"
		if not drive then
			if (emote == "Angry" or emote == "Angry2" or emote == "Anger") then
				reimuci.Image = "rbxassetid://305623814"
			elseif (emote == "Defeated" or emote == "Hurt") then
				reimuci.Image = "rbxassetid://305620931"
			elseif emote == "Happy" then
				reimuci.Image = "rbxassetid://305624107"
			elseif (emote == "Confused" or emote == "Angry3" or emote == "Taunt") then
				reimuci.Image = "rbxassetid://305624024"
			elseif emote == "Wink" then
				reimuci.Image = "rbxassetid://305624263"
			elseif emote == "Surprised" then
				reimuci.Image = "rbxassetid://305622271"
			elseif emote == "Chatting" then
				reimuci.Image = "rbxassetid://305624441"
			else
				reimuci.Image = "rbxassetid://305624372"
			end
		else
			reimuci.Image = "rbxassetid://107303411462661"
			reimuci.ScaleType = Enum.ScaleType.Fit
			reimuci.ImageRectSize = vect2(90,90)
			if emote == "Angry" then
				reimuci.ImageRectOffset = vect2(184,0)
			elseif emote == "Angry2" then
				reimuci.ImageRectOffset = vect2(276,0)
			elseif emote == "Angry3" then
				reimuci.ImageRectOffset = vect2(92,93)
			elseif emote == "Defeated" then
				reimuci.ImageRectOffset = vect2(368,0)
			elseif emote == "Hurt" then
				reimuci.ImageRectOffset = vect2(460,0)
			elseif emote == "Happy" then
				reimuci.ImageRectOffset = vect2(184,93)
			elseif emote == "Anger" then
				reimuci.ImageRectOffset = vect2(276, 93)
			elseif emote == "Confused" then
				reimuci.ImageRectOffset = vect2(0,93)
			elseif emote == "Wink" then
				reimuci.ImageRectOffset = vect2(460, 93)
			elseif emote == "Surprised" then
				reimuci.ImageRectOffset = vect2(0,93)
			elseif emote == "Chatting" then
				reimuci.ImageRectOffset = vect2(0,0)
			elseif emote == "Taunt" then
				reimuci.ImageRectOffset = vect2(368, 93)
			else
				reimuci.ImageRectOffset = vect2(92,0)
			end
		end
		for i = 1,string.len(message),1 do
			reimut.Text = string.sub(message,1,i)
			task.wait(0.025)
		end
		task.wait(1)
		for i = 1,5 do
			task.wait(0.01)
			reimucf.BackgroundTransparency = reimucf.BackgroundTransparency + .25
			reimucf2.BackgroundTransparency = reimucf2.BackgroundTransparency + .25
			reimuci.BackgroundTransparency = reimuci.BackgroundTransparency + .25
			reimuci.ImageTransparency = reimuci.ImageTransparency + .25
			reimut.TextStrokeTransparency = reimut.TextStrokeTransparency + .25
			reimut.TextTransparency = reimut.TextTransparency + .25
		end
		reimuc:Destroy()
	end)
end
local hair = char:FindFirstChild("ReimuHair")
local bow = char:FindFirstChild("ReimuBow")
local face = char:FindFirstChild("ReimuFace")
local shirt = char:FindFirstChildOfClass("Shirt")
local pants = char:FindFirstChildOfClass("Pants")
for i,v in pairs(head:children()) do
	if v:IsA("Decal") then
		v.Transparency = 1
	end
end
if checkninja() then
	for i,v in pairs(char:children()) do
		if v:IsA("Accessory") or v:IsA("Hat") then
			v:Destroy()
		end
	end
else
	for i,v in pairs(char:children()) do
		if v:IsA("Accessory") or v:IsA("Hat") or v:IsA("CharacterMesh") then
			v:Destroy()
		end
	end
	arm1 = new("CharacterMesh", char)
	arm1.Name = "Arm1"
	arm1.BodyPart = "LeftArm"
	arm1.MeshId = "27111419"
	arm2 = new("CharacterMesh",char)
	arm2.Name = "Arm2"
	arm2.BodyPart = "RightArm"
	arm2.MeshId = "27111864"
	leg1 = new("CharacterMesh",char)
	leg1.Name = "Leg1"
	leg1.BodyPart = "LeftLeg"
	leg1.MeshId = "27111857"
	leg2 = new("CharacterMesh", char)
	leg2.Name = "Leg2"
	leg2.BodyPart = "RightLeg"
	leg2.MeshId = "27111882"
	torso2 = new("CharacterMesh",char)
	torso2.Name = "Torso"
	torso2.BodyPart = "Torso"
	torso2.MeshId = "27111894"
end
ra.BrickColor = bc("Light orange")
la.BrickColor = bc("Light orange")
rl.BrickColor = bc("Light orange")
ll.BrickColor = bc("Light orange")
torso.BrickColor = bc("Light orange")
head.BrickColor = bc("Light orange")
if char:FindFirstChildOfClass("BodyColors") ~= nil then
	char:FindFirstChildOfClass("BodyColors").HeadColor = bc("Light orange")
	char:FindFirstChildOfClass("BodyColors").TorsoColor = bc("Light orange")
	char:FindFirstChildOfClass("BodyColors").RightArmColor = bc("Light orange")
	char:FindFirstChildOfClass("BodyColors").LeftArmColor = bc("Light orange")
	char:FindFirstChildOfClass("BodyColors").RightLegColor = bc("Light orange")
	char:FindFirstChildOfClass("BodyColors").LeftLegColor = bc("Light orange")
end
if shirt == nil then
	shirt = new("Shirt",char)
	shirt.Name = "Shirt"
end
shirt.ShirtTemplate = "rbxassetid://73257233215728"
shirt.Color3 = color(1,1,1)
if pants == nil then
	pants = new("Pants",char)
	pants.Name = "Pants"
end
pants.PantsTemplate = "rbxassetid://122202806903706"
pants.Color3 = color(1,1,1)
if hair == nil then
	hair = new("Part",char)
	hair.Name = "ReimuHair"
	hair.CanCollide = false
	hair.Locked = true
	hair.CanTouch = false
	hair.Massless = true
	hair.Size=vect3(0.001,0.001,0.001)
	local hairm = new("SpecialMesh",hair)
	hairm.Scale = vect3(0.178, 0.185, 0.178)
	hairm.MeshId = "rbxassetid://91173763640257"
	hairm.TextureId = "rbxassetid://14767472960" -- this is the best texture ID I can find for this.
	local hairw =new("Weld",hair)
	hairw.Part0 = hair
	hairw.Part1 = head
	hairw.C0 = cframe(0.01, 0.55, -0.215)
end
if bow == nil then
	bow = new("Part",char)
	bow.Name = "ReimuBow"
	bow.CanCollide = false
	bow.Locked = true
	bow.CanTouch = false
	bow.Massless = true
	bow.Size=vect3(0.001,0.001,0.001)
	local bowm = new("SpecialMesh",bow)
	bowm.Scale = vect3(0.164, 0.18, 0.178)
	bowm.MeshId = "rbxassetid://89254915052533"
	bowm.TextureId = "rbxassetid://25356537" -- this is the best texture ID I can find for this.
	local boww =new("Weld",bow)
	boww.Part0 = bow
	boww.Part1 = head
	boww.C0 = cframe(0.01, -0.47, -0.1)
end
if face == nil then
	face = new("Part",char)
	face.Name = "ReimuFace"
	face.CanCollide = false
	face.Locked = true
	face.CanTouch = false
	face.Massless = true
	face.Size=vect3(0.001,0.001,0.001)
	local facem = new("SpecialMesh",face)
	facem.MeshId = "rbxassetid://114592481658762"
	facem.TextureId = "rbxassetid://92347253346930"
	local facew =new("Weld",face)
	facew.Part0 = head
	facew.Part1 = face
end
local GoheiW = nil
local GoheiT = nil
if Gohei ~= nil then
	GoheiW = Gohei:FindFirstChild("ReimuGoheiW")
	GoheiT = Gohei:FindFirstChild("ReimuGoheiT")
else
	Gohei = new("Part")
	GoheiW = new("Weld")
	local GoheiM = new("SpecialMesh")
	Gohei.Name = "ReimuGohei"
	Gohei.Parent = char
	Gohei.CanCollide = false
	Gohei.CanTouch = false
	Gohei.Locked = true
	Gohei.Size = vect3()
	GoheiW.Name = "ReimuGoheiW"
	GoheiW.Parent = Gohei
	GoheiW.C0 = cframe(0, 1.85000002, 1.85000002, 1, 0, 0, 0, 0.98480773, -0.173648193, 0, 0.173648193, 0.98480773)
	GoheiW.Part0 = Gohei
	GoheiW.Part1 = ra
	GoheiM.Parent = Gohei
	GoheiM.MeshId = "rbxassetid://12089837756"
	GoheiM.Scale = vect3(1.5, 1.5, 1.5)
	GoheiM.TextureId = "rbxassetid://12089671963"
	local attachment = new("Attachment")
	attachment.Parent = Gohei
	attachment.Name = "Gohei"
	attachment.CFrame = cframe(0, 1.65, -2.75)
	local attachment2 = new("Attachment")
	attachment2.Parent = Gohei
	attachment2.Name = "Gohei"
	attachment2.CFrame = cframe(0, 1, 1)
	GoheiT = new("Trail")
	GoheiT.Name = "ReimuGoheiT"
	GoheiT.Parent = Gohei
	GoheiT.Attachment0 = attachment
	GoheiT.Attachment1 = attachment2
	GoheiT.Enabled = false
	GoheiT.LightEmission = 1
	GoheiT.LightInfluence = 1
	GoheiT.Texture = "rbxassetid://2003679380"
	GoheiT.Transparency = NumberSequence.new(1,0.5,1)
	GoheiT.MinLength = 0
	GoheiT.Lifetime = 0.5
end
if char:FindFirstChild("FakeHead") then
	char.FakeHead.Transparency = 1
	char.FakeHead.face.Transparency = 1
end
local pgui = ply:FindFirstChild("PlayerGui")
local datz = pgui:FindFirstChild("ReimuStats")
local statstext = nil
local mptext = nil
local drivetext = nil
local mpbar = nil
local drivebar = nil
if datz ~= nil then
	statstext = datz:FindFirstChild("Meters"):FindFirstChild("Input")
	mptext = datz:FindFirstChild("Meters"):FindFirstChild("MP"):FindFirstChild("Set")
	drivetext = datz:FindFirstChild("Meters"):FindFirstChild("Drive"):FindFirstChild("Set")
	mpbar = datz:FindFirstChild("Meters"):FindFirstChild("MP"):FindFirstChild("Bar")
	drivebar = datz:FindFirstChild("Meters"):FindFirstChild("Drive"):FindFirstChild("Bar")
else
	ScreenGui0 = new("ScreenGui")
	Frame1 = new("Frame")
	Frame2 = new("Frame")
	Frame3 = new("Frame")
	Frame4 = new("Frame")
	TextLabel5 = new("TextLabel")
	TextLabel6 = new("TextLabel")
	Frame7 = new("Frame")
	Frame8 = new("Frame")
	Frame9 = new("Frame")
	TextLabel10 = new("TextLabel")
	TextLabel11 = new("TextLabel")
	TextLabel12 = new("TextLabel")
	TextLabel13 = new("TextLabel")
	Frame14 = new("Frame")
	Frame15 = new("Frame")
	Frame16 = new("Frame")
	TextLabel17 = new("TextLabel")
	TextLabel18 = new("TextLabel")
	Frame19 = new("Frame")
	TextBox20 = new("TextBox")
	TextBox21 = new("TextBox")
	ScreenGui0.Name = "ReimuStats"
	ScreenGui0.Parent = pgui
	ScreenGui0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Frame1.Name = "Meters"
	Frame1.Parent = ScreenGui0
	Frame1.Position = udim2(0.610000014, 0, 0, 0)
	Frame1.Size = udim2(0.389999986, 0, 0.129999995, 0)
	Frame1.BackgroundColor = bc("Institutional white")
	Frame1.BackgroundColor3 = color(1, 1, 1)
	Frame1.BackgroundTransparency = 1
	Frame1.BorderColor3 = color(0.11, 0.16, 0.21)
	Frame1.BorderSizePixel = 15
	Frame1.ZIndex = 2
	Frame2.Name = "HP"
	Frame2.Parent = Frame1
	Frame2.Position = udim2(0.0799999982, 0, 0.0700000003, 0)
	Frame2.Size = udim2(0.910000026, 0, 0.330000013, 0)
	Frame2.BackgroundColor = bc("Black")
	Frame2.BackgroundColor3 = color(0.2, 0.2, 0.2)
	Frame2.BorderColor3 = color(0.11, 0.16, 0.21)
	Frame2.BorderSizePixel = 0
	Frame3.Name = "Bar"
	Frame3.Parent = Frame2
	Frame3.Size = udim2(1, 0, 1, 0)
	Frame3.BackgroundColor = bc("Lime green")
	Frame3.BackgroundColor3 = color(0, 1, 0)
	Frame3.BorderColor3 = color(0.11, 0.16, 0.21)
	Frame3.BorderSizePixel = 0
	Frame4.Name = "Shadow"
	Frame4.Parent = Frame2
	Frame4.Position = udim2(0, 0, 0.5, 0)
	Frame4.Size = udim2(1, 0, 0.5, 0)
	Frame4.BackgroundColor = bc("Really black")
	Frame4.BackgroundColor3 = color(0, 0, 0)
	Frame4.BackgroundTransparency = 0.3499999940395355
	Frame4.BorderColor3 = color(0.11, 0.16, 0.21)
	Frame4.BorderSizePixel = 0
	TextLabel5.Name = "Title"
	TextLabel5.Parent = Frame2
	TextLabel5.Size = udim2(0.99000001, 0, 1, 0)
	TextLabel5.BackgroundColor = bc("Institutional white")
	TextLabel5.BackgroundColor3 = color(1, 1, 1)
	TextLabel5.BackgroundTransparency = 1
	TextLabel5.BorderColor3 = color(0.11, 0.16, 0.21)
	TextLabel5.BorderSizePixel = 0
	TextLabel5.Font = Enum.Font.SourceSansItalic
	TextLabel5.FontSize = Enum.FontSize.Size14
	TextLabel5.Text = "Health"
	TextLabel5.TextColor = bc("Institutional white")
	TextLabel5.TextColor3 = color(1, 1, 1)
	TextLabel5.TextScaled = true
	TextLabel5.TextSize = 14
	TextLabel5.TextStrokeTransparency = 0
	TextLabel5.TextWrap = true
	TextLabel5.TextWrapped = true
	TextLabel5.TextXAlignment = Enum.TextXAlignment.Right
	TextLabel6.Name = "Amount"
	TextLabel6.Parent = Frame2
	TextLabel6.Position = udim2(0.00999999978, 0, 0, 0)
	TextLabel6.Size = udim2(0.99000001, 0, 1, 0)
	TextLabel6.BackgroundColor = bc("Institutional white")
	TextLabel6.BackgroundColor3 = color(1, 1, 1)
	TextLabel6.BackgroundTransparency = 1
	TextLabel6.BorderColor3 = color(0.11, 0.16, 0.21)
	TextLabel6.BorderSizePixel = 0
	TextLabel6.Font = Enum.Font.SourceSansItalic
	TextLabel6.FontSize = Enum.FontSize.Size14
	TextLabel6.Text = "100%"
	TextLabel6.TextColor = bc("Institutional white")
	TextLabel6.TextColor3 = color(1, 1, 1)
	TextLabel6.TextScaled = true
	TextLabel6.TextSize = 14
	TextLabel6.TextStrokeTransparency = 0
	TextLabel6.TextWrap = true
	TextLabel6.TextWrapped = true
	TextLabel6.TextXAlignment = Enum.TextXAlignment.Left
	Frame7.Name = "MP"
	Frame7.Parent = Frame1
	Frame7.Position = udim2(0.140000001, 0, 0.469999999, 0)
	Frame7.Size = udim2(0.850000024, 0, 0.25999999, 0)
	Frame7.BackgroundColor = bc("Black")
	Frame7.BackgroundColor3 = color(0.2, 0.2, 0.2)
	Frame7.BorderColor3 = color(0.11, 0.16, 0.21)
	Frame7.BorderSizePixel = 0
	Frame8.Name = "Bar"
	Frame8.Parent = Frame7
	Frame8.Size = udim2(1, 0, 1, 0)
	Frame8.BackgroundColor = bc("Cyan")
	Frame8.BackgroundColor3 = color(0, 0.59, 1)
	Frame8.BorderColor3 = color(0.11, 0.16, 0.21)
	Frame8.BorderSizePixel = 0
	Frame9.Name = "Shadow"
	Frame9.Parent = Frame7
	Frame9.Position = udim2(0, 0, 0.5, 0)
	Frame9.Size = udim2(1, 0, 0.5, 0)
	Frame9.BackgroundColor = bc("Really black")
	Frame9.BackgroundColor3 = color(0, 0, 0)
	Frame9.BackgroundTransparency = 0.3499999940395355
	Frame9.BorderColor3 = color(0.11, 0.16, 0.21)
	Frame9.BorderSizePixel = 0
	TextLabel10.Name = "Title"
	TextLabel10.Parent = Frame7
	TextLabel10.Size = udim2(0.99000001, 0, 1, 0)
	TextLabel10.BackgroundColor = bc("Institutional white")
	TextLabel10.BackgroundColor3 = color(1, 1, 1)
	TextLabel10.BackgroundTransparency = 1
	TextLabel10.BorderColor3 = color(0.11, 0.16, 0.21)
	TextLabel10.BorderSizePixel = 0
	TextLabel10.Font = Enum.Font.SourceSansItalic
	TextLabel10.FontSize = Enum.FontSize.Size14
	TextLabel10.Text = "MP"
	TextLabel10.TextColor = bc("Institutional white")
	TextLabel10.TextColor3 = color(1, 1, 1)
	TextLabel10.TextScaled = true
	TextLabel10.TextSize = 14
	TextLabel10.TextStrokeTransparency = 0
	TextLabel10.TextWrap = true
	TextLabel10.TextWrapped = true
	TextLabel10.TextXAlignment = Enum.TextXAlignment.Right
	TextLabel11.Name = "Set"
	TextLabel11.Parent = Frame7
	TextLabel11.Position = udim2(0.00999999978, 0, 0, 0)
	TextLabel11.Size = udim2(0.99000001, 0, 1, 0)
	TextLabel11.BackgroundColor = bc("Institutional white")
	TextLabel11.BackgroundColor3 = color(1, 1, 1)
	TextLabel11.BackgroundTransparency = 1
	TextLabel11.BorderColor3 = color(0.11, 0.16, 0.21)
	TextLabel11.BorderSizePixel = 0
	TextLabel11.Font = Enum.Font.SourceSansItalic
	TextLabel11.FontSize = Enum.FontSize.Size14
	TextLabel11.Text = "100%"
	TextLabel11.TextColor = bc("Institutional white")
	TextLabel11.TextColor3 = color(1, 1, 1)
	TextLabel11.TextScaled = true
	TextLabel11.TextSize = 14
	TextLabel11.TextStrokeTransparency = 0
	TextLabel11.TextWrap = true
	TextLabel11.TextWrapped = true
	TextLabel11.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel12.Name = "Input"
	TextLabel12.Parent = Frame1
	TextLabel12.Position = udim2(0.239999995, 0, 1.14999998, 0)
	TextLabel12.Size = udim2(0.74000001, 0, 0.239999995, 0)
	TextLabel12.BackgroundColor = bc("Institutional white")
	TextLabel12.BackgroundColor3 = color(1, 1, 1)
	TextLabel12.BackgroundTransparency = 1
	TextLabel12.BorderColor3 = color(0.11, 0.16, 0.21)
	TextLabel12.BorderSizePixel = 0
	TextLabel12.Font = Enum.Font.SourceSansBold
	TextLabel12.FontSize = Enum.FontSize.Size14
	TextLabel12.Text = "ORDER-SOL"
	TextLabel12.TextColor = bc("Institutional white")
	TextLabel12.TextColor3 = color(1, 1, 1)
	TextLabel12.TextScaled = true
	TextLabel12.TextSize = 14
	TextLabel12.TextStrokeTransparency = 0
	TextLabel12.TextWrap = true
	TextLabel12.TextWrapped = true
	TextLabel12.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel13.Name = "InputSet"
	TextLabel13.Parent = Frame1
	TextLabel13.Position = udim2(0.140000001, 0, 1.14999998, 0)
	TextLabel13.Size = udim2(0.100000001, 0, 0.239999995, 0)
	TextLabel13.BackgroundColor = bc("Institutional white")
	TextLabel13.BackgroundColor3 = color(1, 1, 1)
	TextLabel13.BackgroundTransparency = 1
	TextLabel13.BorderColor3 = color(0.11, 0.16, 0.21)
	TextLabel13.BorderSizePixel = 0
	TextLabel13.Font = Enum.Font.SourceSansBold
	TextLabel13.FontSize = Enum.FontSize.Size14
	TextLabel13.Text = "Input:"
	TextLabel13.TextColor = bc("Institutional white")
	TextLabel13.TextColor3 = color(1, 1, 1)
	TextLabel13.TextScaled = true
	TextLabel13.TextSize = 14
	TextLabel13.TextStrokeTransparency = 0
	TextLabel13.TextWrap = true
	TextLabel13.TextWrapped = true
	TextLabel13.TextXAlignment = Enum.TextXAlignment.Left
	Frame14.Name = "Drive"
	Frame14.Parent = Frame1
	Frame14.Position = udim2(0.140000001, 0, 0.870000005, 0)
	Frame14.Size = udim2(0.850000024, 0, 0.25999999, 0)
	Frame14.BackgroundColor = bc("Black")
	Frame14.BackgroundColor3 = color(0.2, 0.2, 0.2)
	Frame14.BorderColor3 = color(0.11, 0.16, 0.21)
	Frame14.BorderSizePixel = 0
	Frame15.Name = "Bar"
	Frame15.Parent = Frame14
	Frame15.Size = udim2(1, 0, 1, 0)
	Frame15.BackgroundColor = bc("Deep orange")
	Frame15.BackgroundColor3 = color(1, 0.666667, 0)
	Frame15.BorderColor3 = color(0.11, 0.16, 0.21)
	Frame15.BorderSizePixel = 0
	Frame16.Name = "Shadow"
	Frame16.Parent = Frame14
	Frame16.Position = udim2(0, 0, 0.5, 0)
	Frame16.Size = udim2(1, 0, 0.5, 0)
	Frame16.BackgroundColor = bc("Really black")
	Frame16.BackgroundColor3 = color(0, 0, 0)
	Frame16.BackgroundTransparency = 0.3499999940395355
	Frame16.BorderColor3 = color(0.11, 0.16, 0.21)
	Frame16.BorderSizePixel = 0
	TextLabel17.Name = "Title"
	TextLabel17.Parent = Frame14
	TextLabel17.Size = udim2(0.99000001, 0, 1, 0)
	TextLabel17.BackgroundColor = bc("Institutional white")
	TextLabel17.BackgroundColor3 = color(1, 1, 1)
	TextLabel17.BackgroundTransparency = 1
	TextLabel17.BorderColor3 = color(0.11, 0.16, 0.21)
	TextLabel17.BorderSizePixel = 0
	TextLabel17.Font = Enum.Font.SourceSansItalic
	TextLabel17.FontSize = Enum.FontSize.Size14
	TextLabel17.Text = "Drive"
	TextLabel17.TextColor = bc("Institutional white")
	TextLabel17.TextColor3 = color(1, 1, 1)
	TextLabel17.TextScaled = true
	TextLabel17.TextSize = 14
	TextLabel17.TextStrokeTransparency = 0
	TextLabel17.TextWrap = true
	TextLabel17.TextWrapped = true
	TextLabel17.TextXAlignment = Enum.TextXAlignment.Right
	TextLabel18.Name = "Set"
	TextLabel18.Parent = Frame14
	TextLabel18.Position = udim2(0.00999999978, 0, 0, 0)
	TextLabel18.Size = udim2(0.99000001, 0, 1, 0)
	TextLabel18.BackgroundColor = bc("Institutional white")
	TextLabel18.BackgroundColor3 = color(1, 1, 1)
	TextLabel18.BackgroundTransparency = 1
	TextLabel18.BorderColor3 = color(0.11, 0.16, 0.21)
	TextLabel18.BorderSizePixel = 0
	TextLabel18.Font = Enum.Font.SourceSansItalic
	TextLabel18.FontSize = Enum.FontSize.Size14
	TextLabel18.Text = "0%"
	TextLabel18.TextColor = bc("Institutional white")
	TextLabel18.TextColor3 = color(1, 1, 1)
	TextLabel18.TextScaled = true
	TextLabel18.TextSize = 14
	TextLabel18.TextStrokeTransparency = 0
	TextLabel18.TextWrap = true
	TextLabel18.TextWrapped = true
	TextLabel18.TextXAlignment = Enum.TextXAlignment.Left
	Frame19.Name = "MusicFrame"
	Frame19.Parent = ScreenGui0
	Frame19.Position = udim2(0.00150000001, 0, 0.5, -25)
	Frame19.Size = udim2(0, 110, 0, 85)
	Frame19.BackgroundColor = bc("Toothpaste")
	Frame19.BackgroundColor3 = color(0.333333, 1, 1)
	Frame19.BorderColor = bc("Toothpaste")
	Frame19.BorderColor3 = color(0.333333, 1, 1)
	Frame19.Style = Enum.FrameStyle.RobloxRound
	TextBox20.Name = "Songu"
	TextBox20.Parent = Frame19
	TextBox20.Position = udim2(0, 0, 0.0500000007, 0)
	TextBox20.Size = udim2(1, 0, 0.349999994, 0)
	TextBox20.BackgroundColor = bc("Institutional white")
	TextBox20.BackgroundColor3 = color(1, 1, 1)
	TextBox20.BorderColor = bc("Ghost grey")
	TextBox20.BorderColor3 = color(0.780392, 0.780392, 0.780392)
	TextBox20.BorderSizePixel = 2
	TextBox20.Font = Enum.Font.SourceSansBold
	TextBox20.FontSize = Enum.FontSize.Size14
	TextBox20.Text = ""
	TextBox20.TextColor = bc("Black metallic")
	TextBox20.TextColor3 = color(0.117647, 0.117647, 0.117647)
	TextBox20.TextSize = 14
	TextBox21.Name = "Volumeu"
	TextBox21.Parent = Frame19
	TextBox21.Position = udim2(0, 0, 0.600000024, 0)
	TextBox21.Size = udim2(1, 0, 0.349999994, 0)
	TextBox21.BackgroundColor = bc("Institutional white")
	TextBox21.BackgroundColor3 = color(1, 1, 1)
	TextBox21.BorderColor = bc("Ghost grey")
	TextBox21.BorderColor3 = color(0.780392, 0.780392, 0.780392)
	TextBox21.BorderSizePixel = 2
	TextBox21.Font = Enum.Font.SourceSansBold
	TextBox21.FontSize = Enum.FontSize.Size14
	TextBox21.Text = ""
	TextBox21.TextColor = bc("Black metallic")
	TextBox21.TextColor3 = color(0.117647, 0.117647, 0.117647)
	TextBox21.TextSize = 14
	NLS([[
	local plrs = game:GetService("Players")
	local plr = plrs.LocalPlayer
	local hum = plr.Character:FindFirstChildOfClass("Humanoid")
	local playergui = plr:FindFirstChild("PlayerGui")
	local textbox = script.Parent:WaitForChild("MusicFrame")
	local Meters = script.Parent.Meters 

	local hpbar = Meters.HP.Bar
	local hptxt = hpbar.Parent.Amount
	hptxt.Text = math.floor((hum.Health / hum.MaxHealth) * 100) .. '%'

	local song = Instance.new("Sound", playergui)
	song.Name = "CSUFMusic"
	song.Looped = true
	local id = "14407334093"
	song.SoundId = "rbxassetid://" .. id
	song:Play()
	wait()
	textbox.Songu.FocusLost:Connect(function()
		local id = textbox.Songu.Text
		song.SoundId = "rbxassetid://" .. id
		song:Play()
	end)
	textbox.Volumeu.FocusLost:Connect(function()
		song.Volume = tonumber(textbox.Volumeu.Text)
	end)
	hum.Died:Connect(function()
		song:Destroy()
	end)
	plr.CharacterAdded:Connect(function()
		song:Destroy()
	end)

	while task.wait() do
		local hea = hum.Health
		local maxhea = hum.MaxHealth
		hpbar.Size = UDim2.new(math.clamp(hea / maxhea, 0, 1), 0, 1, 0)
		hpbar.Position = UDim2.new(math.clamp(1 - hpbar.Size.X.Scale, 0, 1))
		if maxhea ~= math.huge then
			hptxt.Text = math.floor((hea / maxhea) * 100) .. '%'
		else
			hptxt.Text = 'inf%'
		end
	end]],ScreenGui0)
	datz = ScreenGui0
	statstext = TextLabel12
	mptext = TextLabel11
	drivetext = TextLabel18
	mpbar = Frame8
	drivebar = Frame15
end
--voice functions
function latk(type)
	local rng = random(0,2)
	if voices then
		if type == "GGX" then
			--GGX
			if rng == 0 then
				sound(109239418812415,7.5,1.6,head,42.69,false,true,0.085)
			elseif rng == 1 then
				sound(109239418812415,7.5,1.6,head,44.375,false,true,0.072)
			else
				sound(109239418812415,7.5,1.6,head,46,false,true,0.254)
			end
		elseif type == "GGXX" then	
			--GGXX
			if rng == 0 then
				sound(99813049652900,7.5,1.6,head,70.015,false,true,0.143)
			elseif rng == 1 then
				sound(99813049652900,7.5,1.6,head,86.915,false,true,0.177)
			else
				sound(99813049652900,7.5,1.6,head,143.25,false,true,0.313)
			end
		elseif type == "GG" then	
			--GG
			if rng == 0 then
				sound(117469104266808,7.5,1.6,head,22.625,false,true,0.122)
			elseif rng == 1 then
				sound(117469104266808,7.5,1.6,head,19.475,false,true,0.078)
			else
				sound(117469104266808,7.5,1.6,head,44.675,false,true,0.283)
			end
		elseif type == "GGXXAC" then	
			--GGXXAC
			if rng == 0 then
				sound(121159169190170,7.5,3.2,head,92.666,false,true,0.133)
			elseif rng == 1 then
				sound(121159169190170,7.5,3.2,head,231.025,false,true,0.135)
			else
				sound(121159169190170,7.5,3.2,head,16.875,false,true,0.260)
			end
		end
	end
end
function matk(type)
	local rng = random(0,2)
	if voices then
		if type == "GGX" then
			--GGX
			if rng == 0 then
				sound(109239418812415,7.5,1.6,head,42.825,false,true,0.459)
			elseif rng == 1 then
				sound(109239418812415,7.5,1.6,head,44.5,false,true,0.436)
			else
				sound(109239418812415,7.5,1.6,head,46.375,false,true,0.341)
			end
		elseif type == "GGXX" then	
			--GGXX
			if rng == 0 then
				sound(99813049652900,7.5,1.6,head,84.25,false,true,0.387)
			elseif rng == 1 then
				sound(99813049652900,7.5,1.6,head,87.188,false,true,0.41)
			else
				sound(99813049652900,7.5,1.6,head,143.75,false,true,0.263)
			end
		elseif type == "GG" then	
			--GG
			if rng == 0 then
				sound(117469104266808,7.5,1.6,head,31.3,false,true,0.352)
			elseif rng == 1 then
				sound(117469104266808,7.5,1.6,head,19.615,false,true,0.427)
			else
				sound(117469104266808,7.5,1.6,head,45.125,false,true,0.287)
			end
		elseif type == "GGXXAC" then	
			--GGXXAC
			if rng == 0 then
				sound(121159169190170,7.5,3.2,head,93.088,false,true,0.514)
			elseif rng == 1 then
				sound(121159169190170,7.5,3.2,head,231.375,false,true,0.332)
			else
				sound(121159169190170,7.5,3.2,head,17.875,false,true,0.329)
			end
		end
	end
end
function satk(type)
	local rng = random(0,2)
	if (rng == 1) then
		chatter("You're mine!","Angry")
	end
	if type == "GGXXAC" then
		if rng == 2 then
			chatter("Crush!","Angry")
		end
	end
	if voices then
		if type == "GGX" then
			--GGX
			if rng == 0 then
				sound(109239418812415,7.5,1.6,head,43.575,false,true,0.507)
			elseif rng == 1 then
				sound(109239418812415,7.5,1.6,head,45.175,false,true,0.487)
			else
				sound(109239418812415,7.5,1.6,head,46.915,false,true,0.501)
			end
		elseif type == "GGXX" then	
			--GGXX
			if rng == 0 then
				sound(99813049652900,7.5,1.6,head,93.1,false,true,0.493)
			elseif rng == 1 then
				sound(99813049652900,7.5,1.6,head,87.85,false,true,0.633)
			else
				sound(99813049652900,7.5,1.6,head,144.125,false,true,0.593)
			end
		elseif type == "GG" then	
			--GG
			if rng == 0 then
				sound(117469104266808,7.5,1.6,head,15.05,false,true,0.518)
			elseif rng == 1 then
				sound(117469104266808,7.5,1.6,head,31.875,false,true,0.506)
			else
				sound(117469104266808,7.5,1.6,head,45.615,false,true,0.471)
			end
		elseif type == "GGXXAC" then	
			--GGXXAC
			if rng == 0 then
				sound(121159169190170,7.5,3.2,head,94.75,false,true,0.535)
			elseif rng == 1 then
				sound(121159169190170,7.5,3.2,head,232.6,false,true,0.504)
			else
				sound(121159169190170,7.5,3.2,head,18.875,false,true,0.468)
			end
		end
	end
end
function breaker(type)
	local rng = random(0,5)
	if type == "Gold" then
		chatter("All at once now!","Angry")
	else
		chatter("Feeling high and mighty are you..!!","Angry")
	end
	if voices then
		if type == "Gold" then
			--GGXX
			if rng == 0 then
				sound(99813049652900,7.5,1.6,head,76.615,false,true,0.653)
			elseif rng == 1 then
				sound(99813049652900,7.5,1.6,head,132.888,false,true,0.587)
			elseif rng == 2 then
				sound(99813049652900,7.5,1.6,head,30.65,false,true,0.520)
				--GGXXAC
			elseif rng == 3 then
				sound(121159169190170,7.5,3.2,head,123.075,false,true,1.261)
			elseif rng == 4 then
				sound(121159169190170,7.5,3.2,head,257.45,false,true,1.128)
			elseif rng == 5 then
				sound(121159169190170,7.5,3.2,head,45.7,false,true,1.019)
			end
		else
			--GGXX
			if rng == 0 then
				sound(99813049652900,7.5,1.6,head,77.666,false,true,1.087)
			elseif rng == 1 then
				sound(99813049652900,7.5,1.6,head,133.825,false,true,0.820)
			elseif rng == 2 then
				sound(99813049652900,7.5,1.6,head,31.5,false,true,0.9)
				--GGXXAC
			elseif rng == 3 then
				sound(121159169190170,7.5,3.2,head,127.125,false,true,1.323)
			elseif rng == 4 then
				sound(121159169190170,7.5,3.2,head,261.125,false,true,1.269)
			else
				sound(121159169190170,7.5,3.2,head,49.05,false,true,1.4)
			end
		end
	end
end
function taunt(type)
	local rng = random(0,2)
	if rng == 0 then
		chatter("What the hell is that?","Taunt")
	elseif rng == 1 then
		chatter("Show me what you got!","Angry")
	elseif rng == 2 then
		chatter("Come on and attack!","Angry")
	end
	if voices then
		if type == "GGX" then
			if rng == 0 then
				sound(109239418812415,7.5,1.6,head,33.875,false,true,0.815)
			elseif rng == 1 then
				sound(109239418812415,7.5,1.6,head,36.355,false,true,0.701)
			else
				sound(109239418812415,7.5,1.6,head,37.985,false,true,0.710)
			end
		elseif type == "GGXX" then	
			if rng == 0 then
				sound(99813049652900,7.5,1.6,head,148.325,false,true,0.970)
			elseif rng == 1 then
				sound(99813049652900,7.5,1.6,head,91.875,false,true,0.773)
			else
				sound(99813049652900,7.5,1.6,head,147.225,false,true,0.673)
			end
		elseif type == "GG" then	
			if rng == 0 then
				sound(117469104266808,7.5,1.6,head,61.825,false,true,0.664)
			elseif rng == 1 then
				sound(117469104266808,7.5,1.6,head,21.7,false,true,0.698)
			else
				sound(117469104266808,7.5,1.6,head,48.155,false,true,0.654)
			end
		elseif type == "GGXXAC" then	
			if rng == 0 then
				sound(121159169190170,7.5,3.2,head,106.45,false,true,1)
			elseif rng == 1 then
				sound(121159169190170,7.5,3.2,head,241.666,false,true,0.778)
			else
				sound(121159169190170,7.5,3.2,head,29.425,false,true,0.776)
			end
		end
	end
end
function taunt2(type)
	local rng = random(0,2)
	if type == "GGX" then
		if (rng == 0) then
			chatter("You're an eyesore.","Angry")
		elseif (rng == 1) then
			chatter("Get lost!","Angry")
		else
			chatter("It's over already!","Angry")
		end
	end
	if (type == "GGXX" or type == "GGXXAC") then
		if rng == 0 then
			chatter("You're an eyesore.","Angry")
		elseif rng == 1 then
			chatter("Get lost!","Angry")
		elseif rng == 2 then
			chatter("Don't feel like it anymore?","Angry")
		end
	end
	if (type == "GGXX" or type == "GGXXAC") then
		if rng == 0 then
			chatter("You're an eyesore.","Angry")
		elseif rng == 1 then
			chatter("Get lost!","Angry")
		elseif rng == 2 then
			chatter("Don't feel like it anymore?","Angry")
		end
	end
	if voices then
		if type == "GGX" then
			if rng == 0 then
				sound(109239418812415,7.5,1.6,head,35.125,false,true,0.774)
			elseif rng == 1 then
				sound(109239418812415,7.5,1.6,head,37.475,false,true,0.316)
			else
				sound(109239418812415,7.5,1.6,head,39.125,false,true,0.739)
			end
		elseif type == "GGXX" then	
			if rng == 0 then
				sound(99813049652900,7.5,1.6,head,0.9,false,true,0.743)
			elseif rng == 1 then
				sound(99813049652900,7.5,1.6,head,93.888,false,true,0.317)
			else
				sound(99813049652900,7.5,1.6,head,149.888,false,true,0.767)
			end
		elseif type == "GGXXAC" then	
			if rng == 0 then
				sound(121159169190170,7.5,3.2,head,109.625,false,true,0.734)
			elseif rng == 1 then
				sound(121159169190170,7.5,3.2,head,244,false,true,0.305)
			else
				sound(121159169190170,7.5,3.2,head,31.95,false,true,0.741)
			end
		end
	end
end
function faint()
	local rng = random(0,6)
	if rng == 3 then
		chatter("Kusuga...","Confused")
	else
		chatter("Chie...","Confused")
	end
	if voices then
		--GGX
		if rng == 0 then
			sound(109239418812415,7.5,1.6,head,6.125,false,true,0.455)
			--GGXX
		elseif rng == 1 then
			sound(99813049652900,7.5,1.6,head,45,false,true,0.413)
		elseif rng == 2 then
			sound(99813049652900,7.5,1.6,head,102.666,false,true,0.383)
		elseif rng == 3 then
			sound(99813049652900,7.5,1.6,head,157.875,false,true,0.507)
			--GGXXAC
		elseif rng == 4 then
			sound(121159169190170,7.5,3.2,head,118.125,false,true,0.411)
		elseif rng == 5 then
			sound(121159169190170,7.5,3.2,head,254.75,false,true,0.33)
		else
			sound(121159169190170,7.5,3.2,head,43.335,false,true,0.33)
		end
	end
end
function respect(type)
	local rng = random(0,2)
	if (type == "GGX" or type == "GGXX" or type == "GG" or type == "GGXXAC") then
		if (rng == 0) then
			chatter("Pretty good.","Happy")
		elseif (rng == 1) then
			chatter("Good performance.","Happy")
		end
	end
	if (type == "GGX" or type == "GG") then
		if (rng == 2) then
			chatter("That's cool.","Wink")
		end
	end
	if (type == "GGXX" or type == "GGXXAC") then
		if rng == 2 then
			chatter("That's tolerable...","Wink")
		end
	end
	if voices then
		if type == "GGX" then
			if rng == 0 then
				sound(109239418812415,7.5,1.6,head,40.305,false,true,0.555)
			elseif rng == 1 then
				sound(109239418812415,7.5,1.6,head,41.225,false,true,0.506)
			else
				sound(109239418812415,7.5,1.6,head,42,false,true,0.435)
			end
		elseif type == "GGXX" then	
			if rng == 0 then
				sound(99813049652900,7.5,1.6,head,23.15,false,true,0.63)
			elseif rng == 1 then
				sound(99813049652900,7.5,1.6,head,94.4,false,true,0.527)
			else
				sound(99813049652900,7.5,1.6,head,151.125,false,true,0.683)
			end
		elseif type == "GG" then	
			if rng == 0 then
				sound(117469104266808,7.5,1.6,head,62.875,false,true,0.475)
			elseif rng == 1 then
				sound(117469104266808,7.5,1.6,head,22.825,false,true,0.59)
			else
				sound(117469104266808,7.5,1.6,head,49.2,false,true,0.47)
			end
		elseif type == "GGXXAC" then	
			if rng == 0 then
				sound(121159169190170,7.5,3.2,head,111.925,false,true,0.55)
			elseif rng == 1 then
				sound(121159169190170,7.5,3.2,head,245.125,false,true,0.607)
			else
				sound(121159169190170,7.5,3.2,head,34.375,false,true,0.694)
			end
		end
	end
end
function bhurt()
	local randomhurt = random(0,11)
	if voices then
		--GGX
		if randomhurt == 0 then
			sound(109239418812415,7.5,1.6,head,82.375,false,true,0.416)
		elseif randomhurt == 1 then
			sound(109239418812415,7.5,1.6,head,83.666,false,true,0.396)
		elseif randomhurt == 2 then
			sound(109239418812415,7.5,1.6,head,85.025,false,true,0.468)
			--GGXX
		elseif randomhurt == 3 then
			sound(99813049652900,7.5,1.6,head,47,false,true,0.61)
		elseif randomhurt == 4 then
			sound(99813049652900,7.5,1.6,head,86.075,false,true,0.53)
		elseif randomhurt == 5 then
			sound(99813049652900,7.5,1.6,head,142.5,false,true,0.45)
			--GG
		elseif randomhurt == 6 then
			sound(117469104266808,7.5,1.6,head,14.45,false,true,0.39)
		elseif randomhurt == 7 then
			sound(117469104266808,7.5,1.6,head,18.888,false,true,0.368)
		elseif randomhurt == 8 then
			sound(117469104266808,7.5,1.6,head,43.725,false,true,0.584)
			--GGXXAC
		elseif randomhurt == 9 then
			sound(121159169190170,7.5,3.2,head,91.425,false,true,0.396)
		elseif randomhurt == 10 then
			sound(121159169190170,7.5,3.2,head,224.625,false,true,0.374)
		else
			sound(121159169190170,7.5,3.2,head,15.425,false,true,0.491)
		end
	end
end
function win(type)
	local rng = random(0,2)
	if (rng == 0) then
		chatter("Give me a break...","Angry3")
	elseif (rng == 1) then
		chatter("Is that all?","Angry3")
	end
	if (type == "GGXXAC") then
		if rng == 2 then
			chatter("You're annoying so you'd better stay down!","Anger")
		end
	end
	if (type == "GG" or type == "GGXX" or type == "GGX") then
		if (rng == 2) then
			chatter("See ya.","Wink")
		end
	end
	if voices then
		if type == "GGX" then
			if rng == 0 then
				sound(109239418812415,7.5,1.6,head,13.665,false,true,0.778)
			elseif rng == 1 then
				sound(109239418812415,7.5,1.6,head,15.475,false,true,0.652)
			else
				sound(109239418812415,7.5,1.6,head,14.925,false,true,0.353)
			end
		elseif type == "GGXX" then	
			if rng == 0 then
				sound(99813049652900,7.5,1.6,head,37.625,false,true,0.607)
			elseif rng == 1 then
				sound(99813049652900,7.5,1.6,head,95.225,false,true,0.59)
			else
				sound(99813049652900,7.5,1.6,head,152.215,false,true,0.683)
			end
		elseif type == "GG" then	
			if rng == 0 then
				sound(117469104266808,7.5,1.6,head,7.025,false,true,0.626)
			elseif rng == 1 then
				sound(117469104266808,7.5,1.6,head,23.765,false,true,0.567)
			else
				sound(117469104266808,7.5,1.6,head,49.945,false,true,0.375)
			end
		elseif type == "GGXXAC" then	
			if rng == 0 then
				sound(121159169190170,7.5,3.2,head,113.725,false,true,0.685)
			elseif rng == 1 then
				sound(121159169190170,7.5,3.2,head,250.1,false,true,0.614)
			else
				sound(121159169190170,7.5,3.2,head,36.55,false,true,1.373)
			end
		end
	end
end
function win2(type)
	local rng = random(0,2)
	if (type == "GGXX" or type == "GGXXAC") then
		if (rng == 0) then
			chatter("That's it for your skill.","Angry3")
		elseif (rng == 1) then
			chatter("Bore me..","Angry3")
		else
			chatter("It's over...","Angry3")
		end
	end
	if (type == "GGX") then
		chatter("Is that all you have to show me?","Angry3")
	end
	if voices then
		if type == "GGX" then
			sound(109239418812415,7.5,1.6,head,16.5,false,true,0.929)
		elseif type == "GGXX" then	
			if rng == 0 then
				sound(99813049652900,7.5,1.6,head,38.5,false,true,0.853)
			elseif rng == 1 then
				sound(99813049652900,7.5,1.6,head,96.165,false,true,0.863)
			else
				sound(99813049652900,7.5,1.6,head,152.875,false,true,0.59)
			end
		elseif type == "GGXXAC" then	
			if rng == 0 then
				sound(121159169190170,7.5,3.2,head,115.815,false,true,0.707)
			elseif rng == 1 then
				sound(121159169190170,7.5,3.2,head,252.05,false,true,0.849)
			else
				sound(121159169190170,7.5,3.2,head,41.0625,false,true,0.771)
			end
		end
	end
end
function win3(type)
	local rng = random(0,2)
	if (rng == 1) then
		chatter("Give up trying.","Angry")
	end
	if (type == "GGX") then
		if (rng == 0) then
			chatter("Go to sleep baka!","Angry")
		end
	end
	if (type == "GGXX" or type == "GGXXAC") then
		if (rng == 0) then
			chatter("I'm not listening to your crying.","Angry")
		end
	end
	if (type == "GGXX" or type == "GGX") then
		if rng == 2 then
			chatter("Go to sleep, little baka!","Angry")
		end
	end
	if (type == "GGXXAC") then
		if rng == 2 then
			chatter("Go home, baka!","Angry")
		end
	end
	if voices then
		if type == "GGX" then
			if rng == 0 then
				sound(109239418812415,7.5,1.6,head,20.35,false,true,0.656)
			elseif rng == 1 then
				sound(109239418812415,7.5,1.6,head,18,false,true,0.911)
			else
				sound(109239418812415,7.5,1.6,head,19.45,false,true,0.562)
			end
		elseif type == "GGXX" then	
			if rng == 0 then
				sound(99813049652900,7.5,1.6,head,39.9,false,true,0.95)
			elseif rng == 1 then
				sound(99813049652900,7.5,1.6,head,97.555,false,true,1.04)
			else
				sound(99813049652900,7.5,1.6,head,153.825,false,true,0.63)
			end
		elseif type == "GGXXAC" then	
			if rng == 0 then
				sound(121159169190170,7.5,3.2,head,154.575,false,true,0.934)
			elseif rng == 1 then
				sound(121159169190170,7.5,3.2,head,288.725,false,true,0.897)
			else
				sound(121159169190170,7.5,3.2,head,76.025,false,true,0.794)
			end
		end
	end
end
function span(type)
	local rng = random(0,2)
	if (rng == 0) then
		chatter("Are you prepared?","Angry3")
	elseif (rng == 1) then
		chatter("Bothersome...","Angry2")
	else
		chatter("It's heavy...","Angry3")
	end
	if voices then
		if type == "GGX" then
			if rng == 0 then
				sound(109239418812415,7.5,1.6,head,22.925,false,true,0.897)
			elseif rng == 1 then
				sound(109239418812415,7.5,1.6,head,24.3875,false,true,0.474)
			else
				sound(109239418812415,7.5,1.6,head,26.525,false,true,0.444)
			end
		elseif type == "GGXX" then	
			if rng == 0 then
				sound(99813049652900,7.5,1.6,head,41.325,false,true,0.82)
			elseif rng == 1 then
				sound(99813049652900,7.5,1.6,head,99.15,false,true,0.517)
			else
				sound(99813049652900,7.5,1.6,head,154.825,false,true,0.49)
			end
		elseif type == "GG" then	
			if rng == 0 then
				sound(117469104266808,7.5,1.6,head,15.925,false,true,0.777)
			elseif rng == 1 then
				sound(117469104266808,7.5,1.6,head,24.666,false,true,0.541)
			else
				sound(117469104266808,7.5,1.6,head,59.925,false,true,0.505)
			end
		elseif type == "GGXXAC" then	
			if rng == 0 then
				sound(121159169190170,7.5,3.2,head,144.875,false,true,0.852)
			elseif rng == 1 then
				sound(121159169190170,7.5,3.2,head,281.5,false,true,0.668)
			else
				sound(121159169190170,7.5,3.2,head,70.125,false,true,0.61)
			end
		end
	end
end
function span2(type)
	local rng = random(0,2)
	if (rng == 0) then
		chatter("Whatever happens isn't my fault!","Angry3")
	elseif (rng == 1) then
		chatter("Sorry, but it's over!","Angry3")
	else
		chatter("Annoyance!","Anger")
	end
	if voices then
		if type == "GGX" then
			if rng == 0 then
				sound(109239418812415,7.5,1.6,head,21.405,false,true,0.964)
			elseif rng == 1 then
				sound(109239418812415,7.5,1.6,head,25.17,false,true,0.867)
			else
				sound(109239418812415,7.5,1.6,head,27.3,false,true,0.86)
			end
		elseif type == "GGXX" then	
			if rng == 0 then
				sound(99813049652900,7.5,1.6,head,47.975,false,true,0.92)
			elseif rng == 1 then
				sound(99813049652900,7.5,1.6,head,104.975,false,true,0.91)
			else
				sound(99813049652900,7.5,1.6,head,2.075,false,true,0.717)
			end
		elseif type == "GGXXAC" then	
			if rng == 0 then
				sound(121159169190170,7.5,3.2,head,135.875,false,true,0.977)
			elseif rng == 1 then
				sound(121159169190170,7.5,3.2,head,271.15,false,true,0.934)
			else
				sound(121159169190170,7.5,3.2,head,64.55,false,true,0.684)
			end
		end
	end
end
function span3(type)
	local rng = random(0,2)
	if (rng == 0) then
		chatter("Whatever.","Angry3")
	elseif (rng == 1) then
		chatter("You again...","Angry3")
	else
		if type == "GGX" then
			chatter("You wanna die?","Angry3")
		elseif type == "GG" then
			chatter("Crying won't help.","Angry3")
		else
			chatter("Such trouble...","Angry3")
		end
	end
	if voices then
		if type == "GGX" then
			if rng == 0 then
				sound(109239418812415,7.5,1.6,head,30.475,false,true,0.646)
			elseif rng == 1 then
				sound(109239418812415,7.5,1.6,head,31.525,false,true,0.731)
			else
				sound(109239418812415,7.5,1.6,head,32.675,false,true,0.716)
			end
		elseif type == "GGXX" then	
			if rng == 0 then
				sound(99813049652900,7.5,1.6,head,43.75,false,true,0.63)
			elseif rng == 1 then
				sound(99813049652900,7.5,1.6,head,101.375,false,true,0.527)
			else
				sound(99813049652900,7.5,1.6,head,156.615,false,true,0.683)
			end
		elseif type == "GG" then	
			if rng == 0 then
				sound(117469104266808,7.5,1.6,head,55.95,false,true,0.54)
			elseif rng == 1 then
				sound(109239418812415,7.5,1.6,head,31.525,false,true,0.731) --missing voiceline, GGX sound is reused.
			else
				sound(117469104266808,7.5,1.6,head,0.35,false,true,0.563)
			end
		elseif type == "GGXXAC" then	
			if rng == 0 then
				sound(121159169190170,7.5,3.2,head,0,false,true,0.55)
			elseif rng == 1 then
				sound(121159169190170,7.5,3.2,head,174.25,false,true,0.607)
			else
				sound(121159169190170,7.5,3.2,head,302.875,false,true,0.694)
			end
		end
	end
end
function span4()
	local rng = random(0,2)
	if (rng == 0) then
		chatter("Choose...... either run away or stay and die.","Angry")
	elseif (rng == 1) then
		chatter("You're gonna die anyway, so come at me seriously!","Angry3")
	else
		chatter("You better be skilled, so come on!","Angry3")
	end
	if voices then
		if rng == 0 then
			sound(121159169190170,7.5,3.2,head,147.666,false,true,2.207)
		elseif rng == 1 then
			sound(121159169190170,7.5,3.2,head,283.55,false,true,1.603)
		else
			sound(121159169190170,7.5,3.2,head,72.1,false,true,1.234)
		end
	end
end
function overheat(type)
	local rng = random(0,2)
	if (rng == 0) then
		chatter("End this in one strike!","Angry3")
	elseif (rng == 2) then
		chatter("It's about 50%!","Smile")
	end
	if (type == "GGX" or type == "GGXX") then
		if (rng == 1) then
			chatter("See ya.")
		end
	end
	if type == "GGXXAC" then
		if (rng == 1) then
			chatter("GEEZ..YOU WANNA DIE THAT MUCH!!?","Anger")
		end
	end
	if voices then
		if type == "GGX" then
			if rng == 0 then
				sound(109239418812415,7.5,1.6,head,65.79,false,true,0.55)
			elseif rng == 1 then
				sound(109239418812415,7.5,1.6,head,66.666,false,true,0.342)
			else
				sound(109239418812415,7.5,1.6,head,67.215,false,true,0.714)
			end
		elseif type == "GGXX" then	
			if rng == 0 then
				sound(99813049652900,7.5,1.6,head,52.255,false,true,0.613)
			elseif rng == 1 then
				sound(99813049652900,7.5,1.6,head,108.85,false,true,0.34)
			else
				sound(99813049652900,7.5,1.6,head,6.015,false,true,0.757)
			end
		elseif type == "GGXXAC" then	
			if rng == 0 then
				sound(121159169190170,7.5,3.2,head,6.693,false,true,1.034)
			elseif rng == 1 then
				sound(121159169190170,7.5,3.2,head,210.475,false,true,1.630)
			else
				sound(121159169190170,7.5,3.2,head,338.845,false,true,1.164)
			end
		end
	end
end
--END OF VOICE FUNCTIONS
function emote(emotetype)
	keycombo = ""
	if emotetype == "Taunt" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0		
		local randomanim = random(0,1)
		if randomanim == 0 then
			local randomquote = random(0,3)
			if randomquote == 0 then
				taunt("GG")
			elseif randomquote == 1 then
				taunt("GGX")
			elseif randomquote == 2 then
				taunt("GGXX")
			else
				taunt("GGXXAC")
			end
			anim = "taunt"
			frame = 1
			task.wait(1.15)
		else
			local randomquote = random(0,2)
			if randomquote == 1 then
				taunt2("GGX")
			elseif randomquote == 2 then
				taunt2("GGXX")
			else
				taunt2("GGXXAC")
			end
			anim = "taunt2"
			frame = 1
			task.wait(0.15)
			frame = 2
			task.wait(0.25)
			frame = 1
			task.wait(0.5)
		end
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false
		frame = 1
	elseif emotetype == "Lose" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "lose"
		frame = 1
		bhurt()
		task.wait(0.15)
		frame = 2
		task.wait(0.15)
		frame = 1
		task.wait(0.15)
		frame = 2
		task.wait(0.15)
		frame = 1
		task.wait(0.45)
		frame = 3
		local randomquote = random(0,2)
		if randomquote == 0 then
			faint("GGX")
		elseif randomquote == 1 then
			faint("GGXX")
		else
			faint("GGXXAC")
		end
		task.wait(0.175)
		frame = 4
		task.wait(1.75)
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false
	elseif emotetype == "Win" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		local randomanim = random(0,2)
		if randomanim == 0 then
			anim = "win"
			frame = 1
			local randomquote = random(0,3)
			if randomquote == 0 then
				win("GGX")
			elseif randomquote == 1 then
				win("GGXX")
			elseif randomquote == 2 then
				win("GG")
			else
				win("GGXXAC")
			end
			task.wait(0.15)
			frame = 2
			task.wait(0.15)
			frame = 3
			task.wait(2)
		elseif randomanim == 1 then
			anim = "win2"
			frame = 1
			local randomquote = random(0,2)
			if randomquote == 0 then
				win2("GGX")
			elseif randomquote == 1 then
				win2("GGXX")
			else
				win2("GGXXAC")
			end
			task.wait(2)
		else
			anim = "win3"
			frame = 1
			task.wait(0.15)
			frame = 2
			local randomquote = random(0,2)
			if randomquote == 0 then
				win3("GGX")
			elseif randomquote == 1 then
				win3("GGXX")
			else
				win3("GGXXAC")
			end
			task.wait(2)
		end
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false
	elseif emotetype == "Intro" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		local randomanim = random(0,5)
		if randomanim == 0 then
			anim = "spawn"
			frame = 1
			local amulet = new("Part")
			local amuletm = new("SpecialMesh")
			local amuletw = new("Weld")
			amulet.Name = "Handle"
			amulet.Parent = script
			amulet.Size = vect3()
			amulet.CanCollide = false
			amulet.CanTouch = false
			amulet.Locked = true
			amuletm.Parent = amulet
			amuletm.MeshId = "http://www.roblox.com/asset/?id=1136139"
			amuletm.Scale = vect3(0.3, 0.001, 0.5)
			amuletm.TextureId = "http://www.roblox.com/asset/?id=182339676"
			amuletw.Parent = amulet
			amuletw.C0 = cframe(0, 0, 1.5, 1.91068547e-15, 4.37113883e-08, 1, 1, -4.37113883e-08, -0, 4.37113883e-08, 1, -4.37113883e-08)
			amuletw.Part0 = amulet
			amuletw.Part1 = la
			task.wait(0.2)
			frame = 2
			local randomquote = random(0,3)
			if randomquote == 0 then
				span("GGX")
			elseif randomquote == 1 then
				span("GGXX")
			elseif randomquote == 2 then
				span("GG")
			else
				span("GGXXAC")
			end
			task.wait(2)
			local tween = tweens:Create(amulet, TweenInfo.new(0.5), {Transparency = 1})
			tween:Play()
			tween.Completed:Connect(function() amulet:Destroy() end)
		elseif randomanim == 1 then
			anim = "spawn2"
			frame = 1
			task.wait(0.5)
			frame = 2
			sound(104145773394320,4.5,1,Gohei,0,false)
			task.wait(0.5)
			frame = 3
			sound(104145773394320,4.5,1,Gohei,0,false)
			task.wait(0.5)
			frame = 2
			sound(104145773394320,4.5,1,Gohei,0,false)
			task.wait(0.666)
			frame = 4
			local randomquote = random(0,2)
			if randomquote == 0 then
				span2("GGX")
			elseif randomquote == 1 then
				span2("GGXX")
			else
				span2("GGXXAC")
			end
			task.wait(0.25)
			local fg = Gohei:Clone()
			fg.Parent = script
			fg.Name = "FakeGohei"
			fg:BreakJoints()
			fg.CFrame = root.CFrame * cframe(-1.5, 1.75, 2.5) * angles(rad(0),rad(90),rad(-90))
			sound(743521549,4.5,1,Gohei,0,false)
			spawn(function()
				fg.Velocity = root.CFrame.upVector * 75
				while fg ~= nil do
					fg.CFrame = fg.CFrame * CFrame.fromEulerAnglesXYZ(0,(50),(50))
					task.wait()
				end
			end)
			frame = 5
			Gohei.Transparency = 1
			task.wait(0.75)
			sound(105094738430794,6,1,Gohei,174.188,false,true,0.264)
			hiteffect("grab",Gohei)
			fg:Destroy()
			Gohei.Transparency = 0
			task.wait(0.45)
		elseif randomanim == 2 then
			anim = "win2"
			frame = 1
			local randomquote = random(0,3)
			if randomquote == 0 then
				span3("GGX")
			elseif randomquote == 1 then
				span3("GGXX")
			elseif randomquote == 2 then
				span3("GG")
			else
				span3("GGXXAC")
			end
			task.wait(2)
		else
			anim = "spawn3"
			frame = 1
			span4()
			local bike = new("Part")
			local bikem = new("SpecialMesh")
			bike.Name = "Bike"
			bike.Parent = script
			bike.CFrame = root.CFrame * cframe(2, -1, -1.5)
			bike.Size = vect3()
			bike.CanTouch = false
			bike.CanCollide = false
			bike.Anchored = true
			bike.Locked = true
			bikem.Parent = bike
			bikem.MeshId = "http://www.roblox.com/asset/?id=122309814"
			bikem.Scale = vect3(2.5, 2.5, 2.5)
			bikem.TextureId = "http://www.roblox.com/asset/?id=122185866"
			local fg = Gohei:Clone()
			fg.Parent = script
			fg.Name = "FakeGohei"
			fg:BreakJoints()
			fg.Anchored = true
			fg.CFrame = root.CFrame * cframe(4.20, -1.5, -1) * angles(rad(45),rad(0),rad(0))
			Gohei.Transparency = 1
			task.wait(2.25)
			frame = 2
			local pospart = new("Part")
			pospart.Name = "PosPart"
			pospart.Parent = script
			pospart.CFrame = fg.CFrame
			pospart.Size = vect3()
			pospart.Anchored = true
			pospart.CanTouch = false
			pospart.CanCollide = false
			pospart.Locked = true
			pospart.Transparency = 1
			sound(105094738430794,6,1,pospart,174.188,false,true,0.264)
			hiteffect("grab",pospart)
			debris:AddItem(pospart,0.45)
			Gohei.Transparency = 0
			fg:Destroy()
			task.wait(0.15)
			frame = 3
			task.wait(0.075)
			frame = 4
			task.wait(1.15)
			frame = 3
			task.wait(0.15)
			frame = 5
			task.wait(0.1)
			frame = 6
			sound(9994997529,3,1,torso,0,false)
			task.wait(0.5)
			frame = 5
			task.wait(0.25)
			frame = 6
			sound(7929858473,3,1,torso,5.15,false)
			task.wait(1.15)
			frame = 5
			task.wait(0.25)
			local tween = tweens:Create(bike, TweenInfo.new(0.5), {Transparency = 1})
			tween:Play()
			tween.Completed:Connect(function() bike:Destroy() end)
		end
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false
	elseif emotetype == "Fail" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "fail"
		frame = 1
		task.wait(2)
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false	
	elseif emotetype == "Wave" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "wave"
		frame = 1
		task.wait(1)
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false
	elseif emotetype == "Neck" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "neck"
		spawn(function()
			for i = 1,2 do
				sound(240428955, 1.5, 1, head, 0,false)
				task.wait(0.35)
			end
		end)
		for i = 1,2 do
			frame = 1
			task.wait(0.06)
			frame = 2
			task.wait(0.06)
			frame = 3
			task.wait(0.06)
			frame = 4
			task.wait(0.06)
			frame = 5
			task.wait(0.06)
		end
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false
	elseif emotetype == "Compliment" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "compliment"
		frame = 1
		sound(130785407,4.5,1,Gohei,0,false)
		task.wait(0.2)
		Gohei.Transparency = 1
		local fgh = new("Part")
		local fghw = new("Weld")
		fgh.Name = "ReimuGoheiB"
		fgh.Parent = script
		fgh.Size = vect3()
		fgh.CanTouch = false
		fgh.CanCollide = false
		fgh.Locked = true
		fghw.Parent = fgh
		fghw.C0 = cframe(0.449999988, 1.75, -0.150000006, -4.33374332e-08, 5.70548142e-09, -1, 0.1305262, 0.991444886, -0, 0.991444886, -0.1305262, -4.37113883e-08)
		fghw.Part0 = fgh
		fghw.Part1 = torso
		Gohei:FindFirstChildOfClass("SpecialMesh"):Clone().Parent = fgh
		frame = 2
		task.wait(0.125)
		frame = 3
		sound(131445648085306,4,1,torso,127.45,false,true,0.35)
		task.wait(0.125)	
		frame = 4
		task.wait(0.2)
		frame = 3
		sound(131445648085306,4,1,torso,127.45,false,true,0.35)
		task.wait(0.125)	
		frame = 2
		task.wait(0.3)	
		sound(2706199011,4.5,1,torso,0,false)
		frame = 5
		task.wait(0.25)
		local randomquote = random(0,3)
		if randomquote == 0 then
			respect("GG")
		elseif randomquote == 1 then
			respect("GGX")
		elseif randomquote == 2 then
			respect("GGXX")
		else
			respect("GGXXAC")
		end
		task.wait(2)
		fgh:Destroy()
		Gohei.Transparency = 0
		sound(1498950813,4.5,1,Gohei,0.15,false)
		frame = 1
		task.wait(0.125)
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false	
	elseif emotetype == "Yes" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "yes"
		frame = 1
		task.wait(1)
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false	
	elseif emotetype == "No" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "no"
		frame = 1
		task.wait(1)
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false
	elseif emotetype == "Point" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "point"
		frame = 1
		task.wait(0.65)
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false	
	elseif emotetype == "Confused" then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		anim = "confused"
		frame = 1
		local rng = random(0,3)
		if rng <= 1 then
			chatter("Huh?","Surprised")
		else
			chatter("Huh? What are you talking about?","Surprised")
		end
		if voices then
			if rng <= 1 then
				sound(126094484790419,7.5,1.6,head,50.315,false,true,0.4)
			else
				sound(126094484790419,7.5,1.6,head,50.315,false,true,1.329)
			end
		end	
		task.wait(2)
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false
	elseif emotetype == "Sit" then
		sitting = true
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		repeat 
			task.wait()
			anim = "sitground"
		until sitting == false
		attack = false
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
	elseif emotetype == "Wait" then
		waiting = true
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		repeat 
			task.wait()
			anim = "wait"
		until waiting == false
		attack = false
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
	elseif emotetype == "Facepalm" then
		attack = true
		anim = "facepalm"
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		frame = 1
		task.wait(2)
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		attack = false
	end
end

ply.Chatted:connect(function(message)
	if message:sub(1,2) ~= "/e" then
		chatter(message,"Chatting")
	else
		if message:sub(1,7) == "/e chat" then
			canchat = not canchat
		end
		if message:sub(1,7) == "/e lose" and not (attack or guarding or hum.Sit == true or sitting or waiting) then
			emote("Lose")
		end
		if message:sub(1,6) == "/e win" and not (attack or guarding or hum.Sit == true or sitting or waiting) then
			emote("Win")
		end
		if (message:sub(1,10) == "/e intro" or message:sub(1,10) == "/e spawn") and not (attack or guarding or hum.Sit == true or sitting or waiting) then
			emote("Intro")
		end
		if message:sub(1,10) == "/e fail" and not (attack or guarding or hum.Sit == true or sitting or waiting) then
			emote("Fail")
		end
		if message:sub(1,10) == "/e wave" and not (attack or guarding or hum.Sit == true or sitting or waiting) then
			emote("Wave")
		end
		if message:sub(1,13) == "/e compliment" and not (attack or guarding or hum.Sit == true or sitting or waiting) then
			emote("Compliment")
		end
		if message:sub(1,10) == "/e yes" and not (attack or guarding or hum.Sit == true or sitting or waiting) then
			emote("Yes")
		end
		if message:sub(1,10) == "/e no" and not (attack or guarding or hum.Sit == true or sitting or waiting) then
			emote("No")
		end		
		if message:sub(1,10) == "/e taunt" and not (attack or guarding or hum.Sit == true or sitting or waiting) then
			emote("Taunt")
		end
		if message:sub(1,10) == "/e respect" and not (attack or guarding or hum.Sit == true or sitting or waiting) then
			emote("Compliment")
		end
		if message:sub(1,11) == "/e confused" and not (attack or guarding or hum.Sit == true or sitting or waiting) then
			emote("Confused")
		end
		if message:sub(1,10) == "/e point" and not (attack or guarding or hum.Sit == true or sitting or waiting) then
			emote("Point")
		end
		if message:sub(1,11) == "/e facepalm" and not (attack or guarding or hum.Sit == true or sitting or waiting) then
			emote("Facepalm")
		end
		if message:sub(1,9) == "/e voices" then
			voices = not voices
		end
		if message:sub(1,9) == "/e fix" then
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			hum.AutoRotate = true
			root.Anchored = false
			attack = false
		end
	end
end)
hum.Died:Connect(function()
	if char == nil then return end
	dead = true
	attack = true
	ragdoll(char)
	sound(138169148,1,1,head,0,false)
	local rdeath = random(0,11)
	if (rdeath == 0 or rdeath == 5 or rdeath == 7 or rdeath == 10) then
		chatter("It's heavy...","Defeated")
	elseif (rdeath == 2 or rdeath == 8 or rdeath == 9) then
		chatter("Good freaking grief!!","Defeated")
	elseif rdeath == 4 then
		chatter("Good freaking grief...","Defeated")
	end
	if voices then
		if rdeath == 0 then
			sound(109239418812415,7.5,1.6,head,6.845,false,true,1.075)
		elseif rdeath == 1 then
			sound(109239418812415,7.5,1.6,head,8.55,false,true,1.827)
		elseif rdeath == 2 then
			sound(109239418812415,7.5,1.6,head,11.485,false,true,1.356)
		elseif rdeath == 3 then
			sound(117469104266808,7.5,1.6,head,20.3,false,true,0.757)
		elseif rdeath == 4 then
			sound(117469104266808,7.5,1.6,head,47.115,false,true,0.641)
		elseif rdeath == 5 then
			sound(117469104266808,7.5,1.6,head,60.7,false,true,0.691)
		elseif rdeath == 6 then
			sound(99813049652900,7.5,1.6,head,89.666,false,true,1.353)
		elseif rdeath == 7 then
			sound(99813049652900,7.5,1.6,head,140.475,false,true,0.663)
		elseif rdeath == 8 then
			sound(99813049652900,7.5,1.6,head,146.1,false,true,0.723)
		elseif rdeath == 9 then
			sound(121159169190170,7.5,3.2,head,22.175,false,true,0.722)
		elseif rdeath == 10 then
			sound(121159169190170,7.5,3.2,head,101.666,false,true,0.591)
		else
			sound(121159169190170,7.5,3.2,head,235.75,false,true,0.865)
		end
	end
end)
local CurrentHP = hum.Health
local hdf = nil
function healthchange(hp)
	hdf = CurrentHP - hp
	if hp < CurrentHP then
		CurrentHP = hp
		if dead then return end
		if doingcounter then return end
		if sitting then
			sitting = false
		end
		if waiting then
			waiting = false
		end
		if guarding then
			local rng = random(0,5)
			if rng == 0 then
				sound(8542226017, 3, 1, Gohei, 0, false)
			elseif rng == 1 then
				sound(8542224819, 3, 1, Gohei, 0, false)
			elseif rng == 2 then
				sound(8542224235, 3, 1, Gohei, 0, false)
			elseif rng == 3 then
				sound(8542225504, 3, 1, Gohei, 0, false)
			else
				sound(8542223682, 3, 1, Gohei, 0, false)
			end
			hiteffect("block",Gohei)
			if not drive then
				hum.Health= hp + (hdf * 0.98)
			else
				hum.Health= hp + (hdf * 1.96)
			end
			if not inair then
				local bpos = new("BodyPosition")
				bpos.Parent = root
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 1000
				bpos.Position = root.CFrame * cframe(0,0,25).Position
				debris:AddItem(bpos,0.1)
			else
				local bpos = new("BodyPosition")
				bpos.Parent = root
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 1000
				bpos.Position = root.CFrame * cframe(0,15,25).Position
				debris:AddItem(bpos,0.1)
			end
		end
		local randomhurt = random(0,23)
		local trigger = random(0,8)
		if not inair then
			if guarding and trigger >= 4 then
				if (randomhurt == 1 or randomhurt == 12 or randomhurt == 17) then
					chatter("That's nothing!","Wink")
				elseif (randomhurt == 3 or randomhurt == 8 or randomhurt == 15 or randomhurt == 19) then
					chatter("Hey-hey...","Wink")
				elseif (randomhurt == 5 or randomhurt == 6 or randomhurt == 13 or randomhurt == 23) then
					chatter("What's wrong?","Wink")
				elseif (randomhurt == 7 or randomhurt == 21) then
					chatter("Finished Already?","Wink")
				end
			end
			if voices then
				if guarding then
					if trigger >= 4 then
						--GGX
						if randomhurt == 0 then
							sound(109239418812415,7.5,1.6,head,3.475,false,true,0.111)
						elseif randomhurt == 1 then
							sound(109239418812415,7.5,1.6,head,3.65,false,true,0.467)
						elseif randomhurt == 2 then
							sound(109239418812415,7.5,1.6,head,4.375,false,true,0.152)
						elseif randomhurt == 3 then
							sound(109239418812415,7.5,1.6,head,4.65,false,true,0.431)
						elseif randomhurt == 4 then
							sound(109239418812415,7.5,1.6,head,5.325,false,true,0.122)
						elseif randomhurt == 5 then
							sound(109239418812415,7.5,1.6,head,5.485,false,true,0.376)
							--GGXX
						elseif randomhurt == 6 then
							sound(99813049652900,7.5,1.6,head,89.05,false,true,0.387)
						elseif randomhurt == 7 then
							sound(99813049652900,7.5,1.6,head,125.5,false,true,0.463)
						elseif randomhurt == 8 then
							sound(99813049652900,7.5,1.5,head,145.425,false,true,0.459)
						elseif randomhurt == 9 then
							sound(99813049652900,7.5,1.6,head,88.85,false,true,0.13)
						elseif randomhurt == 10 then
							sound(99813049652900,7.5,1.6,head,104.775,false,true,0.13)
						elseif randomhurt == 11 then
							sound(99813049652900,7.5,1.6,head,145.125,false,true,0.177)
							--GG
						elseif randomhurt == 12 then
							sound(117469104266808,7.5,1.6,head,29.615,false,true,0.081)
						elseif randomhurt == 13 then
							sound(117469104266808,7.5,1.6,head,29.745,false,true,0.3)
						elseif randomhurt == 14 then
							sound(117469104266808,7.5,1.6,head,46.325,false,true,0.092)
						elseif randomhurt == 15 then
							sound(117469104266808,7.5,1.6,head,46.475,false,true,0.403)
						elseif randomhurt == 16 then
							sound(117469104266808,7.5,1.6,head,43.55,false,true,0.095)
						elseif randomhurt == 17 then
							sound(117469104266808,7.5,1.6,head,50.5,false,true,0.36)
							--GGXXAC
						elseif randomhurt == 18 then
							sound(121159169190170,7.5,3.2,head,20.325,false,true,0.131)
						elseif randomhurt == 19 then
							sound(121159169190170,7.5,3.2,head,20.8,false,true,0.442)
						elseif randomhurt == 20 then
							sound(121159169190170,7.5,3.2,head,96.445,false,true,0.208)
						elseif randomhurt == 21 then
							sound(121159169190170,7.5,3.2,head,100.25,false,true,0.431)
						elseif randomhurt == 22 then
							sound(121159169190170,7.5,3.2,head,234.15,false,true,0.131)
						else
							sound(121159169190170,7.5,3.2,head,234.5,false,true,0.363)
						end
					end
				else
					if trigger >= 4 then
						--GGX
						if randomhurt == 0 then
							sound(109239418812415,7.5,1.6,head,82,false,true,0.147)
						elseif randomhurt == 1 then
							sound(109239418812415,7.5,1.6,head,82.25,false,true,0.085)
						elseif randomhurt == 2 then
							sound(109239418812415,7.5,1.6,head,83.05,false,true,0.125)
						elseif randomhurt == 3 then
							sound(109239418812415,7.5,1.6,head,83.255,false,true,0.242)
						elseif randomhurt == 4 then
							sound(109239418812415,7.5,1.6,head,84.275,false,true,0.199)
						elseif randomhurt == 5 then
							sound(109239418812415,7.5,1.6,head,84.6,false,true,0.277)							
							--GGXX
						elseif randomhurt == 6 then
							sound(99813049652900,7.5,1.6,head,0,false,true,0.223)
						elseif randomhurt == 7 then
							sound(99813049652900,7.5,1.6,head,0.375,false,true,0.317)
						elseif randomhurt == 8 then
							sound(99813049652900,7.5,1.6,head,84.925,false,true,0.387)
						elseif randomhurt == 9 then
							sound(99813049652900,7.5,1.6,head,85.55,false,true,0.323)
						elseif randomhurt == 10 then
							sound(99813049652900,7.5,1.6,head,141.525,false,true,0.26)
						elseif randomhurt == 11 then
							sound(99813049652900,7.5,1.6,head,141.925,false,true,0.363)
							--GG
						elseif randomhurt == 12 then
							sound(117469104266808,7.5,1.6,head,0,false,true,0.126)
						elseif randomhurt == 13 then
							sound(117469104266808,7.5,1.6,head,0.175,false,true,0.082)
						elseif randomhurt == 14 then
							sound(117469104266808,7.5,1.6,head,18.25,false,true,0.186)
						elseif randomhurt == 15 then
							sound(117469104266808,7.5,1.6,head,18.55,false,true,0.216)
						elseif randomhurt == 16 then
							sound(117469104266808,7.5,1.6,head,42.925,false,true,0.129)
						elseif randomhurt == 17 then
							sound(117469104266808,7.5,1.6,head,43.115,false,true,0.286)
							--GGXXAC
						elseif randomhurt == 18 then
							sound(121159169190170,7.5,3.2,head,83.425,false,true,0.092)
						elseif randomhurt == 19 then
							sound(121159169190170,7.5,3.2,head,88.915,false,true,0.13)
						elseif randomhurt == 20 then
							sound(121159169190170,7.5,3.2,head,223.333,false,true,0.115)
						elseif randomhurt == 21 then
							sound(121159169190170,7.5,3.2,head,223.75,false,true,0.272)
						elseif randomhurt == 22 then
							sound(121159169190170,7.5,3.2,head,14,false,true,0.104)
						else
							sound(121159169190170,7.5,3.2,head,14.475,false,true,0.285)
						end
					end
				end
			end
		else
			if guarding and trigger >= 4 then
				if (randomhurt == 1 or randomhurt == 12 or randomhurt == 17) then
					chatter("That's nothing!","Wink")
				elseif (randomhurt == 3 or randomhurt == 8 or randomhurt == 15 or randomhurt == 19) then
					chatter("Hey-hey...","Wink")
				elseif (randomhurt == 5 or randomhurt == 6 or randomhurt == 13 or randomhurt == 23) then
					chatter("What wrong?","Wink")
				elseif (randomhurt == 7 or randomhurt == 21) then
					chatter("Finished Already?","Wink")
				end
			end
			if voices then
				if guarding then
					if trigger >= 4 then
						--GGX
						if randomhurt == 0 then
							sound(109239418812415,7.5,1.6,head,3.475,false,true,0.111)
						elseif randomhurt == 1 then
							sound(109239418812415,7.5,1.6,head,3.65,false,true,0.467)
						elseif randomhurt == 2 then
							sound(109239418812415,7.5,1.6,head,4.375,false,true,0.152)
						elseif randomhurt == 3 then
							sound(109239418812415,7.5,1.6,head,4.65,false,true,0.431)
						elseif randomhurt == 4 then
							sound(109239418812415,7.5,1.6,head,5.325,false,true,0.122)
						elseif randomhurt == 5 then
							sound(109239418812415,7.5,1.6,head,5.485,false,true,0.376)
							--GGXX
						elseif randomhurt == 6 then
							sound(99813049652900,7.5,1.6,head,89.05,false,true,0.387)
						elseif randomhurt == 7 then
							sound(99813049652900,7.5,1.6,head,125.5,false,true,0.463)
						elseif randomhurt == 8 then
							sound(99813049652900,7.5,1.5,head,145.425,false,true,0.459)
						elseif randomhurt == 9 then
							sound(99813049652900,7.5,1.6,head,88.85,false,true,0.13)
						elseif randomhurt == 10 then
							sound(99813049652900,7.5,1.6,head,104.775,false,true,0.13)
						elseif randomhurt == 11 then
							sound(99813049652900,7.5,1.6,head,145.125,false,true,0.177)
							--GG
						elseif randomhurt == 12 then
							sound(117469104266808,7.5,1.6,head,29.615,false,true,0.081)
						elseif randomhurt == 13 then
							sound(117469104266808,7.5,1.6,head,29.745,false,true,0.3)
						elseif randomhurt == 14 then
							sound(117469104266808,7.5,1.6,head,46.325,false,true,0.092)
						elseif randomhurt == 15 then
							sound(117469104266808,7.5,1.6,head,46.475,false,true,0.403)
						elseif randomhurt == 16 then
							sound(117469104266808,7.5,1.6,head,43.55,false,true,0.095)
						elseif randomhurt == 17 then
							sound(117469104266808,7.5,1.6,head,50.5,false,true,0.36)
							--GGXXAC
						elseif randomhurt == 18 then
							sound(121159169190170,7.5,3.2,head,20.325,false,true,0.131)
						elseif randomhurt == 19 then
							sound(121159169190170,7.5,3.2,head,20.8,false,true,0.442)
						elseif randomhurt == 20 then
							sound(121159169190170,7.5,3.2,head,96.445,false,true,0.208)
						elseif randomhurt == 21 then
							sound(121159169190170,7.5,3.2,head,100.25,false,true,0.431)
						elseif randomhurt == 22 then
							sound(121159169190170,7.5,3.2,head,234.15,false,true,0.131)
						else
							sound(121159169190170,7.5,3.2,head,234.5,false,true,0.363)
						end
					end
				else
					bhurt()
					if sitting then
						sitting = false
					end
				end
			end
		end
	else
		CurrentHP = hp
	end
end
hum.HealthChanged:Connect(healthchange)
hum.FallingDown:Connect(function()
	if not fallen then
		if anchorm then return end
		if dead then return end
		bhurt()
		fallen = true
	end
end)
hum.GettingUp:Connect(function()
	if fallen then
		if anchorm then return end
		if dead then return end
		local randomhurt = random(0,14)
		if (randomhurt == 0 or randomhurt == 3) then
			chatter("Oowuh?!","Hurt")
		elseif (randomhurt == 1 or randomhurt == 4) then
			chatter("Guuuhuhh?!","Hurt")
		elseif (randomhurt == 2 or randomhurt == 5) then
			chatter("This ain't good!","Hurt")
		elseif randomhurt == 6 then
			chatter("Is this my season?!?!?","Hurt")
		elseif randomhurt == 7 then
			chatter("Owhowww??!?","Hurt")
		elseif randomhurt == 8 then
			chatter("DWAA?!","Hurt")
		elseif (randomhurt == 9 or randomhurt == 10 or randomhurt == 12 or randomhurt == 13 or randomhurt == 14) then
			chatter("Kusou!","Hurt")
		else
			chatter("Nnk!- Kusou...","Hurt")
		end
		if voices then
			if randomhurt == 0 then
				sound(99813049652900,7.5,1.6,head,45.65,false,true,0.847)
			elseif randomhurt == 1 then
				sound(99813049652900,7.5,1.6,head,103.26,false,true,0.943)
			elseif randomhurt == 2 then
				sound(99813049652900,7.5,1.6,head,158.7,false,true,0.927)
			elseif randomhurt == 3 then
				sound(109239418812415,7.5,1.6,head,85.79,false,true,0.906)
			elseif randomhurt == 4 then
				sound(109239418812415,7.5,1.6,head,87.21,false,true,0.948)
			elseif randomhurt == 5 then
				sound(109239418812415,7.5,1.6,head,88.766,false)
			elseif randomhurt == 6 then
				sound(121159169190170,7.5,3.2,head,57.95,false,true,0.908)
			elseif randomhurt == 7 then
				sound(121159169190170,7.5,3.2,head,131.325,false,true,0.941)
			elseif randomhurt == 8 then
				sound(121159169190170,7.5,3.2,head,265.125,false,true,1.012)
				--GGXX
			elseif randomhurt == 9 then
				sound(99813049652900,7.5,1.6,head,79.395,false,true,0.28)
			elseif randomhurt == 10 then
				sound(99813049652900,7.5,1.6,head,135.135,false,true,0.233)
			elseif randomhurt == 11 then
				sound(99813049652900,7.5,1.6,head,32.955,false,true,0.767)
				--GGXXAC
			elseif randomhurt == 12 then
				sound(121159169190170,7.5,3.2,head,119.3875,false,true,0.246)
			elseif randomhurt == 13 then
				sound(121159169190170,7.5,3.2,head,256,false,true,0.503)
			else
				sound(121159169190170,7.5,3.2,head,44.615,false,true,0.33)
			end
		end
		fallen = false
	end
end)

hum.Running:Connect(function()
	if hum.MoveDirection.magnitude > .1 then
		moving = true
	else
		moving = false
	end
end)

hum.StateChanged:Connect(function(os, ns)
	if ns == Enum.HumanoidStateType.Jumping then
		sound(105094738430794,4.5,1,torso,242.3,false,true,1.308)
		jumpeffect(root)
	elseif ns == Enum.HumanoidStateType.Landed then
		sound(105094738430794,4.5,1,torso,241.975,false,true,0.292)
		landeffect(root)
	end
end)
function makeblaudy(victim,part,part2,tima,nocut)
	local toki = true
	if not nocut then
		local hcut = new("Part")
		local hcutw = new("Weld")
		hcut.Parent = part
		hcut.Size = vect3(0.05, 0.5, 0.5)
		hcut.BrickColor = bc("Crimson")
		hcut.Material = Enum.Material.Pebble
		hcut.Shape = Enum.PartType.Cylinder
		hcut.CanTouch = false
		hcut.CanCollide = false
		hcutw.Parent = hcut
		hcutw.Part0 = part
		hcutw.Part1 = hcut
		hcutw.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.pi/2) * cframe((part.Size.y/2),0,0)
	end
	local bpart = new("Part", part)
	bpart.Size = vect3(0.2, 0.2, 0.2)
	bpart.CanTouch = false
	bpart.CanCollide = false
	bpart.Position = part2.Position + vect3(0, 1, 0)
	bpart.Transparency = 1
	local bpartw = new("Weld", part)
	bpartw.Part0 = part
	bpartw.Part1 = bpart
	bpartw.C0 = angles(-1, 0, -0.35) * cframe(0, 1, 0.8)
	spawn(function()
		while toki do
			local blood = new("Part")
			local blc = {"Maroon","Cocoa","Crimson"}
			blood.Parent = workspace
			blood.Name = "Blaud"
			blood.BrickColor = bc(blc[random(#blc)])
			blood.Material = "Glass"
			blood.CanCollide = false
			blood.Locked = true
			blood.CanTouch = true
			blood.Shape = Enum.PartType.Ball
			blood.Size = vect3(random(5)/10,0.45,0.45)
			blood.CFrame = bpart.CFrame
			blood.Velocity = bpart.CFrame.upVector * 36 + vect3(random(-5,5),random(-10,10),random(-5,5))
			blood.Touched:connect(function(toucha)
				if toucha.Parent and not (toucha.Parent:IsA("Tool") or toucha:IsDescendantOf(victim) or toucha.Parent:IsDescendantOf(victim) or toucha.Parent.Parent:FindFirstChildOfClass("Humanoid") or toucha.Parent:FindFirstChildOfClass("Humanoid") or toucha.Name == "Bloodey" or toucha.Name == "ColaSpill" or toucha.Name == "Blaud" or toucha.Name == "HeruSmashed" or toucha.Parent == char or toucha.Parent == victim or toucha.Parent:IsA("Accessory") or toucha.Parent:IsA("Hat")) then
					local pos = vect3(blood.Position.X,(toucha.Position.Y+(toucha.Size.Y/2))+0.02,blood.Position.Z)
					local kol = blood.Color
					blood:Destroy()
					if toucha.Name == "BlaudPuddle" then
						local place = toucha.CFrame
						if toucha.Transparency > -0.25 then
							toucha.Transparency = toucha.Transparency - 0.1
						end
						if toucha.Size.X < 11.5 then
							toucha.Size = toucha.Size+vect3(0.115,0,0.115)
							toucha.CFrame = place
						end
					else
						local bpuddle = new("Part",workspace)
						bpuddle.Size = vect3(1, 0.15, 1)
						bpuddle.Name = "BlaudPuddle"
						bpuddle.Anchored = true
						bpuddle.CanCollide = false
						bpuddle.Transparency = 0
						bpuddle.Material = Enum.Material.Glass
						bpuddle.Color = kol
						bpuddle.BottomSurface = Enum.SurfaceType.Smooth
						bpuddle.TopSurface = Enum.SurfaceType.Smooth
						local bpm = new("SpecialMesh",bpuddle)
						bpm.MeshType = Enum.MeshType.Sphere
						bpm.Offset = vect3(0,-0.05,0)
						bpuddle.CFrame = cframe(pos)
						spawn(function()
							while bpuddle ~= nil do
								if bpuddle.Transparency >= 1 then
									bpuddle:Destroy()
								else
									bpuddle.Transparency = bpuddle.Transparency+0.03
								end
								task.wait(0.1)
							end
						end)
					end
				end
			end)
			debris:AddItem(blood,1)
			task.wait(0.025)
		end
	end)
	spawn(function()
		task.wait(tima)
		toki = false
	end)
end
function jumpeffect(part)
	local jumppart = new("Part")
	jumppart.Parent = script
	jumppart.Transparency = 0
	jumppart.Size = vect3(0.001,0.001,0.001)
	jumppart.Anchored = true
	jumppart.BottomSurface = Enum.SurfaceType.Smooth
	jumppart.BrickColor = bc("White")
	jumppart.CanCollide = false
	jumppart.TopSurface = Enum.SurfaceType.Smooth
	jumppart.CFrame = part.CFrame * cframe(0,-1.5,0)
	local jump = new("ParticleEmitter")
	jump.Parent = jumppart
	jump.Speed = NumberRange.new(1, 1)
	jump.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
	jump.Rotation = NumberRange.new(-90, -90)
	jump.LightEmission = 1
	jump.Texture = "rbxassetid://13805841956"
	jump.Size = NumberSequence.new(10,10)
	jump.Brightness = 6
	jump.Lifetime = NumberRange.new(0.4000000059604645, 0.4000000059604645)
	jump.RotSpeed = NumberRange.new(-400, -400)
	jump.Drag = 0
	jump.Rotation = NumberRange.new(-90, -90)
	jump.Orientation = "VelocityPerpendicular"
	jump.EmissionDirection = "Top"
	jump.Rate = 20
	jump.ShapeInOut = "Outward"
	jump.Shape = "Box"
	jump.ShapeStyle = "Volume"
	jump.FlipbookLayout = "Grid4x4"
	jump.FlipbookMode = "OneShot"
	jump.LockedToPart = true
	spawn(function()
		task.wait(0.25)
		jump.Enabled = false
		debris:AddItem(jumppart,1.5)
	end)
end
function landeffect(part)
	local land = new("Part")
	land.Parent = script
	land.Transparency = 0
	land.Size = vect3(0.001,0.001,0.001)
	land.Anchored = false
	land.CanCollide = false
	land.CFrame = part.CFrame
	local weld = new("Weld")
	weld.Parent = land
	weld.Part0 = part
	weld.Part1 = land
	weld.C0 = weld.C0 * cframe(0,-2.5,0)
	local landp = new("ParticleEmitter")
	landp.Name = "Emitter"
	landp.Parent = land
	landp.Speed = NumberRange.new(30, 30)
	landp.Rotation = NumberRange.new(-180, 180)
	landp.LightEmission = 0.20000000298023224
	landp.LightInfluence = 1
	landp.Texture = "rbxassetid://476778304"
	landp.Transparency = NumberSequence.new(1,0.22499996423721313,0.4624999761581421,1)
	landp.Size = NumberSequence.new(0.5,1)
	landp.EmissionDirection = Enum.NormalId.Front
	landp.Lifetime = NumberRange.new(0.20000000298023224, 0.20000000298023224)
	landp.Rate = 250
	landp.SpreadAngle = vect2(0, 180)
	spawn(function()
		weld:Destroy()
		debris:AddItem(weld,0.001)
		land.Anchored = true
		task.wait(0.25)
		landp.Enabled = false
		debris:AddItem(land,1)
	end)
end
function sparker(part)
	local sparku = new("ParticleEmitter")
	sparku.Color = ColorSequence.new{[1] = ColorSequenceKeypoint.new(0, color(1, 0, 0)), [2] = ColorSequenceKeypoint.new(1, color(1, 1, 1)), }
	sparku.Enabled = false
	sparku.Lifetime = NumberRange.new(0.5)
	sparku.LightEmission = 1
	sparku.Name = "Spark"
	sparku.Parent = part
	sparku.Rate = 1
	sparku.RotSpeed = NumberRange.new(300)
	sparku.Rotation = NumberRange.new(-180, 180)
	sparku.Size = NumberSequence.new{[1] = NumberSequenceKeypoint.new(0, 10), [2] = NumberSequenceKeypoint.new(1, 0), }
	sparku.Speed = NumberRange.new(0)
	sparku.Texture = "rbxassetid://1053546634"
	sparku.Transparency = NumberSequence.new{[1] = NumberSequenceKeypoint.new(0, 0), [2] = NumberSequenceKeypoint.new(0.5, 0), [3] = NumberSequenceKeypoint.new(1, 1), }
	sparku.ZOffset = 2
	sparku.Color = ColorSequence.new(color(0.1,0.1,0.1), color(1, 1, 1))
	sparku:Emit(1)
	local shockwaveu = new("ParticleEmitter")
	shockwaveu.Enabled = false
	shockwaveu.Lifetime = NumberRange.new(0.3)
	shockwaveu.LightInfluence = 1
	shockwaveu.LockedToPart = true
	shockwaveu.Name = "Shockwave"
	shockwaveu.Parent = part
	shockwaveu.Rate = 5
	shockwaveu.Size = NumberSequence.new{[1] = NumberSequenceKeypoint.new(0, 0), [2] = NumberSequenceKeypoint.new(1, 5), }
	shockwaveu.Speed = NumberRange.new(0)
	shockwaveu.Texture = "rbxassetid://1537450478"
	shockwaveu.Transparency = NumberSequence.new{[1] = NumberSequenceKeypoint.new(0, 0.2), [2] = NumberSequenceKeypoint.new(1, 1), }
	shockwaveu.ZOffset = 0.1
	shockwaveu:Emit(1)
	sound(1613998698,3,1,part,0.3,false)
	spawn(function()
		task.wait(1)
		sparku:Destroy()
		shockwaveu:Destroy()
	end)
end

local moves = {
	["dash"] = function()
		--Dash
		if not (attack or guarding or hum.Sit == true) then
			keycombo = ""
			if sitting then 
				sitting = false
				attack = true
			end
			if waiting then
				waiting = false
				attack = true
			end
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			attack = true
			anim = "dash"
			sound(4909206080,4,1,torso,0,false)
			local dash = new("BodyVelocity")
			dash.Parent = root
			dash.MaxForce = vect3(math.huge,math.huge,math.huge)
			if not holdings then
				GoheiT.Enabled = true
				frame = 1
				dash.Velocity = root.CFrame.lookVector * 100
			else
				frame = 2
				dash.Velocity = root.CFrame.lookVector * -100
			end
			local effect = new("ParticleEmitter")
			effect.Parent = torso
			effect.Rotation = NumberRange.new(0, 300)
			effect.Color = ColorSequence.new(color(1, 1, 1),color(0.427451, 0.427451, 0.427451))
			effect.LightInfluence = 1
			effect.Texture = "rbxassetid://7731347137"
			effect.Transparency = NumberSequence.new(0.5812499523162842,0.925000011920929,1)
			effect.Size = NumberSequence.new(1.5,0)
			effect.Acceleration = vect3(0, 0.10000000149011612, 0)
			effect.EmissionDirection = Enum.NormalId.Front
			effect.Lifetime = NumberRange.new(2, 3)
			effect.Rate = 100
			effect.RotSpeed = NumberRange.new(10, 13)
			effect.SpreadAngle = vect2(0, 360)
			effect.VelocityInheritance = 0.5
			local doingspin = true
			spawn(function()
				while doingspin do
					spin = spin + 1
					task.wait()
				end
			end)
			task.wait(0.4)
			GoheiT.Enabled = false
			doingspin = false
			effect.Enabled = false
			debris:AddItem(effect,2.5)
			dash:Destroy()
			if not ducking then
				hum.WalkSpeed = ogws
			end
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false	
		end
	end,
	["run"] = function()
		--Run
		if not (attack or guarding or hum.Sit == true or sitting or waiting) then
			keycombo = ""
			attack = true
			hum.WalkSpeed = 115
			hum.JumpPower = 0
			hum.JumpHeight = 0
			hum.AutoRotate = false
			attack = true
			anim = "dash"
			frame = 1
			GoheiT.Enabled = true
			sound(4909206080,4,1,torso,0,false)
			local dash = new("BodyVelocity")
			dash.Parent = root
			dash.MaxForce = vect3(math.huge,math.huge,math.huge)
			dash.Velocity = root.CFrame.lookVector * 100
			local effect = new("ParticleEmitter")
			effect.Parent = torso
			effect.Rotation = NumberRange.new(0, 300)
			effect.Color = ColorSequence.new(color(1, 1, 1),color(0.427451, 0.427451, 0.427451))
			effect.LightInfluence = 1
			effect.Texture = "rbxassetid://7731347137"
			effect.Transparency = NumberSequence.new(0.5812499523162842,0.925000011920929,1)
			effect.Size = NumberSequence.new(1.5,0)
			effect.Acceleration = vect3(0, 0.10000000149011612, 0)
			effect.EmissionDirection = Enum.NormalId.Front
			effect.Lifetime = NumberRange.new(2, 3)
			effect.Rate = 100
			effect.RotSpeed = NumberRange.new(10, 13)
			effect.SpreadAngle = vect2(0, 360)
			effect.VelocityInheritance = 0.5
			repeat
				spin = spin + 1
				task.wait()
			until not holdingw
			GoheiT.Enabled = false
			dash:Destroy()
			effect.Enabled = false
			debris:AddItem(effect,2.5)
			hum.AutoRotate = true
			if not ducking then
				hum.WalkSpeed = ogws
			end
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false	
		end
	end,
	["dashb"] = function()
		--Run
		if not (attack or guarding or hum.Sit == true or sitting or waiting) then
			keycombo = ""
			attack = true
			hum.WalkSpeed = 115
			hum.JumpPower = 0
			hum.JumpHeight = 0
			hum.AutoRotate = false
			anim = "dash"
			frame = 2
			sound(4909206080,4,1,torso,0,false)
			local dash = new("BodyVelocity")
			dash.Parent = root
			dash.MaxForce = vect3(math.huge,math.huge,math.huge)
			dash.Velocity = root.CFrame.lookVector * -100
			local effect = new("ParticleEmitter")
			effect.Parent = torso
			effect.Rotation = NumberRange.new(0, 300)
			effect.Color = ColorSequence.new(color(1, 1, 1),color(0.427451, 0.427451, 0.427451))
			effect.LightInfluence = 1
			effect.Texture = "rbxassetid://7731347137"
			effect.Transparency = NumberSequence.new(0.5812499523162842,0.925000011920929,1)
			effect.Size = NumberSequence.new(1.5,0)
			effect.Acceleration = vect3(0, 0.10000000149011612, 0)
			effect.EmissionDirection = Enum.NormalId.Front
			effect.Lifetime = NumberRange.new(2, 3)
			effect.Rate = 100
			effect.RotSpeed = NumberRange.new(10, 13)
			effect.SpreadAngle = vect2(0, 360)
			effect.VelocityInheritance = 0.5
			repeat
				task.wait()
			until not holdings
			dash:Destroy()
			effect.Enabled = false
			debris:AddItem(effect,2.5)
			if not ducking then
				hum.WalkSpeed = ogws
			end
			hum.AutoRotate = true
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false	
		end
	end,
	["charge"] = function()
		if not (attack or guarding or hum.Sit == true or sitting or waiting) then
			keycombo = ""
			if mp >= 1000 then return end
			attack = true
			anim = "charge"
			frame = 1
			local randomsound = random(0,9)
			local rng = random(0,2)
			if randomsound <= 6 then
				if rng == 0 then
					chatter("ANNOYING...!!","Angry")
				elseif rng == 1 then
					chatter("OUUUAAAAAAHHHH!!","Angry")
				else
					chatter("ANGERIN' ME HIGH!!","Angry")
				end
			elseif randomsound >= 7 then
				if rng == 0 then
					chatter("C'mon and don't mess around!","Angry")
				elseif rng == 1 then
					chatter("You're so annoying..!","Angry")
				else
					chatter("You're just in the way!","Angry")
				end
			end
			if voices then
				if randomsound <= 6 then
					if rng == 0 then
						sound(126094484790419,7.5,1.6,head,42.215,false,true,1.127)
					elseif rng == 1 then
						sound(126094484790419,7.5,1.6,head,57.617,false,true,1.121)
					else
						sound(126094484790419,7.5,1.6,head,59.425,false,true,1.314)
					end
				elseif randomsound >= 7 then
					if rng == 0 then
						sound(117469104266808,7.5,1.6,head,17.175,false,true,0.674)
					elseif rng == 1 then
						sound(117469104266808,7.5,1.6,head,25.575,false,true,0.898)
					else
						sound(117469104266808,7.5,1.6,head,51.125,false,true,0.792)
					end
				end
			end
			task.wait(0.25)
			local charging = true
			sound(9057675920,1,1,torso,0,false)
			local sphere = new("Part")
			sphere.Parent = script
			sphere.Name = "AuraBurst"
			sphere.Shape = "Ball"
			sphere.Size = vect3(1,1,1)
			sphere.Transparency = 0.5
			sphere.BrickColor = bc("Crimson")
			sphere.Material = "Neon"
			sphere.CanCollide = false
			sphere.Anchored = true
			sphere.CFrame = root.CFrame
			local tween = tweens:Create(sphere, TweenInfo.new(0.45), {Size = vect3(25,25,25), Transparency = 1})
			tween:Play()
			debris:AddItem(sphere,1.5)
			frame = 2
			--My sound function won't probably work well, so this is what I had to do instead.
			local snd = new("Sound")
			snd.Name = "Aura"
			snd.SoundId = "rbxassetid://1377219615"
			snd.Volume = 4.5
			snd.Looped = true
			snd.Parent = torso
			snd:Play()
			local cfire = new("Fire")
			cfire.Parent = torso
			cfire.Color = color(1, 0, 0)
			cfire.Size = 20
			cfire.Heat = 15
			cfire.SecondaryColor = color(0.666667, 0, 0)
			cfire.Name = "ChargeFire"
			spawn(function()
				while charging do
					local shard = new("Part")
					local shardm = new("SpecialMesh")
					shard.Name = "Shard"
					shard.Parent = script
					shard.Transparency = 0
					shard.Size = vect3(1, 0.4, 1)
					shard.BrickColor = bc("Bright red")
					shard.CanCollide = false
					shard.CanTouch = false
					shard.Anchored = true
					shard.Locked = true
					shardm.Parent = shard
					shardm.MeshId = "http://www.roblox.com/asset/?id=9547466"
					shardm.Scale =vect3(1, 2, 1)
					shard.CFrame = root.CFrame*cframe(random(-2,2), -3, random(-2,2))
					local fire = new("Fire")
					fire.Parent = shard
					fire.Color = color(1, 0, 0)
					fire.SecondaryColor = color(0.666667, 0, 0)
					tweens:Create(shardm, TweenInfo.new(0.25), {Scale = vect3(0.1, 10, 0.1)}):Play()
					local tween = tweens:Create(shard, TweenInfo.new(0.25), {CFrame = shard.CFrame * cframe(0,10,0), Transparency = 1})
					tween:Play()
					tween.Completed:Connect(function() fire.Enabled = false task.wait(2.5) shard:Destroy() end)
					task.wait(0.045)
				end
			end)
			spawn(function()
				while charging do 
					local sphere = new("Part")
					sphere.Parent = script
					sphere.Name = "SuperSphere"
					sphere.Shape = "Ball"
					sphere.Size = vect3(15,15,15)
					sphere.Transparency = 1
					sphere.Color = color(1, 0.333333, 0)
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = root.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.5), {Size = vect3(0.015,0.015,0.015), Transparency = 0})
					tween:Play()
					tween.Completed:Connect(function() sphere:Destroy() end)
					task.wait(0.5)
				end
			end)
			local judas = true
			spawn(function()
				local spellc = new("Part")
				local spellcm = new("BlockMesh")
				local spellcd = new("Decal")
				local spellcl = new("PointLight")
				spellc.Name = "SpellCircle"
				spellc.Parent = char
				spellc.Transparency = 1
				spellc.Size = vect3(11.5, 0.15, 11.5)
				spellc.BottomSurface = Enum.SurfaceType.Smooth
				spellc.TopSurface = Enum.SurfaceType.Smooth
				spellc.Anchored = true
				spellc.CanCollide = false
				spellc.Locked = true
				spellc.CanTouch = false
				spellcm.Parent = spellc
				spellcm.Scale = vect3(1.5, 1.5, 1.5)
				spellcd.Parent = spellc
				spellcd.Texture = "http://www.roblox.com/asset/?id=2830707113"
				spellcd.Face = Enum.NormalId.Top
				spellcd.Transparency = 1
				spellcl.Parent = spellc
				spellcl.Brightness = 1.75
				spellcl.Range = 15
				spellcl.Color = color(1, 0.333333, 0)
				local tween = tweens:Create(spellcd, TweenInfo.new(1), {Transparency = 0})
				tween:Play()
				local angle = 0
				while judas do
					task.wait()
					angle = angle + 15
					if charging then
						spellc.CFrame = root.CFrame * cframe(0, -3, 0) * angles(0, rad(angle), 0)
					else
						if spellcd.Transparency < 1 then
							if spellc ~= nil then
								spellcd.Transparency = spellcd.Transparency + 0.05
							end
						else
							spellc:Destroy()
							judas = false
							break							
						end
					end
				end
			end)
			repeat
				if checkninja() then
					mp = mp + random(3,6)
				else
					mp = mp + random(1,3)
				end
				task.wait(0.015)
			until not holdinge or mp >= 1000
			if mp > 1000 then
				mp = 1000
			end
			if voices then
				if randomsound <= 6 then
					if rng == 0 then
						sound(126094484790419,7.5,1.6,head,54.435,false,true,0.672)
					elseif rng == 1 then
						sound(126094484790419,7.5,1.6,head,61.515,false,true,0.786)
					else
						sound(126094484790419,7.5,1.6,head,62.766,false,true,0.664)
					end
				end
			end
			frame = 3
			snd:Destroy()
			cfire.Enabled = false
			debris:AddItem(cfire,2.5)
			charging = false
			task.wait(0.1)
			attack = false
		end
	end;
	["light"] = function()
		if not (attack or guarding or hum.Sit == true or sitting or waiting) then
			keycombo = ""
			if not inair then
				if not moving then
					if not ducking then
						attack = true
						hum.WalkSpeed = 0
						hum.JumpPower = 0
						hum.JumpHeight = 0
						anim = "light"
						frame = 1
						task.wait(0.1)
						frame = 3
						task.wait(0.045)
						local randomsound = random(0,9)
						if voices then
							if randomsound <= 2 then
								local randomquote = random(0,3)
								if randomquote == 0 then
									latk("GG")
								elseif randomquote == 1 then
									latk("GGX")
								elseif randomquote == 2 then
									latk("GGXX")
								else
									latk("GGXXAC")
								end
							elseif randomsound >= 7 then
								local randomquote = random(0,3)
								if randomquote == 0 then
									matk("GG")
								elseif randomquote == 1 then
									matk("GGX")
								elseif randomquote == 2 then
									matk("GGXX")
								else
									matk("GGXXAC")
								end
							end
						end
						sound(105094738430794,7.5,1,la,240.345,false,true,0.187)
						frame = 2
						magnitudedamage(6,"sphere", 0, 4.5, 8595980577, 5, 1, root,true,"normal","normal")
						task.wait(0.1)
						if not ducking then 
							hum.WalkSpeed = ogws
						end
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh
						frame = 1
						attack = false	
					else
						attack = true
						hum.WalkSpeed = 0
						hum.JumpPower = 0
						hum.JumpHeight = 0
						anim = "dlight"
						frame = 1
						task.wait(0.1)
						local randomsound = random(0,9)
						if voices then
							if randomsound <= 2 then
								local randomquote = random(0,3)
								if randomquote == 0 then
									latk("GG")
								elseif randomquote == 1 then
									latk("GGX")
								elseif randomquote == 2 then
									latk("GGXX")
								else
									latk("GGXXAC")
								end
							elseif randomsound >= 7 then
								local randomquote = random(0,3)
								if randomquote == 0 then
									matk("GG")
								elseif randomquote == 1 then
									matk("GGX")
								elseif randomquote == 2 then
									matk("GGXX")
								else
									matk("GGXXAC")
								end
							end
						end
						sound(105094738430794,7.5,1,rl,240.345,false,true,0.187)
						frame = 2
						magnitudedamage(6,"sphere", 0, 4.5, 8595975458, 5, 1, root,true,"normal","normal")
						task.wait(0.15)
						if not ducking then 
							hum.WalkSpeed = ogws
						end
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh
						frame = 1
						attack = false	
					end
				else
					attack = true
					hum.WalkSpeed = 0
					hum.JumpPower = 0
					hum.JumpHeight = 0
					anim = "flight"
					frame = 1
					local randomsound = random(0,9)
					if voices then
						if randomsound <= 2 then
							local randomquote = random(0,3)
							if randomquote == 0 then
								latk("GG")
							elseif randomquote == 1 then
								latk("GGX")
							elseif randomquote == 2 then
								latk("GGXX")
							else
								latk("GGXXAC")
							end
						elseif randomsound >= 7 then
							local randomquote = random(0,3)
							if randomquote == 0 then
								matk("GG")
							elseif randomquote == 1 then
								matk("GGX")
							elseif randomquote == 2 then
								matk("GGXX")
							else
								matk("GGXXAC")
							end
						end
					end
					GoheiT.Enabled = true
					task.wait(0.15)
					sound(105094738430794,7.5,1,Gohei,240.5,false,true,0.2375)
					frame = 2
					magnitudedamage(8.5,"sphere", 0.035, 11.5, 743521272, 6.66, 1, root,true,"wood","flight")
					local vel = new("BodyVelocity")
					vel.Parent = root
					vel.MaxForce = vect3(math.huge,math.huge,math.huge)
					vel.Velocity = root.CFrame.lookVector * 45
					debris:AddItem(vel,0.1)
					task.wait(0.15)
					GoheiT.Enabled = false
					if not ducking then 
						hum.WalkSpeed = ogws
					end
					hum.JumpPower = ogjp
					hum.JumpHeight = ogjh
					frame = 1
					attack = false	
				end
			else
				attack = true
				anim = "alight"
				frame = 1
				task.wait(0.1)
				local randomsound = random(0,9)
				if voices then
					if randomsound <= 2 then
						local randomquote = random(0,3)
						if randomquote == 0 then
							latk("GG")
						elseif randomquote == 1 then
							latk("GGX")
						elseif randomquote == 2 then
							latk("GGXX")
						else
							latk("GGXXAC")
						end
						
					elseif randomsound >= 7 then
						local randomquote = random(0,3)
						if randomquote == 0 then
							matk("GG")
						elseif randomquote == 1 then
							matk("GGX")
						elseif randomquote == 2 then
							matk("GGXX")
						else
							matk("GGXXAC")
						end
					end
				end
				sound(105094738430794,7.5,1,la,240.345,false,true,0.187)
				frame = 2
				partdamage(6,"sphere", 0.035, 6.25, 743521272, 6.66, 1, root,true,"normal","normal",0.165)
				task.wait(0.125)
				attack = false	
			end
		end
	end;
	["medium"] = function()
		if not (attack or guarding or hum.Sit == true or sitting or waiting) then
			keycombo = ""
			if not inair then
				if not moving then
					attack = true
					hum.WalkSpeed = 0
					hum.JumpPower = 0
					hum.JumpHeight = 0
					if not ducking then
						anim = "medium"
						frame = 1
						local randomsound = random(0,9)
						if voices then
							if randomsound <= 2 then
								local randomquote = random(0,3)
								if randomquote == 0 then
									latk("GG")
								elseif randomquote == 1 then
									latk("GGX")
								elseif randomquote == 2 then
									latk("GGXX")
								else
									latk("GGXXAC")
								end
							elseif randomsound >= 7 then
								local randomquote = random(0,3)
								if randomquote == 0 then
									matk("GG")
								elseif randomquote == 1 then
									matk("GGX")
								elseif randomquote == 2 then
									matk("GGXX")
								else
									matk("GGXXAC")
								end
							end
						end
						task.wait(0.1)
						sound(105094738430794,7.5,1,rl,240.5,false,true,0.2375)
						frame = 2
						magnitudedamage(8,"sphere", 0.035, 5, 743521272, 6.66, 1, root,true,"normal","normal")
						task.wait(0.12)
						frame = 3
						task.wait(0.1)
					else
						attack = true
						hum.WalkSpeed = 0
						hum.JumpPower = 0
						hum.JumpHeight = 0
						anim = "dmedium"
						frame = 1
						local randomsound = random(0,9)
						if voices then
							if randomsound <= 2 then
								local randomquote = random(0,3)
								if randomquote == 0 then
									latk("GG")
								elseif randomquote == 1 then
									latk("GGX")
								elseif randomquote == 2 then
									latk("GGXX")
								else
									latk("GGXXAC")
								end
							elseif randomsound >= 7 then
								local randomquote = random(0,3)
								if randomquote == 0 then
									matk("GG")
								elseif randomquote == 1 then
									matk("GGX")
								elseif randomquote == 2 then
									matk("GGXX")
								else
									matk("GGXXAC")
								end
							end
						end
						local fg = Gohei:Clone()
						fg.Parent = script
						fg.Name = "FakeGohei"
						fg:BreakJoints()
						fg.Anchored = true
						fg.CFrame = root.CFrame * cframe(0, -3, -4.5) * angles(rad(0),rad(0),rad(90))
						Gohei.Transparency = 1
						spawn(function()
							for i = 1,3 do
								sound(105094738430794,6,1,Gohei,240.345,false,true,0.187)
								task.wait(0.145)
							end
						end)
						spawn(function()
							while fg ~= nil do
								fg.CFrame = fg.CFrame * angles(rad(-15),rad(0),rad(0))
								task.wait()
							end
						end)
						local doingatk = true
						local pospart = new("Part")
						pospart.Name = "PosPart"
						pospart.Parent = script
						pospart.CFrame = root.CFrame * cframe(0, -3, -4.5)
						pospart.Size = vect3()
						pospart.Anchored = true
						pospart.CanTouch = false
						pospart.CanCollide = false
						pospart.Locked = true
						pospart.Transparency = 1
						magnitudedamage(3,"sphere", 0.035, 5, 743521272, 6.66, 1, root,true,"wood","normal")
						task.wait(0.045)
						spawn(function()
							while doingatk do
								magnitudedamage(3,"sphere", 0.035, 5, 743521272, 6.66, 1, pospart,true,"wood","normal")
								task.wait(0.045)
							end
						end)
						task.wait(0.666)
						Gohei.Transparency = 0
						doingatk = false
						fg:Destroy()
						pospart:Destroy()
						if not ducking then 
							hum.WalkSpeed = ogws
						end
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh
						frame = 1
						attack = false	
					end
					if not ducking then 
						hum.WalkSpeed = ogws
					end
					hum.JumpPower = ogjp
					hum.JumpHeight = ogjh
					attack = false	
				else
					attack = true
					hum.WalkSpeed = 0
					hum.JumpPower = 0
					hum.JumpHeight = 0
					anim = "fmedium"
					frame = 1
					task.wait(0.075)		
					local randomsound = random(0,9)
					if voices then
						if randomsound <= 2 then
							local randomquote = random(0,3)
							if randomquote == 0 then
								latk("GG")
							elseif randomquote == 1 then
								latk("GGX")
							elseif randomquote == 2 then
								latk("GGXX")
							else
								latk("GGXXAC")
							end
						elseif randomsound >= 7 then
							local randomquote = random(0,3)
							if randomquote == 0 then
								matk("GG")
							elseif randomquote == 1 then
								matk("GGX")
							elseif randomquote == 2 then
								matk("GGXX")
							else
								matk("GGXXAC")
							end
						end
					end
					frame = 2
					task.wait(0.1)		
					sound(105094738430794,6,1,la,240.5,false,true,0.2375)
					frame = 3
					magnitudedamage(11,"sphere", 0.035, 5, 743521272, 6.66, 1, root,true,"normal","fmedium")
					task.wait(0.15)
					if not ducking then 
						hum.WalkSpeed = ogws
					end
					hum.JumpPower = ogjp
					hum.JumpHeight = ogjh
					attack = false	
				end
			else
				attack = true
				anim = "amedium"
				frame = 1
				task.wait(0.1)
				local randomsound = random(0,9)
				if voices then
					if randomsound <= 2 then
						local randomquote = random(0,3)
						if randomquote == 0 then
							latk("GG")
						elseif randomquote == 1 then
							latk("GGX")
						elseif randomquote == 2 then
							latk("GGXX")
						else
							latk("GGXXAC")
						end
					elseif randomsound >= 7 then
						local randomquote = random(0,3)
						if randomquote == 0 then
							matk("GG")
						elseif randomquote == 1 then
							matk("GGX")
						elseif randomquote == 2 then
							matk("GGXX")
						else
							matk("GGXXAC")
						end
					end
				end
				sound(105094738430794,6,1,Gohei,240.5,false,true,0.2375)
				frame = 2
				partdamage(9.5,"sphere", 0.035, 6.25, 743521272, 6.66, 1, root,true,"wood","normal",0.25)
				task.wait(0.12)
				frame = 1
				task.wait(0.1)
				attack = false
			end
		end
	end;
	["strong"] = function()
		if not (attack or guarding or hum.Sit == true or sitting or waiting) then
			keycombo = ""
			if not inair then
				if not moving then
					if not ducking then
						attack = true
						hum.WalkSpeed = 0
						hum.JumpPower = 0
						hum.JumpHeight = 0
						anim = "strong"
						frame = 1
						local randomsound = random(0,9)
						if voices then
							if randomsound <= 2 then
								local randomquote = random(0,3)
								if randomquote == 0 then
									matk("GG")
								elseif randomquote == 1 then
									matk("GGX")
								elseif randomquote == 2 then
									matk("GGXX")
								else
									matk("GGXXAC")
								end
							elseif randomsound >= 7 then
								local randomquote = random(0,3)
								if randomquote == 0 then
									satk("GG")
								elseif randomquote == 1 then
									satk("GGX")
								elseif randomquote == 2 then
									satk("GGXX")
								else
									satk("GGXXAC")
								end
							end
						end
						task.wait(0.15)	
						sound(105094738430794,6,1,rl,265,false,true,0.365)
						frame = 2
						magnitudedamage(12,"sphere", 0.045, 5, 743521207, 6.66, 1, root,true,"normal","normal")
						task.wait(0.175)
						frame = 3
						task.wait(0.1)
						if not ducking then 
							hum.WalkSpeed = ogws
						end
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh
						attack = false	
					else
						attack = true
						hum.WalkSpeed = 0
						hum.JumpPower = 0
						hum.JumpHeight = 0
						anim = "dstrong"
						frame = 1
						task.wait(0.125)
						local randomsound = random(0,9)
						if voices then
							if randomsound <= 2 then
								local randomquote = random(0,3)
								if randomquote == 0 then
									matk("GG")
								elseif randomquote == 1 then
									matk("GGX")
								elseif randomquote == 2 then
									matk("GGXX")
								else
									matk("GGXXAC")
								end
							elseif randomsound >= 7 then
								local randomquote = random(0,3)
								if randomquote == 0 then
									satk("GG")
								elseif randomquote == 1 then
									satk("GGX")
								elseif randomquote == 2 then
									satk("GGXX")
								else
									satk("GGXXAC")
								end
							end
						end
						sound(105094738430794,6,1,torso,265,false,true,0.365)
						frame = 2
						magnitudedamage(11,"sphere", 0.045, 5, 743521207, 6.66, 1, root,true,"normal","dstrong")
						local bpos = new("BodyPosition")
						bpos.Name = "DStrongMove"
						bpos.Parent = root
						bpos.MaxForce = vect3(39999,39999,39999)
						bpos.D = 1150
						bpos.Position = root.CFrame * cframe(0,30,-25).Position
						task.wait(0.15)
						bpos:Destroy()
						frame = 3
						task.wait(0.15)
						if not ducking then 
							hum.WalkSpeed = ogws
						end
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh
						attack = false	
					end
				else
					attack = true
					hum.WalkSpeed = 0
					hum.JumpPower = 0
					hum.JumpHeight = 0
					anim = "fstrong"
					frame = 1
					local randomsound = random(0,9)
					if voices then
						if randomsound <= 2 then
							local randomquote = random(0,3)
							if randomquote == 0 then
								matk("GG")
							elseif randomquote == 1 then
								matk("GGX")
							elseif randomquote == 2 then
								matk("GGXX")
							else
								matk("GGXXAC")
							end
						elseif randomsound >= 7 then
							local randomquote = random(0,3)
							if randomquote == 0 then
								satk("GG")
							elseif randomquote == 1 then
								satk("GGX")
							elseif randomquote == 2 then
								satk("GGXX")
							else
								satk("GGXXAC")
							end
						end
					end
					task.wait(0.075)
					sound(105094738430794,6,1,ll,265,false,true,0.365)
					frame = 2
					magnitudedamage(14,"sphere", 0.045, 7.5, 743521207, 6.66, 1, root,true,"normal","fstrong")
					local bpos = new("BodyPosition")
					bpos.Name = "FStrongMove"
					bpos.Parent = root
					bpos.MaxForce = vect3(39999,39999,39999)
					bpos.D = 1150
					bpos.Position = root.CFrame * cframe(0,5,-45).Position
					task.wait(0.25)
					bpos:Destroy()
					if not ducking then 
						hum.WalkSpeed = ogws
					end
					hum.JumpPower = ogjp
					hum.JumpHeight = ogjh
					attack = false	
				end
			else
				if not moving then
					attack = true
					anim = "astrong"
					frame = 1
					task.wait(0.1)
					local parta = new("Part")
					local partaw = new("Weld")
					parta.Parent = script
					parta.Transparency = -5
					parta.CanTouch = false
					parta.Size = vect3(4, 5, 0.5)
					parta.BottomSurface = Enum.SurfaceType.Smooth
					parta.CanCollide = false
					parta.Material = Enum.Material.ForceField
					parta.TopSurface = Enum.SurfaceType.Smooth
					parta.Massless = true
					parta.Locked = true
					partaw.Parent = parta
					partaw.C0 = cframe(0, -0.75, -3.75, 1, -0, 0, 0, 0.906307817, 0.42261824, -0, -0.42261824, 0.906307817)
					partaw.Part0 = root
					partaw.Part1 = parta
					local tween = tweens:Create(parta, TweenInfo.new(0.5), {Size = parta.Size * 2,Transparency = 1})
					tween:Play()
					tween.Completed:Connect(function() parta:Destroy() end)
					local randomsound = random(0,9)
					if voices then
						if randomsound <= 2 then
							local randomquote = random(0,3)
							if randomquote == 0 then
								matk("GG")
							elseif randomquote == 1 then
								matk("GGX")
							elseif randomquote == 2 then
								matk("GGXX")
							else
								matk("GGXXAC")
							end
						elseif randomsound >= 7 then
							local randomquote = random(0,3)
							if randomquote == 0 then
								satk("GG")
							elseif randomquote == 1 then
								satk("GGX")
							elseif randomquote == 2 then
								satk("GGXX")
							else
								satk("GGXXAC")
							end
						end
					end
					sound(105094738430794,6,1,la,265,false,true,0.365)
					frame = 2
					partdamage(10,"sphere", 0.045, 6.25, 743521207, 6.66, 1, root,true,"normal","knockdown",0.25)
					task.wait(0.15)
					attack = false
				else
					attack = true
					hum.WalkSpeed = 0
					hum.JumpPower = 0
					hum.JumpHeight = 0
					anim = "fstrong"
					frame = 1
					local randomsound = random(0,9)
					if voices then
						if randomsound <= 2 then
							local randomquote = random(0,3)
							if randomquote == 0 then
								matk("GG")
							elseif randomquote == 1 then
								matk("GGX")
							elseif randomquote == 2 then
								matk("GGXX")
							else
								matk("GGXXAC")
							end
						elseif randomsound >= 7 then
							local randomquote = random(0,3)
							if randomquote == 0 then
								satk("GG")
							elseif randomquote == 1 then
								satk("GGX")
							elseif randomquote == 2 then
								satk("GGXX")
							else
								satk("GGXXAC")
							end
						end
					end
					task.wait(0.075)
					sound(105094738430794,6,1,ll,265,false,true,0.365)
					frame = 2
					partdamage(14,"sphere", 0.045, 7.5, 743521207, 6.66, 1, root,true,"normal","fstrong", 0.25)
					local bpos = new("BodyPosition")
					bpos.Name = "FStrongMove"
					bpos.Parent = root
					bpos.MaxForce = vect3(39999,39999,39999)
					bpos.D = 1150
					bpos.Position = root.CFrame * cframe(0,5,-45).Position
					task.wait(0.25)
					bpos:Destroy()
					if not ducking then 
						hum.WalkSpeed = ogws
					end
					hum.JumpPower = ogjp
					hum.JumpHeight = ogjh
					attack = false	
				end
			end
		end
	end;
	["special"] = function()
		--Special Attack
		if not (attack or guarding or hum.Sit == true or sitting or waiting) then
			if specialcooldown then return end
			if not checkninja() then if mp < 20 then return end else if mp < (20/10) then return end end
			if checkninja() then
				mp = mp - (20/10)
			else
				mp = mp - 20
			end
			keycombo = ""
			attack = true
			specialcooldown = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "special"
			frame = 1
			local amulet = new("Part")
			local amuletm = new("SpecialMesh")
			local amuletw = new("Weld")
			amulet.Name = "Handle"
			amulet.Parent = script
			amulet.Size = vect3()
			amulet.CanCollide = false
			amulet.CanTouch = false
			amulet.Locked = true
			amuletm.Parent = amulet
			amuletm.MeshId = "http://www.roblox.com/asset/?id=1136139"
			amuletm.Scale = vect3(0.3, 0.001, 0.5)
			amuletm.TextureId = "http://www.roblox.com/asset/?id=182339676"
			amuletw.Parent = amulet
			amuletw.C0 = cframe(0, 0, 1.5, 1.91068547e-15, 4.37113883e-08, 1, 1, -4.37113883e-08, -0, 4.37113883e-08, 1, -4.37113883e-08)
			amuletw.Part0 = amulet
			amuletw.Part1 = la
			task.wait(0.15)
			anim = "light"
			frame = 1
			task.wait(0.1)
			frame = 3
			sound(105094738430794,6,1,ra,265,false,true,0.365)
			task.wait(0.045)
			local randomsound = random(0,9)
			if voices then
				if randomsound <= 2 then
					local randomquote = random(0,3)
					if randomquote == 0 then
						matk("GG")
					elseif randomquote == 1 then
						matk("GGX")
					elseif randomquote == 2 then
						matk("GGXX")
					else
						matk("GGXXAC")
					end
				elseif randomsound >= 7 then
					local randomquote = random(0,3)
					if randomquote == 0 then
						satk("GG")
					elseif randomquote == 1 then
						satk("GGX")
					elseif randomquote == 2 then
						satk("GGXX")
					else
						satk("GGXXAC")
					end
				end
			end
			amulet:Destroy()
			frame = 2
			local cross = new("Part")
			local crossm = new("SpecialMesh")
			cross.Parent = script
			cross.Anchored = true
			cross.Material = "ForceField"
			cross.BrickColor = bc("Electric blue")
			cross.Transparency = 1
			cross.Locked = true
			cross.Size = vect3(6, 9, 0.395)
			crossm.Parent = cross
			crossm.MeshId = "rbxassetid://13727981351"
			crossm.Scale = vect3(0.25, 0.25, 0.25)
			crossm.MeshType = Enum.MeshType.FileMesh
			cross.CFrame = root.CFrame * cframe(0,0,-4.5)
			local crossp = new("ParticleEmitter")
			crossp.Parent = cross
			crossp.Color = ColorSequence.new(color(0, 0.333333, 1),color(0, 0.333333, 1))
			crossp.EmissionDirection = Enum.NormalId.Back
			crossp.Lifetime = NumberRange.new(1, 1)
			crossp.Rate = 115
			sound(6938611571,2.25,1,cross,0,false)
			local canhit = true
			local hashit = false
			cross.Touched:Connect(function(persona)
				if persona:IsA("BasePart") or persona:IsA("MeshPart") then
					if persona.Parent ~= nil and not persona.Parent:IsDescendantOf(char) then
						if persona.Parent:FindFirstChildOfClass("Humanoid") and persona.Parent ~= char and hashit == false then
							local humi = persona.Parent:FindFirstChildOfClass("Humanoid")
							local torsou = persona.Parent:FindFirstChild("Torso") or persona.Parent:FindFirstChild("UpperTorso") or persona.Parent:FindFirstChild("HumanoidRootPart")
							if torsou and canhit and not persona.Parent:FindFirstChild("IsAllyOfReimuEngrenado") then
								hashit = true
								local grabpart = new("Part")
								grabpart.Size = vect3(0.001,0.001,0.001)
								grabpart.Parent = script
								grabpart.Transparency = 1
								grabpart.CanCollide = false
								grabpart.CanTouch = false
								grabpart.Locked = true
								grabpart.Anchored = true
								grabpart.CFrame = torsou.CFrame * cframe(0,0,-1.5) * angles(0,rad(180),0)
								debris:AddItem(grabpart,0.005)
								magnitudedamage(10, "sphere", 0.045, 5, 743521207, 6.66, 1, grabpart, true, "normal", "special")
							end
						end
					end	
				end
			end)
			local tween = tweens:Create(cross, TweenInfo.new(0.75), {CFrame = cross.CFrame * cframe(0,0,-10), Transparency = 0})
			tween:Play()
			tween.Completed:Connect(function()
				canhit = false
				crossp.Enabled = false
				local tween2 = tweens:Create(cross, TweenInfo.new(1), {Transparency = 1})
				tween2:Play()
				tween2.Completed:Connect(function()
					cross:Destroy()
				end)
			end)
			task.wait(0.1)
			spawn(function()
				task.wait(2)
				specialcooldown = false
			end)
			frame = 1
			if not ducking then 
				hum.WalkSpeed = ogws
			end
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false	
		end
	end;
	["burst"] = function()
		if not (attack or guarding or hum.Sit == true or sitting or waiting) then
			if not checkninja() then if mp < 250 then return end else if mp < (250/10) then return end end
			if checkninja() then
				mp = mp - (250/10)
			else
				mp = mp - 250
			end
			keycombo = ""
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "spawn"
			frame = 1
			local randomsound = random(0,8)
			if voices then
				if randomsound <= 3 then
					breaker("Blue")
				elseif randomsound >= 4 then
					breaker("Gold")
				end
			end
			task.wait(0.115)
			local amulet = new("Part")
			local amuletm = new("SpecialMesh")
			local amuletw = new("Weld")
			amulet.Name = "Handle"
			amulet.Parent = script
			amulet.Size = vect3()
			amulet.CanCollide = false
			amulet.CanTouch = false
			amulet.Locked = true
			amuletm.Parent = amulet
			amuletm.MeshId = "http://www.roblox.com/asset/?id=1136139"
			amuletm.Scale = vect3(0.3, 0.001, 0.5)
			amuletm.TextureId = "http://www.roblox.com/asset/?id=182339676"
			amuletw.Parent = amulet
			amuletw.C0 = cframe(0, 0, 1.5, 1.91068547e-15, 4.37113883e-08, 1, 1, -4.37113883e-08, -0, 4.37113883e-08, 1, -4.37113883e-08)
			amuletw.Part0 = amulet
			amuletw.Part1 = la
			frame = 2
			local burster = new("Part")
			local burstm = new("SpecialMesh")
			burster.Name = "Rocket"
			burster.CFrame = root.CFrame
			burster.Parent = script
			burster.CanTouch = false
			burster.CanCollide = false
			burster.Size = vect3()
			burster.Anchored = true
			burster.BrickColor = bc("Bright red")
			burster.Locked = true
			burster.Reflectance = 0.2
			burstm.Parent = burster
			burstm.MeshId = "http://www.roblox.com/Asset/?id=9982590"
			burstm.Scale = vect3(4,4,4)
			tweens:Create(burstm, TweenInfo.new(1.75), {Scale = vect3(25,25,25)}):Play()
			hiteffect("boom",root)
			sound(4418405082,5,1,root,0,false)
			local set = 10
			task.spawn(function()
				while burster ~= nil do
					burster.CFrame = burster.CFrame * angles(rad(-set/10), rad(-set/10), rad(set/10))
					task.wait()
				end
			end)
			local tween = tweens:Create(burster, TweenInfo.new(1.75), {Reflectance = 0, Transparency = 1})
			tween:Play()
			tween.Completed:Connect(function()
				local tweenE = tweens:Create(burster, TweenInfo.new(0.3), {Transparency = 1})
				tweenE:Play()
				tweenE.Completed:Connect(function()
					burster:Destroy()
				end)
			end)
			for i,v in pairs(workspace:GetDescendants()) do
				if v:FindFirstChildOfClass("Humanoid") and not (v == char or v:IsDescendantOf(char)) and (v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")) then
					local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
					if (vtorso.Position - burster.Position).magnitude <= 20 and not v:FindFirstChild("IsAllyOfReimuEngrenado") then
						local grabpart = new("Part")
						grabpart.Size = vect3(0.001,0.001,0.001)
						grabpart.Parent = script
						grabpart.Transparency = 1
						grabpart.CanCollide = false
						grabpart.CanTouch = false
						grabpart.Locked = true
						grabpart.Anchored = true
						grabpart.CFrame = vtorso.CFrame * cframe(0,0,-1) * angles(0,rad(180),0)
						debris:AddItem(grabpart,0.005)
						magnitudedamage(10, "sphere", 0, 4.5, 260430079, 3, 1, grabpart, true, "normal", "burst")
					end
				end
			end
			task.wait(1.75)
			frame = 1
			local tween = tweens:Create(amulet, TweenInfo.new(0.5), {Transparency = 1})
			tween:Play()
			tween.Completed:Connect(function() amulet:Destroy() end)
			if not ducking then 
				hum.WalkSpeed = ogws
			end
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false	
		end
	end;
	["grab"] = function()
		--Grab Attack
		if not (attack or guarding or hum.Sit == true or sitting or waiting) then
			keycombo = ""
			if not inair then
				attack = true
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "fmedium"
				frame = 1
				local grabbed = false
				local gv = nil
				local gvhum = nil
				local gvhead = nil
				local gvtorso = nil
				local function blaudy()
					if random(0,6) >= 2 then
						local rng = random(0,9)
						if rng == 0 then
							sound(5507830449,2,1,gvhead,0,false)
						elseif rng == 1 then
							sound(5507830073,2,1,gvhead,0,false)
						elseif rng == 2 then
							sound(5507782816,2,1,gvhead,0,false)
						elseif rng == 3 then
							sound(5507830815,2,1,gvhead,0,false)
						elseif rng == 4 then
							sound(5507829691,2,1,gvhead,0,false)
						elseif rng == 5 then
							sound(5507815764,2,1,gvhead,0,false)
						elseif rng == 6 then
							sound(7837535984,2,1,gvhead,0,false)
						elseif rng == 7 then
							sound(7837536401,2,1,gvhead,0,false)
						elseif rng == 0 then
							sound(7837536770,2,1,gvhead,0,false)
						else
							sound(3781479909,2,1,gvhead,0,false)
						end
						hiteffect("blood",gvhead)
					end
				end
				local function checkgrab()
					for i,v in pairs(workspace:GetDescendants()) do
						if v:FindFirstChildOfClass("Humanoid") and v ~= char and not grabbed then
							local vhum = v:FindFirstChildOfClass("Humanoid")
							local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
							local vhead = v:FindFirstChild("Head")
							if vtorso then
								local vdistance = (root.Position - vtorso.Position).magnitude
								if vdistance <= 5 and vhum.Health > 0 and not v:FindFirstChild("IsAllyOfReimuEngrenado") then
									sound(105094738430794,6,1,vtorso,278.633,false,true,0.368)
									hiteffect("grab",vtorso)
									grabbed = true
									gv = v
									gvhum = vhum
									gvhead = vhead
									gvtorso = vtorso
								end
							end
						end
					end
				end
				checkgrab()
				task.wait(0.025)
				if not grabbed then
					sound(3755636638,2.5,1.8,ra,0,false)
					frame = 2
					task.wait(0.15)
				else
					local grabpart = new("Part")
					grabpart.Parent = gv
					grabpart.Transparency = 1
					grabpart.CanCollide = false
					grabpart.CFrame = root.CFrame * cframe(0,0,-2.5) * angles(0,rad(180),0)
					grabpart.Anchored = true
					grabpart.CFrame = root.CFrame * cframe(0,0,-2.5) * angles(0,rad(180),0)
					anchorm = true
					root.Anchored = true
					local weld = new("Weld")
					weld.Parent = grabpart
					weld.Part0 = grabpart
					weld.Part1 = gvtorso
					weld.C0 = weld.C0 * cframe(0.15, 0, 0)
					frame = 1
					task.wait(0.075)
					frame = 2
					local set = "Normal"
					task.wait(0.45)
					if holdingw then
						set = "Forward"
					elseif holdings then
						set = "Back"
					else
						set = "Normal"
					end
					if set == "Normal" then
						anim = "medium"
						frame = 1
						task.wait(0.15)
						local randomsound = random(0,9)
						if voices then
							if randomsound <= 2 then
								local randomquote = random(0,3)
								if randomquote == 0 then
									matk("GG")
								elseif randomquote == 1 then
									matk("GGX")
								elseif randomquote == 2 then
									matk("GGXX")
								else
									matk("GGXXAC")
								end
							elseif randomsound >= 7 then
								local randomquote = random(0,3)
								if randomquote == 0 then
									satk("GG")
								elseif randomquote == 1 then
									satk("GGX")
								elseif randomquote == 2 then
									satk("GGXX")
								else
									satk("GGXXAC")
								end
							end
						end
						frame = 2
						debris:AddItem(weld,0.01)
						sound(105094738430794,7.5,1,rl,240.5,false,true,0.2375)
						task.wait(0.001)
						grabpart:Destroy()
						gvhum.PlatformStand = true
						spawn(function()
							task.wait(4.5)
							gvhum.PlatformStand = false
						end)
						sound(105094738430794,6,1,gvtorso,193.333,false,true,0.867)
						damage(gvhum, 18, 386946017, 0, 1, gvtorso, 0, "sphere")
						gvtorso.Velocity = root.CFrame.lookVector*75
						if checkninja() then
							if instakill and random(0,15) == 0 then
								gvtorso.Velocity = root.CFrame.lookVector*115
								if not game:GetService("Players"):GetPlayerFromCharacter(gv) then
									instantkill(gv,true)
								end
							end
						end
						task.wait(0.2)
						frame = 3
						task.wait(0.1)
						root.Anchored = false
						task.wait(0.005)
						anchorm = false
					elseif set == "Forward" then
						local set = 1
						local dweld = true
						local chansuu = random(0,15)
						spawn(function()
							while dweld do
								if set == 1 then
									weld.C0 = weld.C0:Lerp(cframe(0, 0, 0.3), 0.3)
								elseif set == 2 then
									weld.C0 = weld.C0:Lerp(cframe(0, 0, -0.45), 0.3)
								elseif set == 3 then
									weld.C0 = weld.C0:Lerp(cframe(0, 0, 0.25), 0.3)
								elseif set == 4 then
									weld.C0 = weld.C0:Lerp(cframe(0, 0, 0.3), 0.15)
								end
								task.wait()
							end
						end)
						anim = "fgrab"
						frame = 1
						sound(200632136,5,1,head,0,false)
						gvhum.PlatformStand = true
						set = 1
						task.wait(0.1)
						frame = 2
						sound(105094738430794,7.5,1,gvhead,183.288,false,true,0.697)
						hiteffect("sphere",gvhead)
						blaudy()
						if not drive then
							if gvhum.Health > 6.66 then
								local creator = new("ObjectValue")
								creator.Name = "creator"
								creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
								creator.Parent = gvhum
								debris:AddItem(creator, 2)
								gvhum:TakeDamage(6.66)
							end
						else
							if gvhum.Health > 13 then
								local creator = new("ObjectValue")
								creator.Name = "creator"
								creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
								creator.Parent = gvhum
								debris:AddItem(creator, 2)
								gvhum:TakeDamage(13)
							end
						end
						set = 2
						task.wait(0.15)
						frame = 1
						sound(200632136,5,1,head,0,false)
						set = 1
						task.wait(0.125)
						frame = 7
						sound(105094738430794,7.5,1,gvhead,183.288,false,true,0.697)
						hiteffect("sphere",gvhead)
						blaudy()
						if not drive then
							if gvhum.Health > 6.66 then
								local creator = new("ObjectValue")
								creator.Name = "creator"
								creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
								creator.Parent = gvhum
								debris:AddItem(creator, 2)
								gvhum:TakeDamage(6.66)
							end
						else
							if gvhum.Health > 13 then
								local creator = new("ObjectValue")
								creator.Name = "creator"
								creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
								creator.Parent = gvhum
								debris:AddItem(creator, 2)
								gvhum:TakeDamage(13)
							end
						end
						set = 2
						task.wait(0.115)
						frame = 6
						set = 4
						if checkninja() then
							if instakill and chansuu == 0 then
								if not game:GetService("Players"):GetPlayerFromCharacter(gv) then
									for i,v in pairs(gvhead:GetDescendants()) do
										if v:IsA("Decal") then
											v.Texture = "rbxassetid://1561495464"
										end
									end
									local rng = random(0,9)
									if rng == 0 then
										sound(17521683584,5,1,gvhead,0,false)
									elseif rng == 1 then
										sound(292124372,1,1,gvhead,0,false)
									elseif rng == 2 then
										sound(4254922205,5,1,gvhead,0,false)
									else
										if random(0,6) >= 4 then
											scream(gvhead)
										else
											scream2(gvhead)
										end
									end
								end
							end
						end
						task.wait(0.666)
						frame = 2
						set = 2
						blaudy()
						sound(105094738430794,7.5,1,gvhead,183.288,false,true,0.697)
						damage(gvhum, 18, 386946017, 0, 1, gvhead, 0, "sphere")
						if checkninja() then
							if instakill and chansuu == 0 then
								if not game:GetService("Players"):GetPlayerFromCharacter(gv) then
									gvhead.Transparency = 1
									for i,v in pairs(gvhead:GetDescendants()) do
										if v:IsA("Sound") then
											v:Stop()
										end
									end
									local rng = random(0,4)
									if rng == 0 then
										sound(150315649,5,1,gvhead,0,false)
									elseif rng == 1 then
										sound(702631545,1,1,gvhead,0,false)
									elseif rng == 2 then
										sound(80064422113149,5,1,gvhead,0,false)
									elseif rng == 3 then
										sound(97210365743693,5,1,gvhead,0,false)
									else
										sound(132151829764277,5,1,gvhead,0,false)
									end
									spawn(function()
										for i = 1,random(25,30) do
											local heru = new("Part")
											heru.Name = "HeruSmashed"
											heru.Parent = workspace
											heru.Size = vect3(0.25,0.25,0.25)
											heru.CFrame = gvhead.CFrame * cframe(random(-10,10)/20,random(-10,10)/20,random(-10,10)/20)
											spawn(function()
												task.wait(7)
												local tween = tweens:Create(heru, TweenInfo.new(3.5), {Transparency = 1})
												tween:Play()
												tween.Completed:Connect(function() heru:Destroy() end)
											end)
											if random(0,3) == 0 then
												heru.BrickColor = gvhead.BrickColor
												heru.Material = gvhead.Material
											else
												heru.BrickColor = bc("Maroon")
												heru.Material = Enum.Material.Granite
											end
											task.wait()
										end
									end)
									for i,v in pairs(gvhead:GetDescendants()) do
										if v:IsA("Decal") or v:IsA("Weld") or v:IsA("WeldConstraint") or v:IsA("Attachment") then
											v:Destroy()
										end
									end
									for i,v in pairs(gv:GetDescendants()) do
										if v:IsA("Hat") or v:IsA("Accessory") then
											v:Destroy()
										end
									end
									sound(18567893733,2.5,1,gvtorso,0,false)
									makeblaudy(gv,gvtorso,gvhead,15)
									instantkill(gv,false)
								end
								sound(17493997647,4.5,1,gvhead,0,false)
								sound(7441099080,2,1,gvhead,0,false)
								hiteffect("blood",gvhead)
							end
						end
						task.wait(0.15)
						frame = 3
						task.wait(0.45)
						frame = 1
						set = 1
						task.wait(0.15)
						frame = 4
						set = 3
						local rng = random(0,3)
						if rng < 1 then
							local randomquote = random(0,3)
							if randomquote == 0 then
								taunt("GG")
							elseif randomquote == 1 then
								taunt("GGX")
							elseif randomquote == 2 then
								taunt("GGXX")
							else
								taunt("GGXXAC")
							end
						else
							local randomquote = random(0,2)
							if randomquote == 1 then
								taunt2("GGX")
							elseif randomquote == 2 then
								taunt2("GGXX")
							else
								taunt2("GGXXAC")
							end
						end
						task.wait(1)
						frame = 5
						dweld = false
						debris:AddItem(weld,0.01)
						task.wait(0.001)
						grabpart:Destroy()
						spawn(function()
							task.wait(5)
							gvhum.PlatformStand = false
						end)
						gvtorso.Velocity = root.CFrame.lookVector*30
						root.Anchored = false
						spawn(function()
							task.wait(0.025)
							anchorm = false
						end)
						task.wait(0.005)
					else
						local set = 1
						local dweld = true
						local chansuu = random(0,15)
						spawn(function()
							while dweld do
								if set == 1 then
									weld.C0 = weld.C0:Lerp(cframe(0, 0, 0.3), 0.15)
								elseif set == 2 then
									weld.C0 = weld.C0:Lerp(cframe(0, 0, -0.45), 0.3)
								elseif set == 3 then
									weld.C0 = weld.C0:Lerp(cframe(0, 0, 0.25), 0.3)
								elseif set == 4 then
									weld.C0 = weld.C0:Lerp(cframe(0.5, 0, 0.35), 0.3)
								elseif set == 5 then
									weld.C0 = weld.C0:Lerp(cframe(-2.5, 0, -2.75) *  angles(rad(-60), rad(-90), rad(0)), 0.3)
								elseif set == 6 then
									weld.C0 = weld.C0:Lerp(cframe(-0, -1, -5.5) *  angles(rad(-150), rad(0), rad(0)), 0.666)
								end
								task.wait()
							end
						end)
						local randomquote = random(0,3)
						if randomquote == 0 then
							latk("GG")
						elseif randomquote == 1 then
							latk("GGX")
						elseif randomquote == 2 then
							latk("GGXX")
						else
							latk("GGXXAC")
						end
						anim = "fgrab"
						frame = 6
						sound(200632136,5,1,head,0,false)
						gvhum.PlatformStand = true
						set = 1
						task.wait(0.215)
						frame = 2
						sound(13081542330,6,1,gvhead,0,false)
						hiteffect("sphere",gvhead)
						blaudy()
						if not drive then
							if gvhum.Health > 10 then
								local creator = new("ObjectValue")
								creator.Name = "creator"
								creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
								creator.Parent = gvhum
								debris:AddItem(creator, 2)
								gvhum:TakeDamage(10)
							end
						else
							if gvhum.Health > 30 then
								local creator = new("ObjectValue")
								creator.Name = "creator"
								creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
								creator.Parent = gvhum
								debris:AddItem(creator, 2)
								gvhum:TakeDamage(30)
							end
						end
						set = 2
						task.wait(0.45)
						frame = 4
						set = 3
						task.wait(0.15)
						anim = "bgrab"
						frame = 1
						set = 4
						if randomquote == 0 then
							matk("GG")
						elseif randomquote == 1 then
							matk("GGX")
						elseif randomquote == 2 then
							matk("GGXX")
						else
							matk("GGXXAC")
						end
						task.wait(0.125)
						frame = 2
						set = 5
						sound(200632136,5,1,torso,0,false)
						task.wait(0.125)
						frame = 3
						set = 6
						task.wait(0.025)
						dweld = false
						debris:AddItem(weld,0.01)
						task.wait(0.001)
						grabpart:Destroy()
						local wp = new("Part")
						local wm = new("SpecialMesh")
						wp.Name = "WavePart"
						wp.Parent = char
						wp.Transparency = 0.1
						wp.Size = vect3()
						wp.Anchored = true
						wp.CanTouch = false
						wp.BrickColor = bc("Institutional white")
						wp.CanCollide = false
						wp.Locked = true
						wm.Parent = wp
						wm.MeshId = "rbxassetid://20329976"
						wm.Scale = vect3(3.5, 7.5, 3.5)
						wm.MeshType = Enum.MeshType.FileMesh
						local wp2 = new("Part")
						local wm2 = new("SpecialMesh")
						wp2.Name = "WavePart"
						wp2.Parent = wp
						wp2.Transparency = 0.025
						wp2.Size = vect3()
						wp2.Anchored = true
						wp2.CanTouch = false
						wp2.BrickColor = bc("Institutional white")
						wp2.CanCollide = false
						wp2.Locked = true
						wm2.Parent = wp2
						wm2.MeshId = "rbxassetid://20329976"
						wm2.Scale = vect3(3, 6, 3)
						wm2.MeshType = Enum.MeshType.FileMesh
						wp.Material = "Neon"
						wp2.Material = "Neon"
						wp.CFrame = root.CFrame * cframe(0,-1.5,2.5)
						wp2.CFrame = root.CFrame * cframe(0,-1.5,2.5) * angles(0,rad(90),0)
						local tween = tweens:Create(wp,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
						tween:Play()
						local tweenM = tweens:Create(wm,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.05,15),Offset = vect3(0,-1.5,-1)})
						tweenM:Play()
						local tween1 = tweens:Create(wp2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
						tween1:Play()
						local tweenM1 = tweens:Create(wm2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.025,17.5),Offset = vect3(0,-1.5,-1)})
						tweenM1:Play()
						tween.Completed:Connect(function() wp:Destroy()end)
						tween1.Completed:Connect(function() wp2:Destroy() end)
						hiteffect("sphere",gvtorso)
						sound2(13082484133,5,2,gvtorso,0)
						if checkninja() then
							if instakill and random(0,10) == 0 then
								if not game:GetService("Players"):GetPlayerFromCharacter(gv) then
									instantkill(gv,true)
								end
								sound(17493997647,4.5,1,gvtorso,0,false)
								sound(7441099080,2,1,gvtorso,0,false)
								hiteffect("blood",gvtorso)
							end
						end
						damage(gvhum, 18, 4766119678, 5, 1, gvhead, 0, "none")
						gvhum.PlatformStand = true
						spawn(function()
							task.wait(5)
							gvhum.PlatformStand = false
						end)
						gvtorso.Anchored = true
						spawn(function()
							task.wait(0.045)
							gvtorso.Anchored = false
						end)
						gvtorso.Velocity = root.CFrame.lookVector*-60 + root.CFrame.upVector*45
						task.wait(0.5)
						frame = 4
						root.Anchored = false
						spawn(function()
							task.wait(0.025)
							anchorm = false
						end)
						task.wait(0.005)
					end
				end
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
				attack = false
			else
				attack = true
				anim = "astrong"
				frame = 2
				local grabbed = false
				local gv = nil
				local gvhum = nil
				local gvhead = nil
				local gvtorso = nil
				local weld = nil
				local Part = new("Part",script)
				Part.Name = "HitboxThing"
				Part.Transparency = 1
				Part.Size = vect3(2.5, 7.5, 3)
				Part.CanCollide = false
				Part.Massless = true
				debris:AddItem(Part,0.125)
				local Weld = new("Weld",Part)
				Weld.Part0 = root
				Weld.Part1 = Part
				Weld.C0 = Weld.C0 * cframe(0,0,-2.5)
				Part.Touched:Connect(function(persona)
					if persona:IsA("BasePart") or persona:IsA("MeshPart") then
						if persona.Parent ~= nil and not persona.Parent:IsDescendantOf(char) then
							if persona.Parent:FindFirstChildOfClass("Humanoid") and persona.Parent ~= char and not grabbed then
								local humi = persona.Parent:FindFirstChildOfClass("Humanoid")
								local torsou = persona.Parent:FindFirstChild("HumanoidRootPart") or persona.Parent:FindFirstChild("Torso") or persona.Parent:FindFirstChild("UpperTorso")
								local headu = persona.Parent:FindFirstChild("Head")
								if torsou and humi.Health > 0 then
									sound(105094738430794,6,1,torsou,174.188,false,true,0.264)
									hiteffect("grab",torsou)
									grabbed = true
									gv = persona.Parent
									gvhum = humi
									gvhead = headu
									gvtorso = torsou
									weld = new("Weld")
									weld.Parent = root
									weld.Part0 = root
									weld.Part1 = gvtorso
									weld.Name = "GrabWELD"
									weld.C0 = cframe(0.25, 0, -2.5) * angles(0,rad(-180),0)
									Part:Destroy()
								end
							end
						end	
					end
				end)
				local vel = new("BodyVelocity")
				vel.MaxForce = vect3(math.huge,math.huge,math.huge)
				vel.Parent = root
				vel.Velocity = root.CFrame.LookVector * 25 + root.CFrame.upVector * 75
				vel.Name  =  "SmallMover"
				debris:AddItem(vel,.1)
				sound(1295417556,3,1,torso,0,false)
				task.wait(0.135)
				if not grabbed then
					sound(3755636638,2.5,1.8,ra,0,false)
					frame = 1
					task.wait(0.425)
				else
					Part:Destroy()
					weld.C0 = cframe(0.25, 0, -2.5) * angles(0,rad(-180),0)
					anim = "agrab"
					frame = 1
					local bpos = new("BodyPosition")
					bpos.Name = "FinisherHitBy"
					bpos.Parent = root
					bpos.MaxForce = vect3(39999,39999,39999)
					bpos.D = 2000
					bpos.Position = root.CFrame * cframe(0,30,-5).Position
					task.wait(0.5)
					bpos:Destroy()
					hum.AutoRotate = false
					local vel = new("BodyVelocity")
					vel.MaxForce = vect3(math.huge,math.huge,math.huge)
					vel.Parent = root
					vel.Velocity = root.CFrame.LookVector * 115
					vel.Name  =  "SmallMover"
					frame = 2
					local doingagrab = true
					spawn(function()
						while doingagrab do
							hiteffect("sphere",gvtorso)
							sound(105094738430794,6,1,torso,180.65,false,true,2.64)
							if not drive then
								if gvhum.Health > 1.5 then
									local creator = new("ObjectValue")
									creator.Name = "creator"
									creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
									creator.Parent = gvhum
									debris:AddItem(creator, 2)
									gvhum:TakeDamage(1.5)
								end
							else
								if gvhum.Health > 3 then
									local creator = new("ObjectValue")
									creator.Name = "creator"
									creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
									creator.Parent = gvhum
									debris:AddItem(creator, 2)
									gvhum:TakeDamage(3)
								end
							end
							task.wait(0.115)
						end
					end)
					local dashp = new("ParticleEmitter")
					dashp.Name = "Debris"
					dashp.Parent = root
					dashp.Speed = NumberRange.new(22, 22)
					dashp.Rotation = NumberRange.new(1, 360)
					dashp.Color = ColorSequence.new(color(1, 0.333333, 0),color(1, 0, 0))
					dashp.LightInfluence = 1
					dashp.Texture = "rbxassetid://12098538418"
					dashp.Transparency = NumberSequence.new(0.800000011920929,1)
					dashp.ZOffset = 3
					dashp.Size = NumberSequence.new(1.5,15)
					dashp.Drag = 0.10000000149011612
					dashp.EmissionDirection = Enum.NormalId.Back
					dashp.Lifetime = NumberRange.new(0.5, 0.5)
					dashp.LockedToPart = false
					dashp.Rate = 200
					dashp.RotSpeed = NumberRange.new(1, 360)
					dashp.SpreadAngle = vect2(-20, -20)
					dashp.VelocitySpread = -20
					task.wait(1.25)
					doingagrab = false
					debris:AddItem(weld,0.01)
					task.wait(0.01)
					vel:Destroy()
					dashp.Enabled = false
					debris:AddItem(dashp,2.5)
					gvhum.PlatformStand = true
					spawn(function()
						task.wait(6.66)
						gvhum.PlatformStand = false
					end)
					gvtorso.Velocity = root.CFrame.LookVector*115
					hiteffect("boom",gvtorso)
					hiteffect("burn",gvtorso)
					if instakill and random(0,10) == 0 then
						if not game:GetService("Players"):GetPlayerFromCharacter(gv) then
							local fire = new("Fire")
							fire.Parent = gvtorso
							fire.Size = 10
							fire.Heat = 25
							sound(303632290,5,1,gvtorso,0,true)
							instantkill(gv,true)
							sound(7441099080,2,1,gvtorso,0,false)
							hiteffect("blood",gvtorso)
						end
					else
						if not drive then
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = gvhum
							debris:AddItem(creator, 2)
							gvhum:TakeDamage(20)
						else
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = gvhum
							debris:AddItem(creator, 2)
							gvhum:TakeDamage(45)
						end
					end
					anim = "dash"
					frame = 2
					sound(4909206080,4,1,torso,0,false)
					local dash = new("BodyVelocity")
					dash.Parent = root
					dash.MaxForce = vect3(math.huge,math.huge,math.huge)
					dash.Velocity = root.CFrame.lookVector * -100 + root.CFrame.upVector * 15
					local effect = new("ParticleEmitter")
					effect.Parent = torso
					effect.Rotation = NumberRange.new(0, 300)
					effect.Color = ColorSequence.new(color(1, 1, 1),color(0.427451, 0.427451, 0.427451))
					effect.LightInfluence = 1
					effect.Texture = "rbxassetid://7731347137"
					effect.Transparency = NumberSequence.new(0.5812499523162842,0.925000011920929,1)
					effect.Size = NumberSequence.new(1.5,0)
					effect.Acceleration = vect3(0, 0.10000000149011612, 0)
					effect.EmissionDirection = Enum.NormalId.Front
					effect.Lifetime = NumberRange.new(2, 3)
					effect.Rate = 100
					effect.RotSpeed = NumberRange.new(10, 13)
					effect.SpreadAngle = vect2(0, 360)
					effect.VelocityInheritance = 0.5
					task.wait(0.5)
					dash:Destroy()
					effect.Enabled = false
					debris:AddItem(effect,2.5)
					hum.AutoRotate = true
				end
				attack = false
			end
		end;
	end;
	["execution"] = function()
		if not (attack or guarding or sitting or waiting or hum.Sit == true) then
			keycombo = ""
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			local finhit = false
			attack = true
			anim = "medium"
			frame = 1
			local target = nil
			local tt = nil
			local th = nil
			local thum = nil
			local function disabler(victim)
				for i,v in pairs(victim:GetDescendants()) do
					if v:IsA("Script") or v:IsA("LocalScript") then
						v.Disabled = true
					end
				end
			end
			task.wait(0.115)
			frame = 2
			sound(105094738430794,6.66,1,ll,265,false,true,0.365)
			local randomsound = random(0,9)
			if voices then
				if randomsound <= 2 then
					local randomquote = random(0,3)
					if randomquote == 0 then
						latk("GG")
					elseif randomquote == 1 then
						latk("GGX")
					elseif randomquote == 2 then
						latk("GGXX")
					else
						latk("GGXXAC")
					end
				elseif randomsound >= 7 then
					local randomquote = random(0,3)
					if randomquote == 0 then
						matk("GG")
					elseif randomquote == 1 then
						matk("GGX")
					elseif randomquote == 2 then
						matk("GGXX")
					else
						matk("GGXXAC")
					end
				end
			end
			for i,v in pairs(workspace:GetDescendants()) do
				if v:FindFirstChildOfClass("Humanoid") and v ~= char then
					local vhum = v:FindFirstChildOfClass("Humanoid")
					local vtorso = v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart") or v:FindFirstChild("Torso")
					if vtorso then
						local vdistance = (vtorso.Position - root.CFrame*cframe(0,0,-1.5).p).magnitude
						if vdistance <= 5 and vhum.Health > 0 and not v:FindFirstChild("IsAllyOfReimuEngrenado") and not finhit then
							finhit = true
							sound(131445648085306,2,1,vtorso,335.615,false,true,0.527)
							hiteffect("sphere",vtorso)
							target = v
							tt = vtorso
							thum = vhum
							th = v:FindFirstChild("Head")
							if not drive then
								if vhum.Health > 7.4 then
									local creator = new("ObjectValue")
									creator.Name = "creator"
									creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
									creator.Parent = vhum
									debris:AddItem(creator, 2)
									vhum:TakeDamage(7.4)
								end
							else
								if vhum.Health > 15 then
									local creator = new("ObjectValue")
									creator.Name = "creator"
									creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
									creator.Parent = vhum
									debris:AddItem(creator, 2)
									vhum:TakeDamage(15)
								end
							end
							tt.CFrame = root.CFrame * cframe(0,0,-4.5) * angles(0,rad(180),0)
							local bpos = new("BodyPosition")
							bpos.Name = "FinisherHitBy"
							bpos.Parent = vtorso
							bpos.MaxForce = vect3(39999,39999,39999)
							bpos.D = 2000
							bpos.Position = root.CFrame * cframe(0,0,-25).Position
						end
					end
				end
			end
			task.wait(0.15)
			frame = 3
			task.wait(0.1)
			if finhit then
				task.wait(0.25)
				local doingfinish = true
				local killtype = ""
				spawn(function()
					task.wait(2)
					doingfinish = false
				end)
				anim = "win2"
				frame = 1
				repeat
					task.wait()
					if holdingz then
						doingfinish = false
						killtype = "shou"
						if target ~= nil then
							if game:GetService("Players"):GetPlayerFromCharacter(target) then
								disabler(target)
							end
						end
					elseif holdingx then
						doingfinish = false
						killtype = "stomp"
						if target ~= nil then
							if game:GetService("Players"):GetPlayerFromCharacter(target) then
								disabler(target)
							end
						end
					elseif holdingc then
						doingfinish = false
						killtype = "blade"
						if target ~= nil then
							if game:GetService("Players"):GetPlayerFromCharacter(target) then
								disabler(target)
							end
						end
					elseif holdingq then
						doingfinish = false
						killtype = "jubei"
						if target ~= nil then
							if game:GetService("Players"):GetPlayerFromCharacter(target) then
								disabler(target)
							end
						end
					elseif holdinge then
						doingfinish = false
						killtype = "deagle"
						if target ~= nil then
							if game:GetService("Players"):GetPlayerFromCharacter(target) then
								disabler(target)
							end
						end
					elseif holdingv then
						doingfinish = false
					end
				until not doingfinish
				if killtype == "shou" then
					if target ~= nil then
						if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy").Position = root.CFrame * cframe(0,0,-14.5).Position end
					end
					anim = "special"
					frame = 1
					local flare = new("Part")
					local flarew = new("Weld")
					flare.Name = "Flare"
					flare.Parent = script
					flare.Size = vect3(0.5,0.5,0.5)
					flare.Transparency = 1
					flare.CanTouch = false
					flare.CanCollide = false
					flare.Locked = true
					flarew.Parent = flare
					flarew.C0 = cframe(0,1,0)
					flarew.Part0 = flare
					flarew.Part1 = la
					local fire = new("Fire")
					fire.Parent = flare
					fire.Size = 10
					fire.Heat = 16
					fire.Color = color(1, 0.333333, 0)
					fire.SecondaryColor = color(0.666667, 0.333333, 0)
					sound(3518168170,3,1,flare,0,false)
					task.wait(0.15)
					anim = "light"
					frame = 1
					task.wait(1.15)
					frame = 3
					sound(105094738430794,6,1,ra,265,false,true,0.365)
					task.wait(0.045)
					local randomsound = random(0,9)
					if voices then
						if randomsound <= 2 then
							local randomquote = random(0,3)
							if randomquote == 0 then
								matk("GG")
							elseif randomquote == 1 then
								matk("GGX")
							elseif randomquote == 2 then
								matk("GGXX")
							else
								matk("GGXXAC")
							end
						elseif randomsound >= 7 then
							local randomquote = random(0,3)
							if randomquote == 0 then
								satk("GG")
							elseif randomquote == 1 then
								satk("GGX")
							elseif randomquote == 2 then
								satk("GGXX")
							else
								satk("GGXXAC")
							end
						end
					end
					frame = 2
					task.wait(0.125)
					flarew:Destroy()
					local bpos = new("BodyPosition")
					bpos.Name = "FlareMove"
					bpos.Parent = flare
					bpos.MaxForce = vect3(39999,39999,39999)
					bpos.D = 500
					bpos.Position = root.CFrame * cframe(0,0,-14.5).Position
					task.wait(0.115)
					fire.Enabled = false
					debris:AddItem(flare,3)
					if target ~= nil then
						if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
						hiteffect("boom",tt)
						sound(17493997647,4.5,1,tt,0,false)
						sound(7441099080,2,1,tt,0,false)
						hiteffect("blood",tt)
						thum.PlatformStand = true
						instantkill(target,true)
						tt.Velocity = root.CFrame.lookVector * 75 + root.CFrame.upVector * 45
						hiteffect("burn",tt)
						local fire = new("Fire")
						fire.Parent = tt
						fire.Size = 10
						fire.Heat = 25
						sound(303632290,5,1,tt,0,true)
					end
					task.wait(0.5)
					frame = 1
				elseif killtype == "stomp" then
					anim = "walk"
					local bpos = new("BodyVelocity")
					bpos.Name = "FinisherMove"
					bpos.Parent = root
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.Velocity = root.CFrame.lookVector * 25
					task.wait(0.675)
					bpos:Destroy()
					anim = "medium"
					frame = 1
					task.wait(0.15)
					frame = 2
					sound(105094738430794,6.66,1,ll,265,false,true,0.365)
					if target ~= nil then
						if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
						hiteffect("sphere",tt)
						sound(105094738430794,6,1,tt,193.333,false,true,0.867)
						tt.CFrame = root.CFrame * cframe(0,-1.5,-6.3) * angles(rad(90),rad(0),0)
						tt.Anchored = true
						spawn(function() task.wait(0.008) tt.Anchored = false end)
						for i,v in pairs(th:GetDescendants()) do
							if v:IsA("Decal") then
								v.Texture = "rbxassetid://373628493"
							end
						end
						thum.PlatformStand = true
						if random(0,6) >= 4 then
							scream(th)
						else
							scream2(th)
						end
					end
					task.wait(0.1)
					frame = 3
					task.wait(0.35)
					anim = "strong"
					frame = 1
					task.wait(0.125)
					frame = 2
					task.wait(0.425)
					anim = "execution" 
					frame = 1
					if target ~= nil then
						if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
						hiteffect("sphere",th)
						for i,v in pairs(th:GetDescendants()) do
							if v:IsA("Sound") then
								v:Stop()
							end
						end
						sound(105094738430794,7.5,1,th,183.288,false,true,0.697)
						sound(17493997647,4.5,1,th,0,false)
						sound(7441099080,2,1,th,0,false)
						sound(6792181002,5,1,th,0,false)
						hiteffect("blood",th)
						local randsfx = random(0,11)
						if randsfx == 0 then
							sound(245185996,3,1,th,0,false)
						elseif randsfx == 1 then
							sound(245185986,3,1,th,0,false)
						elseif randsfx == 2 then
							sound(245186002,3,1,th,0,false)
						elseif randsfx == 3 then
							sound(8353373964,3,1,th,0,false)
						elseif randsfx == 4 then
							sound(8353372061,3,1,th,0,false)
						elseif randsfx == 5 then
							sound(8353373547,3,1,th,0,false)
						elseif randsfx == 6 then
							sound(8353373765,3,1,th,0,false)
						elseif randsfx == 7 then
							sound(8353374220,3,1,th,0,false)
						elseif randsfx == 8 then
							sound(8353373328,3,1,th,0,false)
						elseif randsfx == 9 then
							sound(8353373157,3,1,th,0,false)
						elseif randsfx == 10 then
							sound(8353372946,3,1,th,0,false)
						elseif randsfx == 11 then
							sound(8353372636,3,1,th,0,false)
						else
							sound(8353372319,3,1,th,0,false)
						end
						local rng = random(0,4)
						if rng == 0 then
							sound(150315649,5,1,th,0,false)
						elseif rng == 1 then
							sound(702631545,1,1,th,0,false)
						elseif rng == 2 then
							sound(80064422113149,5,1,th,0,false)
						elseif rng == 3 then
							sound(97210365743693,5,1,th,0,false)
						else
							sound(132151829764277,5,1,th,0,false)
						end
						th.Transparency = 1
						spawn(function()
							for i = 1,random(25,30) do
								local heru = new("Part")
								heru.Name = "HeruSmashed"
								heru.Parent = workspace
								heru.Size = vect3(0.25,0.25,0.25)
								heru.CFrame = th.CFrame * cframe(random(-10,10)/20,random(-10,10)/20,random(-10,10)/20)
								debris:AddItem(heru, 7)
								if random(0,3) == 0 then
									heru.BrickColor = th.BrickColor
									heru.Material = th.Material
								else
									heru.BrickColor = bc("Maroon")
									heru.Material = Enum.Material.Granite
								end
								task.wait()
							end
						end)
						for i,v in pairs(th:GetDescendants()) do
							if v:IsA("Decal") or v:IsA("Weld") or v:IsA("WeldConstraint")then
								v:Destroy()
							end
						end
						for i,v in pairs(target:GetDescendants()) do
							if v:IsA("Hat") or v:IsA("Accessory") then
								v:Destroy()
							end
						end
						sound(18567893733,2.5,1,tt,0,false)
						makeblaudy(target,tt,th,15)
						instantkill(target,false)
					end
					task.wait(1)
					anim = "strong"
					frame = 3
					task.wait(0.1)
				elseif killtype == "blade" then	
					anim = "execution" 
					frame = 2
					local blade = new("Part")
					local bladew =new("Weld")
					local bladem = new("SpecialMesh")
					blade.Name = "ReimuKatana"
					blade.Parent = script
					blade.Size = vect3()
					blade.CanTouch = false
					blade.CanCollide = false
					blade.Locked = true
					blade.Transparency = 1
					bladew.Parent = blade
					bladew.C0 = cframe(-1, -2, 0, -4.37113883e-08, -1, 4.37113883e-08, -0, -4.37113883e-08, -1, 1, -4.37113883e-08, 1.91068547e-15)
					bladew.Part0 = blade
					bladew.Part1 = ra
					bladem.Parent = blade
					bladem.MeshId = "rbxassetid://13662643071"
					bladem.Scale = vect3(0.003, 0, 0.003)
					bladem.TextureId = "rbxassetid://13662522227"
					bladem.MeshType = Enum.MeshType.FileMesh
					tweens:Create(Gohei, TweenInfo.new(1.15), {Transparency = 1}):Play()
					tweens:Create(blade, TweenInfo.new(1.15), {Transparency = 0}):Play()
					tweens:Create(bladem, TweenInfo.new(1.15), {Scale = vect3(0.115, 0.145, 0.115)}):Play()
					local fire = new("Fire")
					fire.Parent = blade
					fire.Color = color(0.843137, 1, 0.988235)
					fire.SecondaryColor = color(0.376471, 0.701961, 0.662745)
					sound(5121730005,3,1,blade,0,false)
					task.wait(1.6)
					fire.Enabled = false
					sound(1498950813,3,1,blade,0.15,false)
					frame = 3
					task.wait(1.45)
					fire:Destroy()
					for i,v in pairs(char:GetDescendants()) do
						if v:IsA("BasePart") then
							local cval = new("BoolValue")
							cval.Value = v.CanCollide
							cval.Name = "ExecutionCollide"
							cval.Parent = v
							local csval = new("BoolValue")
							csval.Value = v.CanTouch
							csval.Name = "ExecutionTouch"
							csval.Parent = v
						end
					end
					frame = 4
					root.CFrame = tt.CFrame * cframe(0,0,-4.5) * angles(0,rad(180),0)
					local slash = new("Part")
					local slashm = new("SpecialMesh")
					local slashl = new("PointLight")
					slash.Name = "Slash"
					slash.Parent = script
					slash.CanTouch = false
					slash.Locked = true
					slash.Transparency = 0.5
					slash.Size = vect3()
					slash.Anchored = true
					slash.CanCollide = false
					slashm.Parent = slash
					slashm.MeshId = "rbxassetid://6665452633"
					slashm.Scale = vect3(9.567, 6.538, 9.877)
					slashm.VertexColor = vect3(1.5, 1.5, 1.5)
					slashm.TextureId = "rbxassetid://8821193347"
					slashm.MeshType = Enum.MeshType.FileMesh
					slashl.Name = "light"
					slashl.Parent = slash
					slashl.Range = 12
					bladew.C0 = cframe(-1, -2.5, 0, -4.37113883e-08, -1, 4.37113883e-08, -0, -4.37113883e-08, -1, 1, -4.37113883e-08, 1.91068547e-15)
					slash.CFrame = root.CFrame * angles(0,rad(-60),0)
					tweens:Create(slash, TweenInfo.new(1.5), {Transparency = 1}):Play()
					tweens:Create(slashl, TweenInfo.new(1.5), {Range = 0}):Play()
					local dashu = new("Part")
					local dashum = new("SpecialMesh")
					dashu.Parent = script
					dashu.Size = vect3(1, 1, 1)
					dashu.BottomSurface = Enum.SurfaceType.Smooth
					dashu.BrickColor = bc("Institutional white")
					dashu.Material = Enum.Material.Neon
					dashu.TopSurface = Enum.SurfaceType.Smooth
					dashu.CanCollide = false
					dashu.CanTouch = false
					dashu.Anchored = true
					dashu.Locked = true
					dashu.CFrame = tt.CFrame
					dashum.Parent = dashu
					dashum.Scale = vect3(1, 1, 50)
					dashum.MeshType = Enum.MeshType.Sphere
					spawn(function()
						local tween = tweens:Create(dashu, TweenInfo.new(0.5), {Transparency = 1})
						tween:Play()
						tween.Completed:Connect(function()
							dashu:Destroy()
						end)
						tweens:Create(dashum, TweenInfo.new(0.5), {Scale = vect3(0.01, 0.01, 50)}):Play()
					end)
					local dashc = new("Part")
					local dashcm = new("SpecialMesh")
					dashc.Parent = script
					dashc.Size = vect3(0.001,0.001,0.001)
					dashc.CanTouch = false
					dashc.BrickColor = bc("Institutional white")
					dashc.Anchored = true
					dashc.CanCollide = false
					dashc.Locked = true
					dashcm.Parent = dashc
					dashcm.MeshId = "rbxassetid://3454554153"
					dashcm.MeshType = Enum.MeshType.FileMesh
					dashcm.Scale = vect3(0.25,0.25,0.25)
					dashc.CFrame = root.CFrame * cframe(0, 0, 17.5) * angles(rad(90),rad(90),0)
					spawn(function()
						local tween = tweens:Create(dashc, TweenInfo.new(0.75), {CFrame = dashc.CFrame * cframe(0,15,0), Transparency = 1})
						tween:Play()
						tween.Completed:Connect(function()
							dashc:Destroy()
						end)
						tweens:Create(dashcm, TweenInfo.new(0.75), {Scale = vect3(4.5,4.5,4.5)}):Play()
					end)
					for i,v in pairs(char:GetDescendants()) do
						if v:IsA("BasePart") then
							v.CanCollide = false
							v.CanTouch = false
						end
					end
					sound(105094738430794,7.5,1,blade,258.023,false,true,0.98)
					local blaudy = true
					if target ~= nil then
						if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
						sound(17493997647,4.5,1,tt,0,false)
						sound(7441099080,2,1,tt,0,false)
						hiteffect("sphere",tt)
						hiteffect("blood",tt)
						thum.PlatformStand = true
						instantkill(target,true)
						if target:FindFirstChild("Right Leg") then 
							for i,v in pairs(target:FindFirstChild("Right Leg"):GetDescendants()) do
								if v:IsA("BallSocketConstraint") then
									v:Destroy()
								end
								if v:IsA("Attachment") and v.Name == "CSUFAttachment" then
									v:Destroy()
								end
							end
						end
						if target:FindFirstChild("Left Leg") then 
							for i,v in pairs(target:FindFirstChild("Left Leg"):GetDescendants()) do
								if v:IsA("BallSocketConstraint") then
									v:Destroy()
								end
								if v:IsA("Attachment") and v.Name == "CSUFAttachment" then
									v:Destroy()
								end
							end
						end
						if target:FindFirstChild("LowerTorso") then 
							for i,v in pairs(target:FindFirstChild("LowerTorso"):GetDescendants()) do
								if v:IsA("BallSocketConstraint") then
									v:Destroy()
								end
								if v:IsA("Attachment") and v.Name == "CSUFAttachment" then
									v:Destroy()
								end
							end
						end
						spawn(function()
							task.wait(15)
							blaudy = false
						end)
						spawn(function()
							while blaudy and target ~= nil do
								hiteffect("blood",tt)
								if target:FindFirstChild("LowerTorso") then 
									hiteffect("blood", target:FindFirstChild("LowerTorso"))
								end
								task.wait(1.45)
							end
						end)
						tt.Velocity = root.CFrame.lookVector * 25 + root.CFrame.upVector * 250
						sound(105094738430794,3,1,tt,163.845,false,true,1.78)
						sound(105094738430794,3,1,tt,168.475,false,true,2.32)
					end
					local bpos = new("BodyPosition")
					bpos.Name = "ExecutionMove"
					bpos.Parent = root
					bpos.MaxForce = vect3(39999,39999,39999)
					bpos.D = 1250
					bpos.Position = root.CFrame * cframe(0,0,-45).Position
					task.wait(1.75)
					slash:Destroy()
					bpos:Destroy()
					for i,ve in pairs(char:GetDescendants()) do
						if ve:IsA("BoolValue") and ve.Name == "ExecutionCollide" then
							ve.Parent.CanCollide = ve.Value
							ve:Destroy()
						end
					end
					for i,v in pairs(char:GetDescendants()) do
						if v:IsA("BoolValue") and v.Name == "ExecutionTouch" then
							v.Parent.CanTouch = v.Value
							v:Destroy()
						end
					end
					bladew.C0 = cframe(-1, -1.75, 0, -4.37113883e-08, -1, 4.37113883e-08, -0, -4.37113883e-08, -1, 1, -4.37113883e-08, 1.91068547e-15)
					tweens:Create(Gohei, TweenInfo.new(1.15), {Transparency = 0}):Play()
					tweens:Create(blade, TweenInfo.new(1.15), {Transparency = 1}):Play()
					tweens:Create(bladem, TweenInfo.new(1.15), {Scale = vect3(0.003, 0, 0.003)}):Play()
					debris:AddItem(blade,1.25)
					frame = 5
					for i = 1,10 do
						root.CFrame = root.CFrame * angles(0,rad(18),0)
						task.wait(0.015)
					end
				elseif killtype == "jubei" then
					if target ~= nil then
						if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
						local bpos = new("BodyPosition")
						bpos.Name = "FinisherHitBy"
						bpos.Parent = tt
						bpos.MaxForce = vect3(39999,39999,39999)
						bpos.D = 2500
						bpos.Position = root.CFrame * cframe(0,0,-17.5).Position
					end
					anim = "walk"
					local bpos = new("BodyVelocity")
					bpos.Name = "FinisherMove"
					bpos.Parent = root
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.Velocity = root.CFrame.lookVector * 25
					task.wait(0.45)
					bpos:Destroy()
					anim = "flight"
					frame = 1
					local blade = new("Part")
					local bladew =new("Weld")
					local bladem = new("SpecialMesh")
					blade.Name = "ReimuKatana"
					blade.Parent = script
					blade.Size = vect3()
					blade.CanTouch = false
					blade.CanCollide = false
					blade.Locked = true
					blade.Transparency = 1
					bladew.Parent = blade
					bladew.C0 = cframe(-1, -2, 0, -4.37113883e-08, -1, 4.37113883e-08, -0, -4.37113883e-08, -1, 1, -4.37113883e-08, 1.91068547e-15)
					bladew.Part0 = blade
					bladew.Part1 = ra
					bladem.Parent = blade
					bladem.MeshId = "rbxassetid://13662643071"
					bladem.Scale = vect3(0.003, 0, 0.003)
					bladem.TextureId = "rbxassetid://13662522227"
					bladem.MeshType = Enum.MeshType.FileMesh
					tweens:Create(Gohei, TweenInfo.new(1.15), {Transparency = 1}):Play()
					tweens:Create(blade, TweenInfo.new(1.15), {Transparency = 0}):Play()
					tweens:Create(bladem, TweenInfo.new(1.15), {Scale = vect3(0.115, 0.145, 0.115)}):Play()
					local fire = new("Fire")
					fire.Parent = blade
					fire.Color = color(0.843137, 1, 0.988235)
					fire.SecondaryColor = color(0.376471, 0.701961, 0.662745)
					sound(5121730005,3,1,blade,0,false)
					task.wait(1.5)	
					fire.Enabled = false
					sound(131445648085306,6,1,blade,153.23,false,true,0.7)
					frame = 2
					bladew.C0 = cframe(0, -3.75, 0.150000006, 4.35450538e-08, 3.80969389e-09, 1, 0.0871556401, -0.99619472, -0, 0.99619472, 0.0871556401, -4.37113883e-08)
					local randomquote = random(0,3)
					if randomquote == 0 then
						satk("GG")
					elseif randomquote == 1 then
						satk("GGX")
					elseif randomquote == 2 then
						satk("GGXX")
					else
						satk("GGXXAC")
					end
					task.wait(0.05)
					sound(105094738430794,7.5,1,blade,163.115,false,true,0.717)
					if target ~= nil then
						if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
						hiteffect("sphere",tt)
						sound(7441099080,2,1,tt,0,false)
						sound2(136583576022096,5,1,blade,0,false)
						hiteffect("blood",tt)
						tt.Anchored = true
						tt.CFrame = root.CFrame * cframe(0,0,-5) * angles(0,rad(180),0)
						instantkill(target,true)
					end
					task.wait(1.25)
					frame = 1
					bladew.C0 = cframe(-1, -2, 0, -4.37113883e-08, -1, 4.37113883e-08, -0, -4.37113883e-08, -1, 1, -4.37113883e-08, 1.91068547e-15)
					sound(131445648085306,6,1,blade,153.23,false,true,0.7)
					if target ~= nil then
						if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
						hiteffect("blood",tt)
						sound(105094738430794,7.5,1,tt,163.115,false,true,0.717)
						tt.Anchored = false
						tt.Velocity = root.CFrame.LookVector * 45
						spawn(function()
							task.wait(0.25)
							hiteffect("blood",tt)
							makeblaudy(target,tt,tt,15,true)
						end)
					end
					task.wait(1)
					tweens:Create(Gohei, TweenInfo.new(1.15), {Transparency = 0}):Play()
					tweens:Create(blade, TweenInfo.new(1.15), {Transparency = 1}):Play()
					tweens:Create(bladem, TweenInfo.new(1.15), {Scale = vect3(0.003, 0, 0.003)}):Play()
					debris:AddItem(blade,1.25)
				elseif killtype == "deagle" then
					anim = "gunexecute"
					frame = 1
					local gun = new("Part")
					local gunw = new("Weld")
					local gunm = new("SpecialMesh")
					gun.Name = "ReimuGun"
					gun.Parent = script
					gun.CanTouch = false
					gun.Size = vect3()
					gun.Locked = true
					gun.CanCollide = false
					gun.Transparency = 1
					gunw.Parent = gun
					gunw.C0 = cframe(0, -0.25, 1.6, 1, 0, -0, -0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08)
					gunw.Part0 = gun
					gunw.Part1 = la
					gunm.Parent = gun
					gunm.MeshId = "http://www.roblox.com/asset/?id=4636566809"
					gunm.Scale = vect3(0.045, 0.045, 0.045)
					gunm.TextureId = "http://www.roblox.com/asset/?id=4636566827"
					gunm.MeshType = Enum.MeshType.FileMesh
					local muzzle = new("Part")
					local muzzlep = new("ParticleEmitter")
					local muzzlew = new("Weld")
					muzzle.Name = "GunFlash"
					muzzle.Parent = gun
					muzzle.Transparency = 1
					muzzle.Size = vect3(0.053, 0.053, 0.053)
					muzzle.CanTouch = false
					muzzle.CanCollide = false
					muzzle.Locked = true
					muzzlep.Name = "FlashFX[Flash]"
					muzzlep.Parent = muzzle
					muzzlep.Speed = NumberRange.new(10, 10)
					muzzlep.Rotation = NumberRange.new(0, 360)
					muzzlep.Color = ColorSequence.new(color(1, 1, 0.498039),color(1, 0.333333, 0))
					muzzlep.LightEmission = 1
					muzzlep.Texture = "http://www.roblox.com/asset/?id=257430870"
					muzzlep.Transparency = NumberSequence.new(0.75,1)
					muzzlep.Size = NumberSequence.new(0.43209850788116455,0)
					muzzlep.EmissionDirection = Enum.NormalId.Front
					muzzlep.Lifetime = NumberRange.new(0.07500000298023224, 0.07500000298023224)
					muzzlep.LockedToPart = true
					muzzlep.Enabled = false
					muzzlep.Rate = 1000
					muzzlep.RotSpeed = NumberRange.new(0, 360)
					muzzlew.Parent = muzzle
					muzzlew.C0 = cframe(0, -0.575, 1.15)
					muzzlew.Part0 = muzzle
					muzzlew.Part1 = gun
					task.wait(2)
					gun.Transparency = 0
					frame = 2
					sound(81030113300845,2.5,1,gun,0,false)
					task.wait(0.0666)
					frame = 3
					task.wait(0.0666)
					muzzlep.Enabled = true
					spawn(function()
						task.wait(0.125)
						muzzlep.Enabled = false
					end)
					sound(107342465934896,3,1,gun,0,false)
					if target ~= nil then
						if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
						hiteffect("sphere",tt)
						sound(17493997647,4.5,1,tt,0,false)
						sound(7441099080,2,1,tt,0,false)
						hiteffect("blood",tt)
						local gunbleed = new("ParticleEmitter")
						gunbleed.Parent = tt
						gunbleed.Speed = NumberRange.new(10, 10)
						gunbleed.Color = ColorSequence.new(color(1, 0, 0),color(1, 0, 0))
						gunbleed.Texture = "http://www.roblox.com/asset/?id=241685484"
						gunbleed.Size = NumberSequence.new(0.10000000149011612,0.10000000149011612)
						gunbleed.Acceleration = vect3(0, -10, 0)
						gunbleed.Lifetime = NumberRange.new(1, 2)
						gunbleed.Rate = 99
						gunbleed.RotSpeed = NumberRange.new(260, 260)
						gunbleed.SpreadAngle = vect2(360, 360)
						gunbleed.VelocitySpread = 360
						local bpart = new("Part", tt)
						bpart.Size = vect3(0.2, 0.2, 0.2)
						bpart.CanTouch = false
						bpart.CanCollide = false
						bpart.Position = th.Position + vect3(0, 1, 0)
						bpart.Transparency = 1
						local bpartw = new("Weld", tt)
						bpartw.Part0 = tt
						bpartw.Part1 = bpart
						bpartw.C0 = angles(-1, 0, -0.35) * cframe(0, 1, 0.8)
						sound(18567893733,2.5,1,tt,0,false)
						makeblaudy(target,tt,th,3,true)
						spawn(function()
							task.wait(3)
							gunbleed.Enabled = false
							debris:AddItem(gunbleed,2.5)
						end)
						for i,v in pairs(th:GetDescendants()) do
							if v:IsA("Decal") then
								v.Texture = "rbxassetid://16376243721"
							end
						end
						if random(0,6) >= 4 then
							scream(th)
						else
							scream2(th)
						end
						local bpos = new("BodyPosition")
						bpos.Name = "FinisherHitBy"
						bpos.Parent = tt
						bpos.MaxForce = vect3(39999,39999,39999)
						bpos.D = 2000
						bpos.Position = root.CFrame * cframe(0,0,-28.5).Position
						spawn(function()
							task.wait(1.5)
							bpos:Destroy()
							thum.PlatformStand = true
						end)
					end
					task.wait(0.875)
					local rng = random(0,6)
					if rng <= 3 then
						chatter("It's over.")
						if voices then sound(99813049652900,7.5,1.6,head,152.875,false,true,0.59) end
					else
						chatter("Whatever...","Happy")
						if voices then sound(99813049652900,7.5,1.6,head,43.75,false,true,0.63) end
					end
					task.wait(0.75)
					sound(83454540581361,2.5,1,gun,0,false)
					frame = 4
					task.wait(0.45)
					frame = 5
					task.wait(0.3)
					gun.Transparency = 1
					anim = "walk"
					local bpos = new("BodyVelocity")
					bpos.Name = "FinisherMove"
					bpos.Parent = root
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.Velocity = root.CFrame.lookVector * 25
					task.wait(0.815)
					bpos:Destroy()
					anim = "gunkill"
					frame = 1
					local rng = random(0,6)
					--for some reason these quotes don't make sense at all when she does the gun execution.
					if rng <= 3 then
						chatter("End this in one strike!","Angry3")
						if voices then sound(99813049652900,7.5,1.6,head,52.255,false,true,0.613) end
					else
						chatter("It's been awhile..","Angry3")
						if voices then sound(99813049652900,7.5,1.6,head,42.666,false,true,0.668) end
					end
					task.wait(0.2)
					sound(81030113300845,2.5,1,gun,0,false)
					gun.Transparency = 0
					frame = 2
					task.wait(0.35)
					frame = 3
					task.wait(1)
					sound(139012056448635,2.5,1,gun,0,false)
					frame = 4
					task.wait(0.3)
					frame = 5
					task.wait(1.75)
					sound(107342465934896,3,1,gun,0,false)
					muzzlep.Enabled = true
					if target ~= nil then
						if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
						hiteffect("sphere",th)
						sound(17493997647,4.5,1,th,0,false)
						sound(7441099080,2,1,th,0,false)
						sound(18567893733,5,1,th,0,false)
						hiteffect("blood",th)
						makeblaudy(target,tt,th,15,true)
						tt.CFrame = root.CFrame * cframe(0,-2.5,-10) * angles(rad(-90),rad(180),0)
						tt.Velocity = root.CFrame.LookVector * 150
						instantkill(target,false)
					end
					frame = 6
					task.wait(0.1)
					muzzlep.Enabled = false
					frame = 5
					task.wait(3.75)
					sound2(129890855113350,3,1,gun,0,false)
					for i = 1,15 do
						gunw.C0 = gunw.C0:Lerp(cframe(0, -0.666, 1.5) * angles(rad(120), rad(0), rad(-0)), 0.2)
						task.wait()
					end
					task.wait(0.45)
					sound2(8217058484,2.5,1,gun,0,false)
					frame = 7
					gun:Destroy()
					task.wait(0.15)
					frame = 1
					task.wait(0.125)
				end
				if target ~= nil then
					if tt:FindFirstChild("FinisherHitBy") then tt:FindFirstChild("FinisherHitBy"):Destroy() end
				end
			end
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false	
		end
	end,
	["amulet"] = function()
		if not (attack or guarding or hum.Sit == true or sitting or waiting) then
			if not checkninja() then if mp < 20 then return end else if mp < (20/10) then return end end
			if checkninja() then
				mp = mp - (20/10)
			else
				mp = mp - 20
			end
			keycombo = ""
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "special"
			frame = 1
			local rng = random(0,3)
			local randoml = random(0,2)
			chatter("Hakurei Amulet!","Angry")
			if voices then
				if rng == 0 then -- GGX
					if randoml == 0 then
						sound(109239418812415,4.5,1.5,head,47.725,false,true,1.038)
					elseif randoml == 1 then
						sound(109239418812415,4.5,1.475,head,49.2875,false,true,1.415)
					else
						sound(109239418812415,4.5,1.6,head,51.375,false,true,1.232)
					end
				elseif rng == 1 then -- GGXX
					if randoml == 0 then
						sound(99813049652900,4.5,1.5,head,60.235,false,true,1.564)
					elseif randoml == 1 then
						sound(99813049652900,4.5,1.55,head,116.215,false,true,1.493)
					else
						sound(99813049652900,4.5,1.6,head,14.815,false,true,1.323)
					end
				elseif rng == 2 then -- GG
					if randoml == 0 then
						sound(117469104266808,4.5,1.6,head,8.715,false,true,0.755)
					elseif randoml == 1 then
						sound(117469104266808,4.5,1.6,head,30.25,false,true,0.668)
					else
						sound(117469104266808,4.5,1.6,head,57.445,false,true,0.931)
					end
				elseif rng == 3 then -- GGXXAC
					if randoml == 0 then
						sound(121159169190170,4.5,3.1,head,161.5,false,true,1.208)
					elseif randoml == 1 then
						sound(121159169190170,4.5,3.1,head,291.525,false,true,1.154)
					else
						sound(121159169190170,4.5,3.2,head,78.525,false,true,0.774)
					end
				end
			end
			local amulet = new("Part")
			local amuletm = new("SpecialMesh")
			local amuletw = new("Weld")
			amulet.Name = "Handle"
			amulet.Parent = script
			amulet.Size = vect3()
			amulet.CanCollide = false
			amulet.CanTouch = false
			amulet.Locked = true
			amuletm.Parent = amulet
			amuletm.MeshId = "http://www.roblox.com/asset/?id=1136139"
			amuletm.Scale = vect3(0.3, 0.001, 0.5)
			amuletm.TextureId = "http://www.roblox.com/asset/?id=182339676"
			amuletw.Parent = amulet
			amuletw.C0 = cframe(0, 0, 1.5, 1.91068547e-15, 4.37113883e-08, 1, 1, -4.37113883e-08, -0, 4.37113883e-08, 1, -4.37113883e-08)
			amuletw.Part0 = amulet
			amuletw.Part1 = la
			task.wait(0.15)
			amulet:Destroy()
			frame = 2
			sound(105094738430794,6,1,ra,265,false,true,0.365)
			local amulet = new("Part")
			local amuletm = new("SpecialMesh")
			amulet.Name = "Handle"
			amulet.Parent = script
			amulet.Size = vect3(1.648, 0.174, 2.072)
			amulet.CanCollide = false
			amulet.Locked = true
			amuletm.Parent = amulet
			amuletm.MeshId = "http://www.roblox.com/asset/?id=1136139"
			amuletm.Scale = vect3(0.75, 0.001, 0.75)
			amuletm.TextureId = "http://www.roblox.com/asset/?id=182339676"
			local amuletf = new("Fire")
			amuletf.Parent = amulet
			amuletf.Color = color(1, 1, 1)
			amuletf.Size = 3
			amuletf.Heat = 5
			amuletf.SecondaryColor = color(1, 0, 0)
			local hashit = false
			amulet.CFrame = root.CFrame * cframe(0,0,-4.5)
			debris:AddItem(amulet,8)
			local vel = new("BodyVelocity")
			vel.Parent = amulet
			vel.MaxForce = vect3(math.huge,math.huge,math.huge)
			vel.Velocity = root.CFrame.lookVector * 55
			amulet.Touched:Connect(function(persona)
				if persona:IsA("BasePart") or persona:IsA("MeshPart") then
					if persona.Parent ~= nil and not persona.Parent:IsDescendantOf(char) then
						if persona.Parent:FindFirstChildOfClass("Humanoid") and persona.Parent ~= char and hashit == false then
							local humi = persona.Parent:FindFirstChildOfClass("Humanoid")
							local torsou = persona.Parent:FindFirstChild("Torso") or persona.Parent:FindFirstChild("UpperTorso") or persona.Parent:FindFirstChild("HumanoidRootPart")
							if torsou and not persona.Parent:FindFirstChild("IsAllyOfReimuEngrenado") then
								hashit = true
								local grabpart = new("Part")
								grabpart.Size = vect3(0.001,0.001,0.001)
								grabpart.Parent = script
								grabpart.Transparency = 1
								grabpart.CanCollide = false
								grabpart.CanTouch = false
								grabpart.Locked = true
								grabpart.Anchored = true
								grabpart.CFrame = torsou.CFrame * cframe(0,0,-1.5) * angles(0,rad(180),0)
								debris:AddItem(grabpart,0.005)
								magnitudedamage(10, "sphere", 0.045, 5, 743521207, 6.66, 1, grabpart, true, "normal", "special")
								amulet.Anchored = true
								amulet.CanTouch = false
								amuletf.Enabled = false
								tweens:Create(amulet, TweenInfo.new(1.15), {Transparency = 1}):Play()
								task.wait(3)
								amulet:Destroy()
							end
						end
					end	
				end
			end)
			task.wait(0.25)
			frame = 1
			if not ducking then 
				hum.WalkSpeed = ogws
			end
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false	
		end
	end;
	["ascension"] = function()
		if not (attack or guarding or hum.Sit == true or sitting or waiting) then
			keycombo = ""
			if not checkninja() then if mp < 25 then return end else if mp < (25/10) then return end end
			if checkninja() then
				mp = mp - (25/10)
			else
				mp = mp - 25
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "ascension"
			frame = 1
			local rng = random(0,3)
			local randoml = random(0,2)
			if randoml == 0 then
				chatter("Ascension Kick!","Angry")
			elseif randoml == 1 then
				chatter("METEOR!!","Angry3")
			else
				chatter("OCHIROU!!","Angry")
			end
			if voices then
				if rng == 0 then -- GGX
					if randoml == 0 then
						sound(109239418812415,4.5,1.6,head,56.025,false,true,1.963)
					elseif randoml == 1 then
						sound(109239418812415,4.5,1.475,head,59.15,false,true,1.465)
					else
						sound(109239418812415,4.5,1.5,head,61.33,false,true,1.248)
					end
				elseif rng == 1 then -- GGXX
					if randoml == 0 then
						sound(99813049652900,4.5,1.5,head,62.62,false,true,1.788)
					elseif randoml == 1 then
						sound(99813049652900,4.5,1.5,head,118.58,false,true,1.586)
					else
						sound(99813049652900,4.5,1.5,head,16.9,false,true,1.234)
					end
				elseif rng == 2 then -- GG
					if randoml == 0 then
						sound(117469104266808,4.5,1.6,head,9.92,false,true,1.173)
					elseif randoml == 1 then
						sound(117469104266808,4.5,1.6,head,34.4,false,true,0.6)
					else
						sound(117469104266808,4.5,1.6,head,53.45,false,true,0.825)
					end
				elseif rng == 3 then -- GGXXAC
					if randoml == 0 then
						sound(121159169190170,4.5,3.2,head,170.39,false,true,1.207)
					elseif randoml == 1 then
						sound(121159169190170,4.5,3,head,300,false,true,0.935)
					else
						sound(121159169190170,4.5,3.1,head,86.345,false,true,0.879)
					end
				end
			end
			task.wait(0.068)
			frame = 2
			task.wait(0.068)
			frame = 3
			local bpos = new("BodyPosition")
			bpos.Parent = root
			bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
			bpos.D = 1499
			bpos.Position = root.CFrame * cframe(0,60,-20).Position
			sound(2692477,1.5,0.35,ra,0,false)
			spawn(function()
				wait(0.15)
				sound(28257433,1.5,0.55,ra,0,false)
				sound(28144425,1.5,0.275,ra,0,false)
			end)
			local jumppart = new("Part")
			local jumpmesh = new("SpecialMesh")
			jumppart.Parent = script
			jumppart.Transparency = 0
			jumppart.Size = vect3(1, 1, 1)
			jumppart.Anchored = true
			jumppart.BottomSurface = Enum.SurfaceType.Smooth
			jumppart.BrickColor = bc("Bright orange")
			jumppart.CanCollide = false
			jumppart.TopSurface = Enum.SurfaceType.Smooth
			jumpmesh.Parent = jumppart
			jumpmesh.MeshId = "rbxassetid://20329976"
			jumpmesh.Scale = vect3(3, 3, 3)
			jumpmesh.MeshType = Enum.MeshType.FileMesh
			jumppart.CFrame = root.CFrame * cframe(0,-1.5,0)
			local tween = tweens:Create(jumppart,TweenInfo.new(1.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
			tween:Play()
			local tweenM = tweens:Create(jumpmesh,TweenInfo.new(1.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(30,0.025,30),Offset = vect3(0,-1.5,-1)})
			tweenM:Play()
			tween.Completed:Connect(function() jumppart:Destroy()end)
			spawn(function()
				for i = 1,10 do
					task.wait(0.035)
					local randomcolor = random(0,3)
					local firepart = new("Part")
					firepart.Parent = script
					firepart.Size = vect3(7.5,7.5,7.5)
					firepart.BottomSurface = Enum.SurfaceType.Smooth
					firepart.Anchored = true
					firepart.CanCollide = false
					firepart.CanTouch = false
					if randomcolor == 0 then
						firepart.BrickColor = bc("Crimson")
					elseif randomcolor == 1 then
						firepart.BrickColor = bc("Neon orange")
					elseif randomcolor == 2 then
						firepart.BrickColor = bc("Bright orange")
					elseif randomcolor == 3 then
						firepart.BrickColor = bc("Bright red")
					end
					firepart.Material = Enum.Material.Neon
					firepart.TopSurface = Enum.SurfaceType.Smooth
					firepart.CFrame = ll.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
					local fire = new("Fire")
					fire.Parent = firepart
					fire.Size = 10
					fire.Heat = 25
					if randomcolor == 0 then
						fire.Color = Color3.fromRGB(117,0,0)
						fire.SecondaryColor = Color3.fromRGB(196, 40, 28)
					elseif randomcolor == 1 then
						fire.Color = Color3.fromRGB(213, 115, 61)
						fire.SecondaryColor = Color3.fromRGB(255,170,0)
					elseif randomcolor == 2 then
						fire.Color = Color3.fromRGB(218, 133, 65)
						fire.SecondaryColor = Color3.fromRGB(255, 200, 0)
					elseif randomcolor == 3 then
						fire.Color = Color3.fromRGB(196, 40, 28)
						fire.SecondaryColor = Color3.fromRGB(255, 0, 0)
					end
					local smoke = new("Smoke")
					smoke.Parent = firepart
					smoke.Color = fire.Color
					smoke.Opacity = 0.5
					smoke.RiseVelocity = 10
					smoke.Size = 5
					spawn(function()
						for i = 1,25 do
							task.wait()
							firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
							firepart.Transparency = firepart.Transparency + 0.05
							firepart.Size = firepart.Size - vect3(0.5,0.5,0.5)
						end
					end)
					spawn(function()
						task.wait(0.5)
						fire.Enabled = false
						smoke.Enabled = false
						debris:AddItem(firepart,2)
					end)	
				end
			end)
			spawn(function()
				for i = 1,10 do
					magnitudedamage(3.5, "sphere", 0, 10, 9089368508, 3, 1, root,true,"normal","ascension")
					task.wait(0.035)
				end
			end)
			task.wait(0.175)
			frame = 4
			task.wait(0.1)
			frame = 5
			bpos:Destroy()
			task.wait(0.1)
			if holdingz then
				task.wait(0.115)
				if random(0,6) <= 3 then
					local randoml = random(0,2)
					if randoml == 0 then
						chatter("BLOW AWAY!!","Angry")
					elseif randoml == 1 then
						chatter("OUT OF THE WAY!!","Angry")
					else
						chatter("EAT THIS!!","Angry")
					end
					if voices then
						if randoml == 0 then
							sound(126033520355656,4.5,1.6,head,0,false)
						elseif randoml == 1 then
							sound(126094484790419,4.5,1.6,head,23.73,false,true,0.802)
						else
							sound(126094484790419,4.5,1.6,head,36.78,false,true,1.082)
						end
					end
				end
				anim = "benkei"
				frame = 1
				local bpos = new("BodyPosition")
				bpos.Parent = root
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 1750
				bpos.Position = root.CFrame * cframe(0,20,0).Position
				task.wait(0.15)
				sound(105094738430794,6,1,ra,265,false,true,0.365)
				magnitudedamage(15, "sphere", 0, 10, 13081542330, 7.5, 1, root,true,"normal","benkei")
				frame = 2
				task.wait(0.125)
				bpos:Destroy()
				task.wait(0.1)
			end
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["resemblance"] = function()
		if not (attack or guarding or hum.Sit == true or sitting or waiting) then
			keycombo = ""
			if not checkninja() then if mp < 30 then return end else if mp < (30/10) then return end end
			if checkninja() then
				mp = mp - (30/10)
			else
				mp = mp - 30
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			local rng = random(0,3)
			local randoml = random(0,2)
			if voices then
				if rng == 0 then -- GGX
					sound(109239418812415,4.5,1.45,head,63.2,false,true,1.782)
				elseif rng == 1 then -- GGXX
					if randoml == 0 then
						sound(99813049652900,4.5,1.6,head,68.2,false,true,1.143)
					elseif randoml == 1 then
						sound(99813049652900,4.5,1.6,head,123.55,false,true,1.176)
					else
						sound(99813049652900,4.5,1.6,head,21.25,false,true,1.166)
					end
				elseif rng == 2 then -- GGXXAC
					if randoml == 0 then
						sound(121159169190170,4.5,3.2,head,3.985,false,true,0.828)
					elseif randoml == 1 then
						sound(121159169190170,4.5,3.2,head,176.275,false,true,0.882)
					else
						sound(121159169190170,4.5,3.2,head,305.425,false,true,0.898)
					end
				elseif rng == 3 then -- GGXXAC (Order-Sol)
					if randoml == 0 then
						sound(126094484790419,4.5,1.525,head,0,false,true,1.204)
					elseif randoml == 1 then
						sound(126094484790419,4.5,1.575,head,1.85,false,true,1.092)
					else
						sound(126094484790419,4.5,1.6,head,91.15,false,true,1.104)
					end
				end
			end
			anim = "fstrong"
			frame = 1
			chatter("Resemblance...","Angry3")
			task.wait(0.1)
			frame = 2
			local bpos = new("BodyPosition")
			bpos.Parent = root
			bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
			bpos.D = 2000
			bpos.Position = root.CFrame * cframe(0,15,-57.5).Position
			sound(536642316,2.25,1,torso,0,false)
			magnitudedamage(10, "sphere", 0, 10, 386946017, 2.5, 1, root,true,"normal","resemblance")
			task.wait(0.225)
			bpos:Destroy()
			anim = "resemblance"
			frame = 1
			local bpos = new("BodyPosition")
			bpos.Parent = root
			bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
			bpos.D = 2000
			bpos.Position = root.CFrame * cframe(0,5,-90).Position
			task.wait(0.1)
			frame = 2
			task.wait(0.1)
			frame = 3
			sound(200632136,2.5,1,torso,0,false)
			task.wait(0.075)
			chatter("Kick!","Angry")
			if voices then
				if rng == 1 then -- GGXX
					if randoml == 0 then
						sound(99813049652900,4.5,1.6,head,70.225,false,true,1.243)
					elseif randoml == 1 then
						sound(99813049652900,4.5,1.6,head,126.275,false,true,1.273)
					else
						sound(99813049652900,4.5,1.6,head,24.175,false,true,1.229)
					end
				elseif rng == 2 then -- GGXXAC
					if randoml == 0 then
						sound(121159169190170,4.5,3.2,head,97.1,false,true,0.987)
					elseif randoml == 1 then
						sound(121159169190170,4.5,3.2,head,179.1,false,true,1)
					else
						sound(121159169190170,4.5,3.2,head,312.55,false,true,1.09)
					end
				end
			end
			frame = 4
			magnitudedamage(12,"sphere", 0, 10, 386946017, 2.5, 0.7, root,true,"normal","resemblance2")
			task.wait(0.175)
			bpos:Destroy()
			task.wait(0.15)
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["eiga"] = function()
		if not (attack or guarding or hum.Sit == true or sitting or waiting) then
			if not checkninja() then if mp < 60 then return end else if mp < (60/10) then return end end
			if checkninja() then
				mp = mp - (60/10)
			else
				mp = mp - 60
			end
			keycombo = ""
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			if random(0,6) <= 2 then
				chatter("Too slow!")
				if voices then
					sound(646548872,2.5,1.5,head,0,false)
				end	
			end
			anim = "eiga"
			frame = 1
			task.wait(0.15)
			sound(128943714557220,2.5,1.05,root,0,false)
			local invisible = {}
			for z,v in pairs(char:GetDescendants()) do
				if v:IsA("BasePart") or v:IsA("Decal") then
					if v.Transparency < 1 then
						table.insert(invisible, v)
						tweens:Create(v, TweenInfo.new(0.15), {Transparency = 1}):Play()
					end
				end
			end
			task.wait(0.2)
			sound(128943714557220,2.5,1.05,root,0,false)
			for _, v in pairs(invisible) do
				if v:IsA("BasePart") or v:IsA("Decal") then
					tweens:Create(v, TweenInfo.new(0.15), {Transparency = 0}):Play()
				end
			end
			local set = "Normal"
			if holdingw then
				set = "Forward"
			elseif holdings then
				set = "Back"
			end
			if set == "Forward" then
				root.CFrame = root.CFrame * cframe(0,0,-10)
				local bpos = new("BodyPosition")
				bpos.Parent = root
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 1750
				bpos.Position = root.CFrame * cframe(0,0,-75).Position
				task.wait(0.15)
				bpos:Destroy()
				anim = "eigav"
				frame = 1
				chatter("VORTEX DIVE!!","Angry")
				local rng = random(0,2)
				local randoml = random(0,2)
				if voices then
					if rng == 0 then -- GGX
						sound(109239418812415,4.5,1.6,head,53.33,false,true,1.679)
					elseif rng == 1 then -- GGXX
						if randoml == 0 then
							sound(99813049652900,4.5,1.6,head,65.25,false,true,1.81)
						elseif randoml == 1 then
							sound(99813049652900,4.5,1.6,head,120.945,false,true,1.71)
						else
							sound(99813049652900,4.5,1.6,head,18.75,false,true,1.553)
						end
					elseif rng == 2 then -- GGXXAC
						if randoml == 0 then
							sound(121159169190170,4.5,3.2,head,157.5,false,true,1.235)
						elseif randoml == 1 then
							sound(121159169190170,4.5,3.2,head,185.115,false,true,1.184)
						else
							sound(121159169190170,4.5,3.2,head,319.05,false,true,1.13)
						end
					end
				end
				local bpos = new("BodyPosition")
				bpos.Parent = root
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 1750
				bpos.Position = root.CFrame * cframe(0,0,-75).Position
				sound(1868836,1.5,0.44,root,0,false)
				sound(2693351,1.25,0.4,root,0,false)
				local dash = new("Part")
				local dashw = new("Weld")
				local dashp = new("ParticleEmitter")
				dash.Name = "Dust Devil"
				dash.Parent = root
				dash.CanCollide = false
				dash.CanTouch = false
				dash.Transparency = 1
				dash.Size = vect3(0.001,0.001,0.001)
				dashw.Parent = dash
				dashw.C0 = dashw.C0 * cframe(0, 2.5, 2.5)
				dashw.Part0 = dash
				dashw.Part1 = root
				dashp.Name = "Debris"
				dashp.Parent = dash
				dashp.Speed = NumberRange.new(22, 22)
				dashp.Rotation = NumberRange.new(1, 360)
				dashp.Color = ColorSequence.new(color(1, 0.333333, 0),color(1, 0, 0))
				dashp.LightInfluence = 1
				dashp.Texture = "rbxassetid://12098538418"
				dashp.Transparency = NumberSequence.new(0.800000011920929,1)
				dashp.ZOffset = 3
				dashp.Size = NumberSequence.new(1.5,15)
				dashp.Drag = 0.10000000149011612
				dashp.EmissionDirection = Enum.NormalId.Back
				dashp.Lifetime = NumberRange.new(0.5, 0.5)
				dashp.LockedToPart = false
				dashp.Rate = 200
				dashp.RotSpeed = NumberRange.new(1, 360)
				dashp.SpreadAngle = vect2(-20, -20)
				dashp.VelocitySpread = -20
				local attacking = true
				spawn(function()
					while attacking do 
						magnitudedamage(5, "sphere", 0, 10, 9089368508, 2.5, 1, root,true,"normal","eigav")
						task.wait(0.1)
					end
				end)
				task.wait(0.645)
				attacking = false
				dashp.Enabled = false
				debris:AddItem(dash,2)
				bpos.D = 2450
				frame = 2
				task.wait(0.325)
				frame = 3
				task.wait(0.1)
				frame = 4
				bpos:Destroy()
				local exp = new("Part")
				exp.Parent = script
				exp.Size = vect3()
				exp.Locked = true
				exp.CanCollide = false
				exp.CanTouch = false
				exp.Anchored = true
				exp.CFrame =  root.CFrame * cframe(0,0,-8.88)
				local boom = new("ParticleEmitter")
				boom.Name = "Explosion"
				boom.Parent = exp
				boom.Speed = NumberRange.new(0, 2)
				boom.Rotation = NumberRange.new(-180, 180)
				boom.Color = ColorSequence.new(color(1, 0.498039, 0.160784),color(1, 0.498039, 0.160784))
				boom.LightEmission = 0.4000000059604645
				boom.Texture = "rbxassetid://15194500627"
				boom.Transparency = NumberSequence.new(0,0,1)
				boom.ZOffset = 1
				boom.Size = NumberSequence.new(15,25)
				boom.Brightness = 5
				boom.Shape = Enum.ParticleEmitterShape.Sphere
				boom.Drag = 1
				boom.Lifetime = NumberRange.new(0.800000011920929, 1.5)
				boom.Orientation = "FacingCamera"
				boom.Squash = NumberSequence.new(0,0,0)
				boom.Transparency = NumberSequence.new(0,0.266,1)
				boom.EmissionDirection = "Top"
				boom.Rate = 20
				boom.ShapeInOut = "Outward"
				boom.ShapePartial = 1
				boom.ShapeStyle = "Volume"
				boom.FlipbookLayout = "Grid8x8"
				boom.FlipbookMode = "OneShot"
				local boom2 = new("Explosion")
				boom2.Parent = workspace
				boom2.Position = exp.Position
				boom2.BlastRadius = 10
				boom2.BlastPressure = 0
				spawn(function()
					task.wait(0.065)
					boom.Enabled = false
					debris:AddItem(exp,1.6)
				end)
				spawn(function()
					for i = 1,2 do
						local dash = new("Part")
						local dashp = new("ParticleEmitter")
						dash.Name = "Dust Devil"
						dash.Parent = root
						dash.CanCollide = false
						dash.CanTouch = false
						dash.Anchored = true
						dash.Locked = true
						dash.Transparency = 1
						dash.Size = vect3(0.001,0.001,0.001)
						dashp.Name = "Debris"
						dashp.Parent = dash
						dashp.Speed = NumberRange.new(22, 22)
						dashp.Rotation = NumberRange.new(1, 360)
						dashp.Color = ColorSequence.new(color(1, 0.941176, 0.737255),color(1, 0.941176, 0.737255))
						dashp.LightInfluence = 1
						dashp.Texture = "rbxassetid://12098538418"
						dashp.Transparency = NumberSequence.new(0.800000011920929,1)
						dashp.ZOffset = 3
						dashp.Size = NumberSequence.new(1.5,15)
						dashp.Drag = 0.10000000149011612
						dashp.EmissionDirection = Enum.NormalId.Back
						dashp.Lifetime = NumberRange.new(0.5, 0.5)
						dashp.LockedToPart = false
						dashp.Rate = 200
						dashp.RotSpeed = NumberRange.new(1, 360)
						dashp.SpreadAngle = vect2(-20, -20)
						dashp.VelocitySpread = -20
						if i == 2 then
							dash.CFrame = root.CFrame * cframe(0,-2.5,-8.88) * angles(0,rad(180),0)
						else
							dash.CFrame = root.CFrame * cframe(0,-2.5,-8.88)
						end
						spawn(function()
							task.wait(0.25)
							dashp.Enabled = false
							debris:AddItem(dash,2)
						end)
						task.wait()
					end
				end)
				sound(79887722971140,4.5,1,Gohei,25.8075,false,true,3.248)
				magnitudedamage(13,"boom", 0, 6.66, 13081542330, 4.5, 1, root,true,"burn","eiga")
				task.wait(0.45)
			elseif set == "Back" then
				root.CFrame = root.CFrame * cframe(0,35,15)
				frame = 4
				root.Velocity = root.CFrame.lookVector*-75 + root.CFrame.upVector*45
				chatter("GRENADES!!","Angry")
				local rng = random(0,1)
				local randoml = random(0,2)
				if voices then
					if rng == 0 then -- GGXX
						if randoml == 0 then
							sound(99813049652900,4.5,1.6,head,74.15,false,true,1.166)
						elseif randoml == 1 then
							sound(99813049652900,4.5,1.6,head,130.15,false,true,1.189)
						else
							sound(99813049652900,4.5,1.6,head,28.125,false,true,1.166)
						end
					else -- GGXXAC
						if randoml == 0 then
							sound(121159169190170,4.5,3.2,head,165.225,false,true,0.752)
						elseif randoml == 1 then
							sound(121159169190170,4.5,3.2,head,295.115,false,true,0.771)
						else
							sound(121159169190170,4.5,3.2,head,80.875,false,true,0.779)
						end
					end
				end
				spawn(function()
					for i = 1, 10 do
						local grenade = new("Part")
						grenade.Size = vect3(1,1,1)
						grenade.Shape = "Ball"
						grenade.Name = "ReimuGrenade"
						grenade.Material = "Neon"
						grenade.Parent = workspace
						grenade.Anchored = false
						grenade.CanCollide = false
						grenade.Locked = true
						grenade.CFrame = root.CFrame * cframe(random(-10,10),random(0,10),-10)
						sound(5738824426,1,1,grenade,0,false)
						if random(0,3) < 2 then
							grenade.BrickColor = bc("Bright red")
						else
							grenade.BrickColor = bc("Institutional white")
						end
						local dashp = new("BodyVelocity",grenade)
						dashp.MaxForce = vect3(99999,99999,99999)
						dashp.Velocity = root.CFrame.lookVector*50
						debris:AddItem(dashp,0.1)
						local didhit = false
						grenade.Touched:Connect(function(hit)
							if not didhit and hit.Name ~= "ReimuGrenade" then
								didhit = true
								local grabpart = new("Part")
								grabpart.Size = vect3(0.001,0.001,0.001)
								grabpart.Parent = script
								grabpart.Transparency = 1
								grabpart.CanCollide = false
								grabpart.CanTouch = false
								grabpart.Locked = true
								grabpart.Anchored = true
								grabpart.CFrame = grenade.CFrame * cframe(0,0,-1.15)
								debris:AddItem(grabpart,0.005)
								magnitudedamage(4.5, "sphere", 0.045, 8.88, 743521207, 6.66, 1, grabpart, true, "normal", "special")
								local explosion = new("Explosion")
								explosion.Parent = workspace
								explosion.Position = grenade.Position
								explosion.BlastRadius = 0
								explosion.BlastPressure = 0
								sound2(5129337934,1,1,grenade,0,false)
								grenade:Destroy()
							end
						end)
						task.wait()
					end
				end)
				task.wait(0.25)
			else
				chatter("Bringa!!","Angry")
				local rng = random(0,1)
				local randoml = random(0,2)
				if voices then
					if rng == 0 then -- GGXX
						if randoml == 0 then
							sound(99813049652900,4.5,1.6,head,72.25,false,true,1.21)
						elseif randoml == 1 then
							sound(99813049652900,4.5,1.6,head,128.3,false,true,1.159)
						else
							sound(99813049652900,4.5,1.6,head,26.125,false,true,1.273)
						end
					elseif rng == 1 then -- GGXXAC
						if randoml == 0 then
							sound(121159169190170,4.5,3.2,head,120.225,false,true,0.898)
						elseif randoml == 1 then
							sound(121159169190170,4.5,3.2,head,182.25,false,true,0.867)
						else
							sound(121159169190170,4.5,3.2,head,316.05,false,true,0.937)
						end
					end
				end
				root.CFrame = root.CFrame * cframe(0,25,-4.5)
				frame = 3
				root.Velocity = root.CFrame.lookVector*45 + root.CFrame.upVector*15
				local Part = new("Part",script)
				Part.Name = "HitboxThing"
				Part.Transparency = 1
				Part.Size = vect3(5, 7.5, 5)
				Part.CanCollide = false
				Part.Massless = true
				Part.Locked = true
				local Weld = new("Weld",Part)
				Weld.Part0 = root
				Weld.Part1 = Part
				Weld.C0 = Weld.C0 * cframe(0,-1.25,-2)
				local hashit = false
				Part.Touched:Connect(function(persona)
					if persona:IsA("BasePart") or persona:IsA("MeshPart") then
						if persona.Parent ~= nil and not persona.Parent:IsDescendantOf(char) then
							if persona.Parent:FindFirstChildOfClass("Humanoid") and persona.Parent ~= char and hashit == false then
								local humi = persona.Parent:FindFirstChildOfClass("Humanoid")
								local torsou = persona.Parent:FindFirstChild("Torso") or persona.Parent:FindFirstChild("UpperTorso") or persona.Parent:FindFirstChild("HumanoidRootPart")
								if torsou then
									hashit = true
									sound(386946017,2,1,torsou,0,false)
									hiteffect("sphere",torsou)
									torsou.Velocity = root.CFrame.lookVector * 50 + root.CFrame.upVector * 60
									humi.PlatformStand = true
									spawn(function() 
										task.wait(5)
										humi.PlatformStand = false
									end)
									local creator = new("ObjectValue")
									creator.Name = "creator"
									creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
									creator.Parent = humi
									debris:AddItem(creator, 2)
									if not drive then
										humi:TakeDamage(10)
									else
										humi:TakeDamage(20)
									end
								end
							end
						end	
					end
				end)
				local hitfloor
				repeat 
					task.wait()
					hitfloor = raycast(root.Position, (cframe(root.Position, root.Position + vect3(0, -1, 0))).lookVector, 4+hum.HipHeight, char)
				until hitfloor or hum:GetState() == Enum.HumanoidStateType.Landed
				Part:Destroy()
			end
			if not ducking then 
				hum.WalkSpeed = ogws
			end
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false	
		end
	end;
	["kaihou"] = function()
		if not (attack or guarding or hum.Sit == true or sitting or waiting) then
			if not checkninja() then if mp < 50 then return end else if mp < (50/10) then return end end
			if checkninja() then
				mp = mp - (50/10)
			else
				mp = mp - 50
			end
			keycombo = ""
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "kaihou"
			local randomquote = random(0,3)
			if randomquote == 0 then
				matk("GG")
			elseif randomquote == 1 then
				matk("GGX")
			elseif randomquote == 2 then
				matk("GGXX")
			else
				matk("GGXXAC")
			end
			local doingspin = true
			spawn(function()
				while doingspin do
					spin = spin + 1
					task.wait()
				end
			end)
			sound(4909206080,4,1,torso,0,false)
			local effect = new("ParticleEmitter")
			effect.Parent = torso
			effect.Rotation = NumberRange.new(0, 300)
			effect.Color = ColorSequence.new(color(1, 1, 1),color(0.427451, 0.427451, 0.427451))
			effect.LightInfluence = 1
			effect.Texture = "rbxassetid://7731347137"
			effect.Transparency = NumberSequence.new(0.5812499523162842,0.925000011920929,1)
			effect.Size = NumberSequence.new(1.5,0)
			effect.Acceleration = vect3(0, 0.10000000149011612, 0)
			effect.EmissionDirection = Enum.NormalId.Front
			effect.Lifetime = NumberRange.new(2, 3)
			effect.Rate = 100
			effect.RotSpeed = NumberRange.new(10, 13)
			effect.SpreadAngle = vect2(0, 360)
			effect.VelocityInheritance = 0.5
			if not inair then
				frame = 1
				local parta = new("Part")
				parta.Parent = script
				parta.Transparency = -5
				parta.Anchored = true
				parta.CanTouch = false
				parta.Size = vect3(4, 5, 0.5)
				parta.BottomSurface = Enum.SurfaceType.Smooth
				parta.CanCollide = false
				parta.Material = Enum.Material.ForceField
				parta.TopSurface = Enum.SurfaceType.Smooth
				parta.Massless = true
				parta.Locked = true
				parta.CFrame = root.CFrame * cframe(0, -2.75, 2.75) * angles(rad(45),0,0)
				local tween = tweens:Create(parta, TweenInfo.new(0.5), {Size = parta.Size * 2,Transparency = 1})
				tween:Play()
				tween.Completed:Connect(function() parta:Destroy() end)
				local vel = new("BodyVelocity")
				vel.Parent = root
				vel.MaxForce = vect3(math.huge,math.huge,math.huge)
				vel.Velocity = root.CFrame.lookVector * 45 + root.CFrame.upVector * 45
				spawn(function()
					for i = 1,5 do
						magnitudedamage(3.5, "sphere", 0, 10, 9089368508, 3, 1, root,true,"normal","kaihou")
						task.wait(0.035)
					end
				end)
				spawn(function()
					task.wait(0.25)
					effect.Enabled = false
				end)
				task.wait(0.45)
				vel:Destroy()
				effect.Enabled = true
				sound(4909206080,4,1,torso,0,false)
				local parta = new("Part")
				parta.Parent = script
				parta.Transparency = -5
				parta.Anchored = true
				parta.CanTouch = false
				parta.Size = vect3(4, 5, 0.5)
				parta.BottomSurface = Enum.SurfaceType.Smooth
				parta.CanCollide = false
				parta.Material = Enum.Material.ForceField
				parta.TopSurface = Enum.SurfaceType.Smooth
				parta.Massless = true
				parta.Locked = true
				parta.CFrame = root.CFrame * cframe(0, 2.75, 2.75) * angles(rad(135),0,0)
				local tween = tweens:Create(parta, TweenInfo.new(0.5), {Size = parta.Size * 2,Transparency = 1})
				tween:Play()
				tween.Completed:Connect(function() parta:Destroy() end)
				local vel = new("BodyVelocity")
				vel.Parent = root
				vel.MaxForce = vect3(math.huge,math.huge,math.huge)
				vel.Velocity = root.CFrame.lookVector * 45 + root.CFrame.upVector * -45
				frame = 2
				spawn(function()
					for i = 1,5 do
						magnitudedamage(3.5, "sphere", 0, 10, 9089368508, 3, 1, root,true,"normal","kaihou2")
						task.wait(0.035)
					end
				end)
				task.wait(0.25)
				vel:Destroy()
			else
				task.wait(0.1)
				frame = 2
				spawn(function()
					task.wait(0.25)
					effect.Enabled = false
				end)
				local parta = new("Part")
				parta.Parent = script
				parta.Transparency = -5
				parta.CanTouch = false
				parta.Size = vect3(4, 5, 0.5)
				parta.BottomSurface = Enum.SurfaceType.Smooth
				parta.CanCollide = false
				parta.Material = Enum.Material.ForceField
				parta.TopSurface = Enum.SurfaceType.Smooth
				parta.Massless = true
				parta.Locked = true
				parta.CFrame = root.CFrame * cframe(0, 2.75, 2.75) * angles(rad(135),0,0)
				local tween = tweens:Create(parta, TweenInfo.new(0.5), {Size = parta.Size * 2,Transparency = 1})
				tween:Play()
				tween.Completed:Connect(function() parta:Destroy() end)
				local vel = new("BodyVelocity")
				vel.Parent = root
				vel.MaxForce = vect3(math.huge,math.huge,math.huge)
				vel.Velocity = root.CFrame.lookVector * 45 + root.CFrame.upVector * -45
				spawn(function()
					for i = 1,5 do
						magnitudedamage(3.5, "sphere", 0, 10, 9089368508, 3, 1, root,true,"normal","kaihou2")
						task.wait(0.035)
					end
				end)
				task.wait(0.4)
				effect.Enabled = true
				vel:Destroy()
				frame = 1
				sound(4909206080,4,1,torso,0,false)
				local parta = new("Part")
				parta.Parent = script
				parta.Transparency = -5
				parta.CanTouch = false
				parta.Size = vect3(4, 5, 0.5)
				parta.BottomSurface = Enum.SurfaceType.Smooth
				parta.CanCollide = false
				parta.Material = Enum.Material.ForceField
				parta.TopSurface = Enum.SurfaceType.Smooth
				parta.Massless = true
				parta.Locked = true
				parta.CFrame = root.CFrame * cframe(0, -2.75, 2.75) * angles(rad(45),0,0)
				local tween = tweens:Create(parta, TweenInfo.new(0.5), {Size = parta.Size * 2,Transparency = 1})
				tween:Play()
				tween.Completed:Connect(function() parta:Destroy() end)
				local vel = new("BodyVelocity")
				vel.Parent = root
				vel.MaxForce = vect3(math.huge,math.huge,math.huge)
				vel.Velocity = root.CFrame.lookVector * 45 + root.CFrame.upVector * 45
				spawn(function()
					for i = 1,5 do
						magnitudedamage(3.5, "sphere", 0, 10, 9089368508, 3, 1, root,true,"normal","kaihou")
						task.wait(0.035)
					end
				end)
				task.wait(0.35)
				vel:Destroy()
			end
			effect.Enabled = false
			debris:AddItem(effect,2.5)
			doingspin = false
			if not ducking then 
				hum.WalkSpeed = ogws
			end
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false	
		end
	end;
	["giga"] = function()
		if not (attack or guarding or hum.Sit == true or sitting or waiting) then
			keycombo = ""
			if not checkninja() then if mp < 500 then return end else if mp < (500/10) then return end end
			if checkninja() then
				mp = mp - (500/10)
			else
				mp = mp - 500
			end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			super(0,true)
			spellcircle(1.9)
			anim = "giga"
			frame = 1
			task.wait(1)
			local randoml = random(0,2)
			if randoml == 0 then
				chatter("G.I.G.A. Rave!!","Angry")
				if voices then
					sound(109239418812415,6.66,1.45,head,68.35,false,true,2.094)
				end
			elseif randoml == 1 then
				chatter("TAKE THIS!!","Angry2")
				if voices then
					sound(109239418812415,6.66,1.45,head,71.375,false,true,1.579)
				end
			else
				chatter("ALL YOUR YAPPING IS TRASH!!","Angry3")
				if voices then
					sound(109239418812415,6.66,1.55,head,73.675,false,true,1.724)
				end
			end
			magnitudedamage(30, "sphere", 0, 10, 4766119678, 3, 1, root,true,"normal","giga")
			frame = 2
			local fball = new("Part")
			local fballl = new("PointLight")
			local fballp = new("ParticleEmitter")
			local fballp2 = new("ParticleEmitter")
			local fballw = new("Weld")
			fball.Name = "Fireball"
			fball.Parent = script
			fball.Transparency = 1
			fball.Size = vect3(1, 1, 1)
			fball.CanCollide = false
			fball.CanTouch = false
			fball.Locked = true
			fballl.Name = "Light"
			fballl.Parent = fball
			fballl.Color = color(1, 0.654902, 0.235294)
			fballl.Shadows = true
			fballp.Name = "Fire2"
			fballp.Parent = fball
			fballp.Speed = NumberRange.new(1.5, 1.5)
			fballp.Rotation = NumberRange.new(-180, 180)
			fballp.Color = ColorSequence.new(color(1, 0.980392, 0.364706),color(1, 0.0117647, 0.0117647))
			fballp.LightEmission = 1
			fballp.Texture = "rbxassetid://241922889"
			fballp.Transparency = NumberSequence.new(1,0.3687499761581421,0.05624997615814209,0.037499964237213135,0.13749998807907104,0.36250001192092896,0.65625,1)
			fballp.ZOffset = 1
			fballp.Size = NumberSequence.new(1.499999761581421,0.37499964237213135)
			fballp.Acceleration = vect3(0, 15, 0)
			fballp.Lifetime = NumberRange.new(0.30000001192092896, 0.550000011920929)
			fballp.Rate = 125
			fballp.RotSpeed = NumberRange.new(-90, 90)
			fballp.SpreadAngle = vect2(180, 180)
			fballp.VelocitySpread = 180
			fballp2.Name = "Fire1"
			fballp2.Parent = fball
			fballp2.Speed = NumberRange.new(0, 0)
			fballp2.Rotation = NumberRange.new(-180, 180)
			fballp2.Color = ColorSequence.new(color(1, 0.564706, 0.12549),color(0.984314, 0, 0),color(0.976471, 0, 0))
			fballp2.LightEmission = 0.5
			fballp2.Texture = "http://www.roblox.com/asset/?id=37332909"
			fballp2.Transparency = NumberSequence.new(1,0.768750011920929,0.59375,0.41874998807907104,0.28749996423721313,0.28125,0.34999996423721313,0.5499999523162842,1)
			fballp2.ZOffset = 1
			fballp2.Size = NumberSequence.new(3.040935516357422,0.7499998807907104)
			fballp2.Acceleration = vect3(0, 2.5, 0)
			fballp2.Lifetime = NumberRange.new(0.25, 0.44999998807907104)
			fballp2.Rate = 150
			fballp2.RotSpeed = NumberRange.new(-180, 180)
			fballp2.SpreadAngle = vect2(180, 180)
			fballp2.VelocitySpread = 180
			fballw.Parent = fball
			fballw.C0 = cframe(0, 1, 0)
			fballw.Part0 = fball
			fballw.Part1 = la
			spawn(function()
				task.wait(0.005)
				local sphere = new("Part")
				sphere.Parent = script
				sphere.Name = "SmallBoom"
				sphere.Shape = "Ball"
				sphere.Size = vect3(0.5,0.5,0.5)
				sphere.Transparency = 0
				sphere.BrickColor = bc("Neon orange")
				sphere.Material = "Neon"
				sphere.CanCollide = false
				sphere.Anchored = true
				sphere.CFrame = fball.CFrame
				local tween = tweens:Create(sphere, TweenInfo.new(0.35), {Size = vect3(5,5,5), Transparency = 1})
				tween:Play()
				tween.Completed:Connect(function() sphere:Destroy() end)
				local explosion = new("Explosion")
				explosion.Parent = workspace
				explosion.Position = sphere.Position
				explosion.BlastRadius = 0
				explosion.BlastPressure = 0
			end)
			local bpos = new("BodyPosition")
			bpos.Name = "GigaMove"
			bpos.Parent = root
			bpos.MaxForce = vect3(39999,39999,39999)
			bpos.D = 2000
			bpos.Position = root.CFrame * cframe(0,0,-30).Position
			debris:AddItem(bpos,0.2)
			sound(6892640563,3,1,fball,0,false)
			task.wait(0.315)
			bpos:Destroy()
			frame = 3
			fballw:Destroy()
			fballl.Enabled = false
			fball.Anchored = true
			fballp.Enabled = false
			fballp2.Enabled = false
			debris:AddItem(fball,2)
			task.wait(0.075)
			local colors = {bc("Gold"),bc("Neon orange"),bc("Bright orange"),bc("Bright yellow"),bc("Deep orange")}
			local tyrantrave = new("Model")
			local tyrantravep = new("Part")
			local tyrantravem = new("SpecialMesh")
			local tyrantravep0 = new("Part")
			local tyrantravem0 = new("SpecialMesh")
			local tyrantravep1 = new("Part")
			local tyrantravem1 = new("SpecialMesh")
			local tyrantravep2 = new("Part")
			local tyrantravem2 = new("SpecialMesh")
			local pospart = new("Part")
			local tyrantravew = new("Weld")
			local tyrantravew0 = new("Weld")
			local tyrantravew1 = new("Weld")
			local tyrantravew2 = new("Weld")
			tyrantrave.Parent = script
			tyrantravep.Name = "SHIELD MESH!"
			tyrantravep.Parent = tyrantrave
			tyrantravep.Transparency = 0.20000000298023224
			tyrantravep.Size = vect3()
			tyrantravep.BrickColor = colors[random(1,#colors)]
			tyrantravep.CanCollide = false
			tyrantravep.CanTouch = false
			tyrantravep.Locked = true
			tyrantravem.Parent = tyrantravep
			tyrantravem.MeshId = "http://www.roblox.com/asset/?id=1028797"
			tyrantravem.Scale = vect3(5.5, 3.5, 5.5)
			tyrantravem.MeshType = Enum.MeshType.FileMesh
			tyrantravep0.Name = "Ice Crown"
			tyrantravep0.Parent = tyrantrave
			tyrantravep0.Transparency = 0.5
			tyrantravep0.Size = vect3()
			tyrantravep0.BrickColor = colors[random(1,#colors)]
			tyrantravep0.CanCollide = false
			tyrantravep0.CanTouch = false
			tyrantravep0.Locked = true
			tyrantravem0.Parent = tyrantravep0
			tyrantravem0.MeshId = "http://www.roblox.com/asset/?id=1323306"
			tyrantravem0.Scale = vect3(9.706000328063965, 7.5, 9.706000328063965)
			tyrantravem0.MeshType = Enum.MeshType.FileMesh
			tyrantravep1.Name = "Crown"
			tyrantravep1.Parent = tyrantrave
			tyrantravep1.Transparency = 0.2
			tyrantravep1.Size = vect3()
			tyrantravep1.BrickColor = colors[random(1,#colors)]
			tyrantravep1.CanCollide = false
			tyrantravep1.CanTouch = false
			tyrantravep1.Locked = true
			tyrantravem1.Parent = tyrantravep1
			tyrantravem1.MeshId = "http://www.roblox.com/asset/?id=20329976"
			tyrantravem1.Scale = vect3(4, 2.6666667461395264, 4)
			tyrantravem1.MeshType = Enum.MeshType.FileMesh
			tyrantravep2.Name = "Crown"
			tyrantravep2.Parent = tyrantrave
			tyrantravep2.Transparency = 0.20000000298023224
			tyrantravep2.Size = vect3()
			tyrantravep2.BrickColor = colors[random(1,#colors)]
			tyrantravep2.CanCollide = false
			tyrantravep2.CanTouch = false
			tyrantravep2.Locked = true
			tyrantravem2.Parent = tyrantravep2
			tyrantravem2.MeshId = "http://www.roblox.com/asset/?id=20329976"
			tyrantravem2.Scale = vect3(4, 2.6666667461395264, 4)
			tyrantravem2.MeshType = Enum.MeshType.FileMesh
			pospart.Name = "PosPart"
			pospart.Parent = script
			pospart.CFrame = root.CFrame * cframe(0,0,-4.5)
			pospart.Size = vect3()
			pospart.Anchored = true
			pospart.CanTouch = false
			pospart.CanCollide = false
			pospart.Locked = true
			pospart.Transparency = 1
			tyrantravew.Parent = pospart
			tyrantravew.C0 = cframe(0, 0, 4, 1, 0, -0, -0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08)
			tyrantravew.Part0 = pospart
			tyrantravew.Part1 = tyrantravep0
			tyrantravew.part1 = tyrantravep0
			tyrantravew0.Parent = pospart
			tyrantravew0.C0 = cframe(0, 0, 0, 1, 0, -0, -0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08)
			tyrantravew0.C1 = cframe(0, 0, 0, -4.37113883e-08, 0, 1, 0, 1, -0, -1, 0, -4.37113883e-08)
			tyrantravew0.Part0 = pospart
			tyrantravew0.Part1 = tyrantravep1
			tyrantravew0.part1 = tyrantravep1
			tyrantravew1.Parent = pospart
			tyrantravew1.C0 = cframe(0, 0, 0, 1, 0, -0, -0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08)
			tyrantravew1.Part0 = pospart
			tyrantravew1.Part1 = tyrantravep2
			tyrantravew1.part1 = tyrantravep2
			tyrantravew2.Parent = pospart
			tyrantravew2.C0 = cframe(0, 0, -3, 1, 0, -0, -0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08)
			tyrantravew2.Part0 = pospart
			tyrantravew2.Part1 = tyrantravep
			for i,v in pairs(tyrantrave:GetDescendants()) do
				if v:IsA("BasePart") and v.Name ~= pospart.Name then
					v.Transparency = 1
				end
				if v:IsA("SpecialMesh") then
					v.Scale = v.Scale + vect3(-1,-1,-1)
				end
			end
			local explosion = new("Explosion")
			explosion.Parent = workspace
			explosion.Position = pospart.Position
			explosion.BlastRadius = 0
			explosion.BlastPressure = 0
			sound2(6892631834,4.5,1,pospart,0,false)
			magnitudedamage(45, "boom", 0, 10, 4766119678, 3, 1, pospart,true,"burn","giga2")
			spawn(function()
				for i = 1,10 do
					pospart.CFrame = pospart.CFrame * CFrame.fromEulerAnglesXYZ(0,0,0.15)
					pospart.CFrame = pospart.CFrame * cframe(0,0,-0.1)
					pospart.Transparency = pospart.Transparency + 0.015
					for i,v in pairs(tyrantrave:GetDescendants()) do
						if v:IsA("BasePart") and v.Name ~= pospart.Name then
							v.Transparency = v.Transparency - 0.115
						end
						if v:IsA("SpecialMesh") then
							v.Scale = v.Scale + vect3(0.15,0.05,0.15)
							if v.Name == "Morataa" then
								v.Offset = v.Offset + vect3(0,-0.01,0)
							end
						end
					end
					task.wait(0.005)
				end
				for i = 1,75 do
					pospart.CFrame = pospart.CFrame * CFrame.fromEulerAnglesXYZ(0,0,0.15)
					pospart.CFrame = pospart.CFrame * cframe(0,0,-0.1)
					pospart.Transparency = pospart.Transparency + 0.015
					for i,v in pairs(tyrantrave:GetDescendants()) do
						if v:IsA("BasePart") and v.Name ~= pospart.Name then
							v.Transparency = v.Transparency + 0.015
						end
						if v:IsA("SpecialMesh") then
							v.Scale = v.Scale + vect3(0.15,0.05,0.15)
							if v.Name == "Morataa" then
								v.Offset = v.Offset + vect3(0,-0.01,0)
							end
						end
					end
					task.wait(0.005)
				end
				pospart:Destroy()
				tyrantrave:Destroy()
			end)
			frame = 4
			task.wait(0.5)
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end;
	["drive"] = function()
		if not (attack or guarding or hum.Sit == true or sitting or waiting) then
			keycombo = ""
			if drive or heat < 100 then return end
			attack = true
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.JumpHeight = 0
			anim = "spawn"
			frame = 1
			local amulet = new("Part")
			local amuletm = new("SpecialMesh")
			local amuletw = new("Weld")
			amulet.Name = "Handle"
			amulet.Parent = script
			amulet.Size = vect3()
			amulet.CanCollide = false
			amulet.CanTouch = false
			amulet.Locked = true
			amuletm.Parent = amulet
			amuletm.MeshId = "http://www.roblox.com/asset/?id=1136139"
			amuletm.Scale = vect3(0.3, 0.001, 0.5)
			amuletm.TextureId = "http://www.roblox.com/asset/?id=182339676"
			amuletw.Parent = amulet
			amuletw.C0 = cframe(0, 0, 1.5, 1.91068547e-15, 4.37113883e-08, 1, 1, -4.37113883e-08, -0, 4.37113883e-08, 1, -4.37113883e-08)
			amuletw.Part0 = amulet
			amuletw.Part1 = la
			task.wait(0.125)
			frame = 2
			local randomquote = random(0,3)
			if randomquote == 0 then
				overheat("GGX")
			elseif randomquote == 1 then
				overheat("GGXX")
			else
				overheat("GGXXAC")
			end
			local sphere = new("Part")
			sphere.Parent = script
			sphere.Name = "Transform"
			sphere.Shape = "Ball"
			sphere.Size = vect3(7.5,7.5,7.5)
			sphere.Transparency = 0
			sphere.BrickColor = bc("Crimson")
			sphere.Material = "Neon"
			sphere.CanCollide = false
			sphere.Anchored = true
			sphere.CFrame = root.CFrame
			local tween = tweens:Create(sphere, TweenInfo.new(0.75), {Size = vect3(15,15,15), Transparency = 1})
			tween:Play()
			tween.Completed:Connect(function() sphere:Destroy() end)
			hair:FindFirstChildOfClass("SpecialMesh").TextureId = "rbxassetid://175372682"
			bow:FindFirstChildOfClass("SpecialMesh").TextureId = "rbxassetid://175372682" --There was no proper texture, so I had to find the best ID for it.
			bow:FindFirstChildOfClass("SpecialMesh").VertexColor = vect3(0.6, 0.6, 0.6)
			if shirt then
				shirt.ShirtTemplate = "rbxassetid://6572489140"
				shirt.Color3 = color(0.607843, 0, 0)
			end
			if pants then
				pants.PantsTemplate = "rbxassetid://6572494595"
				pants.Color3 = color(0.607843, 0, 0)
			end
			local highlight = new("Highlight")
			highlight.Parent = char
			highlight.Name = "DriveHighlight"
			highlight.OutlineTransparency = 1
			highlight.FillTransparency = 1
			highlight.FillColor = color(1, 0, 0)
			highlight.OutlineColor = color(0.666667, 0, 0)
			tweens:Create(highlight, TweenInfo.new(0.45), {FillTransparency = 0.875}):Play()
			tweens:Create(highlight, TweenInfo.new(0.45), {OutlineTransparency = 0.3}):Play()
			drive = true
			heat = 0
			spawn(function()
				for i = 1, 18 do
					local shard = new("Part")
					local shardm = new("SpecialMesh")
					shard.Name = "Shard"
					shard.Parent = script
					shard.Transparency = 0
					shard.Size = vect3(1, 0.4, 1)
					shard.BrickColor = bc("Bright red")
					shard.CanCollide = false
					shard.CanTouch = false
					shard.Anchored = true
					shard.Locked = true
					shardm.Parent = shard
					shardm.MeshId = "http://www.roblox.com/asset/?id=9547466"
					shardm.Scale =vect3(1, 2, 1)
					shard.CFrame = root.CFrame*cframe(random(-2,2), -3, random(-2,2))
					local fire = new("Fire")
					fire.Parent = shard
					fire.Color = color(1, 0, 0)
					fire.SecondaryColor = color(0.666667, 0, 0)
					tweens:Create(shardm, TweenInfo.new(0.25), {Scale = vect3(0.1, 10, 0.1)}):Play()
					local tween = tweens:Create(shard, TweenInfo.new(0.25), {CFrame = shard.CFrame * cframe(0,10,0), Transparency = 1})
					tween:Play()
					tween.Completed:Connect(function() fire.Enabled = false task.wait(2.5) shard:Destroy() end)
					task.wait(0.045)
				end
			end)
			spawn(function()
				--guilty gear moment
				sound(79887722971140,4.5,1,torso,54.48,false,true,1.45)
				local judas = true
				spawn(function()
					local spellc = new("Part")
					local spellcm = new("BlockMesh")
					local spellcd = new("Decal")
					local spellcl = new("PointLight")
					spellc.Name = "SpellCircle"
					spellc.Parent = char
					spellc.Transparency = 1
					spellc.Size = vect3(11.5, 0.15, 11.5)
					spellc.BottomSurface = Enum.SurfaceType.Smooth
					spellc.TopSurface = Enum.SurfaceType.Smooth
					spellc.Anchored = true
					spellc.CanCollide = false
					spellc.Locked = true
					spellc.CanTouch = false
					spellcm.Parent = spellc
					spellcm.Scale = vect3(1.5, 1.5, 1.5)
					spellcd.Parent = spellc
					spellcd.Texture = "http://www.roblox.com/asset/?id=238111016"
					spellcd.Face = Enum.NormalId.Top
					spellcd.Transparency = 1
					spellcl.Parent = spellc
					spellcl.Brightness = 1.75
					spellcl.Range = 15
					spellcl.Color = color(1, 0.333333, 0)
					local tween = tweens:Create(spellcd, TweenInfo.new(1), {Transparency = 0})
					tween:Play()
					local angle = 0
					while judas do
						wait()
						angle = angle + 15
						if drive then
							spellc.CFrame = root.CFrame * cframe(0, -3, 0) * angles(0, rad(angle), 0)
						else
							if spellcd.Transparency < 1 then
								if spellc ~= nil then
									spellcd.Transparency = spellcd.Transparency + 0.05
								end
							else
								spellc:Destroy()
								judas = false
								break							
							end
						end
					end
				end)
			end)
			task.wait(1.5)
			local tween = tweens:Create(amulet, TweenInfo.new(0.5), {Transparency = 1})
			tween:Play()
			tween.Completed:Connect(function() amulet:Destroy() end)
			spawn(function()
				task.wait(45)
				local sphere = new("Part")
				sphere.Parent = script
				sphere.Name = "Transform"
				sphere.Shape = "Ball"
				sphere.Size = vect3(15,15,15)
				sphere.Transparency = 0
				sphere.BrickColor = bc("Institutional white")
				sphere.Material = "Neon"
				sphere.CanCollide = false
				sphere.Anchored = true
				sphere.CFrame = root.CFrame
				local tween = tweens:Create(sphere, TweenInfo.new(0.75), {Size = vect3(), Transparency = 1})
				tween:Play()
				tween.Completed:Connect(function() sphere:Destroy() end)
				hair:FindFirstChildOfClass("SpecialMesh").TextureId = "rbxassetid://14767472960"
				bow:FindFirstChildOfClass("SpecialMesh").TextureId = "rbxassetid://25356537"
				bow:FindFirstChildOfClass("SpecialMesh").VertexColor = vect3(1,1,1)
				if shirt then
					shirt.ShirtTemplate = "rbxassetid://73257233215728"
					shirt.Color3 = color(1,1,1)
				end
				if pants then
					pants.PantsTemplate = "rbxassetid://122202806903706"
					pants.Color3 = color(1,1,1)
				end
				tweens:Create(highlight, TweenInfo.new(0.45), {FillTransparency = 1}):Play()
				tweens:Create(highlight, TweenInfo.new(0.45), {OutlineTransparency = 1}):Play()
				drive = false
				task.wait(0.45)
				highlight:Destroy()
			end)
			hum.WalkSpeed = ogws
			hum.JumpPower = ogjp
			hum.JumpHeight = ogjh
			attack = false
		end
	end,	
}

mouse.KeyDown:connect(function(key)
	keycombotime = tick()
	if key == "leftcontrol" and not (ducking or hum.Sit == true or sitting or waiting) then
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		ducking = true
	end
	if key == "2" and not (ducking or hum.Sit == true or sitting or waiting) then
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		hum.JumpHeight = 0
		ducking = true
	end
	if key == "r" and not (attack or guarding or hum.Sit == true or sitting or waiting) then
		hum.WalkSpeed = 0
		guarding = true
	end
	if key == "leftshift" and not (attack or ducking or guarding or hum.Sit == true or sitting or waiting) then
		hum.WalkSpeed = 75
	end
	if key == "0" and not (attack or ducking or guarding or hum.Sit == true or sitting or waiting) then
		hum.WalkSpeed = 75
	end
	if key == "g" and not (attack or guarding or hum.Sit == true or sitting or waiting) then
		emote("Taunt")
	end	
	if key == "h" and not (attack or guarding or hum.Sit == true or sitting or waiting) then
		emote("Compliment")
	end	
	if key == "t" and not (attack or guarding or hum.Sit == true or sitting or waiting) then
		emote("Neck")
	end	
	if key == "b" and not (attack or guarding or hum.Sit == true or sitting or waiting) then
		emote("Sit")
	end	
	if key == "b" and (attack or sitting) and not (guarding or hum.Sit == true or waiting) then
		sitting = false
	end	
	if key == "p" and not (attack or guarding or hum.Sit == true or sitting or waiting) then
		emote("Wait")
	end	
	if key == "p" and (attack or waiting) and not (guarding or hum.Sit == true or sitting) then
		waiting = false
	end	
	if key == "w" then
		holdingw = true
	end	
	if key == "w" and not (attack or guarding or hum.Sit == true or sitting or waiting) then
		if keycombo == "w" then
			if not inair then
				moves["run"]()
			else
				moves["dash"]()
			end
			keycombo = ""
			keycount = 0
			keytime = 0
		end
	end	
	if key == "s" then
		holdings = true
	end	
	if key == "s" and not (attack or guarding or hum.Sit == true or sitting or waiting) then
		if keycombo == "s" then
			if not inair then
				moves["dashb"]()
			else
				moves["dash"]()
			end
			keycombo = ""
			keycount = 0
			keytime = 0
		end
	end	
	if key == "c" then
		holdingc = true
	end	
	if key == "z" then
		holdingz = true
	end
	if key == "x" then
		holdingx = true
	end	
	if key == "q" then
		holdingq = true
	end
	if key == "e" then
		holdinge = true
	end
	if key == "v" then
		holdingv = true
	end
	if key == "e" and not (attack or guarding or hum.Sit == true or sitting or waiting) then
		if keycombo == "sd" then
			moves["charge"]()
		elseif keycombo == "sa" then
			moves["execution"]()
		elseif keycombo == "sad" then
			moves["burst"]()
		elseif keycombo == "sawada" then
			if instakill then
				chatter("Ain't your worst day.")
			else
				span4()
			end
			instakill = not instakill
		else
			moves["grab"]()
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end	
	if key == "z" and not (attack or guarding or hum.Sit == true or sitting or waiting) then
		if keycombo == "sd" then
			moves["grab"]()
		elseif keycombo == "sa" then
			moves["grab"]()
		else
			moves["light"]()
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end
	if key == "x" and not (attack or guarding or hum.Sit == true or sitting or waiting) then
		if keycombo == "dds" then
			moves["ascension"]()
		elseif keycombo == "sa" then
			moves["resemblance"]()
		elseif keycombo == "sasd" then
			moves["grab"]()
		elseif keycombo == "sd" then
			moves["grab"]()
		else
			moves["medium"]()
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end	
	if key == "c" and not (attack or guarding or hum.Sit == true or sitting or waiting) then
		if keycombo == "dsd" then
			moves["kaihou"]()
		elseif keycombo == "dds" then
			if checkninja() then moves["ascension"]() end
		elseif keycombo == "asd" then
			moves["grab"]()
		elseif keycombo == "sdsd" then
			moves["trigun"]()
		elseif keycombo == "dsass" then
			moves["grab"]()
		else
			moves["strong"]()
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end	
	if key == "q" and not (attack or guarding or hum.Sit == true or sitting or waiting) then
		if keycombo == "sd" then
			moves["amulet"]()
		elseif keycombo == "asd" then
			moves["eiga"]()
		elseif keycombo == "sasa" then
			moves["seal"]()
		elseif keycombo == "dsadd" then
			moves["giga"]()
		elseif keycombo == "dsadsa" then
			moves["fantasy"]()
		elseif keycombo == "adadad" then
			moves["drive"]()
		else
			moves["special"]()
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end
	if tick()-keycombotime<=keycombobreaktime then
		if key == "w" or key == "s" or key == "a" or key == "d" then
			keycombo=keycombo..key
			keycount = keycount + 1
			keytime = 10
			if keycount > 6 then
				keycombo = ""
				keycount = 0
				keytime = 0
			end
			if moves[keycombo] then
				--moves[keycombo]()
				keycombo = ""
				keycount = 0
				keytime = 0
			end
		end
	end
end)

mouse.KeyUp:connect(function(key)
	if key == "leftcontrol" and ducking and not (hum.Sit == true or sitting or waiting) then
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		ducking = false
	end
	if key == "2" and ducking and not (hum.Sit == true or sitting or waiting) then
		hum.WalkSpeed = ogws
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		ducking = false
	end
	if key == "r" and guarding and not (attack or hum.Sit == true or sitting or waiting) then
		if not ducking then
			hum.WalkSpeed = ogws
		end
		hum.JumpPower = ogjp
		hum.JumpHeight = ogjh
		guarding = false
	end
	if key == "w" then
		holdingw = false
	end	
	if key == "s" then
		holdings = false
	end	
	if key == "c" then
		holdingc = false
	end	
	if key == "z" then
		holdingz = false
	end
	if key == "x" then
		holdingx = false
	end	
	if key == "q" then
		holdingq = false
	end
	if key == "e" then
		holdinge = false
	end
	if key == "v" then
		holdingv = false
	end
	if key == "leftshift" and not (attack or ducking or guarding or hum.Sit == true or sitting or waiting) then
		hum.WalkSpeed = ogws
	end
	if key == "0" and not (attack or ducking or guarding or hum.Sit == true or sitting or waiting) then
		hum.WalkSpeed = ogws
	end
end)
spawn(function()
	while task.wait() do
		if not drive then
			if heat < 100 then
				heat = heat + 1
				if drivetext then
					drivetext.Text = heat.."%"
				end
				task.wait(0.15)
			end
		else
			if mp < 1000 then
				mp = mp + 1
				task.wait(0.15)
			end
			if drivetext then
				drivetext.Text = "Active."
			end
		end
	end
end)
rservice.Heartbeat:Connect(function()
	sine = tick()*60
	maxhp = hum.MaxHealth
	--key combo stuff
	keytime = keytime - 0.5
	if keytime < 0.5 then
		keycombo = ""
		keycount = 0
	end
	if statstext then
		statstext.Text = string.upper(keycombo)
	end
	if mptext ~= nil then
		mptext.Text = math.floor((mp / 1000) * 100) .. '%'
	end
	if mpbar ~= nil then
		mpbar.Size = udim2(math.clamp(mp / 1000, 0, 1), 0, 1, 0)
		mpbar.Position = udim2(math.clamp(1 - mpbar.Size.X.Scale, 0, 1))
	end
	if drivebar ~= nil then
		drivebar.Size = udim2(math.clamp(heat / 100, 0, 1), 0, 1, 0)
		drivebar.Position = udim2(math.clamp(1 - drivebar.Size.X.Scale, 0, 1))
	end
	if anim == "idle" then
		if not ducking then
			if not guarding then
				if hum.Health > (maxhp/2) or maxhp == math.huge then
					rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0- 0.125 * sin(sine / 25), 0+ 0.075 * sin(sine / 25)) * angles(rad(0), rad(0), rad(-0)), 0.1)
					nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.1)
					rs.C0 = rs.C0:Lerp(cframe(1.5, 0.45+ 0.075 * sin(sine / 25), 0- 0.125 * sin(sine / 25)) * angles(rad(0), rad(20), rad(3)) * rsC0, 0.1)
					ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.35, 0+ 0.125 * sin(sine / 25)) * angles(rad(10), rad(0), rad(25)) * lsC0, 0.1)
					rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.075 * sin(sine / 25), 0+ 0.125 * sin(sine / 25)) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-30), rad(0)), 0.1)
					lh.C0 = lh.C0:Lerp(cframe(-1.1, -1- 0.075 * sin(sine / 25), -0.25+ 0.125 * sin(sine / 25)) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.1)
					GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
				elseif hum.Health < (maxhp/2) and maxhp ~= math.huge then
					rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.5+ 0.1 * sin(sine / 35)) * angles(rad(50), rad(0), rad(-0)), 0.1)
					nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.1)
					rs.C0 = rs.C0:Lerp(cframe(1.5, 0.45+ 0.125 * sin(sine / 35), 0) * angles(rad(45), rad(45), rad(60)) * rsC0, 0.1)
					ls.C0 = ls.C0:Lerp(cframe(-1.4, 0.35+ 0.0666 * sin(sine / 35), -0.5) * angles(rad(105), rad(5), rad(85)) * lsC0, 0.1)
					rh.C0 = rh.C0:Lerp(cframe(1 , -0.5- 0.1 * sin(sine / 35), -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-30), rad(30)), 0.1)
					lh.C0 = lh.C0:Lerp(cframe(-1, -0.3- 0.1 * sin(sine / 35), -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(-45)), 0.1)
					GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
				end
			else
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0.25, -0.15) * angles(rad(0), rad(0), rad(45)), 0.15)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(-7.5), rad(-30)), 0.15)
				rs.C0 = rs.C0:Lerp(cframe(2.25, -0.45, -0.15) * angles(rad(60), rad(25), rad(-30)) * angles(rad(30), rad(0), rad(-0)) * rsC0, 0.15)
				ls.C0 = ls.C0:Lerp(cframe(-1, 0.5, -1) * angles(rad(120), rad(0), rad(45)) * angles(rad(0), rad(45), rad(12.5)) * lsC0, 0.15)
				rh.C0 = rh.C0:Lerp(cframe(1 , -0.875, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-15), rad(0)), 0.15)
				lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(30)), 0.15)
				GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.75, 2.8) *  angles(rad(25), rad(-15), rad(0)), 0.15)
			end
		else
			if not guarding then
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -2+ 0.05 * sin(sine / 30)) * angles(rad(-0), rad(0), rad(-0)), 0.15)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.15)
				rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5- 0.05 * sin(sine / 30), 0) * angles(rad(90), rad(0), rad(45)) * rsC0, 0.15)
				ls.C0 = ls.C0:Lerp(cframe(-0.875, 0.45- 0.05 * sin(sine / 30), -0.5) * angles(rad(110), rad(-50), rad(50)) * angles(rad(20), rad(-30), rad(15)) * lsC0, 0.15)
				rh.C0 = rh.C0:Lerp(cframe(1.5, -0.5- 0.05 * sin(sine / 30), -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(60), rad(0), rad(20)), 0.15)
				lh.C0 = lh.C0:Lerp(cframe(-1.25, -1- 0.05 * sin(sine / 30), -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(75), rad(-0), rad(-20)), 0.15)
				GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.65) *  angles(rad(10), rad(0), rad(0)), 1)
			else
				rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -2) * angles(rad(-0), rad(0), rad(-0)), 0.15)
				nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.15)
				rs.C0 = rs.C0:Lerp(cframe(1.5, 0.75, -0.45) * angles(rad(60), rad(25), rad(-30)) * angles(rad(30), rad(30), rad(-0)) * rsC0, 0.15)
				ls.C0 = ls.C0:Lerp(cframe(-1, 0.65, -0.75) * angles(rad(120), rad(0), rad(45)) * angles(rad(30), rad(25), rad(12.5)) * angles(rad(-0), rad(-0), rad(-17.5)) * lsC0, 0.15)
				rh.C0 = rh.C0:Lerp(cframe(1.5, -0.5, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(60), rad(0), rad(20)), 0.15)
				lh.C0 = lh.C0:Lerp(cframe(-1.25, -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(75), rad(-0), rad(-20)), 0.15)
				GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
			end
		end
	elseif anim == "walk" then
		--I really hate making walking animations. It's just too hard.
		if not guarding then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, sin((time()*8.88))/8.88) * angles(rad(-0), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 *cframe(0, -0.15, -0) * angles(rad(0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0  - (0.25 * cos(sine/8.88))) * angles(rad(0 + 35 * cos(sine/8.88)), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.5, 0  + (0.25 * cos(sine/8.88))) * angles(rad(0 - 35 * cos(sine/8.88)), rad(0), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * cframe(cos((time()*8.88))/4,cos((time()*8.88))/3,0) * angles(rad(0),rad(0),rad(-15) + sin((time()*8.88))/1.5),0.15)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * cframe(cos((time()*8.88))/4,-cos((time()*8.88))/3,0) * angles(rad(0),rad(0),rad(15) + sin((time()*8.88))/1.5),0.15)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.65) *  angles(rad(10), rad(0), rad(0)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0.25, -0.15) * angles(rad(0), rad(0), rad(45)), 0.15)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(-7.5), rad(-30)), 0.15)
			rs.C0 = rs.C0:Lerp(cframe(2.25, -0.45, -0.15) * angles(rad(60), rad(25), rad(-30)) * angles(rad(30), rad(0), rad(-0)) * rsC0, 0.15)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.5, -1) * angles(rad(120), rad(0), rad(45)) * angles(rad(0), rad(45), rad(12.5)) * lsC0, 0.15)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.875, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-15), rad(0)), 0.15)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(30)), 0.15)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.75, 2.8) *  angles(rad(25), rad(-15), rad(0)), 0.15)
		end	
	elseif anim == "run" then
		-- I hate making run animations.
		if not guarding then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.25 * sin(sine / 15)) * angles(rad(45- 5 * sin(sine / 15)), rad(0), rad(0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0.25) * angles(rad(0), rad(0), rad(90)) * angles(rad(-0), rad(-90), rad(0)) * angles(rad(30), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.875, 0) * angles(rad(0), rad(0), rad(-75)) * angles(rad(0), rad(30), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-0), rad(-25)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(30)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0.25, -0.15) * angles(rad(0), rad(0), rad(45)), 0.15)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(-7.5), rad(-30)), 0.15)
			rs.C0 = rs.C0:Lerp(cframe(2.25, -0.45, -0.15) * angles(rad(60), rad(25), rad(-30)) * angles(rad(30), rad(0), rad(-0)) * rsC0, 0.15)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.5, -1) * angles(rad(120), rad(0), rad(45)) * angles(rad(0), rad(45), rad(12.5)) * lsC0, 0.15)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.875, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-15), rad(0)), 0.15)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(30)), 0.15)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.75, 2.8) *  angles(rad(25), rad(-15), rad(0)), 0.15)
		end	
	elseif anim == "jump" then
		if not guarding then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-10), rad(15), rad(30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(0.875, 0.75, -0.45) * angles(rad(50), rad(60), rad(0)) * angles(rad(60), rad(30), rad(15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.25) * angles(rad(-30), rad(-15), rad(-30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.25, -0.75, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(-55)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -0.15, -1.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-15), rad(35)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-0), rad(0), rad(-0)), 0.15)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.15)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.75, -0.45) * angles(rad(60), rad(25), rad(-30)) * angles(rad(30), rad(30), rad(-0)) * rsC0, 0.15)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.65, -0.75) * angles(rad(120), rad(0), rad(45)) * angles(rad(30), rad(25), rad(12.5)) * angles(rad(-0), rad(-0), rad(-17.5)) * lsC0, 0.15)
			rh.C0 = rh.C0:Lerp(cframe(1.5, -0.5, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(60), rad(0), rad(20)), 0.15)
			lh.C0 = lh.C0:Lerp(cframe(-1.25, -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(75), rad(-0), rad(-20)), 0.15)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		end
	elseif anim == "fall" then
		if not guarding then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, -0.1, 0.1) * angles(rad(0), rad(0), rad(-45)) * angles(rad(30), rad(0), rad(10)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.875, 0) * angles(rad(0), rad(0), rad(90)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.375, 0.65, 0.3) * angles(rad(0), rad(90), rad(0)) * angles(rad(105), rad(-0), rad(-15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.45, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-45)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.75, -0.4) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(10)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		else
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-0), rad(0), rad(-0)), 0.15)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.15)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.75, -0.45) * angles(rad(60), rad(25), rad(-30)) * angles(rad(30), rad(30), rad(-0)) * rsC0, 0.15)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.65, -0.75) * angles(rad(120), rad(0), rad(45)) * angles(rad(30), rad(25), rad(12.5)) * angles(rad(-0), rad(-0), rad(-17.5)) * lsC0, 0.15)
			rh.C0 = rh.C0:Lerp(cframe(1.5, -0.5, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(60), rad(0), rad(20)), 0.15)
			lh.C0 = lh.C0:Lerp(cframe(-1.25, -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(75), rad(-0), rad(-20)), 0.15)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		end
	elseif anim == "swimidle" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0.25+ 0.15 * cos(sine / 30)) * angles(rad(75), rad(0), rad(25- 40 * cos(sine / 30))) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.25+ 0.15 * cos(sine / 30)) * angles(rad(80), rad(0), rad(-10+ 40 * cos(sine / 30))) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1, -0.5, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-0), rad(-25)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(10)), 0.3)
		GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
	elseif anim == "swim" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-15), rad(0), rad(0)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0) * angles(rad(90+ 80 * cos(sine / 10)), rad(0), rad(0)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0) * angles(rad(90+ 80 * cos(sine / 10)), rad(0), rad(-0)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1, -1, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-0), rad(-25+ 40 * cos(sine / 10))), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(10+ 40 * cos(sine / 10))), 0.3)
		GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
	elseif anim == "sit" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25+ 0.05 * sin(sine / 30)) * angles(rad(-0), rad(0), rad(-0)), 0.15)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.15)
		rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5- 0.05 * sin(sine / 30), 0) * angles(rad(90), rad(0), rad(45)) * rsC0, 0.15)
		ls.C0 = ls.C0:Lerp(cframe(-0.875, 0.45- 0.05 * sin(sine / 30), -0.5) * angles(rad(110), rad(-50), rad(50)) * angles(rad(20), rad(-30), rad(15)) * lsC0, 0.15)
		rh.C0 = rh.C0:Lerp(cframe(1.5, -0.5- 0.05 * sin(sine / 30), -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(60), rad(0), rad(20)), 0.15)
		lh.C0 = lh.C0:Lerp(cframe(-1.25, -1- 0.05 * sin(sine / 30), -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(75), rad(-0), rad(-20)), 0.15)
		GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.65) *  angles(rad(10), rad(0), rad(0)), 1)
	elseif anim == "climbidle" then
		rj.C0 = rj.C0:lerp(cframe(0,0 + 0.05 * cos(sine / 20),0)*angles(rad(0),rad(0),rad(0))*rjC0,0.3)
		nk.C0 = nk.C0:lerp(cframe(0,0.1,-0.5)*angles(rad(30),rad(0),rad(0))*nkC0,.1)
		rs.C0 = rs.C0:lerp(cframe(1.5, 0.75 - 0.05 * cos(sine / 20), -0.5) * angles(rad(130), rad(0), rad(-15)) * rsC0, 0.3)
		ls.C0 = ls.C0:lerp(cframe(-1.5, 0.75 - 0.05 * cos(sine / 20), -0.5) * angles(rad(130), rad(0), rad(15)) * lsC0, 0.3)
		rh.C0 = rh.C0:lerp(cframe(1,-0.5 - 0.05 * cos(sine / 20),-0.6)*angles(rad(-25),rad(0),rad(0))*angles(rad(0),rad(90),rad(0)),0.3)
		lh.C0 = lh.C0:lerp(cframe(-1,-1 - 0.05 * cos(sine / 20),-0.1)*angles(rad(11),rad(0),rad(0))*angles(rad(0),rad(-90),rad(0)),0.3)
		GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
	elseif anim == "climbing" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0+ 0.05 * sin(sine / 30)) * angles(rad(-0), rad(0), rad(-0)), 0.15)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.15)
		rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5- 0.05 * sin(sine / 30), 0) * angles(rad(90), rad(0), rad(45)) * rsC0, 0.15)
		ls.C0 = ls.C0:Lerp(cframe(-0.875, 0.45- 0.05 * sin(sine / 30), -0.5) * angles(rad(110), rad(-50), rad(50)) * angles(rad(20), rad(-30), rad(15)) * lsC0, 0.15)
		rh.C0 = rh.C0:Lerp(cframe(1.5, -0.5- 0.05 * sin(sine / 30), -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(60), rad(0), rad(20)), 0.15)
		lh.C0 = lh.C0:Lerp(cframe(-1.25, -1- 0.05 * sin(sine / 30), -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(75), rad(-0), rad(-20)), 0.15)
		GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.65) *  angles(rad(10), rad(0), rad(0)), 1)
	elseif anim == "sitground" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -2+ 0.05 * sin(sine / 30)) * angles(rad(-0), rad(0), rad(-0)), 0.15)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.15)
		rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5- 0.05 * sin(sine / 30), 0) * angles(rad(90), rad(0), rad(45)) * rsC0, 0.15)
		ls.C0 = ls.C0:Lerp(cframe(-0.875, 0.45- 0.05 * sin(sine / 30), -0.5) * angles(rad(110), rad(-50), rad(50)) * angles(rad(20), rad(-30), rad(15)) * lsC0, 0.15)
		rh.C0 = rh.C0:Lerp(cframe(1.5, -0.5- 0.05 * sin(sine / 30), -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(60), rad(0), rad(20)), 0.15)
		lh.C0 = lh.C0:Lerp(cframe(-1.25, -1- 0.05 * sin(sine / 30), -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(75), rad(-0), rad(-20)), 0.15)
		GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.65) *  angles(rad(10), rad(0), rad(0)), 1)
	elseif anim == "wait" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0- 0.125 * sin(sine / 25), 0+ 0.075 * sin(sine / 25)) * angles(rad(0), rad(0), rad(-0)), 0.1)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.1)
		rs.C0 = rs.C0:Lerp(cframe(1.15, 0.15+ 0.075 * sin(sine / 25), -1.25- 0.125 * sin(sine / 25)) * angles(rad(200), rad(20), rad(3)) * rsC0, 0.1)
		ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.35, 0+ 0.125 * sin(sine / 25)) * angles(rad(10), rad(0), rad(25)) * lsC0, 0.1)
		rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.075 * sin(sine / 25), 0+ 0.125 * sin(sine / 25)) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-30), rad(0)), 0.1)
		lh.C0 = lh.C0:Lerp(cframe(-1.1, -1- 0.075 * sin(sine / 25), -0.25+ 0.125 * sin(sine / 25)) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.1)
		GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
	elseif anim == "facepalm" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(30), rad(-20), rad(20)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.4, 0.5, 0.15) * angles(rad(0), rad(-30), rad(0)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-0.65, -0, -0.875) * angles(rad(-50), rad(25), rad(0)) * angles(rad(45), rad(90), rad(205)) * angles(rad(-5), rad(-0), rad(-10)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1, -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-10), rad(0)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(35), rad(0)), 0.3)
		GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
	elseif anim == "fail" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(15), rad(-0), rad(-0)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(35), rad(0), rad(0 + 15 * sin(sine / 7.5))), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.35, 0.6, -0.45) * angles(rad(90), rad(45), rad(-45)) * angles(rad(-30), rad(0), rad(-0)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.25- 0.05 * sin(sine / 7.5) , 0.5, -0.75) * angles(rad(85), rad(30), rad(85)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1.25, -0.6, -1.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(10), rad(-50)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1 , -0, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(10), rad(-5)), 0.3)
		GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
	elseif anim == "yes" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0- 0.125 * sin(sine / 25), 0+ 0.075 * sin(sine / 25)) * angles(rad(0), rad(0), rad(-0)), 0.1)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.025 * sin(sine / 25)) * angles(rad(0+ 35 * sin(sine / 5)), rad(0), rad(0)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.5, 0.45+ 0.075 * sin(sine / 25), 0- 0.125 * sin(sine / 25)) * angles(rad(0), rad(20), rad(3)) * rsC0, 0.1)
		ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.35, 0+ 0.125 * sin(sine / 25)) * angles(rad(10), rad(0), rad(25)) * lsC0, 0.1)
		rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.075 * sin(sine / 25), 0+ 0.125 * sin(sine / 25)) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-30), rad(0)), 0.1)
		lh.C0 = lh.C0:Lerp(cframe(-1.1, -1- 0.075 * sin(sine / 25), -0.25+ 0.125 * sin(sine / 25)) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.1)
		GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
	elseif anim == "no" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0- 0.125 * sin(sine / 25), 0+ 0.075 * sin(sine / 25)) * angles(rad(0), rad(0), rad(-0)), 0.1)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0+ 0.025 * sin(sine / 30)) * angles(rad(-0), rad(0), rad(0+ 60 * sin(sine / 5))), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.5, 0.45+ 0.075 * sin(sine / 25), 0- 0.125 * sin(sine / 25)) * angles(rad(0), rad(20), rad(3)) * rsC0, 0.1)
		ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.35, 0+ 0.125 * sin(sine / 25)) * angles(rad(10), rad(0), rad(25)) * lsC0, 0.1)
		rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.075 * sin(sine / 25), 0+ 0.125 * sin(sine / 25)) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-30), rad(0)), 0.1)
		lh.C0 = lh.C0:Lerp(cframe(-1.1, -1- 0.075 * sin(sine / 25), -0.25+ 0.125 * sin(sine / 25)) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.1)
		GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
	elseif anim == "wave" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0- 0.125 * sin(sine / 25), 0+ 0.075 * sin(sine / 25)) * angles(rad(0), rad(0), rad(-0)), 0.1)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.5, 0.45+ 0.075 * sin(sine / 25), 0- 0.125 * sin(sine / 25)) * angles(rad(0), rad(20), rad(3)) * rsC0, 0.1)
		ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.75+ 0.025 * sin(sine / 45), 0) * angles(rad(0), rad(0), rad(-160 + 45 * sin(sine/2.75))) * angles(rad(0), rad(90), rad(0)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.075 * sin(sine / 25), 0+ 0.125 * sin(sine / 25)) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-30), rad(0)), 0.1)
		lh.C0 = lh.C0:Lerp(cframe(-1.1, -1- 0.075 * sin(sine / 25), -0.25+ 0.125 * sin(sine / 25)) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.1)
		GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
	elseif anim == "compliment" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0,-0.15) * angles(rad(0), rad(10), rad(-20)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.65, 0) * angles(rad(0), rad(90), rad(-15)) * angles(rad(10), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.35, 0) * angles(rad(30), rad(0), rad(-15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1.05, 0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(2.5), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -0.75, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(15), rad(0)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0,-0) * angles(rad(0), rad(0), rad(0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.5) * angles(rad(45), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.35, -0.5) * angles(rad(75), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 3 then	
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0,-0) * angles(rad(0), rad(0), rad(0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1 , 0.5, -0.5) * angles(rad(90), rad(0), rad(-45)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.35, -0.25) * angles(rad(90), rad(0), rad(45)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0,-0) * angles(rad(0), rad(0), rad(0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.35, -0.5) * angles(rad(135), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , 0.5, -0.5) * angles(rad(45), rad(0), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.1) * angles(rad(5), rad(10), rad(-110)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.45, -0.45) * angles(rad(0), rad(60), rad(-0)) * angles(rad(20), rad(0), rad(-15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.45, 0.45, -0.15) * angles(rad(0), rad(-60), rad(-0)) * angles(rad(30), rad(0), rad(15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(0)) * angles(rad(-0), rad(-0), rad(-10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.875, -0.75, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-30), rad(0)) * angles(rad(-0), rad(-0), rad(15)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		end
	elseif anim == "dash" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(75), rad(0), rad(0+(15*spin))), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0.25) * angles(rad(0), rad(0), rad(90)) * angles(rad(-0), rad(-90), rad(0)) * angles(rad(30), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.875, 0) * angles(rad(0), rad(0), rad(-75)) * angles(rad(0), rad(30), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-0), rad(-25)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(30)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-20), rad(0), rad(0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.25, -0.25) * angles(rad(15), rad(25), rad(-10)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.15, -0.75) * angles(rad(60), rad(0), rad(45))  * angles(rad(60), rad(-45), rad(15)) * angles(rad(0), rad(0), rad(35)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1.075, -0.875, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-20), rad(-10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.6, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-7.5), rad(-10), rad(-15)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		end	
	elseif anim == "point" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0- 0.125 * sin(sine / 25), 0+ 0.075 * sin(sine / 25)) * angles(rad(0), rad(0), rad(-0)), 0.1)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.1)
		rs.C0 = rs.C0:Lerp(cframe(1.5, 0.45+ 0.075 * sin(sine / 25), 0- 0.125 * sin(sine / 25)) * angles(rad(0), rad(20), rad(3)) * rsC0, 0.1)
		ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(90), rad(0), rad(0)) * lsC0, 0.1)
		rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.075 * sin(sine / 25), 0+ 0.125 * sin(sine / 25)) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-30), rad(0)), 0.1)
		lh.C0 = lh.C0:Lerp(cframe(-1.1, -1- 0.075 * sin(sine / 25), -0.25+ 0.125 * sin(sine / 25)) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.1)
		GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
	elseif anim == "confused" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0- 0.125 * sin(sine / 25), 0+ 0.075 * sin(sine / 25)) * angles(rad(0), rad(0), rad(-0)), 0.1)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.1)
		rs.C0 = rs.C0:Lerp(cframe(1.5, 0.45+ 0.075 * sin(sine / 25), 0- 0.125 * sin(sine / 25)) * angles(rad(0), rad(20), rad(3)) * rsC0, 0.1)
		ls.C0 = ls.C0:Lerp(cframe(-1.15 , 0.65, 0.45) * angles(rad(210), rad(-25), rad(35)) * angles(rad(10), rad(-20), rad(30)) * angles(rad(-0), rad(-30), rad(-20)) * angles(rad(-0+ 15 * cos(sine/6)), rad(0), rad(5)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1 , -1- 0.075 * sin(sine / 25), 0+ 0.125 * sin(sine / 25)) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-30), rad(0)), 0.1)
		lh.C0 = lh.C0:Lerp(cframe(-1.1, -1- 0.075 * sin(sine / 25), -0.25+ 0.125 * sin(sine / 25)) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.1)
		GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
	elseif anim == "neck" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(-20), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.45, 0) * angles(rad(0), rad(20), rad(3)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.35, 0) * angles(rad(10), rad(0), rad(25)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-30), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.1)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 2 then		
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.45, 0) * angles(rad(0), rad(20), rad(3)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.35, 0) * angles(rad(10), rad(0), rad(25)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-30), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.1)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 3 then	
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(20), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.45, 0) * angles(rad(0), rad(20), rad(3)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.35, 0) * angles(rad(10), rad(0), rad(25)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-30), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.1)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 4 then		
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(20), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.45, 0) * angles(rad(0), rad(20), rad(3)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.35, 0) * angles(rad(10), rad(0), rad(25)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-30), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.1)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 5 then		
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.45, 0) * angles(rad(0), rad(20), rad(3)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.35, 0) * angles(rad(10), rad(0), rad(25)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-30), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.1)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		end		
	elseif anim == "lose" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(75)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(60), rad(60)) * angles(rad(15), rad(7.5), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(90), rad(0), rad(-45)) *  angles(rad(-10), rad(-30), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(15), rad(-25)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(60), rad(60)) * angles(rad(15), rad(7.5), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(90), rad(0), rad(-45)) *  angles(rad(-10), rad(-30), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(15), rad(-25)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-10), rad(10), rad(-60)), 0.15)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.15)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(60), rad(60)) * angles(rad(7.5), rad(15), rad(-0)) * rsC0, 0.15)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(90), rad(0), rad(-45)) *  angles(rad(-10), rad(-30), rad(0)) * lsC0, 0.15)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(15), rad(-25)), 0.15)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.15)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(50), rad(-20), rad(-15)), 0.2)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.2)
			rs.C0 = rs.C0:Lerp(cframe(1.45, 0.75, -0.45) * angles(rad(45), rad(30), rad(15)) * rsC0, 0.2)
			ls.C0 = ls.C0:Lerp(cframe(-1.075, 1, -0.75) * angles(rad(105), rad(-15), rad(60)) * angles(rad(60), rad(-0), rad(15)) * lsC0, 0.2)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-30), rad(30)), 0.2)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, 0.1, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(-45)) * angles(rad(-0), rad(-45), rad(-15)), 0.2)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		end
	elseif anim == "win" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(115)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-40)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.5, -0.5) * angles(rad(0), rad(35), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1 , 0.5, -0.45) * angles(rad(120), rad(10), rad(70)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-55), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(10), rad(0)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(98)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-20), rad(0), rad(-20)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.5, -0.5) * angles(rad(0), rad(35), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25 , 0.75, -0.25) * angles(rad(120), rad(-45), rad(15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-55), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(10), rad(0)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(98)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.5, -0.5) * angles(rad(0), rad(35), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, -0.15, -0.5) * angles(rad(65), rad(180), rad(75)) * angles(rad(25), rad(15), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-55), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(10), rad(0)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		end
	elseif anim == "win2" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-45)), 0.1)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(-10), rad(30)), 0.1)
		rs.C0 = rs.C0:Lerp(cframe(1.5, 0.45, 0) * angles(rad(0), rad(20), rad(3)) * rsC0, 0.1)
		ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.35, 0) * angles(rad(10), rad(0), rad(25)) * lsC0, 0.1)
		rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-30), rad(0)), 0.1)
		lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.1)
		GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
	elseif anim == "win3" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(30), rad(0), rad(0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(40), rad(0), rad(-0)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.5, -0.6) * angles(rad(90), rad(0), rad(60)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -0.45, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(0), rad(30)) * angles(rad(0), rad(75), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)) * angles(rad(-45), rad(0), rad(0)), 0.1)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(30), rad(20), rad(30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(60), rad(0), rad(30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, 0.25) * angles(rad(90), rad(0), rad(-105)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -0.15, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(0), rad(30)) * angles(rad(0), rad(75), rad(0)) * angles(rad(-15), rad(0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(0)) * angles(rad(-30), rad(0), rad(0)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		end
	elseif anim == "spawn" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-30)), 0.2)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(15)), 0.2)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.45, 0) * angles(rad(30), rad(20), rad(3)) * rsC0, 0.2)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.35, -0.75) * angles(rad(60), rad(0), rad(25)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1.1, -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.2)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-7.5), rad(60), rad(5)), 0.2)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-10), rad(0), rad(15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(-15)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.45, 0) * angles(rad(0), rad(-20), rad(3)) * angles(rad(20), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, -0) * angles(rad(60), rad(0), rad(-90)) * angles(rad(0), rad(-75), rad(-0)) * angles(rad(15), rad(0), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.1, -1, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-15), rad(-10)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-15), rad(30), rad(10)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		end	
	elseif anim == "spawn2" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-15), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.15, 0.5, -1) * angles(rad(75), rad(0), rad(-45)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0, -0.875) * angles(rad(75), rad(0), rad(45)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-60)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(30)), 0.1)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-75)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0.25) * angles(rad(90), rad(-30), rad(15)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(0.125, 0.3, -0.75) * angles(rad(60), rad(0), rad(60)) * angles(rad(-15), rad(-45), rad(0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(15), rad(-45)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(15)), 0.1)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-55)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.15, 1, -0.75) * angles(rad(90), rad(15), rad(-35)) * angles(rad(-10), rad(20), rad(0)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-0.3, -0.5, -0.875) * angles(rad(60), rad(0), rad(60)) * angles(rad(15), rad(35), rad(-40))* angles(rad(45), rad(-10), rad(50)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(15), rad(-45)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(15)), 0.1)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(15), rad(0), rad(0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.75, -0.75) * angles(rad(75), rad(75), rad(-0)) * angles(rad(30), rad(15), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(-30), rad(0), rad(-15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(15), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(-15), rad(0), rad(-30)), 0.5)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(0), rad(30)), 0.5)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 1.5, 0.25) * angles(rad(90), rad(90), rad(-0)) * angles(rad(30), rad(0), rad(90)) * angles(rad(0), rad(0), rad(-0)) * rsC0, 0.5)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(30), rad(0), rad(-45)) * angles(rad(0), rad(-20), rad(-0)) * lsC0, 0.5)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(15), rad(-30)), 0.5)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1.25, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(15)), 0.5)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		end
	elseif anim == "spawn3" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(-1.75,0.1,0.6) * angles(rad(0), rad(15), rad(10)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(-15), rad(5)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.4,0.3,0.4) * angles(rad(31.3), rad(-40), rad(55.5)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25,0.5,-1) * angles(rad(89.9), rad(-4.8), rad(15)) * angles(rad(-0), rad(-90), rad(-7.5)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.2,-0.6,0.1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-14.6), rad(-11.9), rad(-14.6)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.5, -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(0), rad(0)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(-0.25,0, -0.25) * angles(rad(5), rad(10), rad(45)), 0.25)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-20)), 0.25)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.471, 0.5) * angles(rad(20), rad(-15), rad(-5)) * angles(rad(75), rad(15), rad(45)) * rsC0, 0.25)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.5, 0) * angles(rad(25), rad(0), rad(25)) * lsC0, 0.25)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.5, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-10), rad(-15)), 0.25)
			lh.C0 = lh.C0:Lerp(cframe(-1.25, -0.75, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(-15)), 0.25)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(5), rad(0), rad(60)), 0.2)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.2)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0, 0) * angles(rad(115), rad(0), rad(-0)) * rsC0, 0.2)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0, 0) * angles(rad(115), rad(0), rad(0)) * lsC0, 0.2)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-45), rad(0)), 0.2)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(5), rad(20), rad(0)), 0.2)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.15) * angles(rad(-10), rad(-15), rad(60)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-55), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 1.45, -0.5) * angles(rad(165), rad(30), rad(65)) * angles(rad(10), rad(-60), rad(-75)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 1.45, -0.5) * angles(rad(165), rad(-30), rad(-65)) * angles(rad(10), rad(60), rad(75)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.925, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(-20)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(20)), 0.1)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-10), rad(0), rad(90)), 0.15)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(5), rad(0), rad(-60)), 0.15)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.55, 0.45) * angles(rad(30), rad(-50), rad(25)) * rsC0, 0.15)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.5, -0.25) * angles(rad(35), rad(-20), rad(-25)) * lsC0, 0.15)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1.15, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-45), rad(0)), 0.15)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.85, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(0), rad(0)), 0.15)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 6 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-15), rad(0), rad(105)), 0.15)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(5), rad(0), rad(-75)), 0.15)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.55, 0.45) * angles(rad(30), rad(-50), rad(50)) * rsC0, 0.15)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.5, -0.25) * angles(rad(35), rad(-20), rad(-50)) * lsC0, 0.15)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1.15, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-45), rad(-10)), 0.15)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.85, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(0), rad(0)), 0.15)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		end
	elseif anim == "taunt" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.05) * angles(rad(-5), rad(5), rad(-35)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(30)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.25 , -0.25, -0.3) * angles(rad(0), rad(0), rad(90)) * angles(rad(30), rad(-180), rad(-45)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.25, -0.25, -0.3) * angles(rad(0), rad(0), rad(-90)) * angles(rad(30), rad(180), rad(15)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-30), rad(-10)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(45), rad(10)), 0.3)
		GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
	elseif anim == "taunt2" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.45, 0) * angles(rad(0), rad(20), rad(3)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-2, -0.15, -0.45) * angles(rad(90), rad(0), rad(-60)) * angles(rad(0), rad(75), rad(15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.45, 0) * angles(rad(0), rad(20), rad(3)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.45, 1.15, -0.45) * angles(rad(90), rad(0), rad(-60)) * angles(rad(0), rad(75), rad(115)) * lsC0, 0.2)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		end
	elseif anim == "light" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-120)), 0.15)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(75)), 0.15)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.45, 0.15) * angles(rad(0), rad(-60), rad(0)) * angles(rad(30), rad(0), rad(-0)) * rsC0, 0.15)
			ls.C0 = ls.C0:Lerp(cframe(-0.45, 0.45, -0.75) * angles(rad(90), rad(-90), rad(0)) * angles(rad(75), rad(0), rad(15)) * lsC0, 0.15)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.15)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(0)), 0.15)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.25, -0.15) * angles(rad(15), rad(0), rad(-120)), 0.45)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(75)), 0.45)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.45, 0.15) * angles(rad(0), rad(-60), rad(0)) * angles(rad(60), rad(0), rad(-0)) * rsC0, 0.45)
			ls.C0 = ls.C0:Lerp(cframe(-1.45, 0.75, 0.25) * angles(rad(90), rad(-90), rad(0)) * angles(rad(-120), rad(0), rad(-15)) * lsC0, 0.45)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(15), rad(0)), 0.45)
			lh.C0 = lh.C0:Lerp(cframe(-1.15, -0.75, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-20), rad(30), rad(5)), 0.45)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.25, -0.15) * angles(rad(7.5), rad(0), rad(-120)), 0.45)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(75)), 0.45)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.45, 0.15) * angles(rad(0), rad(-60), rad(0)) * angles(rad(60), rad(0), rad(-0)) * rsC0, 0.45)
			ls.C0 = ls.C0:Lerp(cframe(-1.45, 0.75, 0.25) * angles(rad(90), rad(-90), rad(0)) * angles(rad(-15), rad(0), rad(-15)) * lsC0, 0.45)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(15), rad(0)), 0.45)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -0.75, -0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-15), rad(30), rad(5)), 0.45)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		end	
	elseif anim == "flight" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.125) * angles(rad(10), rad(0), rad(-105)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(75)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.25, -0.25) * angles(rad(90), rad(45), rad(-30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(60), rad(-30), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(15), rad(10)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.25, -0.15) * angles(rad(25), rad(0), rad(45)), 0.45)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.45)
			rs.C0 = rs.C0:Lerp(cframe(1.75, 1, -0.5) * angles(rad(90), rad(0), rad(45)) * angles(rad(10), rad(90), rad(10)) * rsC0, 0.45)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(60), rad(-30), rad(0)) * angles(rad(-75), rad(-15), rad(-15)) * lsC0, 0.45)
			rh.C0 = rh.C0:Lerp(cframe(0, -1, 1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-150), rad(0)), 0.45)
			lh.C0 = lh.C0:Lerp(cframe(-0.45, -0.75, -1.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(-45), rad(10)) * angles(rad(10), rad(-0), rad(-45)), 0.45)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0.15, 0.45, 3.5) *  angles(rad(100), rad(0), rad(-5)), 0.45)
		end	
	elseif anim == "dlight" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1.75) * angles(rad(-30), rad(0), rad(-0)), 0.25)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(35), rad(0), rad(0)), 0.25)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.875, 0) * angles(rad(90), rad(0), rad(45)) * angles(rad(-30), rad(60), rad(0)) * angles(rad(-30), rad(-0), rad(75)) * rsC0, 0.25)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 1, 0) * angles(rad(90), rad(0), rad(-75))* angles(rad(0), rad(-120), rad(60))* angles(rad(-45), rad(0), rad(0)) * lsC0, 0.25)
			rh.C0 = rh.C0:Lerp(cframe(1.15, -0.25, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(0), rad(90)) * angles(rad(30), rad(-0), rad(30)), 0.25)
			lh.C0 = lh.C0:Lerp(cframe(-1.25, -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(15), rad(-0), rad(90)) * angles(rad(45), rad(15), rad(15)), 0.25)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.65) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.25, -2) * angles(rad(-20), rad(0), rad(45)), 0.5)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(35), rad(-15), rad(-25)), 0.5)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.45, -0.45) * angles(rad(90), rad(0), rad(-45)) * rsC0, 0.5)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.75, 0.25) * angles(rad(90), rad(0), rad(-75))* angles(rad(0), rad(-120), rad(60))* angles(rad(-45), rad(-30), rad(0)) * lsC0, 0.5)
			rh.C0 = rh.C0:Lerp(cframe(1.5, -0.75, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(0), rad(45)) * angles(rad(-30), rad(45), rad(0)) * angles(rad(-15), rad(-0), rad(0)), 0.5)
			lh.C0 = lh.C0:Lerp(cframe(-1.25, -0.75, 0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(15), rad(-0), rad(90)) * angles(rad(30), rad(30), rad(15)), 0.5)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.65) *  angles(rad(10), rad(0), rad(0)), 1)
		end	
	elseif anim == "alight" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(30), rad(0), rad(0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.25, 0.25) * angles(rad(60), rad(-35), rad(30)) *  angles(rad(15), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.25) * angles(rad(50), rad(-20), rad(-30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.15, -0.25, -0.65) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-30), rad(-50)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.15, -0.5, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(15), rad(35)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.65) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0.25) * angles(rad(50), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(75)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, -0) * angles(rad(120), rad(0), rad(20)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.5, 0) * angles(rad(60), rad(0), rad(-75)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.15, -0.45, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-30), rad(-25)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.15, -0.5, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-30), rad(15), rad(15)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.65) *  angles(rad(10), rad(0), rad(0)), 1)
		end	
	elseif anim == "medium" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-10), rad(0), rad(-115)), 0.2)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.2)
			rs.C0 = rs.C0:Lerp(cframe(1.15 , 0.5, 0.45) * angles(rad(0), rad(-60), rad(-0)) * angles(rad(30), rad(0), rad(-0)) * rsC0, 0.2)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.25, -0.75) * angles(rad(60), rad(0), rad(60)) * lsC0, 0.2)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(0)) * angles(rad(-15), rad(0), rad(5)), 0.2)
			lh.C0 = lh.C0:Lerp(cframe(-0.45 , -0.25, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-45), rad(0)) * angles(rad(-45), rad(0), rad(30)), 0.2)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.3, -0.45) * angles(rad(-45), rad(5), rad(150)), 0.5)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-30), rad(0), rad(105)), 0.5)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.45, 0.15) * angles(rad(30), rad(-30), rad(0)) * angles(rad(90), rad(0), rad(30)) * angles(rad(-0), rad(30), rad(0)) * rsC0, 0.5)
			ls.C0 = ls.C0:Lerp(cframe(-0.45, 0.75, -1.25) * angles(rad(90), rad(-90), rad(0)) * angles(rad(75), rad(-30), rad(15)) * angles(rad(-45), rad(-0), rad(-15)) * lsC0, 0.5)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -0, -1.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(30), rad(45)) * angles(rad(-7.5), rad(-0), rad(0)), 0.5)
			lh.C0 = lh.C0:Lerp(cframe(-0.25, -1.5, 1.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(90), rad(0)) * angles(rad(-30), rad(0), rad(15)) * angles(rad(-10), rad(-30), rad(0)), 0.5)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-10), rad(0), rad(-115)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.15 , 0.5, 0.45) * angles(rad(0), rad(-60), rad(-0)) * angles(rad(30), rad(60), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.25, -0.75) * angles(rad(60), rad(0), rad(60)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(0)) * angles(rad(-15), rad(0), rad(5)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.15, -0.45, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-0), rad(0)) * angles(rad(-15), rad(0), rad(15)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		end	
	elseif anim == "fmedium" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.15)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.15)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.45, 0) * angles(rad(0), rad(35), rad(3)) * rsC0, 0.15)
			ls.C0 = ls.C0:Lerp(cframe(-1.15, 0.5, -0.75) * angles(rad(90), rad(0), rad(75)) * angles(rad(-0), rad(-45), rad(0)) * lsC0, 0.15)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-30), rad(0)), 0.15)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.15)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.15, 0) * angles(rad(0), rad(0), rad(-30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.15, 0.45, 0.25) * angles(rad(0), rad(35), rad(45))  * angles(rad(0), rad(-20), rad(15)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.45, 0.75, -0.45) * angles(rad(90), rad(0), rad(-30)) * angles(rad(25), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.25) * angles(rad(10), rad(-20), rad(-120)), 0.5)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(20), rad(70)), 0.5)
			rs.C0 = rs.C0:Lerp(cframe(1.45 , 0.25, -0.75) * angles(rad(90), rad(15), rad(-35)) *  angles(rad(30), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.25, -0.75) * angles(rad(0), rad(0), rad(15)) * angles(rad(15), rad(-10), rad(15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.75, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(45), rad(0)) * angles(rad(-15), rad(-0), rad(15)), 0.5)
			lh.C0 = lh.C0:Lerp(cframe(-1.25, -0.45, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(0)) * angles(rad(-30), rad(-0), rad(-15)), 0.5)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) * angles(rad(10), rad(0), rad(0)), 1)	
		end	
	elseif anim == "dmedium" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1.75) * angles(rad(30), rad(0), rad(-0)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1, 0.45, -1.5) * angles(rad(90), rad(90), rad(20)) * angles(rad(0), rad(0), rad(-0)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.45, 0.15, 0.15) * angles(rad(85), rad(45), rad(-20)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1 , -0.25, 0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-90), rad(0)) * angles(rad(30), rad(-0), rad(45)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1.25, -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(75), rad(-0), rad(-20)) * angles(rad(15), rad(-0), rad(0)), 0.3)
		GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.65) *  angles(rad(10), rad(0), rad(0)), 1)
	elseif anim == "amedium" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.125) * angles(rad(-10), rad(0), rad(0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(0), rad(30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.75, -0.4) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(0), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.45, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-0), rad(45)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.25, -0.15) * angles(rad(25), rad(0), rad(45)), 0.45)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.45)
			rs.C0 = rs.C0:Lerp(cframe(1.75, 0.5, -0.25) * angles(rad(90), rad(0), rad(45)) * angles(rad(10), rad(0), rad(0)) * rsC0, 0.45)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(60), rad(-30), rad(0)) * angles(rad(-75), rad(-15), rad(-15)) * lsC0, 0.45)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.75, -0.4) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-30), rad(0), rad(45)), 0.45)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.45, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-15), rad(15)), 0.45)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0.15, 0.45, 3.5) *  angles(rad(100), rad(0), rad(-5)), 0.45)
		end
	elseif anim == "strong" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(30), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.15, 0) * angles(rad(60), rad(0), rad(0)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.3 , 0.75, 0) * angles(rad(0), rad(0), rad(-60)) * angles(rad(30), rad(0), rad(-0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(-25)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -0.35, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-30)), 0.1)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(-30), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.3 , 0.45, 0) * angles(rad(-45), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.75, 0) * angles(rad(115), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.75, -1.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(0), rad(120)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1.15, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-0), rad(30)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(0), rad(0), rad(-0)), 0.25)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.25)
			rs.C0 = rs.C0:Lerp(cframe(1.3 , 0.45, 0) * angles(rad(15), rad(0), rad(0)) * rsC0, 0.25)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.15) * angles(rad(90), rad(0), rad(0)) * lsC0, 0.25)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.3, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(0), rad(15)), 0.25)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-0), rad(0)), 0.25)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		end	
	elseif anim == "fstrong" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35 , 0.5, -0.15) * angles(rad(90), rad(0), rad(45)) * angles(rad(0), rad(60), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0.75) * angles(rad(50), rad(0), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-15), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.25, -1.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-15), rad(0), rad(-115)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(90)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.25, 0) * angles(rad(0), rad(-90), rad(-60)) * angles(rad(-20), rad(15), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.45, 0.75, -0) * angles(rad(0), rad(0), rad(-90)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(0), rad(-75)) * angles(rad(15), rad(-0), rad(15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.25, -0.25, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-90), rad(20), rad(0)) * angles(rad(0), rad(0), rad(25)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		end	
	elseif anim == "dstrong" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -2.5) * angles(rad(-120), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0.25) * angles(rad(45), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0.25) * angles(rad(160), rad(-90), rad(-5)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.5, -0.25) * angles(rad(160), rad(90), rad(5)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.45, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(75)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-75)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -1.5) * angles(rad(-135), rad(0), rad(-0)), 0.25)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0.25) * angles(rad(45), rad(0), rad(0)), 0.25)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, -0.25) * angles(rad(160), rad(-90), rad(-20)) * rsC0, 0.25)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.5, -0.25) * angles(rad(160), rad(90), rad(20)) * lsC0, 0.25)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.25)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.25)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(-60), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0.25) * angles(rad(60), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.75, 0.15) * angles(rad(90), rad(0), rad(60)) * angles(rad(-30), rad(30), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.75, 0.15) * angles(rad(90), rad(0), rad(-60)) * angles(rad(-30), rad(-30), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-25)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(45)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		end	
	elseif anim == "astrong" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(0), rad(60)) * angles(rad(30), rad(15), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 1.25, 0.5) * angles(rad(30), rad(0), rad(-100)) * angles(rad(75), rad(-0), rad(-45)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.25, -0.75, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(-25)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, -0.5, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-15), rad(60)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(15), rad(0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(90)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.25, 0) * angles(rad(0), rad(0), rad(90)) * angles(rad(0), rad(-45), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0), rad(0), rad(-75)) * angles(rad(0), rad(-0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -0.75, -1.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(75), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.15, -1.25, -0) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(60)) * angles(rad(25), rad(0), rad(15)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		end
	elseif anim == "special" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.45, 0) * angles(rad(-20), rad(20), rad(15)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.35, 0) * angles(rad(45), rad(0), rad(-10)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-30), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.1)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.25, -0.75) * angles(rad(90), rad(0), rad(-90)) * angles(rad(-30), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0, 0.35, -0.75) * angles(rad(90), rad(0), rad(75)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(75), rad(0)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		end	
	elseif anim == "charge" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(30), rad(0), rad(-0)), 0.15)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.15)
			rs.C0 = rs.C0:Lerp(cframe(0.75 , -0.15, -1.5) * angles(rad(165), rad(-90), rad(-30)) * rsC0, 0.15)
			ls.C0 = ls.C0:Lerp(cframe(-0.75, -0.15, -1.5) * angles(rad(165), rad(90), rad(30)) * lsC0, 0.15)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(30)), 0.15)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-30)), 0.15)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-5), rad(0), rad(-0)), 0.5)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-15), rad(0), rad(0)), 0.5)
			rs.C0 = rs.C0:Lerp(cframe(1.15,0.15, 0) * angles(rad(90), rad(-55), rad(15)) * angles(rad(60), rad(10), rad(0)) * rsC0, 0.5)
			ls.C0 = ls.C0:Lerp(cframe(-1.15,0.15, 0) * angles(rad(90), rad(55), rad(-15)) * angles(rad(60), rad(-10), rad(0)) * lsC0, 0.5)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-30), rad(-5)), 0.5)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1.05, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(5)), 0.5)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		end
	elseif anim == "fgrab" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(-15), rad(5), rad(-45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-35), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, -0.45) * angles(rad(-15), rad(45), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.3, -0.5) * angles(rad(75), rad(0), rad(-30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.05, -1, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(45), rad(-20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1.1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(15)) * angles(rad(-10), rad(-0), rad(0)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(35), rad(0), rad(-0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0) * angles(rad(35), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.4, -1.25) * angles(rad(140), rad(55), rad(45)) * angles(rad(-40), rad(-0), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.05, -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.9, -1, -0.5) * angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(5), rad(-20)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(12.5), rad(0), rad(-0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0) * angles(rad(35), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.4, -1.25) * angles(rad(140), rad(55), rad(45)) * angles(rad(-40), rad(-0), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.05, -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.9, -1, -0.5) * angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(5), rad(-20)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0) * angles(rad(15), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0.4, -1.25) * angles(rad(100), rad(0), rad(35)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.05, -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(15)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0) * angles(rad(15), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.25, -0.5) * angles(rad(50), rad(0), rad(15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.05, -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 6 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(-15), rad(5), rad(-45)), 0.15)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-35), rad(0), rad(-30)), 0.15)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, -0.45) * angles(rad(-15), rad(45), rad(0)) * rsC0, 0.15)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.3, -0.5) * angles(rad(75), rad(0), rad(-30)) * lsC0, 0.15)
			rh.C0 = rh.C0:Lerp(cframe(1.05, -1, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(45), rad(-20)), 0.15)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1.1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(15)) * angles(rad(-10), rad(-0), rad(0)), 0.15)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 7 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(0)), 0.55)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(35), rad(0), rad(-0)), 0.55)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0) * angles(rad(35), rad(0), rad(0)) * rsC0, 0.55)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.4, -1.25) * angles(rad(140), rad(55), rad(45)) * angles(rad(-40), rad(-0), rad(-0)) * lsC0, 0.55)
			rh.C0 = rh.C0:Lerp(cframe(1.05, -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-0), rad(0)), 0.55)
			lh.C0 = lh.C0:Lerp(cframe(-0.9, -1, -0.5) * angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(5), rad(-20)), 0.55)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		end	
	elseif anim == "bgrab" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(10), rad(20)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.5, -0.5) * angles(rad(-45), rad(0), rad(30)) * angles(rad(30), rad(35), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(90), rad(0), rad(-60)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0.3) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-60), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.15, -0.95, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-30), rad(0)) * angles(rad(-20), rad(-0), rad(0)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0.5, -0.15) * angles(rad(-20), rad(0), rad(210)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.4 , 0.45, 0.15) * angles(rad(45), rad(0), rad(0)) * angles(rad(0), rad(-30), rad(30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, -0.25) * angles(rad(15), rad(0), rad(-50)) * angles(rad(75), rad(-60), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.75, -0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5 , -1, 0.5) *  angles(rad(-10), rad(-90), rad(0)) * angles(rad(0), rad(75), rad(-15)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(-0,0.75, -0.75) * angles(rad(-45), rad(60), rad(135)), 0.666)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.666)
			rs.C0 = rs.C0:Lerp(cframe(1.4 , 0.45, 0.15) * angles(rad(45), rad(0), rad(0)) * angles(rad(0), rad(-30), rad(30)) * rsC0, 0.666)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.75, -0.75) * angles(rad(15), rad(0), rad(-45)) * angles(rad(75), rad(-60), rad(20)) * lsC0, 0.666)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.25, -0.5) *  angles(rad(60), rad(90), rad(0)) * angles(rad(-20), rad(65), rad(-25)), 0.666)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1.75, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(55), rad(0)) * angles(rad(65), rad(-0), rad(-30)), 0.666)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0.45, -0.15) * angles(rad(-5), rad(10), rad(120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25 , 0.5, -0.75) * angles(rad(0), rad(60), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.4, -0.75) * angles(rad(0), rad(-90), rad(0)) * angles(rad(15), rad(0), rad(-20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.75, -1) * angles(rad(15), rad(90), rad(0)) * angles(rad(0), rad(60), rad(-20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, 0.75) * angles(rad(12.5), rad(-90), rad(0)) * angles(rad(0), rad(60), rad(0)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		end
	elseif anim == "agrab" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(25), rad(0), rad(105)), 0.125)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-10), rad(0), rad(-35)), 0.125)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.75, 0) * angles(rad(0), rad(0), rad(35)) * angles(rad(35), rad(-0), rad(-0)) * rsC0, 0.125)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.25, -0.25) * angles(rad(90), rad(-40), rad(-0)) * lsC0, 0.125)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.5, -0.25) *  angles(rad(-20), rad(90), rad(-15)) * angles(rad(-30), rad(-60), rad(-45)), 0.125)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-10), rad(-10), rad(25)), 0.125)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.25) * angles(rad(90), rad(0), rad(0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-35), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.25, 0.5) * angles(rad(0), rad(-75), rad(0))*  angles(rad(60), rad(0), rad(30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1 , 1.75, -0.25) * angles(rad(175), rad(-60), rad(15))*  angles(rad(30), rad(0), rad(15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.25, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(0), rad(-25)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-0), rad(10)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		end
	elseif anim == "execution" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1.75, -0.25) * angles(rad(30), rad(0), rad(-0)), 0.45)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.45)
			rs.C0 = rs.C0:Lerp(cframe(1.3 , 0.45, 0) * angles(rad(15), rad(0), rad(0)) * rsC0, 0.45)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, -0.15) * angles(rad(90), rad(0), rad(0)) * lsC0, 0.45)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.3, -1.15) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(0), rad(30)), 0.45)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-0), rad(0)), 0.45)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.125)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(0)), 0.125)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.5, -0.5) * angles(rad(90), rad(0), rad(-45)) * rsC0, 0.125)
			ls.C0 = ls.C0:Lerp(cframe(-1, 0, -0.65) * angles(rad(75), rad(0), rad(52.5)) * lsC0, 0.125)
			rh.C0 = rh.C0:Lerp(cframe(0.875, -1, 0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-45), rad(0)), 0.125)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.125)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(0), rad(0), rad(-135)), 0.075)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(60)), 0.075)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.15, -0.5) * angles(rad(90), rad(0), rad(-45)) * angles(rad(0), rad(-90), rad(-0)) * angles(rad(45), rad(0), rad(-0)) * rsC0, 0.075)
			ls.C0 = ls.C0:Lerp(cframe(-0.1, 0.7, -0.5) * angles(rad(90), rad(0), rad(55)) * angles(rad(0), rad(-90), rad(-0)) * angles(rad(-45), rad(0), rad(20)) * lsC0, 0.075)
			rh.C0 =  rh.C0:Lerp(cframe(1, -0.25, -0.5) * angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-40), rad(-0)), 0.075)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.25, -0.5) * angles(rad(0), rad(-90), rad(0)) * angles(rad(-45), rad(20), rad(0)), 0.075)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -1) * angles(rad(30), rad(15), rad(60)), 1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(30), rad(-30), rad(-45)), 1)
			rs.C0 = rs.C0:Lerp(cframe(0.15, 0.45, -1) * angles(rad(90), rad(0), rad(-45)) * angles(rad(0), rad(90), rad(-0)) * angles(rad(0), rad(30), rad(15)) * rsC0, 1)
			ls.C0 = ls.C0:Lerp(cframe(-0.45, 0, -0.5) * angles(rad(90), rad(0), rad(-45)) * angles(rad(0), rad(90), rad(-0)) * angles(rad(0), rad(30), rad(15)) * lsC0, 1)
			rh.C0 = rh.C0:Lerp(cframe(1, 0.5, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-20), rad(30))* angles(rad(-10), rad(-0), rad(0)), 1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, 0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(30), rad(0)) * angles(rad(-30), rad(-0), rad(-15)), 1)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(0), rad(0), rad(-45)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(60)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.15, -0.5) * angles(rad(90), rad(0), rad(-45)) * angles(rad(0), rad(-90), rad(-0)) * angles(rad(45), rad(0), rad(-0)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-0.1, 0.7, -0.5) * angles(rad(90), rad(0), rad(55)) * angles(rad(0), rad(-90), rad(-0)) * angles(rad(-45), rad(0), rad(20)) * lsC0, 0.1)
			rh.C0 =  rh.C0:Lerp(cframe(1, -1, -0.15) * angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-40), rad(-0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1, -0.15) * angles(rad(0), rad(-90), rad(0)) * angles(rad(-15), rad(20), rad(0)), 0.1)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		end
	elseif anim == "gunexecute" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(20), rad(0), rad(0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(10)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0) * angles(rad(30), rad(0), rad(0)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.35, 0) * angles(rad(0), rad(0), rad(30)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-40), rad(10)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.85, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(-15)), 0.1)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(-45), rad(0), rad(0)), 0.6)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(40), rad(0), rad(0)), 0.6)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(-45), rad(0), rad(-0)) * rsC0, 0.6)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0.75) * angles(rad(150), rad(0), rad(0)) * lsC0, 0.6)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-45)), 0.6)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(85)), 0.6)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(-45), rad(0), rad(0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(40), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(-45), rad(0), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.75, 0, -1.25) * angles(rad(45), rad(0), rad(0)) * lsC0, 0.666)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-45)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(85)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(-45), rad(0), rad(0)), 0.6)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(40), rad(0), rad(0)), 0.6)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(-45), rad(0), rad(-0)) * rsC0, 0.6)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0.75) * angles(rad(150), rad(0), rad(0)) * lsC0, 0.0666)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-45)), 0.6)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(85)), 0.6)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(10)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0) * angles(rad(30), rad(0), rad(0)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.35, 0) * angles(rad(30), rad(0), rad(15)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-40), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(20), rad(0)), 0.1)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		end
	elseif anim == "gunkill" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(10), rad(0), rad(40)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.35, 0.5, -0.25) * angles(rad(-15), rad(35), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.5, 0) * angles(rad(45), rad(0), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(30), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, -1, 0.5) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(75), rad(0)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1, 0) * angles(rad(-0), rad(-0), rad(-90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.35, -0.25) * angles(rad(-25), rad(15), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-0.5, 0.5, -0.9) * angles(rad(75), rad(25), rad(105)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1 , 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-45), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.875, -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(45), rad(0)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1, -0.15) * angles(rad(-5), rad(-0), rad(-75)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(45)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.45, 0.5, -0.25) * angles(rad(0), rad(30), rad(0)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.45, 0.875, -0) * angles(rad(0), rad(-60), rad(-90)) * angles(rad(0), rad(-0), rad(-30)) * angles(rad(15), rad(-0), rad(0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.75 , 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-30), rad(-0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-0.875, -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(5)), 0.1)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1, 0) * angles(rad(-10), rad(-0), rad(-75)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(45)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.45, 0.5, -0.25) * angles(rad(0), rad(30), rad(0)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.45, 1.75, -0) * angles(rad(0), rad(-60), rad(-90)) * angles(rad(0), rad(-0), rad(-45)) * angles(rad(15), rad(-0), rad(0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.75 , 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-30), rad(-0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-0.875, -1.15, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(5), rad(45), rad(5)), 0.1)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1, 0) * angles(rad(-5), rad(-0), rad(-75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.45, 0.5, -0.25) * angles(rad(0), rad(15), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.75, 0.5, 0.15) * angles(rad(65), rad(180), rad(85)) * angles(rad(-0), rad(-0), rad(0)) * angles(rad(30), rad(-0), rad(-30)) * rsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1 , 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-30), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.875, -1.15, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(5)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 6 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1, 0) * angles(rad(-5), rad(-0), rad(-75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.45, 0.5, -0.25) * angles(rad(0), rad(15), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0.15) * angles(rad(65), rad(180), rad(85)) * angles(rad(-0), rad(-0), rad(0)) * angles(rad(20), rad(-0), rad(-30)) * rsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1 , 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-30), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.875, -1.15, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(45), rad(5)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 7 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-1, 0) * angles(rad(-0), rad(-0), rad(-90)), 0.75)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(30)), 0.75)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.35, -0.25) * angles(rad(-25), rad(15), rad(0)) * rsC0, 0.75)
			ls.C0 = ls.C0:Lerp(cframe(-0.5, 0.5, -0.9) * angles(rad(75), rad(25), rad(105)) * lsC0, 0.75)
			rh.C0 = rh.C0:Lerp(cframe(1, -1 , 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(-45), rad(-0)), 0.75)
			lh.C0 = lh.C0:Lerp(cframe(-0.875, -1, 0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(45), rad(0)), 0.75)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		end
	elseif anim == "ascension" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(30), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.3 , 0.75, 0) * angles(rad(0), rad(0), rad(60)) * angles(rad(30), rad(0), rad(-0)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.3, 0) * angles(rad(60), rad(0), rad(-45)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(1.1, -0.35, -0.45) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(0), rad(30)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-7.5), rad(-0), rad(25)), 0.1)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(-40), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.75, 0) * angles(rad(195), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(180), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1.15, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-55)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1.15, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-60)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(-150), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.75, 0) * angles(rad(150), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(120), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1.15, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-90)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1.15, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-120)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(-210), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.75, 0) * angles(rad(90), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(75), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1.15, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(-30)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1.15, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(-90)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 5 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(-270), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.75, 0) * angles(rad(90), rad(0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(75), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.25, -0.45, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-30), rad(-55)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -0.15, -1.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(-15), rad(35)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		end	
	elseif anim == "resemblance" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(0), rad(-10), rad(-75)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(-15)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.75, -0) * angles(rad(-20), rad(25), rad(60)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, 0) * angles(rad(0), rad(0), rad(-60)) * angles(rad(45), rad(-30), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-15), rad(-60), rad(50)) * angles(rad(10), rad(-0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -1.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(45)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(10), rad(-0), rad(180)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-20), rad(0), rad(-0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0.25) * angles(rad(-20), rad(-25), rad(0)) * angles(rad(-30), rad(0), rad(45)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 1.25, -0.75) * angles(rad(0), rad(0), rad(-120)) * angles(rad(115), rad(30), rad(-60)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(0), rad(135)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.75, -0.75) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(30)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(20), rad(-0), rad(90)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-30)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.35, 0.45) * angles(rad(-0), rad(-125), rad(0)) * angles(rad(75), rad(0), rad(-45)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.75, 1, -0.5) * angles(rad(0), rad(0), rad(-120)) * angles(rad(75), rad(45), rad(15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, 1.15, -1) *  angles(rad(0), rad(120), rad(0)) * angles(rad(-60), rad(-45), rad(160)) * angles(rad(5), rad(0), rad(-20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -1.25, -0.05) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(45), rad(0), rad(15)) * angles(rad(0), rad(0), rad(15)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0) * angles(rad(-7.5), rad(-0), rad(45)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(25), rad(-0), rad(-45)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 1.15, 0.25) * angles(rad(-0), rad(-125), rad(0)) * angles(rad(90), rad(-50), rad(-90)) * angles(rad(45), rad(30), rad(-45)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.75, -0) * angles(rad(0), rad(0), rad(-120)) * angles(rad(15), rad(15), rad(15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-25), rad(-15)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.75, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-30), rad(30), rad(75))* angles(rad(-10), rad(-25), rad(0)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		end	
	elseif anim == "eiga" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(0.5, 0.5, -0.75) * angles(rad(60), rad(-5), rad(-80)) * angles(rad(0), rad(75), rad(-15)) * rsC0, 0.15)
			ls.C0 = ls.C0:Lerp(cframe(0.25, -0.25, -1.25) * angles(rad(60), rad(-5), rad(80)) * angles(rad(30), rad(15), rad(60)) * lsC0, 0.15)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-30), rad(0)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)), 0.1)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.25, 0) * angles(rad(25), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.75, 0) * angles(rad(0), rad(0), rad(105)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.75, 0) * angles(rad(0), rad(0), rad(-105)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-7.5), rad(-30), rad(0)) * angles(rad(-0), rad(-0), rad(25)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.1, -1, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(15), rad(0)) * angles(rad(-0), rad(-0), rad(-25)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.25, 0) * angles(rad(-30), rad(0), rad(-0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, -0.25, 0) * angles(rad(60), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.75, 0) * angles(rad(0), rad(0), rad(105)) * angles(rad(0), rad(50), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.75, 0) * angles(rad(0), rad(0), rad(-105)) * angles(rad(0), rad(-30), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -1, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-5), rad(0), rad(0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1.25, -0.75, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(30), rad(45)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(-10), rad(0), rad(0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(60), rad(90)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.75, 0.75, 0.45) * angles(rad(60), rad(-30), rad(-100)) * angles(rad(-30), rad(0), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1, -0.75, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(0), rad(-55)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.15, -1.15) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(35)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		end
	elseif anim == "eigav" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -2.25) * angles(rad(90), rad(0), rad(0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-35), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.25, 0.5) * angles(rad(0), rad(-75), rad(0))*  angles(rad(60), rad(0), rad(30)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1 , 1.75, -0.25) * angles(rad(175), rad(-60), rad(15))*  angles(rad(30), rad(0), rad(15)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.25, -0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(0), rad(-25)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -0.45) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-0), rad(10)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)	
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.65) * angles(rad(20), rad(-30), rad(-60)), 0.125)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.125)
			rs.C0 = rs.C0:Lerp(cframe(1.35, 0.75, 0.25) * angles(rad(-65), rad(-20), rad(35)) * angles(rad(30), rad(-30), rad(15)) * rsC0, 0.125)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.5, 0) * angles(rad(115), rad(0), rad(-45)) * lsC0, 0.125)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.45, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(0), rad(30))* angles(rad(-0), rad(-0), rad(-20)), 0.125)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.25, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-45), rad(-0), rad(-20))* angles(rad(15), rad(-0), rad(-15)), 0.125)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.15) * angles(rad(10), rad(-15), rad(0)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0) * angles(rad(-45), rad(20), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.75, 0) * angles(rad(195), rad(0), rad(-20)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.85, 0.75) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-20), rad(-55), rad(-45)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -1, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(15), rad(-0), rad(20)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.25) * angles(rad(0), rad(-0), rad(90)), 0.5)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(20), rad(0), rad(-75)), 0.5)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.5, 0.75) * angles(rad(0), rad(-75), rad(-10)) * angles(rad(60), rad(15), rad(-0)) * rsC0, 0.5)
			ls.C0 = ls.C0:Lerp(cframe(-1.25, 0.5, -0.75) * angles(rad(105), rad(10), rad(25)) * lsC0, 0.5)
			rh.C0 = rh.C0:Lerp(cframe(0.25, -0.875, 0.75) *  angles(rad(20), rad(90), rad(0)) * angles(rad(0), rad(-75), rad(-55)) * angles(rad(0), rad(-30), rad(15)), 0.5)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, -0.75, -1.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(-60), rad(-20)), 0.5)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		end	
	elseif anim == "kaihou" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(45), rad(0), rad(0+(15*spin))), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0.25) * angles(rad(0), rad(0), rad(90)) * angles(rad(-0), rad(-90), rad(0)) * angles(rad(30), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.875, 0) * angles(rad(0), rad(0), rad(-75)) * angles(rad(0), rad(30), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-0), rad(-25)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(30)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(135), rad(0), rad(0+(15*spin))), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0.25) * angles(rad(0), rad(0), rad(90)) * angles(rad(-0), rad(-90), rad(0)) * angles(rad(30), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.875, 0) * angles(rad(0), rad(0), rad(-75)) * angles(rad(0), rad(30), rad(-0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-10), rad(-0), rad(-25)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.5, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(30)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		end	
	elseif anim == "giga" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(50), rad(10), rad(-35)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-30), rad(0), rad(20)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0) * angles(rad(90), rad(0), rad(90)) * angles(rad(35), rad(45), rad(-45)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.25, 0.75) * angles(rad(0), rad(30), rad(-0)) * angles(rad(115), rad(-0), rad(0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1.5, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(35), rad(0)) * angles(rad(0), rad(-0), rad(-15)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1, 0.35, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(35), rad(-30)) * angles(rad(-10), rad(-0), rad(-10)), 0.1)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, -0.25, -0.15) * angles(rad(0), rad(15), rad(-115)), 0.75)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.75)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.25, 0.5) * angles(rad(0), rad(-60), rad(0)) * angles(rad(55), rad(75), rad(0)) * rsC0, 0.75)
			ls.C0 = ls.C0:Lerp(cframe(-2, 0.25, 0.15) * angles(rad(25), rad(-60), rad(-115)) * angles(rad(0), rad(0), rad(-15)) * lsC0, 0.75)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-35), rad(0), rad(-15)), 0.75)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.875, 1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(60), rad(30)) * angles(rad(-10), rad(-0), rad(-15)), 0.75)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.15) * angles(rad(20), rad(0), rad(-30)), 0.2)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.2)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.5, 0.75) * angles(rad(15), rad(-15), rad(50)) * angles(rad(75), rad(30), rad(-0)) * rsC0, 0.2)
			ls.C0 = ls.C0:Lerp(cframe(-1.4 , 0, -0.45) * angles(rad(45), rad(0), rad(0)) * angles(rad(75), rad(-0), rad(30)) * lsC0, 0.2)
			rh.C0 = rh.C0:Lerp(cframe(0.5 , -1, 0.5) *  angles(rad(-10), rad(90), rad(0)) * angles(rad(-15), rad(-30), rad(15)), 0.2)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.75, 0.25) *  angles(rad(10), rad(-90), rad(0)) * angles(rad(-0), rad(75), rad(-15)), 0.2)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.75, -0.25) * angles(rad(10), rad(20), rad(60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-20)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.75, -0.5) * angles(rad(15), rad(-45), rad(60)) * angles(rad(75), rad(25), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4 , 0.5, -0.45) * angles(rad(45), rad(0), rad(0)) * angles(rad(25), rad(-0), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1.5, 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(30), rad(-50), rad(-20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.5, -0.75) *  angles(rad(10), rad(-90), rad(0)) * angles(rad(-0), rad(-0), rad(-10)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		end
	elseif anim == "trigun" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.5) * angles(rad(50), rad(10), rad(-35)), 0.1)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-30), rad(0), rad(20)), 0.1)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.5, 0) * angles(rad(90), rad(0), rad(90)) * angles(rad(35), rad(45), rad(-45)) * rsC0, 0.1)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.25, 0.75) * angles(rad(0), rad(30), rad(-0)) * angles(rad(115), rad(-0), rad(0)) * lsC0, 0.1)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1.5, -1) *  angles(rad(0), rad(90), rad(0)) * angles(rad(10), rad(35), rad(0)) * angles(rad(0), rad(-0), rad(-15)), 0.1)
			lh.C0 = lh.C0:Lerp(cframe(-1, 0.35, -0.25) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(35), rad(-30)) * angles(rad(-10), rad(-0), rad(-10)), 0.1)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0, -0.25, -0.15) * angles(rad(0), rad(15), rad(-115)), 0.75)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.75)
			rs.C0 = rs.C0:Lerp(cframe(1.25, 0.25, 0.5) * angles(rad(0), rad(-60), rad(0)) * angles(rad(55), rad(75), rad(0)) * rsC0, 0.75)
			ls.C0 = ls.C0:Lerp(cframe(-2, 0.25, 0.15) * angles(rad(25), rad(-60), rad(-115)) * angles(rad(0), rad(0), rad(-15)) * lsC0, 0.75)
			rh.C0 = rh.C0:Lerp(cframe(1 , -0.75, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-35), rad(0), rad(-15)), 0.75)
			lh.C0 = lh.C0:Lerp(cframe(-1 , -0.875, 1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(60), rad(30)) * angles(rad(-10), rad(-0), rad(-15)), 0.75)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 3 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.15) * angles(rad(20), rad(0), rad(-30)), 0.2)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(30)), 0.2)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.5, 0.75) * angles(rad(15), rad(-15), rad(50)) * angles(rad(75), rad(30), rad(-0)) * rsC0, 0.2)
			ls.C0 = ls.C0:Lerp(cframe(-1.4 , 0, -0.45) * angles(rad(45), rad(0), rad(0)) * angles(rad(75), rad(-0), rad(30)) * lsC0, 0.2)
			rh.C0 = rh.C0:Lerp(cframe(0.5 , -1, 0.5) *  angles(rad(-10), rad(90), rad(0)) * angles(rad(-15), rad(-30), rad(15)), 0.2)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.75, 0.25) *  angles(rad(10), rad(-90), rad(0)) * angles(rad(-0), rad(75), rad(-15)), 0.2)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 4 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.75, -0.25) * angles(rad(10), rad(20), rad(60)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(-20)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1.5, 0.75, -0.5) * angles(rad(15), rad(-45), rad(60)) * angles(rad(75), rad(25), rad(-0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.4 , 0.5, -0.45) * angles(rad(45), rad(0), rad(0)) * angles(rad(25), rad(-0), rad(30)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(0.75, -1.5, 0.5) *  angles(rad(0), rad(90), rad(0)) * angles(rad(30), rad(-50), rad(-20)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-1, -0.5, -0.75) *  angles(rad(10), rad(-90), rad(0)) * angles(rad(-0), rad(-0), rad(-10)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		end
	elseif anim == "benkei" then
		if frame == 1 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, -0.75) * angles(rad(-10), rad(10), rad(120)), 0.3)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(-0), rad(-60)), 0.3)
			rs.C0 = rs.C0:Lerp(cframe(1, 0.75, -0.75) * angles(rad(90), rad(0), rad(90)) * angles(rad(90), rad(-0), rad(-90)) * angles(rad(30), rad(-0), rad(0)) * rsC0, 0.3)
			ls.C0 = ls.C0:Lerp(cframe(-1.5 , 0.5, 0.45) * angles(rad(90), rad(30), rad(-0)) * angles(rad(-0), rad(-120), rad(0)) * lsC0, 0.3)
			rh.C0 = rh.C0:Lerp(cframe(1.25, -0.25, -0.25) *  angles(rad(0), rad(90), rad(0)) * angles(rad(0), rad(-30), rad(-0)), 0.3)
			lh.C0 = lh.C0:Lerp(cframe(-0.75, -0.5, -1) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(-0), rad(15), rad(-50)), 0.3)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		elseif frame == 2 then
			rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,-0.5, -0.5) * angles(rad(20), rad(-0), rad(-60)), 0.5)
			nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(15), rad(0), rad(30)), 0.5)
			rs.C0 = rs.C0:Lerp(cframe(1.15, 0.45, 0.15) * angles(rad(90), rad(0), rad(90)) * angles(rad(-30), rad(60), rad(-0)) * angles(rad(-30), rad(-90), rad(-0)) * angles(rad(30), rad(-0), rad(-45)) * rsC0, 0.5)
			ls.C0 = ls.C0:Lerp(cframe(-1.75 , 0.75, -0.5) * angles(rad(0), rad(0), rad(-90)) * angles(rad(30), rad(-0), rad(-15)) * lsC0, 0.5)
			rh.C0 = rh.C0:Lerp(cframe(0.5, -0.75, -1) *  angles(rad(10), rad(90), rad(0)) * angles(rad(20), rad(60), rad(-60)), 0.5)
			lh.C0 = lh.C0:Lerp(cframe(-0.5, -0.75, 1) *  angles(rad(-30), rad(-105), rad(0)) * angles(rad(0), rad(90), rad(60)), 0.5)
			GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
		end	
	elseif anim == "reference" then
		rj.C0 = rj.C0:Lerp(rjC0 * cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
		nk.C0 = nk.C0:Lerp(nkC0 * cframe(0, 0, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
		rs.C0 = rs.C0:Lerp(cframe(1.5 , 0.5, 0) * angles(rad(0), rad(0), rad(-0)) * rsC0, 0.3)
		ls.C0 = ls.C0:Lerp(cframe(-1.5, 0.5, 0) * angles(rad(0), rad(0), rad(0)) * lsC0, 0.3)
		rh.C0 = rh.C0:Lerp(cframe(1 , -1, 0 ) *  angles(rad(0), rad(90), rad(0)) * angles(rad(-0), rad(-0), rad(0)), 0.3)
		lh.C0 = lh.C0:Lerp(cframe(-1 , -1, 0 ) *  angles(rad(0), rad(-90), rad(0)) * angles(rad(0), rad(0), rad(0)), 0.3)
		GoheiW.C0 = GoheiW.C0:Lerp(cframe(0, 1.85, 1.85) *  angles(rad(10), rad(0), rad(0)), 1)
	end
	--hit floor stuff
	local tv = (root.Velocity * vect3(1, 0, 1)).magnitude
	local tvv = root.Velocity.y
	local hf = raycast(root.Position, (cframe(root.Position, root.Position + vect3(0, -1, 0))).lookVector, 4+hum.HipHeight, char)
	if hf then
		inair = false
		if hum:GetState() == Enum.HumanoidStateType.Swimming and tv<1 then
			if attack == false then
				anim = "swimidle"
			end
		elseif hum:GetState() == Enum.HumanoidStateType.Swimming and tv>1 then
			if attack == false then
				anim = "swim"
			end
		elseif tv < 1 and hf ~= nil and hum.Sit == false then
			if attack == false then
				anim = "idle"
			end
		elseif tv > 1 and tv < 20 and hf ~= nil and hum.Sit == false then
			if attack == false then
				anim = "walk"
			end
		elseif tv > 20 and hf ~= nil and hum.Sit == false then
			if attack == false then
				anim = "run"
			end
		elseif hf ~= nil and hum.Sit == true then
			if attack == false then
				anim = "sit"
			end
		end
	else
		inair = true
		if hum:GetState() == Enum.HumanoidStateType.Climbing and tvv==0 then
			if attack == false then
				anim = "climbidle"
			end
		elseif hum:GetState() == Enum.HumanoidStateType.Climbing and (tvv>0 or tvv<0) then
			if attack == false then
				anim = "climbing"
			end
		elseif tvv > 0 then
			if attack == false then
				anim = "jump"
			end
		else
			if attack == false then
				anim = "fall"
			end
		end
	end
end)
if mptext ~= nil then
	mptext.Text = math.floor((mp / 1000) * 100) .. '%'
end
if mpbar ~= nil then
	mpbar.Size = udim2(math.clamp(mp / 1000, 0, 1), 0, 1, 0)
	mpbar.Position = udim2(math.clamp(1 - mpbar.Size.X.Scale, 0, 1))
end
emote("Intro")
--[[
TRIVIA:

Most of the move namesakes come from various media and resources.

Reimu Engrenado takes heavy inspiration from several M.U.G.E.N. characters, such as M-Reimu (by okihaito), 
Sol Engrenado (by Daimonmau), Touhou Incident Zero Reimu (by Ricepigeon), and many others.
It has a very similar appearance to M-Reimu's 1st palette (without Spell Overdrive activated), and 12th pallete (with Spell Overdrive activated).

Huge thanks to Retro_Jono (Dorian / xavee23) for uploading S_Sakuya and M-Reimu SFX + Voicelines, including the emoticons for M-Reimu (for the Spell Overdrive).

Also, a big thank you to whatto / pointypease668 for uploading Sol Badguy's voiceclips. (it's for Lua Sandbox only though)

]]