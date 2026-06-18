if game:GetService("RunService"):IsClient() then error("Script must be server-side in order to work; use h/ and not hl/") end
local Player,game,owner = owner,game
local RealPlayer = Player
do
	print("FE Compatibility code V2 by Mokiros")
	local RealPlayer = RealPlayer
	script.Parent = RealPlayer.Character

	--Fake event to make stuff like Mouse.KeyDown work
	local Disconnect_Function = function(this)
		this[1].Functions[this[2]] = nil
	end
	local Disconnect_Metatable = {__index={disconnect=Disconnect_Function,Disconnect=Disconnect_Function}}
	local FakeEvent_Metatable = {__index={
		Connect = function(this,f)
			local i = tostring(math.random(0,10000))
			while this.Functions[i] do
				i = tostring(math.random(0,10000))
			end
			this.Functions[i] = f
			return setmetatable({this,i},Disconnect_Metatable)
		end
	}}
	FakeEvent_Metatable.__index.connect = FakeEvent_Metatable.__index.Connect
	local function fakeEvent()
		return setmetatable({Functions={}},FakeEvent_Metatable)
	end

	--Creating fake input objects with fake variables
	local FakeMouse = {Hit=CFrame.new(),KeyUp=fakeEvent(),KeyDown=fakeEvent(),Button1Up=fakeEvent(),Button1Down=fakeEvent(),Button2Up=fakeEvent(),Button2Down=fakeEvent()}
	FakeMouse.keyUp = FakeMouse.KeyUp
	FakeMouse.keyDown = FakeMouse.KeyDown
	local UIS = {InputBegan=fakeEvent(),InputEnded=fakeEvent()}
	local CAS = {Actions={},BindAction=function(self,name,fun,touch,...)
		CAS.Actions[name] = fun and {Name=name,Function=fun,Keys={...}} or nil
	end}
	--Merged 2 functions into one by checking amount of arguments
	CAS.UnbindAction = CAS.BindAction

	--This function will trigger the events that have been :Connect()'ed
	local function TriggerEvent(self,ev,...)
		for _,f in pairs(self[ev].Functions) do
			f(...)
		end
	end
	FakeMouse.TriggerEvent = TriggerEvent
	UIS.TriggerEvent = TriggerEvent

	--Client communication
	local Event = Instance.new("RemoteEvent")
	Event.Name = "UserInput_Event"
	Event.OnServerEvent:Connect(function(plr,io)
		if plr~=RealPlayer then return end
		FakeMouse.Target = io.Target
		FakeMouse.Hit = io.Hit
		if not io.isMouse then
			local b = io.UserInputState == Enum.UserInputState.Begin
			if io.UserInputType == Enum.UserInputType.MouseButton1 then
				return FakeMouse:TriggerEvent(b and "Button1Down" or "Button1Up")
			end
			if io.UserInputType == Enum.UserInputType.MouseButton2 then
				return FakeMouse:TriggerEvent(b and "Button2Down" or "Button2Up")
			end
			for _,t in pairs(CAS.Actions) do
				for _,k in pairs(t.Keys) do
					if k==io.KeyCode then
						t.Function(t.Name,io.UserInputState,io)
					end
				end
			end
			FakeMouse:TriggerEvent(b and "KeyDown" or "KeyUp",io.KeyCode.Name:lower())
			UIS:TriggerEvent(b and "InputBegan" or "InputEnded",io,false)
		end
	end)
	Event.Parent = NLS([==[local Event = script:WaitForChild("UserInput_Event")
	local Mouse = owner:GetMouse()
	local UIS = game:GetService("UserInputService")
	local input = function(io,RobloxHandled)
		if RobloxHandled then return end
		--Since InputObject is a client-side instance, we create and pass table instead
		Event:FireServer({KeyCode=io.KeyCode,UserInputType=io.UserInputType,UserInputState=io.UserInputState,Hit=Mouse.Hit,Target=Mouse.Target})
	end
	UIS.InputBegan:Connect(input)
	UIS.InputEnded:Connect(input)
 
	local h,t
	--Give the server mouse data every second frame, but only if the values changed
	--If player is not moving their mouse, client won't fire events
	local HB = game:GetService("RunService").Heartbeat
	while true do
		if h~=Mouse.Hit or t~=Mouse.Target then
			h,t=Mouse.Hit,Mouse.Target
			Event:FireServer({isMouse=true,Target=t,Hit=h})
		end
		--Wait 2 frames
		for i=1,2 do
			HB:Wait()
		end
	end]==],script)

	----Sandboxed game object that allows the usage of client-side methods and services
	--Real game object
	local RealGame = game

	--Metatable for fake service
	local FakeService_Metatable = {
		__index = function(self,k)
			local s = rawget(self,"_RealService")
			if s then
				return typeof(s[k])=="function"
					and function(_,...)return s[k](s,...)end or s[k]
			end
		end,
		__newindex = function(self,k,v)
			local s = rawget(self,"_RealService")
			if s then s[k]=v end
		end
	}
	local function FakeService(t,RealService)
		t._RealService = typeof(RealService)=="string" and RealGame:GetService(RealService) or RealService
		return setmetatable(t,FakeService_Metatable)
	end

	--Fake game object
	local FakeGame = {
		GetService = function(self,s)
			return rawget(self,s) or RealGame:GetService(s)
		end,
		Players = FakeService({
			LocalPlayer = FakeService({GetMouse=function(self)return FakeMouse end},Player)
		},"Players"),
		UserInputService = FakeService(UIS,"UserInputService"),
		ContextActionService = FakeService(CAS,"ContextActionService"),
		RunService = FakeService({
			_btrs = {},
			RenderStepped = RealGame:GetService("RunService").Heartbeat,
			BindToRenderStep = function(self,name,_,fun)
				self._btrs[name] = self.Heartbeat:Connect(fun)
			end,
			UnbindFromRenderStep = function(self,name)
				self._btrs[name]:Disconnect()
			end,
		},"RunService")
	}
	rawset(FakeGame.Players,"localPlayer",FakeGame.Players.LocalPlayer)
	FakeGame.service = FakeGame.GetService
	FakeService(FakeGame,game)
	--Changing owner to fake player object to support owner:GetMouse()
	game,owner = FakeGame,FakeGame.Players.LocalPlayer
end
--NOTE: up here these are script lines for studio testing only
local Player = owner
local playor = Player
local Mouse = playor:GetMouse()
print([[
G = MAKE FUN OF YOUR OPPONENT FOR BEING BAD
SAX = This aint sol's Tyrant revolver
aynmore...
SDQ = Moyai flame! (lifesteal with overdrive)
ASDQ = Deadspike
AADQ = dante does reposte
DDSC = Volcanic viper!! (lifesteal with overdrive)
ASDC = Vortex bringer! (lifesteal with overdrive)
WADQ = SUMMON
+ WWQ = ROMEIDA o_o (realistic!1)
+ AAQ = Bhrap.
+ DDQ = Spunargar's blessing
+ SSQ = Injectioneer's toilet trick
+ ASQ = respawn
+ ASDSDQ = Injectioneer's Mawaru
SSADQ = EXTINCTION BOMB
ADADADQ = BLAZBLUE..ACTIVATE (overdrive)
ADADWQ = ETERNAL COILS OF THE DRAGON SERPENT (MAXHP RESTORE IF IN OVERDRIVE)
IF BELOW 40 HP / OVERDRIVE ACTIVATED:
ASDASDQ = NIGHTMARE REIGN
-psycho_guests' jokezerker]])
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end



local aadqhit = false

function FindNearestHead(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return Distance > (SinglePlayer.Torso.CFrame.p - Position).magnitude
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") and v:findFirstChild("Head") and v ~= playor.Character and Distance >= (v.Head.Position - Position).magnitude then
			table.insert(List, v)
		end
	end
	return List
end

function FindNearestHead2(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return Distance > (SinglePlayer.Torso.CFrame.p - Position).magnitude
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") and v:findFirstChild("Head") and Distance >= (v.Head.Position - Position).magnitude then
			table.insert(List, v)
		end
	end
	return List
end
playor.Character.Humanoid.JumpPower = 75
playor.Character.Humanoid.WalkSpeed = 18
local saxcd = false
local wadqattack = false
local ssadqcooldown= false
local ddsccd = false
local asdccd = false
local ddscammount = 0
local aadqcd = false
local asdqcd = false
local adadwqcd = false
local sdqcd = false
local attack = false
local wadqsummoned = false
local adqlaunched = false
local aaqcd = false
local aaqlaunched = false
local wwqlaunched = false
local wwqcooldown = false
local asdsdqlaunched = false
local asdsdqcooldown = false
local OVERDRIVE = false
local OVERDRIVECD = false
local swqcooldown = false
local swqlaunched = false
local wwqammount = 0
local asqlaunched = false
local asqcooldown = false
local ddqlaunched = false
local ddqcooldown = false
local ssqcooldown = false
local ssqlaunched = false
local Clash = Instance.new("Sound")
Clash.Parent = playor.Character.Torso
Clash.SoundId = "http://www.roblox.com/asset/?id=62339698"
Clash.Volume = 2

local Clash2 = Instance.new("Sound")
Clash2.Parent = playor.Character.Torso
Clash2.SoundId = "http://www.roblox.com/asset/?id=28144425"
Clash2.Volume = 2
Clash2.Pitch = 0.265



local swagminton2 = Instance.new("Sound")
swagminton2.Name = "Low Throat Singing 1"
swagminton2.Parent = playor.Character.Torso
swagminton2.Pitch = 2
swagminton2.PlaybackSpeed = 1.5
swagminton2.SoundId = "http://www.roblox.com/asset/?id=48618802"
swagminton2.Volume = 1

local VPlayer=playor
local CPlayer=VPlayer.Character




local RoarSound=Instance.new("Sound")
RoarSound.SoundId="http://www.roblox.com/asset/?id=63719813"
RoarSound.Volume=1
RoarSound.Pitch=1.2
RoarSound.Parent=CPlayer.Torso
RoarSound.Name="RoarSound"


genroarsound=function(iter,start,conv)
	RoarSound.Volume=10/iter
	RoarSound.Pitch=start
	for k=1, iter do
		RoarSound.Pitch=RoarSound.Pitch-conv
		RoarSound:Play()
	end
end

local Clash3 = Instance.new("Sound")
Clash3.Parent = playor.Character.Torso
Clash3.SoundId = "http://www.roblox.com/asset/?id=2697431"
Clash3.Volume = 2
Clash3.Pitch = 0.3




local Amogus = Instance.new("Sound")
Amogus.Parent = playor.Character.Torso
Amogus.SoundId = "http://www.roblox.com/asset/?id=6436391970"
Amogus.Volume = 10

-- Converted using Mokiros's Model to Script Version 3
-- Converted string size: 9448 characters
local function Decode(str)
	local StringLength = #str

	-- Base64 decoding
	do
		local decoder = {}
		for b64code, char in pairs(('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/='):split('')) do
			decoder[char:byte()] = b64code-1
		end
		local n = StringLength
		local t,k = table.create(math.floor(n/4)+1),1
		local padding = str:sub(-2) == '==' and 2 or str:sub(-1) == '=' and 1 or 0
		for i = 1, padding > 0 and n-4 or n, 4 do
			local a, b, c, d = str:byte(i,i+3)
			local v = decoder[a]*0x40000 + decoder[b]*0x1000 + decoder[c]*0x40 + decoder[d]
			t[k] = string.char(bit32.extract(v,16,8),bit32.extract(v,8,8),bit32.extract(v,0,8))
			k = k + 1
		end
		if padding == 1 then
			local a, b, c = str:byte(n-3,n-1)
			local v = decoder[a]*0x40000 + decoder[b]*0x1000 + decoder[c]*0x40
			t[k] = string.char(bit32.extract(v,16,8),bit32.extract(v,8,8))
		elseif padding == 2 then
			local a, b = str:byte(n-3,n-2)
			local v = decoder[a]*0x40000 + decoder[b]*0x1000
			t[k] = string.char(bit32.extract(v,16,8))
		end
		str = table.concat(t)
	end

	local Position = 1
	local function Parse(fmt)
		local Values = {string.unpack(fmt,str,Position)}
		Position = table.remove(Values)
		return table.unpack(Values)
	end

	local Settings = Parse('B')
	local Flags = Parse('B')
	Flags = {
		--[[ValueIndexByteLength]] bit32.extract(Flags,6,2)+1,
		--[[InstanceIndexByteLength]] bit32.extract(Flags,4,2)+1,
		--[[ConnectionsIndexByteLength]] bit32.extract(Flags,2,2)+1,
		--[[MaxPropertiesLengthByteLength]] bit32.extract(Flags,0,2)+1,
		--[[Use Double instead of Float]] bit32.band(Settings,0b1) > 0
	}

	local ValueFMT = ('I'..Flags[1])
	local InstanceFMT = ('I'..Flags[2])
	local ConnectionFMT = ('I'..Flags[3])
	local PropertyLengthFMT = ('I'..Flags[4])

	local ValuesLength = Parse(ValueFMT)
	local Values = table.create(ValuesLength)
	local CFrameIndexes = {}

	local ValueDecoders = {
		--!!Start
		[1] = function(Modifier)
			return Parse('s'..Modifier)
		end,
		--!!Split
		[2] = function(Modifier)
			return Modifier ~= 0
		end,
		--!!Split
		[3] = function()
			return Parse('d')
		end,
		--!!Split
		[4] = function(_,Index)
			table.insert(CFrameIndexes,{Index,Parse(('I'..Flags[1]):rep(3))})
		end,
		--!!Split
		[5] = {CFrame.new,Flags[5] and 'dddddddddddd' or 'ffffffffffff'},
		--!!Split
		[6] = {Color3.fromRGB,'BBB'},
		--!!Split
		[7] = {BrickColor.new,'I2'},
		--!!Split
		[8] = function(Modifier)
			local len = Parse('I'..Modifier)
			local kpts = table.create(len)
			print(Modifier,len)
			for i = 1,len do
				kpts[i] = ColorSequenceKeypoint.new(Parse('f'),Color3.fromRGB(Parse('BBB')))
			end
			return ColorSequence.new(kpts)
		end,
		--!!Split
		[9] = function(Modifier)
			local len = Parse('I'..Modifier)
			local kpts = table.create(len)
			for i = 1,len do
				kpts[i] = NumberSequenceKeypoint.new(Parse(Flags[5] and 'ddd' or 'fff'))
			end
			return NumberSequence.new(kpts)
		end,
		--!!Split
		[10] = {Vector3.new,Flags[5] and 'ddd' or 'fff'},
		--!!Split
		[11] = {Vector2.new,Flags[5] and 'dd' or 'ff'},
		--!!Split
		[12] = {UDim2.new,Flags[5] and 'di2di2' or 'fi2fi2'},
		--!!Split
		[13] = {Rect.new,Flags[5] and 'dddd' or 'ffff'},
		--!!Split
		[14] = function()
			local flags = Parse('B')
			local ids = {"Top","Bottom","Left","Right","Front","Back"}
			local t = {}
			for i = 0,5 do
				if bit32.extract(flags,i,1)==1 then
					table.insert(t,Enum.NormalId[ids[i+1]])
				end
			end
			return Axes.new(unpack(t))
		end,
		--!!Split
		[15] = function()
			local flags = Parse('B')
			local ids = {"Top","Bottom","Left","Right","Front","Back"}
			local t = {}
			for i = 0,5 do
				if bit32.extract(flags,i,1)==1 then
					table.insert(t,Enum.NormalId[ids[i+1]])
				end
			end
			return Faces.new(unpack(t))
		end,
		--!!Split
		[16] = {PhysicalProperties.new,Flags[5] and 'ddddd' or 'fffff'},
		--!!Split
		[17] = {NumberRange.new,Flags[5] and 'dd' or 'ff'},
		--!!Split
		[18] = {UDim.new,Flags[5] and 'di2' or 'fi2'},
		--!!Split
		[19] = function()
			return Ray.new(Vector3.new(Parse(Flags[5] and 'ddd' or 'fff')),Vector3.new(Parse(Flags[5] and 'ddd' or 'fff')))
		end
		--!!End
	}

	for i = 1,ValuesLength do
		local TypeAndModifier = Parse('B')
		local Type = bit32.band(TypeAndModifier,0b11111)
		local Modifier = (TypeAndModifier - Type) / 0b100000
		local Decoder = ValueDecoders[Type]
		if type(Decoder)=='function' then
			Values[i] = Decoder(Modifier,i)
		else
			Values[i] = Decoder[1](Parse(Decoder[2]))
		end
	end

	for i,t in pairs(CFrameIndexes) do
		Values[t[1]] = CFrame.fromMatrix(Values[t[2]],Values[t[3]],Values[t[4]])
	end

	local InstancesLength = Parse(InstanceFMT)
	local Instances = {}
	local NoParent = {}

	for i = 1,InstancesLength do
		local ClassName = Values[Parse(ValueFMT)]
		local obj
		if ClassName == "UnionOperation" then
			obj = DecodeUnion(Values,Flags,Parse)
			obj.UsePartColor = true
		elseif ClassName:find("Script") then
			obj = Instance.new("Folder")
			Script(obj,ClassName=='ModuleScript')
		else
			obj = Instance.new(ClassName)
		end
		local Parent = Instances[Parse(InstanceFMT)]
		local PropertiesLength = Parse(PropertyLengthFMT)
		Instances[i] = obj
		for i = 1,PropertiesLength do
			obj[Values[Parse(ValueFMT)]] = Values[Parse(ValueFMT)]
		end
		if not Parent then
			table.insert(NoParent,obj)
		else
			obj.Parent = Parent
		end
	end

	local ConnectionsLength = Parse(ConnectionFMT)

	for i = 1,ConnectionsLength do
		local a,b,c = Parse(InstanceFMT),Parse(ValueFMT),Parse(InstanceFMT)
		Instances[a][Values[b]] = Instances[c]
	end

	return NoParent
end


local Objects = Decode('AEAnASEFTW9kZWwhC1ByaW1hcnlQYXJ0IQRQYXJ0IQROYW1lIQZIYW5kbGUhF0Fzc2VtYmx5QW5ndWxhclZlbG9jaXR5CgAAgD8AAIA/AACAPyEWQXNzZW1ibHlMaW5lYXJWZWxvY2l0eQoEF9y4VdZSPNjlmLchDUJvdHRvbVN1cmZhY2UDAAAAAAAAAAAhCFBvc2l0'
	..'aW9uCoCCNECWIcA/AFGqQSELT3JpZW50YXRpb24KAAC0wgAANMMAAAAAIQpDYW5Db2xsaWRlAiEFQ29sb3IGGyo1IQhNYXNzbGVzcyIhC1JvdFZlbG9jaXR5IQhSb3RhdGlvbgoAALTCAAAAAAAANMMhBFNpemUKAAAAQAAA4EAAAABAIQpUb3BTdXJmYWNlIQhWZWxv'
	..'Y2l0eSELU3BlY2lhbE1lc2ghBVNjYWxlCphMlT2H9MM+mEyVPSEEV2VsZCEISGFuZGxlMTAhAkMxBPQA9QD2ACEFUGFydDAhBVBhcnQxIQhIYW5kbGUxMQT3APgA+QAhCEhhbmRsZTEyBPoA+wD8ACEISGFuZGxlMTME/QD+AP8AIQhIYW5kbGUxNAQAAfsA/AAhCEhh'
	..'bmRsZTE1BAEB+AD5ACEISGFuZGxlMTYEAgH+AP8AIQhIYW5kbGUxNwQDAQQBBQEhCEhhbmRsZTE4BAYB+wD8ACEISGFuZGxlMTkEBwH7APwAIQdIYW5kbGUyBAgB+wD8ACEISGFuZGxlMjAECQEKAQsBIQhIYW5kbGUyMSEISGFuZGxlMjIEDAH7APwAIQhIYW5kbGUy'
	..'MwQNAQ4BDwEhCEhhbmRsZTI0IQhIYW5kbGUyNQQQAfsA/AAhCEhhbmRsZTI2IQhIYW5kbGUyNwQRAfsA/AAhCEhhbmRsZTI4BBIB+wD8ACEISGFuZGxlMjkhB0hhbmRsZTMEEwH7APwAIQhIYW5kbGUzMAQUARUBFgEhCEhhbmRsZTMxBBcBGAEZASEISGFuZGxlMzIh'
	..'CEhhbmRsZTMzBBoBGwEcASEISGFuZGxlMzQEHQEeAR8BIQhIYW5kbGUzNQQgAR4BHwEhCEhhbmRsZTM2IQhIYW5kbGUzNwQhAfgA+QAhCEhhbmRsZTM4BCIB+AD5ACEISGFuZGxlMzkEIwH4APkAIQdIYW5kbGU0BCQB+wD8ACEHSGFuZGxlNSEHSGFuZGxlNiEHSGFu'
	..'ZGxlNwQlAfsA/AAhB0hhbmRsZTgEJgH1APYAIQdIYW5kbGU5BCcBBAEFAQqSC7o/VCHAP6vBo0EKAAAAAAAAAAAAALRCCgAAgD8AAABAAAAAQAr98FG/47wIv5P4rj8K0PeLPtD3iz7Q94s+IQhNZXNoVHlwZQMAAAAAAAAAQAqOC7o/UCHAP+ohqEEKAAAAAAAANMMA'
	..'ALTCCgAANEMAAAAAAAC0Qgop0ou+ZWKKv5P4rj8KkQu6P1MhwD/E8KVBCincs8Kux8FCrsfBwgZiJdEKAAC0wgAAAAAAADRDCtsNDL8FoE6/k/iuPwq/n7o+v5+6Pr+fuj4hBk1lc2hJZCEnaHR0cDovL3d3dy5yb2Jsb3guY29tL0Fzc2V0Lz9pZD05NzU2MzYyAwAA'
	..'AAAAABRACoUqY0DCIcA/aGGfQQoAAAAAAAAAAAAAtMIKHP2uv5v3BkDuoDq/CtD3iz6/n7o+0PeLPgqHKEBA2wDAP2phn0EKAACAPwAAAEAAAIA/ChXcrr8b68c/D2s7viEJQmxvY2tNZXNoCr+fuj7Q94s+0PeLPgqDKmNAwSHAP6vBo0EK1/FRvwPrxz/ooDq/Cr3/'
	..'hUDgIcA/qsGjQQo18lG/gMoMQEP6rr8Kvv+FQN4hwD/pIahBCgAAAAAAADRDAAC0QgoAADTDAAAAAAAAtMIKodSLvhWR0z9J+q6/Cr7/hUDhIcA/wfClQQpXDwy/laP2P0b6rr8KioI0QNMAwD9OMp1BCs3N0b/hkNM/l7+FugrQ94s+0PcLP9D3iz4KdII0QIwhwD+y'
	..'b7dBCrrn0T+LRdC/2OWKtwrHSyM/x0sjP9D3iz8hJ2h0dHA6Ly93d3cucm9ibG94LmNvbS9hc3NldC8/aWQ9MzI3MDAxNyEHUm90YXRlUCEKcXVpZXR0aW1lMQqIgjRA0QDAP8QboEEKSOGzwtejwULXo8HCCgAAQEAAAEBAAABAQAprNqO/ffmkP5e3hboKrkdpP7+f'
	..'uj6/n7o+Cr+fuj6uR2k/v5+6PgqWgjRA3QDAP5wTkEEKfNxRwAy+UkCX94W6CtD3iz+uR+k/v5+6PQqdgjRAryHAP6I+ikEKAAAAAAAANEMAAAAACgAANMMAAAAAAAA0wwpaSoDA8bKAQNjlubchDEN5bGluZGVyTWVzaCEGT2Zmc2V0CgAAAAAAAAAAzcyMPwoxCIw/'
	..'pptEPTEIjD8KAAAAAJqZmT4AAAAACpqZCUDNzOw/mEyVPQqkgjRAtiHAPyR+gUEKVEyjwO20o0DY5cC3IQhSaW5nTWVzaArQ94s/0PeLP9D3iz8KAAAAAAAAAAAAAEA/CtD3C0C3KDM90PcLQArV3ChA1QDAP50TkEEKcNxRwEMYR0DhTzk+Cr+fOj7HSyNAv586PgqV'
	..'KEBA5wDAP5wTkEEKgNxRwAtkXkCPazu+Cr+fOj7HSyNAmEyVPgpRSU0+rkdpQFFJTT4hJ2h0dHA6Ly93d3cucm9ibG94LmNvbS9hc3NldC8/aWQ9MTAzMzcxNAqFgjRAtCHAP/19gUEKAAC0wgAAkMIAAAAACgAAtMIAAAAAAACQwgrwTKPAebWjQNjlhLchBEZpcmUG'
	..'ZgD/IQdFbmFibGVkIQRIZWF0AwAAAAAAAC5AIQ5TZWNvbmRhcnlDb2xvcgbMAAADAAAAAAAAIkAKCtcjPArXIzwK1yM8CpiCNEAeIsA/HH6BQQoAALTCAACQQgAAAAAKAAC0wgAAAAAAAJBCCo5Mo8AHtaNAsMsBtwZmAGYGMzP/CisSL0C1IcA/lAh3QQoAAAAAAAC0'
	..'wgAAtEIKw/XJQkjhs8KaWSbDCrwzu8AZ5LhAAgOuPQrFILA9AACAPwAAgD8KqAlSPwwhwD8u1W1BCgAAAAAAALRCAAC0wgoAALTCAAC0QgAAAAAKXprNwAQDjkAJ//8/CsUgsD2amdk+MzOzPgrpBOk/hADAP2a3kEEK/71MwJqfDUDYvH8/CgAAAAAAAAA/pHC9vgp7'
	..'FK49w/VIQJqZmT4KAAAAAM3MTD8AAAC/ClYOrT0AAABAAAAAPwq4pCs/SCHAP5MIf0EKojOrwDifTUDfmAlACsUgsD2uR2E+mpmZPgok0oU/QyHAP3C3nEEKHZzZv+uFfr3wMeM/CkbShT9SIcA/EVGKQQqHAIDA8TgPQN0x4z8KAAAAAD0K1z2amek/CnsUrj3sUfg+'
	..'Di0yPgqDgjRAzQDAP8LwpUEGERERCgAAgD8AAOBAAACAPwoPzQu/JVMPP5efhboKYqEeP5hMlTxioR4/ClFJTT6/nzq/UUlNPgq/nzo+v5+6Pr+fOj4DAAAAAAAAOcAGZgDMCsfcKEDJAMA/a2GfQQrz266/i1OZP2FQOT4KydoFQKsAwD9pYZ9BCvXbrr9dnyY/1Fs6'
	..'PwrG2gVAdSHAP6zBo0EKH/FRv4u31D10nTo/CgCAOTh4966/gPFRPwrA/6uz+v9/P+E2mrgKxy1iOOCunTjF/38/CgCAgTjc+K6/ANKLvgrvGTy4+P9/P/iwjTgKfz/yNeRAkTjE/3+/Cnj5rr/ABww/AACENgr4/38/ZYFiNargT7YKTYFiNcT/fz/GA8m0CgAAeDeM'
	..'pTq/MPiuPwonuDU38/9/v/OhfrgKL5CnNub2grjF/38/CjBgOj6Q+a4/ABCDOgoAAAO4tKM6P4DnUb8KAACfN577rr9g5VE/CgAAwDb2+a6/QMaLvgquD482+v9/v1SgUrYKcoEUtfy+xDXE/3+/Cvr5rj/gBww/AACYtgoAAIA1UOvRPwAggzoKAADAtVDr0b8AACA1'
	..'CgAAgDXgU6M/ACSDOgr2/38/dYFMNaRgQbYKWYFMNcj/fz8GBLm0CgAAIDZQ61FAAAyDOgoAAJm4AAAQOZRJgMAK9v9/PzDgF7Y6TKe3CtPzmLfYrQ84xf9/vwoAAJA2mEujQAAAALYKcFs6vkjrUUAAHIM6CqBgOj5Q61FAAPiCOgoAAAAAAAAAAAAAAAAKaE2bQDDe'
	..'yb8A0Ka5Cuo7nr6vd3O/uwPqNwrud3M/HDyevubIgrgKbk2bwMTayb8AgJS5Cr05nr42eHM/7ECpOAr1d3O/bjmevsPRaLgKAABduAIzu8AANq69CupxdDj1Z223+P9/PwrMxwi3xP9/v6GnUbcKAGBhObqazcCy8f8/CuqhYrj+iI04IgCAvwrZo4s3CACAv+YwkbgK'
	..'AEhquujNTMDE8X8/CgCA3jhqkwnAOjSrwAoAQK04Hy/jv0Cd2b8KAAC2OOYp47/cAIDACgAAgDTgBww/ACyDOgrgWzq+gPmuPwA0gzoKAOCMOkiYOr9g+64/CgAAcLYYnzo/oOpRv3kBAAAAAwABDgQABQAGAAcACAAJAAoACwAMAA0ADgAPABAAEQASABMAFAAVABYA'
	..'BwAXABgAGQAaABsACwAcAAkAHQACAR4AHwAgAAICBAAhACIAIwAgAAICBAAmACIAJwAgAAICBAAoACIAKQAgAAICBAAqACIAKwAgAAICBAAsACIALQAgAAICBAAuACIALwAgAAICBAAwACIAMQAgAAICBAAyACIAMwAgAAICBAA0ACIANQAgAAICBAA2ACIANwAgAAIC'
	..'BAA4ACIAOQAgAAICBAA6ACIAOwAgAAICBAA8ACIAOwAgAAICBAA9ACIAPgAgAAICBAA/ACIAQAAgAAICBABBACIAPgAgAAICBABCACIAQwAgAAICBABEACIAQAAgAAICBABFACIARgAgAAICBABHACIASAAgAAICBABJACIAPgAgAAICBABKACIASwAgAAICBABMACIA'
	..'TQAgAAICBABOACIATwAgAAICBABQACIAQwAgAAICBABRACIAUgAgAAICBABTACIAVAAgAAICBABVACIAVgAgAAICBABXACIAVgAgAAICBABYACIAWQAgAAICBABaACIAWwAgAAICBABcACIAXQAgAAICBABeACIAXwAgAAICBABgACIANwAgAAICBABhACIAOQAgAAIC'
	..'BABiACIAYwAgAAICBABkACIAZQAgAAICBABmACIAZwADAAEOBAAhAAYABwAIAAkACgALAAwAaAAOAGkAEAARABIAEwAUABUAFgAHABcAaQAZAGoAGwALABwAawAdACoCHgBsAG0AbgADAAEOBAAmAAYABwAIAAkACgALAAwAbwAOAHAAEAARABIAEwAUABUAFgAHABcA'
	..'cQAZAGoAGwALABwAcgAdACwCHgBsAG0AbgADAAEOBAAoAAYABwAIAAkACgALAAwAcwAOAHQAEAARABIAdQAUABUAFgAHABcAdgAZAAcAGwALABwAdwAdAC4DHgB4AHkAegBtAHsAAwABDgQAKgAGAAcACAAJAAoACwAMAHwADgB9ABAAEQASABMAFAAVABYABwAXAH0A'
	..'GQBqABsACwAcAH4AHQAwAh4AfwBtAG4AAwABDgQALAAGAAcACAAJAAoACwAMAIAADgB0ABAAEQASABMAFAAVABYABwAXAHYAGQCBABsACwAcAIIAgwAyAR4AhAADAAEOBAAuAAYABwAIAAkACgALAAwAhQAOAHAAEAARABIAEwAUABUAFgAHABcAcQAZAGoAGwALABwA'
	..'hgAdADQCHgB/AG0AbgADAAEOBAAwAAYABwAIAAkACgALAAwAhwAOAH0AEAARABIAEwAUABUAFgAHABcAfQAZAGoAGwALABwAiAAdADYCHgBsAG0AbgADAAEOBAAyAAYABwAIAAkACgALAAwAiQAOAIoAEAARABIAEwAUABUAFgAHABcAiwAZAGoAGwALABwAjAAdADgC'
	..'HgBsAG0AbgADAAEOBAA0AAYABwAIAAkACgALAAwAjQAOAHQAEAARABIAdQAUABUAFgAHABcAdgAZAAcAGwALABwAjgAdADoDHgB4AHkAegBtAHsAAwABDgQANgAGAAcACAAJAAoACwAMAI8ADgB0ABAAEQASAHUAFAAVABYABwAXAHYAGQAHABsACwAcAJAAHQA8Ax4A'
	..'kQB5AHoAbQB7AAMAAQ4EADgABgAHAAgACQAKAAsADACSAA4AdAAQABEAEgATABQAFQAWAAcAFwB2ABkAgQAbAAsAHACTAB0APgMeAJQAeQCVAG0AewCWAD4BBACXAAMAAQ4EADoABgAHAAgACQAKAAsADACYAA4AmQAQABEAEgB1ABQAFQAWAAcAFwB2ABkAmgAbAAsA'
	..'HACbAB0AQQMeAJwAeQB6AG0AewADAAEOBAA8AAYABwAIAAkACgALAAwAmAAOAJkAEAARABIAdQAUABUAFgAHABcAdgAZAAcAGwALABwAmwAdAEMDHgCdAHkAegBtAHsAAwABDgQAPQAGAAcACAAJAAoACwAMAJ4ADgB0ABAAEQASABMAFAAVABYABwAXAHYAGQCBABsA'
	..'CwAcAJ8AgwBFAR4AoAADAAEOBAA/AAYABwAIAAkACgALAAwAoQAOAKIAEAARABIAEwAUABUAFgAHABcAowAZAIEAGwALABwApAClAEcCpgCnAB4AqAADAAEOBABBAAYABwAIAAkACgALAAwAngAOAHQAEAARABIAdQAUABUAFgAHABcAdgAZAIEAGwALABwAnwCDAEkC'
	..'pgCpAB4AqgADAAEOBABCAAYABwAIAAkACgALAAwAqwAOAHQAEAARABIAdQAUABUAFgAHABcAdgAZAIEAGwALABwArAAdAEsEBACtAB4ArgB5AJUAbQB7AAMAAQ4EAEQABgAHAAgACQAKAAsADAChAA4AogAQABEAEgB1ABQAFQAWAAcAFwCjABkAgQAbAAsAHACkAKUA'
	..'TQKmAK8AHgCwAAMAAQ4EAEUABgAHAAgACQAKAAsADACxAA4AdAAQABEAEgB1ABQAFQAWAAcAFwB2ABkABwAbAAsAHACyAB0ATwMeALMAeQB6AG0AewADAAEOBABHAAYABwAIAAkACgALAAwAtAAOAHQAEAARABIAdQAUABUAFgAHABcAdgAZAAcAGwALABwAtQAdAFED'
	..'HgCzAHkAegBtAHsAAwABDgQASQAGAAcACAAJAAoACwAMAJ4ADgB0ABAAEQASAHUAFAAVABYABwAXAHYAGQAHABsACwAcAJ8AHQBTAx4AtgB5AHoAbQB7AAMAAQ4EAEoABgAHAAgACQAKAAsADAANAA4AdAAQABEAEgATABQAFQAWAAcAFwB2ABkABwAbAAsAHAAJAB0A'
	..'VQMeALcAeQC4AG0AewADAAEOBABMAAYABwAIAAkACgALAAwAuQAOALoAEAARABIAdQAUABUAFgAHABcAuwAZAIEAGwALABwAvAC9AFcFEgC+AL8AEQDAAMEAwgDDABkAxACDAFcBHgDFAAMAAQ4EAE4ABgAHAAgACQAKAAsADADGAA4AxwAQABEAEgB1ABQAFQAWAAcA'
	..'FwDIABkAgQAbAAsAHADJAL0AWgUSAMoAvwARAMAAwQDCAMsAGQDEAIMAWgEeAMUAAwABDgQAUAAGAAcACAAJAAoACwAMAKsADgB0ABAAEQASAHUAFAAVABYABwAXAHYAGQAHABsACwAcAKwAgwBdAR4AxQADAAEOBABRAAYABwAIAAkACgALAAwAzAAOAM0AEAARABIA'
	..'dQAUABUAFgAHABcAzgAZAGoAGwALABwAzwAdAF8CHgDQAG0AbgADAAEOBABTAAYABwAIAAkACgALAAwA0QAOANIAEAARABIAdQAUABUAFgAHABcA0wAZAGoAGwALABwA1AAdAGECHgDVAG0AbgADAAEOBABVAAYABwAIAAkACgALAAwA1gAOANIAEAARABIAdQAUABUA'
	..'FgAHABcA0wAZAGoAGwALABwA1wCDAGMCpgDYAB4A2QADAAEOBABXAAYABwAIAAkACgALAAwA1gAOANIAEAARABIAdQAUABUAFgAHABcA0wAZAGoAGwALABwA1wCDAGUCpgDaAB4A2wADAAEOBABYAAYABwAIAAkACgALAAwA3AAOAHAAEAARABIAdQAUABUAFgAHABcA'
	..'cQAZAGoAGwALABwA3QAdAGcCHgDeAG0AbgADAAEOBABaAAYABwAIAAkACgALAAwA3wAOAHAAEAARABIAdQAUABUAFgAHABcAcQAZAGoAGwALABwA4AAdAGkCHgDeAG0AbgADAAEOBABcAAYABwAIAAkACgALAAwA4QAOAHAAEAARABIAdQAUABUAFgAHABcAcQAZAGoA'
	..'GwALABwA4gCDAGsCpgDjAB4A5AADAAEOBABeAAYABwAIAAkACgALAAwA5QAOAHQAEAARABIA5gAUABUAFgAHABcAdgAZAOcAGwALABwA6AClAG0BHgDpAAMAAQ4EAGAABgAHAAgACQAKAAsADACPAA4AdAAQABEAEgATABQAFQAWAAcAFwB2ABkABwAbAAsAHACQAB0A'
	..'bwMeAOoAeQC4AG0AewADAAEOBABhAAYABwAIAAkACgALAAwAkgAOAHQAEAARABIAdQAUABUAFgAHABcAdgAZAAcAGwALABwAkwAdAHEDHgDrAHkAegBtAHsAvQBxBRIAygC/ABEAwADsAMIA7QAZAMEAAwABDgQAYgAGAAcACAAJAAoACwAMAO4ADgB0ABAAEQASABMA'
	..'FAAVABYABwAXAHYAGQCBABsACwAcAO8AgwB0AR4AhAADAAEOBABkAAYABwAIAAkACgALAAwA8AAOAGkAEAARABIAEwAUABUAFgAHABcAaQAZAGoAGwALABwA8QAdAHYCHgB/AG0AbgADAAEOBABmAAYABwAIAAkACgALAAwA8gAOAIoAEAARABIAEwAUABUAFgAHABcA'
	..'iwAZAGoAGwALABwA8wAdAHgCHgB/AG0AbgBNAQIAAgQkAAIEJQAqBSQAAgUlACwGJAACBiUALgckAAIHJQAwCCQAAgglADIJJAACCSUANAokAAIKJQA2CyQAAgslADgMJAACDCUAOg0kAAINJQA8DiQAAg4lAD4PJAACDyUAQRAkAAIQJQBDESQAAhElAEUSJAACEiUA'
	..'RxMkAAITJQBJFCQAAhQlAEsVJAACFSUATRYkAAIWJQBPFyQAAhclAFEYJAACGCUAUxkkAAIZJQBVGiQAAholAFcbJAACGyUAWhwkAAIcJQBdHSQAAh0lAF8eJAACHiUAYR8kAAIfJQBjICQAAiAlAGUhJAACISUAZyIkAAIiJQBpIyQAAiMlAGskJAACJCUAbSUkAAIl'
	..'JQBvJiQAAiYlAHEnJAACJyUAdCgkAAIoJQB2KSQAAiklAHg=')
for _,obj in pairs(Objects) do
	obj.Parent = playor.Character
end


local joe = Instance.new("Weld",playor.Character.Model.Handle)
joe.Part0 = playor.Character.Model.Handle
joe.Part1 = playor.Character["Right Arm"] 
joe.C0 =  CFrame.new(-1,0,0) * CFrame.Angles(math.rad(90),0,math.rad(90))

local Sound0 = Instance.new("Sound")
Sound0.Name = "OHNO"
Sound0.Parent = playor.Character.Torso
Sound0.Looped = true
Sound0.SoundId = "rbxasset://sounds/agb.wav"
Sound0.Volume = 1
Sound0.PlaybackSpeed = 1.25
Sound0:Play()

local Sound123 = Instance.new("Sound")
Sound123.Name = "OHNO2"
Sound123.Parent = playor.Character.Torso
Sound123.Looped = true
Sound123.SoundId = "rbxasset://sounds/jpsama.mp3"
Sound123.Volume = 3
Sound123.PlaybackSpeed = 1.25
local fl = Instance.new("FlangeSoundEffect",Sound123)
local footsteps = Instance.new("Sound")

local fl = Instance.new("FlangeSoundEffect",Sound0)
local footsteps = Instance.new("Sound")
footsteps.Name = "footsteps"
footsteps.Parent = playor.Character.Torso
footsteps.Looped = true
footsteps.SoundId = "rbxassetid://5948749731"
footsteps.Volume = 5


--dam


it = Instance.new
char = playor.Character
ra=char["Right Arm"]
local rls=char.Torso["Left Shoulder"]
local rrs=char.Torso["Right Shoulder"]
local rlh=char.Torso["Left Hip"]
local rrh=char.Torso["Right Hip"]
local rne=char.Torso["Neck"]
local ls=it("Weld",char.Torso)
local rs=it("Weld",char.Torso)
local lh=it("Weld",char.Torso)
local rh=it("Weld",char.Torso)
local ne=it("Weld",char.Torso)
local root=char.HumanoidRootPart
local rj=root.RootJoint
ls.Name="Left Shoulderw"
rs.Name="Right Shoulderw"
lh.Name="Left Hipw"
rh.Name="Right Hipw"
ne.Name="Neckw"
ls.Part0=rls.Part0
ls.Part1=rls.Part1
ls.C0=rls.C0
ls.C1=rls.C1 

rs.Part0=rrs.Part0
rs.Part1=rrs.Part1
rs.C0=rrs.C0
rs.C1=rrs.C1 

lh.Part0=rlh.Part0
lh.Part1=rlh.Part1
lh.C0=rlh.C0
lh.C1=rlh.C1 

rh.Part0=rrh.Part0
rh.Part1=rrh.Part1
rh.C0=rrh.C0
rh.C1=rrh.C1 

ne.Part0=rne.Part0
ne.Part1=rne.Part1
ne.C0=rne.C0
ne.C1=rne.C1 


cf = CFrame.new


local lsc0=ls.C0
local rsc0=rs.C0
local lhc0=lh.C0
local rhc0=rh.C0
local rjc0=rj.C0
local nec0=ne.C0

function swait(num)
	if num == 0 or num == nil then
		game:service("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:service("RunService").Stepped:wait(0)
		end
	end
end

for i = 0,1,0.1 do 
	swait()
	ls.C0=ls.C0:Lerp(cf(-1.07576704, 0.518287957, -0.295244306, 0.783125758, 0.399306417, -0.476726711, -0.314704597, 0.915675163, 0.249999985, 0.53635335, -0.0457533747, 0.842752457),i) 

	rs.C0=rs.C0:Lerp(cf(1, 0.5, 0, 0.284013212, -0.120239586, 0.951251209, -0.171010062, 0.969846249, 0.173648179, -0.943446875, -0.211991921, 0.254886985),i) 

	lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0, 0.087155737, -0.99619472, 0, 0.99619472, 0.087155737, 1, 0, 0),i) 

	rh.C0=rh.C0:Lerp(cf(1, -1, 0, 0, -0.087155737, 0.99619472, 0, 0.99619472, 0.087155737, -1, 0, 0),i) 

	rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.939692616, -0.342020124, 0, 0, 0, 1, -0.342020124, 0.939692616, 0),i) 

	ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.939552367, 0.340418458, -0.0368335433, -0.00759608997, 0.086823903, 0.99619472, 0.342321098, 0.936256886, -0.0789897442),i) 


end



torvel = (playor.Character.HumanoidRootPart.Velocity * Vector3.new(1, 0, 1)).magnitude



local Anim = "Idle"
spawn(function()
	while true do
		swait()
		if Anim == "Jump" and attack == false then
			repeat
				swait()
				for i = 0,0.8,0.4 do
					if Anim == "Jump" and attack == false then
						swait()


						ls.C0=ls.C0:Lerp(cf(-1.42874897, 0.0296122432, 0, 0, 1, 4.37113883e-08, 0, -4.37113883e-08, 1, 1, 0, 0),i) 

						rs.C0=rs.C0:Lerp(cf(1.45102942, 0.0252739787, 0, -1.74845553e-07, -1, -5.96046448e-08, -1.04216071e-14, -5.96046448e-08, 1, -1, 1.74845553e-07, 0),i) 

						lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0, 1, 4.37113883e-08, 0, -4.37113883e-08, 1, 1, 0, 0),i) 

						rh.C0=rh.C0:Lerp(cf(1, -1, 0, 0, -1, -4.37113883e-08, 0, -4.37113883e-08, 1, -1, -0, 0),i) 


						ne.C0=ne.C0:Lerp(cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),i) 

						rj.C0=rj.C0:Lerp(cf(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),.1) 

					end
				end



			until Anim ~= "Jump"


		end
	end
end)
spawn(function()
	while true do
		swait()
		if Anim == "Walk"  and attack == false then
			repeat
				swait()


				for i = 0,0.8,0.1 do
					if  Anim == "Walk" and attack == false  then
						swait(1)
						ls.C0=ls.C0:Lerp(cf(-1, 0.5, 0, -0.133022219, 0.111618832, -0.98480773, -0.754406631, 0.633021951, 0.173648149, 0.642787337, 0.766044617, 0),.1) 

						rs.C0=rs.C0:Lerp(cf(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),.1) 

						lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0.0298090205, 0.0818995982, -0.99619472, 0.340718627, 0.936116755, 0.087155737, 0.939692557, -0.342020243, 0),i) 

						rh.C0=rh.C0:Lerp(cf(1, -1, 0, -0.00759615004, -0.0868240595, 0.996194661, 0.573289633, 0.815868795, 0.0754790902, -0.819317579, 0.571681499, 0.0435778834),i) 

						rj.C0=rj.C0:Lerp(cf(0, 0, 0, -1, 0, 0, 0, 0.258818656, 0.965925932, 0, 0.965925932, -0.258818656),.1) 

						ne.C0=ne.C0:Lerp(cf(0, 1, 0, -1, 0, 0, 0, 0.258818835, 0.965925872, 0, 0.965925872, -0.258818835),.1) 



					end
				end
				for i = 0,0.8,0.1 do
					if  Anim == "Walk" and attack == false  then
						swait(1)
						ls.C0=ls.C0:Lerp(cf(-1, 0.5, 0, 0.0733868331, 0.157378688, -0.98480773, 0.416197449, 0.892539024, 0.173648149, 0.906307876, -0.422618002, 0),.1) 


						lh.C0=lh.C0:Lerp(cf(-1, -1, 0, -0.0435778759, 0.0754790828, -0.99619472, -0.49809745, 0.862729847, 0.087155737, 0.866025388, 0.5, 0),i) 

						rh.C0=rh.C0:Lerp(cf(1, -1, 0, 0.0667651445, -0.0560226329, 0.996194661, -0.339495301, 0.937574446, 0.0754790902, -0.938235283, -0.343242794, 0.0435778834),i) 

						rj.C0=rj.C0:Lerp(cf(0, 0, 0, -1, 0, 0, 0, 0.17364797, 0.984807789, 0, 0.984807789, -0.17364797),.1) 

						ne.C0=ne.C0:Lerp(cf(0, 1, 0, -1, 0, 0, 0, 0.258818835, 0.965925872, 0, 0.965925872, -0.258818835),.1) 


					end
				end

			until Anim ~= "Walk"

		end
	end
end)







--------------------LOL-------------


--// Shortcut Variables \\--
local S = setmetatable({},{__index = function(s,i) return game:service(i) end})
local CF = {N=CFrame.new,A=CFrame.Angles,fEA=CFrame.fromEulerAnglesXYZ}
local C3 = {N=Color3.new,RGB=Color3.fromRGB,HSV=Color3.fromHSV,tHSV=Color3.toHSV}
local V3 = {N=Vector3.new,FNI=Vector3.FromNormalId,A=Vector3.FromAxis}
local M = {C=math.cos,R=math.rad,S=math.sin,P=math.pi,RNG=math.random,MRS=math.randomseed,H=math.huge,RRNG = function(min,max,div) return math.rad(math.random(min,max)/(div or 1)) end}
local R3 = {N=Region3.new}
local De = S.Debris
local WS = workspace
local Lght = S.Lighting
local RepS = S.ReplicatedStorage
local IN = Instance.new
local Plrs = S.Players

--// Initializing \\--
local Plr = playor
local Char = Plr.Character
local PlrGui = Plr:FindFirstChildOfClass'PlayerGui'
local Hum = Char:FindFirstChildOfClass'Humanoid'
local RArm = Char["Right Arm"]
local LArm = Char["Left Arm"]
local RLeg = Char["Right Leg"]
local LLeg = Char["Left Leg"]	
local Root = Char:FindFirstChild'HumanoidRootPart'
local Torso = Char.Torso
local Head = Char.Head
local NeutralAnims = true
local Attack = true
local Debounces = {Debounces={}}
local Hit = {}
local Sine = 0
local Change = 1
local BloodPuddles = {}

local Keystrokes = {}
local Input = ""

local Input_MaxTime = .8
local Input_Time = Input_MaxTime
local Input_Addition = 0.2
local Input_Lose = 0.1
local Max_Input = 20


local Effects = IN("Folder",Char)
Effects.Name = "Effects"


--// Debounce System \\--


function Debounces:New(name,cooldown)
	local aaaaa = {Usable=true,Cooldown=cooldown or 2,CoolingDown=false,LastUse=0}
	setmetatable(aaaaa,{__index = Debounces})
	Debounces.Debounces[name] = aaaaa
	return aaaaa
end

function Debounces:Use(overrideUsable)
	assert(self.Usable ~= nil and self.LastUse ~= nil and self.CoolingDown ~= nil,"Expected ':' not '.' calling member function Use")
	if(self.Usable or overrideUsable)then
		self.Usable = false
		self.CoolingDown = true
		local LastUse = time()
		self.LastUse = LastUse
		delay(self.Cooldown or 2,function()
			if(self.LastUse == LastUse)then
				self.CoolingDown = false
				self.Usable = true
			end
		end)
	end
end

function Debounces:Get(name)
	assert(typeof(name) == 'string',("bad argument #1 to 'get' (string expected, got %s)"):format(typeof(name) == nil and "no value" or typeof(name)))
	for i,v in next, Debounces.Debounces do
		if(i == name)then
			return v;
		end
	end
end

function Debounces:GetProgressPercentage()
	assert(self.Usable ~= nil and self.LastUse ~= nil and self.CoolingDown ~= nil,"Expected ':' not '.' calling member function Use")
	if(self.CoolingDown and not self.Usable)then
		return math.max(
			math.floor(
				(
					(time()-self.LastUse)/self.Cooldown or 2
				)*100
			)
		)
	else
		return 100
	end
end

--// Instance Creation Functions \\--

local sssss = IN("Sound")
function Sound(parent,id,pitch,volume,looped,effect,autoPlay)
	local Sound = sssss:Clone()
	Sound.SoundId = "rbxassetid://".. tostring(id or 0)
	Sound.Pitch = pitch or 1
	Sound.Volume = volume or 1
	Sound.Looped = looped or false
	if(autoPlay)then
		coroutine.wrap(function()
			repeat swait() until Sound.IsLoaded
			Sound.Playing = autoPlay or false
		end)()
	end
	if(not looped and effect)then
		Sound.Stopped:connect(function()
			Sound.Volume = 0
			Sound:destroy()
		end)
	elseif(effect)then
		warn("Sound can't be looped and a sound effect!")
	end
	Sound.Parent =parent or Torso
	return Sound
end
function Part(parent,color,material,size,cframe,anchored,cancollide)
	local part = IN("FlagStand")
	part.Parent = parent or Char
	part[typeof(color) == 'BrickColor' and 'BrickColor' or 'Color'] = color or C3.N(0,0,0)
	part.Material = material or Enum.Material.SmoothPlastic
	part.TopSurface,part.BottomSurface=10,10
	part.Size = size or V3.N(1,1,1)
	part.CFrame = cframe or CF.N(0,0,0)
	part.CanCollide = cancollide or false
	part.Anchored = anchored or false
	return part
end

function Weld(part0,part1,c0,c1)
	local weld = IN("Weld")
	weld.Parent = part0
	weld.Part0 = part0
	weld.Part1 = part1
	weld.C0 = c0 or CF.N()
	weld.C1 = c1 or CF.N()
	return weld
end

function Mesh(parent,meshtype,meshid,textid,scale,offset)
	local part = IN("SpecialMesh")
	part.MeshId = meshid or ""
	part.TextureId = textid or ""
	part.Scale = scale or V3.N(1,1,1)
	part.Offset = offset or V3.N(0,0,0)
	part.MeshType = meshtype or Enum.MeshType.Sphere
	part.Parent = parent
	return part
end

NewInstance = function(instance,parent,properties)
	local inst = Instance.new(instance)
	inst.Parent = parent
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end

function Clone(instance,parent,properties)
	local inst = instance:Clone()
	inst.Parent = parent
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end

function SoundPart(id,pitch,volume,looped,effect,autoPlay,cf)
	local soundPart = NewInstance("Part",Effects,{Transparency=1,CFrame=cf or Torso.CFrame,Anchored=true,CanCollide=false,Size=V3.N()})
	local Sound = IN("Sound")
	Sound.SoundId = "rbxassetid://".. tostring(id or 0)
	Sound.Pitch = pitch or 1
	Sound.Volume = volume or 1
	Sound.Looped = looped or false
	if(autoPlay)then
		coroutine.wrap(function()
			repeat swait() until Sound.IsLoaded
			Sound.Playing = autoPlay or false
		end)()
	end
	if(not looped and effect)then
		Sound.Stopped:connect(function()
			Sound.Volume = 0
			soundPart:destroy()
		end)
	elseif(effect)then
		warn("Sound can't be looped and a sound effect!")
	end
	Sound.Parent = soundPart
	return Sound
end

function Label(parent,text,size,pos,trans,tc,textsize,wrapped)
	local label = IN"TextLabel"
	label.Text = text or "Default"
	label.Size = size or UDim2.new(.05,0,.05,0)
	label.Position = pos or UDim2.new(0,0,0,0)
	label.TextTransparency = trans or 0
	label.TextColor3 = tc or C3.N(0,0,0)
	label.TextSize = textsize or 24
	label.TextWrapped = wrapped or false
	label.BackgroundTransparency = 1
	label.Parent = parent

	return label
end

function Frame(parent,size,pos,bc,bt)
	local frame = IN"Frame"
	frame.Size = size or UDim2.new(.05,0,.05,0)
	frame.Position = pos or UDim2.new(0,0,0,0)
	frame.BackgroundColor3 = bc or C3.N(1,1,1)
	frame.BackgroundTransparency = bt or 0
	frame.Parent = parent

	return frame
end

--// Extended ROBLOX tables \\--
local Instance = setmetatable({ClearChildrenOfClass = function(where,class,recursive) local children = (recursive and where:GetDescendants() or where:GetChildren()) for _,v in next, children do if(v:IsA(class))then v:destroy();end;end;end},{__index = Instance})

function TweenTransCol(p, newCol, i)
	p.TextColor3 = newCol

	p:TweenPosition(UDim2.new(.03*i, 0, -3, 0),_, "Linear", .5, true)
	coroutine.resume(coroutine.create(function()
		for i = 0, 1, .04 do
			swait()
			p.TextTransparency = i
			p.TextStrokeTransparency = i
		end
		p:destroy()	
	end))
end	

local Keystrokes = {}
local Input = ""
local Input_MaxTime = .8
local Input_Time = Input_MaxTime
local Input_Addition = 0.2
local Input_Lose = 0.1
local Max_Input = 20



local Effects = IN("Folder",Char)
Effects.Name = "Effects"

function swait(num)
	if num == 0 or num == nil then
		game:service("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:service("RunService").Stepped:wait(0)
		end
	end
end
local gui = NewInstance('ScreenGui',PlrGui,{Name='KeystrokeGUI'})
local start = Label(gui,">",UDim2.new(.05,0,.05,0),UDim2.new(0,0,.85,0),0,C3.N(1,1,1),24,true)
local inputF = Frame(gui,UDim2.new(1,0,.05,0),UDim2.new(.04,0,.85,0),C3.N(0,0,0),1)

local ValidInputKey = {['w']=true,['a']=true,['s']=true,['d']=true,['q']=true,['e']=true,['z']=true,['x']=true,['c']=true,['v']=true}
local InputAge = 0;
local InputFrameTable = {}
function ssadq()
	footsteps:Stop()
	local CSUFVOICE = Instance.new("Sound")
	CSUFVOICE.Name = "CSUF VOICE"
	CSUFVOICE.Parent = Head
	CSUFVOICE.SoundId = "rbxasset://sounds/saul2/saul_1-15.wav"
	CSUFVOICE.Volume = 3.5
	CSUFVOICE.Pitch = 1.15
	CSUFVOICE:Play()
	game:GetService("Debris"):AddItem(CSUFVOICE,5)
	for i,v in pairs(playor.Character.Model:GetChildren()) do
		if v:IsA("Part") or v:IsA("WedgePart") then
			v.Transparency = 1
		end

	end
	ssadqcooldown = true
	attack = true
	for i = 0,1,0.1 do 
		swait()
		ls.C0=ls.C0:Lerp(cf(-1, 0.5, 0, 0.421010077, 0.226896331, -0.878218889, 0.0368336029, 0.963132918, 0.266492397, 0.906307757, -0.144543946, 0.397131264),i) 

		rs.C0=rs.C0:Lerp(cf(0.271487743, 0.13838014, -0.391185492, -0.675418377, 0.654670537, -0.339435399, 0.737382889, 0.5941149, -0.321393788, -0.00874342769, -0.46736908, -0.884018958),i) 

		lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0.0803925544, 0.123014189, -0.989143431, -0.154275835, 0.981932461, 0.109578647, 0.984751701, 0.143791631, 0.0979182124),i) 

		rh.C0=rh.C0:Lerp(cf(0.973857224, -1.2516923, 0.298813701, 0.0667650253, 0.228158802, 0.971332073, -0.642787635, 0.754406571, -0.133022234, -0.763129413, -0.615478992, 0.197025627),i)

		rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.763129532, 0.615478873, -0.197025657, -0.0667651892, 0.228158712, 0.971332133, 0.642787457, 0.754406631, -0.133022085),i)
		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.776410937, 0.627928078, -0.0537812412, 0.292295486, 0.434384346, 0.851982176, 0.558345199, 0.645768166, -0.520801187),i) 


	end

	swait(1)
	rs.C0=cf(0.128674939, 0.0985127538, -0.321855724, -0.675418377, 0.654670477, -0.339435399, 0.737382889, 0.594115019, -0.321393818, -0.00874342769, -0.46736908, -0.884019077)

	swait(1)
	rs.C0=cf(-0.172002926, 0.0328891128, -0.182546809, -0.675418377, 0.654670477, -0.339435399, 0.737382889, 0.594115019, -0.321393818, -0.00874342769, -0.46736908, -0.884019077) 


	swait(1)
	rs.C0= cf(0.0570706576, -0.217200235, -0.179581404, -0.675418377, 0.654670477, -0.339435399, 0.737382889, 0.594115019, -0.321393818, -0.00874342769, -0.46736908, -0.884019077) 


	swait(1)
	rs.C0=cf(-0.172002926, 0.0328891128, -0.182546809, -0.675418377, 0.654670477, -0.339435399, 0.737382889, 0.594115019, -0.321393818, -0.00874342769, -0.46736908, -0.884019077) 


	swait(1)
	rs.C0= cf(0.0570706576, -0.217200235, -0.179581404, -0.675418377, 0.654670477, -0.339435399, 0.737382889, 0.594115019, -0.321393818, -0.00874342769, -0.46736908, -0.884019077) 



	swait(1)
	rs.C0=cf(0.128674939, 0.0985127538, -0.321855724, -0.675418377, 0.654670477, -0.339435399, 0.737382889, 0.594115019, -0.321393818, -0.00874342769, -0.46736908, -0.884019077)

	swait(1)
	rs.C0=cf(-0.172002926, 0.0328891128, -0.182546809, -0.675418377, 0.654670477, -0.339435399, 0.737382889, 0.594115019, -0.321393818, -0.00874342769, -0.46736908, -0.884019077) 


	swait(1)
	rs.C0=cf(0.128674939, 0.0985127538, -0.321855724, -0.675418377, 0.654670477, -0.339435399, 0.737382889, 0.594115019, -0.321393818, -0.00874342769, -0.46736908, -0.884019077)

	swait(1)
	rs.C0=cf(-0.172002926, 0.0328891128, -0.182546809, -0.675418377, 0.654670477, -0.339435399, 0.737382889, 0.594115019, -0.321393818, -0.00874342769, -0.46736908, -0.884019077) 

	swait(1)
	rs.C0= cf(0.0570706576, -0.217200235, -0.179581404, -0.675418377, 0.654670477, -0.339435399, 0.737382889, 0.594115019, -0.321393818, -0.00874342769, -0.46736908, -0.884019077) 

	swait(1)
	rs.C0=cf(-0.172002926, 0.0328891128, -0.182546809, -0.675418377, 0.654670477, -0.339435399, 0.737382889, 0.594115019, -0.321393818, -0.00874342769, -0.46736908, -0.884019077) 

	swait(1)
	rs.C0= cf(0.0570706576, -0.217200235, -0.179581404, -0.675418377, 0.654670477, -0.339435399, 0.737382889, 0.594115019, -0.321393818, -0.00874342769, -0.46736908, -0.884019077) 


	swait(1)
	rs.C0=cf(0.128674939, 0.0985127538, -0.321855724, -0.675418377, 0.654670477, -0.339435399, 0.737382889, 0.594115019, -0.321393818, -0.00874342769, -0.46736908, -0.884019077)

	swait(1)
	rs.C0=cf(-0.172002926, 0.0328891128, -0.182546809, -0.675418377, 0.654670477, -0.339435399, 0.737382889, 0.594115019, -0.321393818, -0.00874342769, -0.46736908, -0.884019077) 
	local TOILET2 = Instance.new("FlagStand",script)
	TOILET2.BrickColor = BrickColor.new("Ghost grey")
	TOILET2.Locked = false

	TOILET2.CanCollide = false
	TOILET2.Transparency = 0
	TOILET2.BrickColor = BrickColor.new("Earth green")
	TOILET2.Material = Enum.Material.Granite
	TOILET2.Size = Vector3.new(3, 3, 1)
	--RHe.Orientation = Vector3.new(0, -90, 0)
	TOILET2.formFactor =  "Symmetric"
	RWeld231 = Instance.new("Weld")
	RWeld231.Parent = TOILET2
	RWeld231.Part0 = TOILET2
	RWeld231.Part1 = playor.Character["Right Arm"]

	local aa = Instance.new("SpecialMesh",TOILET2)
	aa.MeshId =  "rbxassetid://544709735"
	aa.MeshType = Enum.MeshType.FileMesh
	aa.Scale = Vector3.new(0.075, 0.075, 0.075)
	RWeld231.C0 =  CFrame.new(0,0,2) * CFrame.Angles(math.rad(90),0,0)


	for i = 0,1,0.1 do 
		swait()


		ls.C0=ls.C0:Lerp(cf(-1, 0.5, 0, 0, 0.42261827, -0.906307757, 0, 0.906307757, 0.42261827, 1, 0, 0),i) 

		rs.C0=rs.C0:Lerp(cf(1.04546428, 0.963914633, -0.856016815, -0.656550825, -0.657088101, 0.370373011, 0.745190144, -0.641064763, 0.1836503, 0.116758674, 0.39657408, 0.910547197),i) 

		lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0.109491661, 0.0980154574, -0.989143431, 0.105123833, 0.988403499, 0.109578647, 0.988413095, -0.115980431, 0.0979182124),i) 

		rh.C0=rh.C0:Lerp(cf(1, -1, 0, 0.0871555507, 0, 0.99619472, 0, 1, 0, -0.99619472, 0, 0.0871555507),i)

		rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.902858973, 0.421010107, -0.0871557593, -0.0789899379, 0.0368336141, 0.99619472, 0.4226183, 0.906307757, 0),i)

		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.860376537, -0.495920718, 0.117536828, 0.261199266, -0.231026024, 0.937231064, -0.437638104, 0.837072015, 0.328303486),i)

	end
	spawn(function()
		local Sound0 = Instance.new("Sound")
		Sound0.Name = "NUKE?! o_"
		Sound0.Parent = playor.Character.Head
		Sound0.SoundId = "rbxassetid://174890258"
		Sound0.Volume = 1
		Sound0.PlaybackSpeed = 1.1
		Sound0:Play()
	end)
	local TOILET = Instance.new("FlagStand",script)
	TOILET.BrickColor = BrickColor.new("Ghost grey")
	TOILET.Locked = false

	TOILET.CanCollide = false
	TOILET.Transparency = 0
	TOILET.BrickColor = BrickColor.new("Earth green")
	TOILET.Material = Enum.Material.Granite
	TOILET.Size = Vector3.new(3, 3, 1)
	--RHe.Orientation = Vector3.new(0, -90, 0)
	TOILET.formFactor =  "Symmetric"
	RWeld2331 = Instance.new("Weld")
	RWeld2331.Parent = TOILET
	RWeld2331.Part0 = TOILET
	RWeld2331.Part1 = playor.Character["Right Arm"]

	local aa = Instance.new("SpecialMesh",TOILET)
	aa.MeshId =  "rbxassetid://544709735"
	aa.MeshType = Enum.MeshType.FileMesh
	aa.Scale = Vector3.new(0.075, 0.075, 0.075)
	RWeld2331.C0 =  CFrame.new(0,0,2) * CFrame.Angles(math.rad(90),0,0)

	for i = 1,10 do
		wait()
		TOILET.Transparency = TOILET.Transparency + 0.1
		aa.Scale = 	aa.Scale + Vector3.new(0.005, 0.005, 0.005)
	end
	TOILET:Destroy()

	wait(0.1)
	for i = 0,1,0.2 do 
		swait()
		ls.C0=ls.C0:Lerp(cf(-1.24230611, 0.493341297, -0.347953379, 0.0499905646, 0.571393847, -0.819152057, -0.998626351, 0.0157022178, -0.049990464, -0.015701741, 0.820525825, 0.571393847),i) 

		rs.C0=rs.C0:Lerp(cf(1.54562914, 0.612915695, 0.640376747, 0.166365668, -0.620885134, 0.766044438, -0.916822553, -0.383376598, -0.111618899, 0.362986028, -0.683757246, -0.633022189),i) 

		lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0, 0, -1, -0.965925813, 0.258819014, 0, 0.258819014, 0.965925813, 0),i)  

		rh.C0=rh.C0:Lerp(cf(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),i)  

		rj.C0=rj.C0:Lerp(cf(0, 0, 0, -1, 0, 0, 0, -0.342020124, 0.939692616, 0, 0.939692616, 0.342020124),i)  

		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),i) 

	end

	for i = 1,18 do
		swait()
		rj.C0 = rj.C0 * CFrame.Angles(0,0,math.rad(40))
	end

	for i = 0,1.2,0.2 do 
		swait()
		ls.C0=ls.C0:Lerp(cf(-0.943918109, 0.956693232, 0.269585639, 0.111795455, -0.19935672, -0.973528922, 0.637663364, -0.736983657, 0.224143833, -0.762159467, -0.645842016, 0.0447310619),i) 

		rs.C0=rs.C0:Lerp(cf(1, 0.989201367, 0.326389611, 0, 0, 1, -0.642787397, -0.766044557, 0, 0.766044557, -0.642787397, 0),i) 


		lh.C0=lh.C0:Lerp(cf(-1, -1, 0, -0, 0, -1, -0.965925813, -0.258819044, 0, -0.258819044, 0.965925813, 0),i) 


		rh.C0=rh.C0:Lerp(cf(1, -1, 0, 0, -0.087155737, 0.99619472, 0, 0.99619472, 0.087155737, -1, 0, 0),i) 


		rj.C0=rj.C0:Lerp(cf(0, 0, 0, -1, 0, 0, 0, -0.422618449, 0.906307697, 0, 0.906307697, 0.422618449),i) 


		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),i) 



	end

	local CSUFVOICE = Instance.new("Sound")
	CSUFVOICE.Name = "CSUF VOICE"
	CSUFVOICE.Parent = Head
	CSUFVOICE.SoundId = "rbxasset://sounds/saul2/saul_1-40.wav"
	CSUFVOICE.Volume = 3.5
	CSUFVOICE.Pitch = 1.15
	CSUFVOICE:Play()
	game:GetService("Debris"):AddItem(CSUFVOICE,5)
	swait(5)

	spawn(function()
		swait()


		local Sound0 = Instance.new("Sound")
		Sound0.Name = "CLANG"
		Sound0.Parent = TOILET2
		Sound0.SoundId = "rbxassetid://865912598"
		Sound0.Volume = 2
		Sound0.PlaybackSpeed = 1.5
		Sound0:Play()
		RWeld231:Destroy()
		TOILET2.Anchored  = true
		TOILET2.CFrame = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,-3)

		for i = 1,20 do

			local earth = Instance.new("FlagStand",script)
			earth.Size = Vector3.new(1,1,1)
			earth.Material = Enum.Material.Slate
			earth.BrickColor = BrickColor.new("Reddish brown")
			earth.Anchored = true
			earth.CanCollide = false
			earth.CFrame = TOILET2.CFrame * CFrame.new(math.random(-2.5,2.5),-2,math.random(-2.5,2.5))  
			earth.Orientation = earth.Orientation + Vector3.new(math.random(-180,180),math.random(-180,180),math.random(-180,180))
			spawn(function()
				swait(1000)
				for i =1,10 do
					swait()
					earth.Transparency = earth.Transparency + 0.1
				end
			end)

		end

	end)

	for i = 0,1,0.1 do 
		swait()
		ls.C0=ls.C0:Lerp(cf(-1, 0.5, 0, -0, 0, -1, -0.642787576, -0.766044497, 0, -0.766044497, 0.642787576, 0),i) 

		rs.C0=rs.C0:Lerp(cf(1, 0.5, 0, 0, 0, 1, 0.766044557, -0.642787516, 0, 0.642787516, 0.766044557, 0),i) 

		lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0, 0, -1, 0.939692616, 0.342020154, 0, 0.342020154, -0.939692616, 0),i) 

		rh.C0=rh.C0:Lerp(cf(1, -1, 0, 0, 0, 1, 0.866025448, 0.499999911, 0, -0.499999911, 0.866025448, 0),i) 

		rj.C0=rj.C0:Lerp(cf(0, 0, 0, -1, 0, -0, 0, 0.906307817, -0.422618181, 0, -0.422618181, -0.906307817),i) 

		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),i) 


	end


	swait(25)
	attack = false

	for i,v in pairs(playor.Character.Model:GetChildren()) do
		if v:IsA("Part") or v:IsA("WedgePart") then
			v.Transparency = 0
		end

	end
	swait(60*4)



	local at1 = Instance.new("Attachment",TOILET2)
	ParticleEmitter0 = Instance.new("ParticleEmitter")
	ParticleEmitter0.Name = "Fire"
	ParticleEmitter0.Parent = at1
	ParticleEmitter0.Speed = NumberRange.new(123)
	ParticleEmitter0.Rotation = NumberRange.new(4, 9)
	ParticleEmitter0.Color = ColorSequence.new(Color3.new(1, 0.333333, 0),Color3.new(0.364706, 0, 0))
	ParticleEmitter0.LightEmission = 0.86000001430511
	ParticleEmitter0.Texture = "http://www.roblox.com/asset/?id=248625108"
	ParticleEmitter0.Transparency = NumberSequence.new(0,0.54374998807907,0.73749995231628,0,0.72500002384186,0.45625001192093,0.63749998807907,0,0.52499997615814,0)
	ParticleEmitter0.Size = NumberSequence.new(25,15)
	ParticleEmitter0.Lifetime = NumberRange.new(1)
	ParticleEmitter0.Rate = 70
	ParticleEmitter0.RotSpeed = NumberRange.new(5, 9)
	ParticleEmitter0.SpreadAngle = Vector2.new(360, 360)
	ParticleEmitter0.VelocitySpread = 360
	ParticleEmitter0.Enabled = false


	spawn(function()
		for i = 1,8 do
			swait(1)


			local Sound0 = Instance.new("Sound")
			Sound0.Name = "THUD!"
			Sound0.Parent = script
			Sound0.SoundId = "rbxassetid://5382576606"
			Sound0.Volume = 1
			Sound0:Play()
		end
	end)




	spawn(function()
		for i = 1,25 do



			ParticleEmitter0:Emit(5)
			local BANGG4 = Instance.new("FlagStand",script)
			BANGG4.BrickColor = BrickColor.new("Neon orange")
			BANGG4.Size = Vector3.new(50,50,50)
			BANGG4.Locked = false
			BANGG4.Shape= "Ball"
			BANGG4.Material = Enum.Material.Neon
			BANGG4.CanCollide = false
			BANGG4.Anchored = true
			BANGG4.Transparency = 0.5
			--RHe.Orientation = Vector3.new(0, -90, 0)
			BANGG4.formFactor =  "Symmetric"
			BANGG4.CFrame = TOILET2.CFrame  * CFrame.Angles(math.random(-180,170),math.random(-180,170),math.random(-180,170))
			BANGG4.CastShadow = false
			spawn(function()
				for i, v in pairs(FindNearestHead2(TOILET2.CFrame.p, 35)) do
					if v:FindFirstChild("Head") and v:FindFirstChild("dodge") == nil  then
						swait(3)
						local bp2 = Instance.new("BodyPosition",v:WaitForChild("Torso"))
						if OVERDRIVE == true then
							v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 1	
						end
						v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 3.05
						bp2.MaxForce = Vector3.new(40000,40000,40000)
						bp2.D = 1500
						bp2.Position = TOILET2.CFrame  * CFrame.new(math.random(-75,75),math.random(35,45),math.random(-75,75)).p
						spawn(function()
							swait(16)
							bp2:Destroy()
						end)

					end
				end	
				for i = 1,10 do
					swait()
					BANGG4.Transparency = BANGG4.Transparency + 0.05	


					BANGG4.Size = BANGG4.Size + Vector3.new(10,10,10)

				end
				for i = 1,10 do
					swait()
					BANGG4.Transparency = BANGG4.Transparency + 0.05	


					BANGG4.Size = BANGG4.Size + Vector3.new(50,50,50)

				end

				BANGG4:destroy()
			end)
		end
		TOILET2:Destroy()

	end)

	spawn(function()
		swait(1200)
		ssadqcooldown = false
	end)
end

function asdc()

	attack = true
	asdccd = true
	local CSUFVOICE = Instance.new("Sound")
	CSUFVOICE.Name = "CSUF VOICE"
	CSUFVOICE.Parent = Head
	CSUFVOICE.SoundId = "rbxasset://sounds/saul2/saul2_301-0.wav"
	CSUFVOICE.Volume = 3.5
	CSUFVOICE.Pitch = 1.15
	CSUFVOICE:Play()
	game:GetService("Debris"):AddItem(CSUFVOICE,5)
	spawn(function()
		swait(160)
		asdccd = false
	end)
	for i = 0,0.4,0.2 do 
		swait()
		ls.C0=ls.C0:Lerp(cf(-1.15019274, 0.648827553, -0.12436913, -0.163725063, -0.499130696, -0.85091871, -0.724626303, -0.524456024, 0.44705981, -0.669410765, 0.68979311, -0.275816679),i)

		rs.C0=rs.C0:Lerp(cf(1, 0.5, 0, 0.258819044, -0.482962906, 0.836516261, 0, 0.866025388, 0.5, -0.965925813, -0.129409522, 0.224143863),i)

		lh.C0=lh.C0:Lerp(cf(-1, -1.05118692, 0.0361576974, 0.163175911, -0.0593911707, -0.98480773, 0.176126927, 0.983905435, -0.030153729, 0.970748544, -0.168530792, 0.171010062),i)

		rh.C0=rh.C0:Lerp(cf(1, 0.0868350118, -0.93137759, 0, 0, 0.99999994, 0.499999881, 0.866025329, 0, -0.866025388, 0.49999994, 0),i)


		rj.C0=rj.C0:Lerp(cf(0, -0.129340544, -0.0470761061, -0.965925813, -0.258819044, 0, -0.212012142, 0.791240036, 0.57357645, -0.148452505, 0.554032326, -0.819151998),.1) 


		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.990856171, -0.101823106, 0.0885213241, 0.126694709, -0.927784503, 0.350947708, 0.0463941097, 0.358953923, 0.932201505),i)

	end

	local Part0 = Instance.new("Part")
	local SpecialMesh1 = Instance.new("SpecialMesh")
	Part0.Parent = game.Workspace
	Part0.CFrame = CFrame.new(-35.8475761, 3.11265945, -33.031517, 1, 0, 0, 0, -0.0285766497, 0.999591708, 0, -0.999591708, -0.0285766497)
	Part0.Orientation = Vector3.new(-88.3600006, 180, 180)
	Part0.Position = Vector3.new(-35.8475761, 3.11265945, -33.031517)
	Part0.Rotation = Vector3.new(-91.6399994, 0, 0)
	Part0.Size = Vector3.new(5, 5, 5)
	Part0.BottomSurface = Enum.SurfaceType.Smooth
	Part0.TopSurface = Enum.SurfaceType.Smooth
	SpecialMesh1.Name = "5,5,5"
	SpecialMesh1.Parent = Part0
	SpecialMesh1.MeshId = "rbxassetid://5704435098"
	SpecialMesh1.Scale = Vector3.new(0.5, 0.5, 0.5)
	SpecialMesh1.Offset = Vector3.new(0,3,0)
	SpecialMesh1.VertexColor = Vector3.new(231, 2, 0)
	SpecialMesh1.TextureId = "rbxassetid://0"
	SpecialMesh1.MeshType = Enum.MeshType.FileMesh
	Part0.Anchored = true
	Part0.CanCollide  = false
	Part0.CFrame = playor.Character.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90),0,0) * CFrame.new(0,3,0)
	spawn(function()
		for i = 1,20 do
			swait()
			Part0.Transparency = Part0.Transparency + 0.05
			Part0.CFrame = Part0.CFrame*CFrame.new(0,-1,0)
		end
		Part0:Destroy()

	end)


	local Part0 = Instance.new("Part")
	local SpecialMesh1 = Instance.new("SpecialMesh")
	Part0.Parent = game.Workspace
	Part0.CFrame = CFrame.new(-35.8475761, 3.11265945, -33.031517, 1, 0, 0, 0, -0.0285766497, 0.999591708, 0, -0.999591708, -0.0285766497)
	Part0.Orientation = Vector3.new(-88.3600006, 180, 180)
	Part0.Position = Vector3.new(-35.8475761, 3.11265945, -33.031517)
	Part0.Rotation = Vector3.new(-91.6399994, 0, 0)
	Part0.Size = Vector3.new(5, 5, 5)
	Part0.BottomSurface = Enum.SurfaceType.Smooth
	Part0.TopSurface = Enum.SurfaceType.Smooth
	SpecialMesh1.Name = "5,5,5"
	SpecialMesh1.Parent = Part0
	SpecialMesh1.MeshId = "rbxassetid://5922911934"
	SpecialMesh1.Scale = Vector3.new(3, 3, 3)
	SpecialMesh1.VertexColor = Vector3.new(123, 0.600000024, 0)
	SpecialMesh1.TextureId = "rbxassetid://0"
	SpecialMesh1.MeshType = Enum.MeshType.FileMesh
	Part0.Anchored = true
	Part0.CanCollide  = false
	Part0.CFrame = playor.Character.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90),0,0) * CFrame.new(0,3,0)
	spawn(function()
		for i = 1,10 do
			swait()
			Part0.Transparency = Part0.Transparency + 0.1
			Part0.CFrame = Part0.CFrame*CFrame.new(0,0.2,0)
			SpecialMesh1.Scale = SpecialMesh1.Scale + Vector3.new(0.05,0.25,0.05)
		end
		Part0:Destroy()

	end)
	for i = 0,0.8,0.1 do 
		swait()

		ls.C0=ls.C0:Lerp(cf(-1.15019274, 0.648827553, -0.12436913, 0.0625564456, -0.521559238, -0.85091871, -0.435089767, -0.781558871, 0.44705981, -0.89821136, 0.342259645, -0.275816679),i)

		rs.C0=rs.C0:Lerp(cf(1.26790559, -0.0609428287, 0.251463652, 0.374999881, -0.399519116, 0.836516261, -0.224143684, 0.836516321, 0.5, -0.899519086, -0.374999791, 0.224143863),i)

		lh.C0=lh.C0:Lerp(cf(-0.996006548, -1.3139888, 0.0128160631, 0.172987387, -0.0151344314, -0.98480773, -0.0845279098, 0.995964646, -0.030153729, 0.981290042, 0.0884599686, 0.171010062),i)

		rh.C0=rh.C0:Lerp(cf(1, 0.346980959, -0.748792052, 0, 0, 0.99999994, 0.499999881, 0.866025269, 0, -0.866025329, 0.499999911, 0),i)

		rj.C0=rj.C0:Lerp(cf(0.301782846, -0.861698031, -0.15312539, -0.983560741, -0.0538210571, 0.172370449, -0.0372575372, 0.994495869, 0.0979272276, -0.176692262, 0.0898952559, -0.980152369),i)

		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.982508361, 0.147902355, -0.113146074, -0.182850972, -0.881261408, 0.435825318, -0.0352517068, 0.448890954, 0.89289093),i)

	end

	local joe = Instance.new("BodyVelocity",playor.Character.HumanoidRootPart)
	joe.maxForce = Vector3.new(40000,40000,40000)
	joe.velocity = playor.Character.HumanoidRootPart.CFrame.lookVector*76
	joe.Name = "speedy"



	spawn(function()
		for i = 1,10 do
			swait(2)
			local Part0 = Instance.new("Part")
			local SpecialMesh1 = Instance.new("SpecialMesh")
			Part0.Parent = playor.Character.Torso
			Part0.CFrame = CFrame.new(-38.6005478, 1.76257551, -22.7840443, -0.000344668486, 0.999638379, 0.0268889386, -0.0128064053, -0.0268911161, 0.999556363, 0.999915779, -1.63914677e-07, 0.0128114223)
			Part0.Orientation = Vector3.new(-88.2900009, 64.5199966, -154.529999)
			Part0.Position = Vector3.new(-38.6005478, 1.76257551, -22.7840443)
			Part0.Rotation = Vector3.new(-89.2699966, 1.53999996, -90.0199966)
			Part0.Transparency = 0
			Part0.Size = Vector3.new(4.91187048, 2.11999989, 3.56146193)
			Part0.Anchored = true
			Part0.CanCollide = false
			Part0.BottomSurface = Enum.SurfaceType.Smooth
			Part0.TopSurface = Enum.SurfaceType.Smooth
			SpecialMesh1.Name = "5,5,5"
			SpecialMesh1.Parent = Part0
			SpecialMesh1.MeshId = "rbxassetid://5769821635"
			SpecialMesh1.Scale = Vector3.new(2.94706583, 6.36219788, 2.13687754)
			SpecialMesh1.TextureId = "rbxassetid://0"
			SpecialMesh1.MeshType = Enum.MeshType.FileMesh
			Part0.CFrame = playor.Character.HumanoidRootPart.CFrame * CFrame.new(2,-1.15,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)) * CFrame.Angles(math.rad(-90),0,0)
			spawn(function()
				for i = 1,10 do
					swait()
					Part0.CFrame = Part0.CFrame * CFrame.new(-0.2,0,0)
					Part0.Transparency = Part0.Transparency + .1
				end
				Part0:Destroy()
			end)
			local Part0 = Instance.new("Part")
			local SpecialMesh1 = Instance.new("SpecialMesh")
			Part0.Parent = playor.Character.Torso
			Part0.CFrame = CFrame.new(-38.6005478, 1.76257551, -22.7840443, -0.000344668486, 0.999638379, 0.0268889386, -0.0128064053, -0.0268911161, 0.999556363, 0.999915779, -1.63914677e-07, 0.0128114223)
			Part0.Orientation = Vector3.new(-88.2900009, 64.5199966, -154.529999)
			Part0.Position = Vector3.new(-38.6005478, 1.76257551, -22.7840443)
			Part0.Rotation = Vector3.new(-89.2699966, 1.53999996, -90.0199966)
			Part0.Transparency = 0
			Part0.Size = Vector3.new(4.91187048, 2.11999989, 3.56146193)
			Part0.Anchored = true
			Part0.CanCollide = false
			Part0.BottomSurface = Enum.SurfaceType.Smooth
			Part0.TopSurface = Enum.SurfaceType.Smooth
			SpecialMesh1.Name = "5,5,5"
			SpecialMesh1.Parent = Part0
			SpecialMesh1.MeshId = "rbxassetid://5769821635"
			SpecialMesh1.Scale = Vector3.new(2.94706583, 6.36219788, 2.13687754)
			SpecialMesh1.TextureId = "rbxassetid://0"
			SpecialMesh1.MeshType = Enum.MeshType.FileMesh
			Part0.CFrame = playor.Character.HumanoidRootPart.CFrame * CFrame.new(-2,-1.15,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)) * CFrame.Angles(math.rad(-90),0,0)
			spawn(function()
				for i = 1,10 do
					swait()
					Part0.CFrame = Part0.CFrame * CFrame.new(-0.2,0,0)
					Part0.Transparency = Part0.Transparency + .1
				end
				Part0:Destroy()

			end)
		end
	end)


	spawn(function()
		for i = 1,3 do

			for i, v in pairs(FindNearestHead(playor.Character.HumanoidRootPart.CFrame.p, 13)) do
				if v:FindFirstChild("Head") and v:FindFirstChild("dodge") == nil  then

					spawn(function()		local fart = Instance.new("Sound")
						fart.Parent = v:FindFirstChildOfClass("Humanoid").Torso
						fart.SoundId = "http://www.roblox.com/asset/?id=4761049714"
						fart.Volume = 3



						fart:Play()
					end)
					if OVERDRIVE == true then
						spawn(function()
							for i = 1,math.random(0,1) do
								local Part0 = Instance.new("Part")
								local ParticleEmitter1 = Instance.new("ParticleEmitter")
								local ParticleEmitter2 = Instance.new("ParticleEmitter")
								Part0.Name = "ORB O_OO_O__O"
								Part0.Parent = game.Workspace
								Part0.CFrame = CFrame.new(119.075157, 2.55000997, -37.0025864, 1, 0, 0, 0, 1, 0, 0, 0, 1)
								Part0.Position = Vector3.new(119.075157, 2.55000997, -37.0025864)
								Part0.Transparency = 1
								Part0.Size = Vector3.new(0.0999998227, 0.099999927, 0.0999999121)
								Part0.BottomSurface = Enum.SurfaceType.Smooth
								Part0.CanCollide = false
								Part0.Material = Enum.Material.SmoothPlastic
								Part0.TopSurface = Enum.SurfaceType.Smooth
								ParticleEmitter1.Name = "Vigor"
								ParticleEmitter1.Parent = Part0
								ParticleEmitter1.Speed = NumberRange.new(0, 0)
								ParticleEmitter1.Rotation = NumberRange.new(37, 999)
								ParticleEmitter1.Color = ColorSequence.new(Color3.new(0.117647, 0, 0.352941),Color3.new(0.117647, 0, 0.352941))
								ParticleEmitter1.Texture = "rbxassetid://48315270"
								ParticleEmitter1.Size = NumberSequence.new(0.99999964237213,0)
								ParticleEmitter1.Drag = 50
								ParticleEmitter1.EmissionDirection = Enum.NormalId.Left
								ParticleEmitter1.Lifetime = NumberRange.new(1, 1)
								ParticleEmitter1.Rate = 8000
								ParticleEmitter1.RotSpeed = NumberRange.new(400, 400)
								ParticleEmitter2.Name = "Void"
								ParticleEmitter2.Parent = Part0
								ParticleEmitter2.Speed = NumberRange.new(0, 0)
								ParticleEmitter2.Rotation = NumberRange.new(37, 999)
								ParticleEmitter2.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
								ParticleEmitter2.Texture = "rbxassetid://48315270"
								ParticleEmitter2.ZOffset = 1
								ParticleEmitter2.Size = NumberSequence.new(0.50000011920929,0)
								ParticleEmitter2.Drag = 50
								ParticleEmitter2.EmissionDirection = Enum.NormalId.Left
								ParticleEmitter2.Lifetime = NumberRange.new(1, 1)
								ParticleEmitter2.Rate = 8000
								ParticleEmitter2.RotSpeed = NumberRange.new(-400, -400)
								local b2p2 = Instance.new("BodyPosition",Part0)
								b2p2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
								b2p2.Position =v:WaitForChild("Torso").CFrame * CFrame.new(0,0,0).p

								spawn(function()
									Part0.CFrame =v:WaitForChild("Torso").CFrame * CFrame.Angles(0,math.rad(math.random(-180,180)),0)

									wait(0.1)
									b2p2.Position = Part0.CFrame * CFrame.new(0,math.random(5,20),math.random(5,20)).p



									wait(1)
									b2p2.D = 800
									for i = 1,5 do
										wait(0.1)
										b2p2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0).p

									end
									playor.Character.Humanoid.Health = playor.Character.Humanoid.Health + 2
									ParticleEmitter1.Enabled = false
									ParticleEmitter2.Enabled = false
									wait(1)
									Part0:Destroy()

								end)

							end
						end)
						v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 2	
					end		v:FindFirstChildOfClass("Humanoid").Health = v:FindFirstChildOfClass("Humanoid").Health  - 4

					local blood = Instance.new("Part",playor.Character.Torso)
					blood.Anchored = true
					blood.Material = Enum.Material.SmoothPlastic
					blood.BrickColor = BrickColor.new("Deep orange")
					blood.CanCollide = false
					blood.Material = Enum.Material.Neon
					blood.Transparency = 0
					blood.Size = Vector3.new(0.7,math.random(8,12),0.7)
					local BANG3 = Instance.new("Part",game.Workspace)
					BANG3.BrickColor = BrickColor.new("Deep orange")
					BANG3.Size = Vector3.new(0.65, 0.65, 0.65)
					BANG3.Locked = false
					BANG3.Material = Enum.Material.SmoothPlastic
					BANG3.CanCollide = false
					BANG3.Anchored = true
					BANG3.Transparency =  0
					--RHe.Orientation = Vector3.new(0, -90, 0)
					BANG3.formFactor =  "Symmetric"
					local joe2 = Instance.new("SpecialMesh",BANG3)
					joe2.MeshType = Enum.MeshType.FileMesh
					joe2.MeshId = "rbxassetid://3454554153"
					joe2.TextureId = "rbxassetid://0"
					joe2.Scale = Vector3.new(1, 0, 1)
					joe2.VertexColor = Vector3.new(3,1,0.5)

					blood.CFrame =				v:WaitForChild("Torso").CFrame * CFrame.new(0,0,-2.7)*CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))


					local joe = Instance.new("BodyVelocity",v:WaitForChild("Torso"))
					joe.maxForce = Vector3.new(40000,40000,40000)
					joe.velocity = playor.Character.HumanoidRootPart.CFrame.lookVector*75
					joe.Name = "speedy"
					spawn(function()
						swait(8)
						joe:Destroy()
					end)
					local joemama123 = Instance.new("SpecialMesh",blood)
					joemama123.MeshType = Enum.MeshType.Sphere
					BANG3.CFrame = blood.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))

					spawn(function()
						for i =1,5 do
							swait()
							joe2.Scale = 		joe2.Scale + Vector3.new(0.05, 0.05, 0.05)				
							BANG3.Transparency = BANG3.Transparency + 0.2	

							blood.Size = 					blood.Size + Vector3.new(0,0.5,0)								
							blood.Transparency = blood.Transparency + 0.2
						end
						blood:Destroy()
					end)

				end
			end
			spawn(function()
				local BTAUNT100 = Instance.new("Sound", playor.Character.Torso)
				BTAUNT100.SoundId = "http://www.roblox.com/asset/?id=1548544673"
				BTAUNT100.Volume = 1
				BTAUNT100.TimePosition =  0.7
				BTAUNT100.Pitch = 1
				BTAUNT100.Looped = false

				BTAUNT100:Play()


			end)
			local BANGG4 = Instance.new("Part",game.Workspace)
			BANGG4.BrickColor = BrickColor.new("Royal purple")
			BANGG4.Size = Vector3.new(5, 5, 5)
			BANGG4.Locked = false
			BANGG4.Material = Enum.Material.Neon
			BANGG4.CanCollide = false
			BANGG4.Anchored = true
			BANGG4.Transparency = 0.5
			--RHe.Orientation = Vector3.new(0, -90, 0)
			BANGG4.formFactor =  "Symmetric"
			BANGG4.CFrame = playor.Character["Right Arm"].CFrame  * CFrame.Angles(math.random(-180,170),math.random(-180,170),math.random(-180,170))
			local joe3 = Instance.new("SpecialMesh",BANGG4)
			joe3.MeshType = Enum.MeshType.FileMesh
			joe3.MeshId = "rbxassetid://863344136"
			joe3.TextureId = "http://www.roblox.com/Asset/?id=5614579544"
			joe3.VertexColor = Vector3.new(3,1,0)
			joe3.Scale = Vector3.new(0.05,0,0.05)




			spawn(function()
				swait()
				for i = 1,10 do
					swait()
					BANGG4.Transparency = BANGG4.Transparency + 0.1	


					joe3.Scale = joe3.Scale + Vector3.new(0.01,0,0.01)

				end
				BANGG4:destroy()

			end)
			swait(7)

		end


	end)	

	swait(16)
	joe:Destroy()

	spawn(function()
		local minus = -180
		for i =1,10 do
			swait(1)
			local joe2 = Instance.new("FlagStand",playor.Character.Torso)
			joe2.Anchored = false
			joe2.CanCollide = false
			joe2.BrickColor = BrickColor.new("CGA brown")
			joe2.Material = Enum.Material.Neon
			joe2.Size = Vector3.new(1.5,1.5,1.5)
			joe2.CFrame = playor.Character["Right Arm"].CFrame * CFrame.new(0,-1,0)
			joe2.Orientation = joe2.Orientation + Vector3.new(math.random(minus,180),math.random(minus,180),math.random(minus,180))
			joe2.Anchored = true
			spawn(function()
				for i =1,10 do
					swait()
					joe2.CFrame = joe2.CFrame *CFrame.fromEulerAnglesXYZ(10,10,10)
					joe2.Transparency = joe2.Transparency + 0.1
					joe2.Size = joe2.Size + Vector3.new(0.1,.1,.1)
				end
				joe2:Destroy()

			end)

		end
	end)
	for i = 0,0.8,0.2 do 
		swait()

		ls.C0=ls.C0:Lerp(cf(-1, 0.5, 0, -0.0571375191, 0.520985901, -0.851650715, 0.578332603, 0.712613583, 0.397131264, 0.813797653, -0.469846308, -0.342020124),i)



		rs.C0=rs.C0:Lerp(cf(1, 0.5, 0, -0.254435092, -0.402692854, 0.879261672, 0.520315528, 0.709377229, 0.475453079, -0.815189838, 0.578465462, 0.0290368497),i) 
		lh.C0=lh.C0:Lerp(cf(-0.888540328, -1.03930664, -0.193053693, -0.482963115, 0.129409462, -0.866025329, 0.258818835, 0.965925872, 0, 0.836516261, -0.224143669, -0.500000179),i)

		rh.C0=rh.C0:Lerp(cf(1.2474587, -0.453028023, -0.453573763, 0.494919628, -0.24853158, 0.832638204, 0.486699015, 0.873098612, -0.028685078, -0.719846189, 0.419441044, 0.553073823),i)

		rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.906307757, 0.42261827, 0, 0.271653861, 0.582563519, 0.766044319, 0.323744327, 0.694271922, -0.642787755),i)

		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),i)


	end




	for i = 0,1,0.2 do 
		swait()



		ls.C0=ls.C0:Lerp(cf(-1, 0.5, 0, -0.309975505, 0.42261827, -0.851650715, 0.144543946, 0.906307757, 0.397131264, 0.939692616, 0, -0.342020124),i)

		rs.C0=rs.C0:Lerp(cf(1.26250625, 1.69994998, -0.451404899, -0.742097318, 0.452086449, 0.49488312, -0.403319955, -0.890864491, 0.209029347, 0.535373211, -0.0444761366, 0.843443751),i)

		lh.C0=lh.C0:Lerp(cf(-0.888540328, -1.03930664, -0.193053693, -0.500000179, -7.4505806e-09, -0.866025329, 0, 1, 0, 0.866025329, 0, -0.500000179),i)

		rh.C0=rh.C0:Lerp(cf(1.2474587, -0.453028023, -0.453573763, 0.666716218, -0.0893032402, 0.739942074, -0.0893028826, 0.976071298, 0.198266894, -0.739942133, -0.19826673, 0.642787576),i)

		rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.482962817, 0.866025448, 0.129409492, 0.258819044, 0, 0.965925813, 0.836516321, 0.499999911, -0.224143878),i)

		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.642787635, -0.663414001, -0.38302207, 0, -0.499999821, 0.866025507, -0.766044438, 0.556670487, 0.321393698),i)


	end

	for i, v in pairs(FindNearestHead(playor.Character.HumanoidRootPart.CFrame.p, 13)) do
		if v:FindFirstChild("Head") and v:FindFirstChild("dodge") == nil  then
			spawn(function()
				local fart = Instance.new("Sound")
				fart.Parent = v:FindFirstChildOfClass("Humanoid").Torso
				fart.SoundId = "http://www.roblox.com/asset/?id=62339698"
				fart.Volume = 1
				fart.Pitch = 0.6


				fart:Play()
			end)
			if OVERDRIVE == true then

				spawn(function()
					for i = 1,math.random(2,4) do
						local Part0 = Instance.new("Part")
						local ParticleEmitter1 = Instance.new("ParticleEmitter")
						local ParticleEmitter2 = Instance.new("ParticleEmitter")
						Part0.Name = "ORB O_OO_O__O"
						Part0.Parent = game.Workspace
						Part0.CFrame = CFrame.new(119.075157, 2.55000997, -37.0025864, 1, 0, 0, 0, 1, 0, 0, 0, 1)
						Part0.Position = Vector3.new(119.075157, 2.55000997, -37.0025864)
						Part0.Transparency = 1
						Part0.Size = Vector3.new(0.0999998227, 0.099999927, 0.0999999121)
						Part0.BottomSurface = Enum.SurfaceType.Smooth
						Part0.CanCollide = false
						Part0.Material = Enum.Material.SmoothPlastic
						Part0.TopSurface = Enum.SurfaceType.Smooth
						ParticleEmitter1.Name = "Vigor"
						ParticleEmitter1.Parent = Part0
						ParticleEmitter1.Speed = NumberRange.new(0, 0)
						ParticleEmitter1.Rotation = NumberRange.new(37, 999)
						ParticleEmitter1.Color = ColorSequence.new(Color3.new(0.117647, 0, 0.352941),Color3.new(0.117647, 0, 0.352941))
						ParticleEmitter1.Texture = "rbxassetid://48315270"
						ParticleEmitter1.Size = NumberSequence.new(0.99999964237213,0)
						ParticleEmitter1.Drag = 50
						ParticleEmitter1.EmissionDirection = Enum.NormalId.Left
						ParticleEmitter1.Lifetime = NumberRange.new(1, 1)
						ParticleEmitter1.Rate = 8000
						ParticleEmitter1.RotSpeed = NumberRange.new(400, 400)
						ParticleEmitter2.Name = "Void"
						ParticleEmitter2.Parent = Part0
						ParticleEmitter2.Speed = NumberRange.new(0, 0)
						ParticleEmitter2.Rotation = NumberRange.new(37, 999)
						ParticleEmitter2.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
						ParticleEmitter2.Texture = "rbxassetid://48315270"
						ParticleEmitter2.ZOffset = 1
						ParticleEmitter2.Size = NumberSequence.new(0.50000011920929,0)
						ParticleEmitter2.Drag = 50
						ParticleEmitter2.EmissionDirection = Enum.NormalId.Left
						ParticleEmitter2.Lifetime = NumberRange.new(1, 1)
						ParticleEmitter2.Rate = 8000
						ParticleEmitter2.RotSpeed = NumberRange.new(-400, -400)
						local b2p2 = Instance.new("BodyPosition",Part0)
						b2p2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
						b2p2.Position =v:WaitForChild("Torso").CFrame * CFrame.new(0,0,0).p

						spawn(function()
							Part0.CFrame =v:WaitForChild("Torso").CFrame * CFrame.Angles(0,math.rad(math.random(-180,180)),0)

							wait(0.1)
							b2p2.Position = Part0.CFrame * CFrame.new(0,math.random(5,20),math.random(5,20)).p



							wait(1)
							b2p2.D = 800
							for i = 1,5 do
								wait(0.1)
								b2p2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0).p

							end
							playor.Character.Humanoid.Health = playor.Character.Humanoid.Health + 2
							ParticleEmitter1.Enabled = false
							ParticleEmitter2.Enabled = false
							wait(1)
							Part0:Destroy()

						end)

					end
				end)


				v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 6	
			end
			v:FindFirstChildOfClass("Humanoid").Health = v:FindFirstChildOfClass("Humanoid").Health  - 15

			local blood = Instance.new("Part",script)
			blood.Anchored = true
			blood.Material = Enum.Material.SmoothPlastic
			blood.BrickColor = BrickColor.new("Black")
			blood.CanCollide = false
			blood.Material = Enum.Material.Neon
			blood.Transparency = 0
			blood.Size = Vector3.new(0.7,math.random(8,12),0.7)
			local BANG3 = Instance.new("Part",game.Workspace)
			BANG3.BrickColor = BrickColor.new("Deep orange")
			BANG3.Size = Vector3.new(0.65, 0.65, 0.65)
			BANG3.Locked = false
			BANG3.Material = Enum.Material.SmoothPlastic
			BANG3.CanCollide = false
			BANG3.Anchored = true
			BANG3.Transparency =  0
			--RHe.Orientation = Vector3.new(0, -90, 0)
			BANG3.formFactor =  "Symmetric"
			local joe2 = Instance.new("SpecialMesh",BANG3)
			joe2.MeshType = Enum.MeshType.FileMesh
			joe2.MeshId = "rbxassetid://3454554153"
			joe2.TextureId = "rbxassetid://0"
			joe2.Scale = Vector3.new(1, 0, 1)
			joe2.VertexColor = Vector3.new(3,1,0.5)

			blood.CFrame =				v:WaitForChild("Torso").CFrame * CFrame.new(0,0,-2.7)*CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
			local joe = Instance.new("BodyVelocity",v:WaitForChild("Torso"))
			joe.maxForce = Vector3.new(40000,40000,40000)
			joe.velocity = Vector3.new(0,50,0)
			joe.Name = "speedy"
			spawn(function()
				swait(8)
				joe:Destroy()
			end)
			local joemama123 = Instance.new("SpecialMesh",blood)
			joemama123.MeshType = Enum.MeshType.Sphere
			BANG3.CFrame = blood.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))

			spawn(function()
				for i =1,5 do
					swait()
					joe2.Scale = 		joe2.Scale + Vector3.new(0.05, 0.05, 0.05)				
					BANG3.Transparency = BANG3.Transparency + 0.2	

					blood.Size = 					blood.Size + Vector3.new(0,0.5,0)								
					blood.Transparency = blood.Transparency + 0.2
				end
				blood:Destroy()
			end)

		end
	end
	swait(10)
	attack = false
end
function adadadq()

	attack = true
	playor.Character.Torso.OHNO:Pause()
	for i,v in pairs(playor.Character.Model:GetChildren()) do
		if v:IsA("Part") or v:IsA("WedgePart") then
			v.Transparency = 1
		end

	end
	playor.Character.Humanoid.WalkSpeed = 0
	local Sound0 = Instance.new("Sound")
	Sound0.Name = "OH HEY"
	Sound0.Parent = playor.Character.Torso
	Sound0.SoundId = "rbxasset://sounds/saul2/saul2_200-1.wav"
	Sound0.Pitch = 1.15
	Sound0.Volume = 5
	Sound0:Play()
	ls.C0=cf(-1, 0.5, 0, -0.172987387, -0.981060326, 0.0871557668, -0.984807789, 0.173648179, 4.35450538e-08, -0.0151344817, -0.0858316645, -0.99619472)

	rs.C0=cf(0.914438903, 0.485359997, 0.00558765745, -0.264623493, 0.9642452, -0.0143396109, 0.926183999, 0.249979883, -0.282300144, -0.268621951, -0.0879843533, -0.95921886 )

	lh.C0=cf(-1, -1, 0, 0.0868238956, -0.00759610627, -0.99619472, 0.173317611, 0.984836698, 0.00759608997, 0.981031418, -0.173317611, 0.086823903)

	rh.C0=cf(1, -1, 0, 0.0868240744, 0.0075961058, 0.99619472, -0.173317403, 0.984836757, 0.00759610627, -0.981031477, -0.173317403, 0.0868240818)




	rj.C0=cf(0, 0, 0, -1, 0, 0, 0, -0.173648179, 0.98480773, 0, 0.98480773, 0.173648179)

	ne.C0=cf(0, 1, 0, -1, 0, 0, 0, 0.0871555507, 0.99619472, 0, 0.99619472, -0.0871555507) 

	wait(1.5)
	spawn(function()
		repeat
			wait(0.1)
			rs.C0 =  rs.C0 * CFrame.Angles(math.rad(math.random(-2,2)),math.rad(math.random(-2,2)),math.rad(math.random(-2,2)))
			ls.C0 =  ls.C0 * CFrame.Angles(math.rad(math.random(-2,2)),math.rad(math.random(-2,2)),math.rad(math.random(-2,2)))

		until attack == false
	end)
	ls.C0=cf(-0.993350923, 0.541215658, -0.218237013, -0.155224875, -0.987425923, 0.0299246609, -0.969846308, 0.158082888, 0.185493812, -0.18789196, -0.000229075551, -0.982189715)

	rs.C0=cf(0.880763471, 0.497064531, -0.330215991, -0.262366742, 0.9642452, -0.0373485014, 0.947263718, 0.249979883, -0.200503677, -0.183998331, -0.0879843533, -0.97898072)

	lh.C0=cf(-1, -1, 0, 0.0754789263, 0.0435777642, -0.99619472, -0.422905505, 0.906141937, 0.00759608997, 0.903024852, 0.420722842, 0.086823903)

	rh.C0=cf(1, -1, 0, 0.075479053, -0.0435779057, 0.99619472, 0.42290622, 0.906141698, 0.00759610627, -0.903024554, 0.420723617, 0.0868240818) 

	rj.C0=cf(0, 0, 0, -1, 0, 0, 0, 0.422618091, 0.906307817, 0, 0.906307817, -0.422618091)

	ne.C0=cf(0, 1, 0, -1, 0, 0, 0, 0.422617912, 0.906307936, 0, 0.906307936, -0.422617912) 

	wait(0.6)
	ls.C0=cf(-0.993350923, 0.541215658, -0.218237013, -0.155224875, -0.519628465, -0.840173662, -0.969846308, -0.0816009194, 0.229650706, -0.18789196, 0.850486755, -0.491293222) 

	rs.C0=cf(0.880763471, 0.497064531, -0.330215991, -0.0273067057, 0.651584625, 0.758084297, 0.984485447, -0.113966599, 0.133417681, 0.1733291, 0.749965906, -0.638363421) 

	lh.C0=cf(-1, -1, 0, 0.0667650327, 0.0560224988, -0.99619472, -0.573830485, 0.818938792, 0.00759608997, 0.816248059, 0.571139693, 0.086823903)

	rh.C0=cf(1, -1, 0, 0.0667651445, -0.0560226478, 0.99619472, 0.573831022, 0.818938613, 0.00759610627, -0.816247821, 0.571140289, 0.0868240818)

	rj.C0=cf(0, 0, 0, -1, 0, 0, 0, 0.573576272, 0.819152117, 0, 0.819152117, -0.573576272) 

	ne.C0=cf(0, 1, 0, -1, 0, 0, 0, 0.573576093, 0.819152236, 0, 0.819152236, -0.573576093) 
	wait(0.6)
	ls.C0=cf(-0.901816547, 0.790584266, -0.687330782, 0.785018146, -0.0871473849, -0.613312185, -0.587387204, -0.419216007, -0.692267478, -0.196781009, 0.903694212, -0.380281419) 

	rs.C0=cf(0.776766837, 0.579357207, -0.787658215, 0.654631376, 0.0339422226, 0.755185783, 0.688491881, -0.439276904, -0.577074528, 0.312148333, 0.897710204, -0.310933262) 

	lh.C0=cf(-1, -1, 0, 0.0754789189, 0.0435777791, -0.99619472, -0.422905654, 0.906141758, 0.00759608997, 0.903024673, 0.420722991, 0.086823903)

	rh.C0=cf(1, -1, 0, 0.076228112, -0.0422539525, 0.99619472, 0.407027125, 0.913384557, 0.00759610627, -0.910229862, 0.404899269, 0.0868240818)

	rj.C0=cf(0, 0, 0, -1, 0, 0, 0, 0.453990221, 0.891006649, 0, 0.891006649, -0.453990221)

	ne.C0=cf(0, 1, 0, -1, 0, 0, 0, 0.515037656, 0.857167423, 0, 0.857167423, -0.515037656) 
	spawn(function()
		repeat
			wait(0.1)
			rj.C0 =  rj.C0 * CFrame.Angles(math.rad(math.random(-2,2)),math.rad(math.random(-2,2)),math.rad(math.random(-2,2)))

		until attack == false
	end)
	wait(0.3)
	ls.C0=cf(-0.850523055, 0.84362793, -0.641040027, 0.785018146, -0.192323953, -0.588861644, -0.587387204, -0.533058167, -0.608954251, -0.196781009, 0.823929906, -0.531428933) 

	rs.C0=cf(0.704250097, 0.619267404, -0.723605633, 0.654631376, 0.302322179, 0.692862809, 0.688491881, -0.616905332, -0.381322682, 0.312148333, 0.726656139, -0.611991763)

	lh.C0=cf(-1.31759262, -0.374916911, -0.319439948, 0.474142343, 0.0435777791, -0.87936914, -0.389433146, 0.906141758, -0.16507189, 0.789639711, 0.420722991, 0.446610808) 

	rh.C0=cf(1.13873744, -0.54940027, -0.0406180024, 0.603905559, -0.0938280374, 0.791513979, 0.390731066, 0.900389671, -0.191383734, -0.694713831, 0.424846828, 0.580411851)

	rj.C0=cf(0, -0.497873604, 0.253679067, -1, 0, 0, 0, 0.669130206, 0.743145168, 0, 0.743145168, -0.669130206)

	ne.C0=cf(0, 1, 0, -1, 0, 0, 0, 0.515037656, 0.857167423, 0, 0.857167423, -0.515037656)

	wait(0.3)
	ls.C0=cf(-0.850523055, 0.84362793, -0.641040027, 0.785018146, -0.000942692161, -0.619472086, -0.587387204, -0.318791211, -0.743873954, -0.196781009, 0.947824478, -0.250810593)

	rs.C0=cf(0.704250097, 0.619267404, -0.723605633, 0.654631376, 0.215629965, 0.724542141, 0.688491881, -0.565835476, -0.453662187, 0.312148333, 0.795822799, -0.518872917) 

	lh.C0=cf(-1.31759262, -0.374916911, -0.319439948, 0.475592881, -0.0228341743, -0.87936914, -0.25953266, 0.951521873, -0.16507189, 0.840508342, 0.306731939, 0.446610808) 

	rh.C0=cf(1.13873744, -0.54940027, -0.0406180024, 0.610216677, 0.0337813944, 0.791513979, 0.194991037, 0.961951494, -0.191383734, -0.767863274, 0.271123707, 0.580411851)

	rj.C0=cf(0, -0.497873604, 0.253679067, -1, 0, 0, 0, 0.544638634, 0.838670909, 0, 0.838670909, -0.544638634) 

	ne.C0=cf(0, 1, 0, -1, 0, 0, 0, -0.017452836, 0.999847531, 0, 0.999847531, 0.017452836)
	wait(1)
	ls.C0=cf(-0.993350923, 0.541215658, -0.218237013, -0.155224875, -0.519628465, -0.840173662, -0.969846308, -0.0816009194, 0.229650706, -0.18789196, 0.850486755, -0.491293222) 

	rs.C0=cf(0.880763471, 0.497064531, -0.330215991, -0.0273067057, 0.651584625, 0.758084297, 0.984485447, -0.113966599, 0.133417681, 0.1733291, 0.749965906, -0.638363421) 

	lh.C0=cf(-1, -1, 0, 0.0667650327, 0.0560224988, -0.99619472, -0.573830485, 0.818938792, 0.00759608997, 0.816248059, 0.571139693, 0.086823903)

	rh.C0=cf(1, -1, 0, 0.0667651445, -0.0560226478, 0.99619472, 0.573831022, 0.818938613, 0.00759610627, -0.816247821, 0.571140289, 0.0868240818)

	rj.C0=cf(0, 0, 0, -1, 0, 0, 0, 0.573576272, 0.819152117, 0, 0.819152117, -0.573576272) 

	ne.C0=cf(0, 1, 0, -1, 0, 0, 0, 0.573576093, 0.819152236, 0, 0.819152236, -0.573576093) 
	swait(1)
	ls.C0=cf(-0.993350923, 0.541215658, -0.218237013, -0.155224875, -0.987425923, 0.0299246609, -0.969846308, 0.158082888, 0.185493812, -0.18789196, -0.000229075551, -0.982189715)

	rs.C0=cf(0.880763471, 0.497064531, -0.330215991, -0.262366742, 0.9642452, -0.0373485014, 0.947263718, 0.249979883, -0.200503677, -0.183998331, -0.0879843533, -0.97898072)

	lh.C0=cf(-1, -1, 0, 0.0754789263, 0.0435777642, -0.99619472, -0.422905505, 0.906141937, 0.00759608997, 0.903024852, 0.420722842, 0.086823903)

	rh.C0=cf(1, -1, 0, 0.075479053, -0.0435779057, 0.99619472, 0.42290622, 0.906141698, 0.00759610627, -0.903024554, 0.420723617, 0.0868240818) 

	rj.C0=cf(0, 0, 0, -1, 0, 0, 0, 0.422618091, 0.906307817, 0, 0.906307817, -0.422618091)

	ne.C0=cf(0, 1, 0, -1, 0, 0, 0, 0.422617912, 0.906307936, 0, 0.906307936, -0.422617912) 
	spawn(function()
		repeat
			wait(0.1)
			rj.C0 =  rj.C0 * CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-5,5)),math.rad(math.random(-5,5)))

		until attack == false
	end)
	swait(1)

	ls.C0=cf(-0.993350923, 0.541215658, -0.218237013, -0.155224875, -0.987425923, 0.0299246609, -0.969846308, 0.158082888, 0.185493812, -0.18789196, -0.000229075551, -0.982189715)

	rs.C0=cf(0.880763471, 0.497064531, -0.330215991, -0.262366742, 0.9642452, -0.0373485014, 0.947263718, 0.249979883, -0.200503677, -0.183998331, -0.0879843533, -0.97898072)

	lh.C0=cf(-1, -1, 0, 0.0754789263, 0.0435777642, -0.99619472, -0.422905505, 0.906141937, 0.00759608997, 0.903024852, 0.420722842, 0.086823903)

	rh.C0=cf(1, -1, 0, 0.075479053, -0.0435779057, 0.99619472, 0.42290622, 0.906141698, 0.00759610627, -0.903024554, 0.420723617, 0.0868240818) 

	rj.C0=cf(0, 0, 0, -1, 0, 0, 0, 0.422618091, 0.906307817, 0, 0.906307817, -0.422618091)

	ne.C0=cf(0, 1, 0, -1, 0, 0, 0, 0.422617912, 0.906307936, 0, 0.906307936, -0.422617912) 

	wait(.1)
	ls.C0=cf(-0.993350923, 0.541215658, -0.218237013, -0.155224875, -0.519628465, -0.840173662, -0.969846308, -0.0816009194, 0.229650706, -0.18789196, 0.850486755, -0.491293222) 

	rs.C0=cf(0.880763471, 0.497064531, -0.330215991, -0.0273067057, 0.651584625, 0.758084297, 0.984485447, -0.113966599, 0.133417681, 0.1733291, 0.749965906, -0.638363421) 

	lh.C0=cf(-1, -1, 0, 0.0667650327, 0.0560224988, -0.99619472, -0.573830485, 0.818938792, 0.00759608997, 0.816248059, 0.571139693, 0.086823903)

	rh.C0=cf(1, -1, 0, 0.0667651445, -0.0560226478, 0.99619472, 0.573831022, 0.818938613, 0.00759610627, -0.816247821, 0.571140289, 0.0868240818)

	rj.C0=cf(0, 0, 0, -1, 0, 0, 0, 0.573576272, 0.819152117, 0, 0.819152117, -0.573576272) 

	ne.C0=cf(0, 1, 0, -1, 0, 0, 0, 0.573576093, 0.819152236, 0, 0.819152236, -0.573576093) 
	swait(1)
	ls.C0=cf(-0.850523055, 0.84362793, -0.641040027, 0.785018146, -0.000942692161, -0.619472086, -0.587387204, -0.318791211, -0.743873954, -0.196781009, 0.947824478, -0.250810593)

	rs.C0=cf(0.704250097, 0.619267404, -0.723605633, 0.654631376, 0.215629965, 0.724542141, 0.688491881, -0.565835476, -0.453662187, 0.312148333, 0.795822799, -0.518872917) 

	lh.C0=cf(-1.31759262, -0.374916911, -0.319439948, 0.475592881, -0.0228341743, -0.87936914, -0.25953266, 0.951521873, -0.16507189, 0.840508342, 0.306731939, 0.446610808) 

	rh.C0=cf(1.13873744, -0.54940027, -0.0406180024, 0.610216677, 0.0337813944, 0.791513979, 0.194991037, 0.961951494, -0.191383734, -0.767863274, 0.271123707, 0.580411851)

	rj.C0=cf(0, -0.497873604, 0.253679067, -1, 0, 0, 0, 0.544638634, 0.838670909, 0, 0.838670909, -0.544638634) 

	ne.C0=cf(0, 1, 0, -1, 0, 0, 0, -0.017452836, 0.999847531, 0, 0.999847531, 0.017452836)
	wait(1)



	BTAUNT100 = Instance.new("Sound", playor.Character.Torso)
	BTAUNT100.SoundId = "http://www.roblox.com/asset/?id=1548544673"
	BTAUNT100.Volume = 4
	BTAUNT100.Pitch = 1
	BTAUNT100.Looped = false

	BTAUNT100:Play()
	spawn(function()
		local BANGG4 = Instance.new("FlagStand",game.Workspace)
		BANGG4.BrickColor = BrickColor.new("Dark indigo")
		BANGG4.Size = Vector3.new(5, 5, 5)
		BANGG4.Locked = false
		BANGG4.Material = Enum.Material.Neon
		BANGG4.CanCollide = false
		BANGG4.Anchored = true
		BANGG4.Transparency = 0.5
		--RHe.Orientation = Vector3.new(0, -90, 0)
		BANGG4.formFactor =  "Symmetric"
		BANGG4.CFrame = playor.Character.Torso.CFrame  * CFrame.Angles(math.random(-180,170),math.random(-180,170),math.random(-180,170))
		local joe3 = Instance.new("SpecialMesh",BANGG4)
		joe3.MeshType = Enum.MeshType.FileMesh
		joe3.MeshId = "http://www.roblox.com/Asset/?id=9982590"
		joe3.TextureId = "http://www.roblox.com/Asset/?id=5614579544"
		joe3.VertexColor = Vector3.new(0.8,0,12321213)
		joe3.Scale = Vector3.new(35,35,35)




		spawn(function()
			swait(1)
			for i = 1,20 do
				swait(1)
				BANGG4.Transparency = BANGG4.Transparency + 0.05	


				joe3.Scale = joe3.Scale + Vector3.new(0.5,0.5,0.5)

			end
			BANGG4:destroy()

		end)
	end)


	spawn(function()
		local BANGG4 = Instance.new("FlagStand",script)
		BANGG4.BrickColor = BrickColor.new("Dark indigo")
		BANGG4.Size = Vector3.new(55,55,55)
		BANGG4.Locked = false
		BANGG4.Material = Enum.Material.Neon
		BANGG4.CanCollide = false
		BANGG4.Anchored = true
		BANGG4.Transparency = 0.3
		BANGG4.Shape = "Ball"
		--RHe.Orientation = Vector3.new(0, -90, 0)
		BANGG4.formFactor =  "Symmetric"
		BANGG4.CFrame = playor.Character.Torso.CFrame  * CFrame.Angles(math.random(-180,170),math.random(-180,170),math.random(-180,170))



		spawn(function()
			swait(1)
			for i = 1,10 do
				swait(1)
				BANGG4.Transparency = BANGG4.Transparency + 0.1	

			end
			BANGG4:destroy()

		end)
	end)


	spawn(function()
		local BANGG4 = Instance.new("FlagStand",script)
		BANGG4.BrickColor = BrickColor.new("Royal purple")
		BANGG4.Size = Vector3.new(120,120,120)
		BANGG4.Locked = false
		BANGG4.Material = Enum.Material.Neon
		BANGG4.CanCollide = false
		BANGG4.Anchored = true
		BANGG4.Transparency = 0.3
		BANGG4.Shape = "Ball"
		--RHe.Orientation = Vector3.new(0, -90, 0)
		BANGG4.formFactor =  "Symmetric"
		BANGG4.CFrame = playor.Character.Torso.CFrame  * CFrame.Angles(math.random(-180,170),math.random(-180,170),math.random(-180,170))



		spawn(function()
			swait(1)
			for i = 1,10 do
				swait(1)
				BANGG4.Transparency = BANGG4.Transparency + 0.1	

			end
			BANGG4:destroy()

		end)
	end)

	spawn(function()
		local BANGG4 = Instance.new("FlagStand",game.Workspace)
		BANGG4.BrickColor = BrickColor.new("Institutional white")
		BANGG4.Size = Vector3.new(5, 5, 5)
		BANGG4.Locked = false
		BANGG4.Material = Enum.Material.Neon
		BANGG4.CanCollide = false
		BANGG4.Anchored = true
		BANGG4.Transparency = 0.3
		--RHe.Orientation = Vector3.new(0, -90, 0)
		BANGG4.formFactor =  "Symmetric"
		BANGG4.CFrame = playor.Character.Torso.CFrame  * CFrame.Angles(math.random(-180,170),math.random(-180,170),math.random(-180,170))
		local joe3 = Instance.new("SpecialMesh",BANGG4)
		joe3.MeshType = Enum.MeshType.FileMesh
		joe3.MeshId = "http://www.roblox.com/Asset/?id=9982590"
		joe3.TextureId = "http://www.roblox.com/Asset/?id=5614579544"
		joe3.VertexColor = Vector3.new(0.8,0,12321213)
		joe3.Scale = Vector3.new(35,35,35)



		spawn(function()
			swait(1)
			for i = 1,10 do
				swait(1)
				BANGG4.Transparency = BANGG4.Transparency + 0.1	


				joe3.Scale = joe3.Scale + Vector3.new(0.3,0.3,0.3)

			end
			BANGG4:destroy()

		end)
	end)
	attack =false
	playor.Character.Torso.OHNO2:Resume()
	for i,v in pairs(playor.Character.Model:GetChildren()) do
		if v:IsA("Part") or v:IsA("WedgePart") then
			v.Transparency = 0
		end

	end

	ParticleEmitter1 = Instance.new("ParticleEmitter")
	ParticleEmitter1.Parent = playor.Character.Torso
	ParticleEmitter1.Speed = NumberRange.new(0, 0)
	ParticleEmitter1.Color = ColorSequence.new(Color3.new(1, 1, 1),Color3.new(0.494118, 0.494118, 0.494118))
	ParticleEmitter1.LightInfluence = 1
	ParticleEmitter1.Texture = "http://www.roblox.com/asset/?id=3232005358"
	ParticleEmitter1.Transparency = NumberSequence.new(0.5,1)
	ParticleEmitter1.Size = NumberSequence.new(65,125)
	ParticleEmitter1.Drag = 1
	ParticleEmitter1.Lifetime = NumberRange.new(0.1)
	ParticleEmitter1.LockedToPart = false
	ParticleEmitter1.Rate = 1
	ParticleEmitter1.RotSpeed = NumberRange.new(190, 190)
	ParticleEmitter1.SpreadAngle = Vector2.new(-360, 360)
	ParticleEmitter1.VelocitySpread = -360
	ParticleEmitter1.Enabled = false
	ParticleEmitter1:Emit(8)




	OVERDRIVE = true







	spawn(function()
		local minus = -180
		local minu2 = -90
		local minus333 = -0.25

		p=Instance.new("Part")
		p.Name="WingPart"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.BrickColor=BrickColor.new("Really black")
		p.Size=Vector3.new(1,1,1)
		p.CFrame=playor.Character.Torso.CFrame
		m=Instance.new("BlockMesh")
		m.Scale=Vector3.new(.5,2,1)/1.5
		m.Parent=p
		w=Instance.new("Weld")
		w.Part0=playor.Character.Torso
		w.Part1=p
		w.C0=CFrame.new(.35,.2,.7)*CFrame.fromEulerAnglesXYZ(0,math.pi/4,0)
		w.Parent=w.Part0
		p.Parent=playor.Character


		p=Instance.new("Part")
		p.Name="WingPart"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.BrickColor=BrickColor.new("Really black")
		p.Size=Vector3.new(1,1,1)
		p.CFrame=playor.Character.Torso.CFrame
		m=Instance.new("BlockMesh")
		m.Scale=Vector3.new(.5,2,1)/1.5
		m.Parent=p
		w=Instance.new("Weld")
		w.Part0=playor.Character.Torso
		w.Part1=p
		w.C0=CFrame.new(-.35,.2,.7)*CFrame.fromEulerAnglesXYZ(0,-math.pi/4,0)
		w.Parent=w.Part0
		p.Parent=playor.Character

		p=Instance.new("Part")
		p.Name="WingPart"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.BrickColor=BrickColor.new("Really black")
		p.Size=Vector3.new(1,1,1)
		p.CFrame=playor.Character.Torso.CFrame
		m=Instance.new("BlockMesh")
		m.Scale=Vector3.new(.5,5,1)/1.5
		m.Parent=p
		w=Instance.new("Weld")
		w.Part0=playor.Character.Torso
		w.Part1=p
		w.C0=CFrame.new(.35,.2,.7)*CFrame.fromEulerAnglesXYZ(0,math.pi/4,0)
		w.C0=w.C0*CFrame.new(0,-.625,.625)
		w.Parent=w.Part0
		p.Parent=playor.Character

		p=Instance.new("Part")
		p.Name="WingPart"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.BrickColor=BrickColor.new("Really black")
		p.Size=Vector3.new(1,1,1)
		p.CFrame=playor.Character.Torso.CFrame
		m=Instance.new("BlockMesh")
		m.Scale=Vector3.new(.5,5,1)/1.5
		m.Parent=p
		w=Instance.new("Weld")
		w.Part0=playor.Character.Torso
		w.Part1=p
		w.C0=CFrame.new(-.35,.2,.7)*CFrame.fromEulerAnglesXYZ(0,-math.pi/4,0)
		w.C0=w.C0*CFrame.new(0,-.625,.625)
		w.Parent=w.Part0
		p.Parent=playor.Character

		p=Instance.new("Part")
		p.Name="WingPart"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.BrickColor=BrickColor.new("Really black")
		p.Size=Vector3.new(1,1,1)
		p.CFrame=playor.Character.Torso.CFrame
		m=Instance.new("BlockMesh")
		m.Scale=Vector3.new(.5,8,1)/1.5
		m.Parent=p
		w=Instance.new("Weld")
		w.Part0=playor.Character.Torso
		w.Part1=p
		w.C0=CFrame.new(.35,.2,.7)*CFrame.fromEulerAnglesXYZ(0,math.pi/4,0)
		w.C0=w.C0*CFrame.new(0,-1.275,1.275)
		w.Parent=w.Part0
		p.Parent=playor.Character

		p=Instance.new("Part")
		p.Name="WingPart"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.BrickColor=BrickColor.new("Really black")
		p.Size=Vector3.new(1,1,1)
		p.CFrame=playor.Character.Torso.CFrame
		m=Instance.new("BlockMesh")
		m.Scale=Vector3.new(.5,8,1)/1.5
		m.Parent=p
		w=Instance.new("Weld")
		w.Part0=playor.Character.Torso
		w.Part1=p
		w.C0=CFrame.new(-.35,.2,.7)*CFrame.fromEulerAnglesXYZ(0,-math.pi/4,0)
		w.C0=w.C0*CFrame.new(0,-1.275,1.275)
		w.Parent=w.Part0
		p.Parent=playor.Character

		p=Instance.new("Part")
		p.Name="WingPart"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.BrickColor=BrickColor.new("Really black")
		p.Size=Vector3.new(1,1,1)
		p.CFrame=playor.Character.Torso.CFrame
		m=Instance.new("BlockMesh")
		m.Scale=Vector3.new(.5,4,1.1)/1.5
		m.Parent=p
		w=Instance.new("Weld")
		w.Part0=playor.Character.Torso
		w.Part1=p
		w.C0=CFrame.new(.35,.2,.7)*CFrame.fromEulerAnglesXYZ(0,math.pi/4,0)
		w.C0=w.C0*CFrame.new(0,-1.9,1.9)
		w.Parent=w.Part0
		p.Parent=playor.Character

		p=Instance.new("Part")
		p.Name="WingPart"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.BrickColor=BrickColor.new("Really black")
		p.Size=Vector3.new(1,1,1)
		p.CFrame=playor.Character.Torso.CFrame
		m=Instance.new("BlockMesh")
		m.Scale=Vector3.new(.5,4,1.1)/1.5
		m.Parent=p
		w=Instance.new("Weld")
		w.Part0=playor.Character.Torso
		w.Part1=p
		w.C0=CFrame.new(-.35,.2,.7)*CFrame.fromEulerAnglesXYZ(0,-math.pi/4,0)
		w.C0=w.C0*CFrame.new(0,-1.9,1.9)
		w.Parent=w.Part0
		p.Parent=playor.Character

		p=Instance.new("Part")
		p.Name="WingPart"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.BrickColor=BrickColor.new("Really black")
		p.Size=Vector3.new(1,1,1)
		p.CFrame=playor.Character.Torso.CFrame
		m=Instance.new("SpecialMesh")
		m.MeshType="Wedge"
		m.Scale=Vector3.new(.5,.8,1)/1.5
		m.Parent=p
		w=Instance.new("Weld")
		w.Part0=playor.Character.Torso
		w.Part1=p
		w.C0=CFrame.new(.32,1.27,.7)*CFrame.fromEulerAnglesXYZ(0,math.pi/4,0)
		w.Parent=w.Part0
		p.Parent=playor.Character

		p=Instance.new("Part")
		p.Name="WingPart"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.BrickColor=BrickColor.new("Really black")
		p.Size=Vector3.new(1,1,1)
		p.CFrame=playor.Character.Torso.CFrame
		m=Instance.new("SpecialMesh")
		m.MeshType="Wedge"
		m.Scale=Vector3.new(.5,.8,1)/1.5
		m.Parent=p
		w=Instance.new("Weld")
		w.Part0=playor.Character.Torso
		w.Part1=p
		w.C0=CFrame.new(-.32,1.27,.7)*CFrame.fromEulerAnglesXYZ(0,-math.pi/4,0)
		w.Parent=w.Part0
		p.Parent=playor.Character

		p=Instance.new("Part")
		p.Name="WingPart"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.BrickColor=BrickColor.new("Really black")
		p.Size=Vector3.new(1,1,1)
		p.CFrame=playor.Character.Torso.CFrame
		m=Instance.new("SpecialMesh")
		m.MeshType="Wedge"
		m.Scale=Vector3.new(.5,2.2,1)/1.5
		m.Parent=p
		w=Instance.new("Weld")
		w.Part0=playor.Character.Torso
		w.Part1=p
		w.C0=CFrame.new(.3,-1.45,.7)
		w.C0=w.C0*CFrame.fromEulerAnglesXYZ(0,math.pi/4,math.pi)
		w.Parent=w.Part0
		p.Parent=playor.Character

		p=Instance.new("Part")
		p.Name="WingPart"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.BrickColor=BrickColor.new("Really black")
		p.Size=Vector3.new(1,1,1)
		p.CFrame=playor.Character.Torso.CFrame
		m=Instance.new("SpecialMesh")
		m.MeshType="Wedge"
		m.Scale=Vector3.new(.5,2.2,1)/1.5
		m.Parent=p
		w=Instance.new("Weld")
		w.Part0=playor.Character.Torso
		w.Part1=p
		w.C0=CFrame.new(-.3,-1.45,.7)
		w.C0=w.C0*CFrame.fromEulerAnglesXYZ(0,-math.pi/4,math.pi)
		w.Parent=w.Part0
		p.Parent=playor.Character

		p=Instance.new("Part")
		p.Name="WingPart"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.BrickColor=BrickColor.new("Really black")
		p.Size=Vector3.new(1,1,1)
		p.CFrame=playor.Character.Torso.CFrame
		m=Instance.new("SpecialMesh")
		m.MeshType="Wedge"
		m.Scale=Vector3.new(.5,.8,1.1)/1.5
		m.Parent=p
		w=Instance.new("Weld")
		w.Part0=playor.Character.Torso
		w.Part1=p
		w.C0=CFrame.new(.35,1.8,.7)*CFrame.fromEulerAnglesXYZ(0,math.pi/4,0)
		w.C0=w.C0*CFrame.new(0,0,.575)
		w.Parent=w.Part0
		p.Parent=playor.Character

		p=Instance.new("Part")
		p.Name="WingPart"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.BrickColor=BrickColor.new("Really black")
		p.Size=Vector3.new(1,1,1)
		p.CFrame=playor.Character.Torso.CFrame
		m=Instance.new("SpecialMesh")
		m.MeshType="Wedge"
		m.Scale=Vector3.new(.5,.8,1.1)/1.5
		m.Parent=p
		w=Instance.new("Weld")
		w.Part0=playor.Character.Torso
		w.Part1=p
		w.C0=CFrame.new(-.35,1.8,.7)*CFrame.fromEulerAnglesXYZ(0,-math.pi/4,0)
		w.C0=w.C0*CFrame.new(0,0,.575)
		w.Parent=w.Part0
		p.Parent=playor.Character

		p=Instance.new("Part")
		p.Name="WingPart"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.BrickColor=BrickColor.new("Really black")
		p.Size=Vector3.new(1,1,1)
		p.CFrame=playor.Character.Torso.CFrame
		m=Instance.new("SpecialMesh")
		m.MeshType="Wedge"
		m.Scale=Vector3.new(.5,.8,1.1)/1.5
		m.Parent=p
		w=Instance.new("Weld")
		w.Part0=playor.Character.Torso
		w.Part1=p
		w.C0=CFrame.new(.35,2.4,.7)*CFrame.fromEulerAnglesXYZ(0,math.pi/4,0)
		w.C0=w.C0*CFrame.new(0,0,1.25)
		w.Parent=w.Part0
		p.Parent=playor.Character

		p=Instance.new("Part")
		p.Name="WingPart"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.BrickColor=BrickColor.new("Really black")
		p.Size=Vector3.new(1,1,1)
		p.CFrame=playor.Character.Torso.CFrame
		m=Instance.new("SpecialMesh")
		m.MeshType="Wedge"
		m.Scale=Vector3.new(.5,.8,1.1)/1.5
		m.Parent=p
		w=Instance.new("Weld")
		w.Part0=playor.Character.Torso
		w.Part1=p
		w.C0=CFrame.new(-.35,2.4,.7)*CFrame.fromEulerAnglesXYZ(0,-math.pi/4,0)
		w.C0=w.C0*CFrame.new(0,0,1.25)
		w.Parent=w.Part0
		p.Parent=playor.Character

		p=Instance.new("Part")
		p.Name="WingPart"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.BrickColor=BrickColor.new("Really black")
		p.Size=Vector3.new(1,1,1)
		p.CFrame=playor.Character.Torso.CFrame
		m=Instance.new("SpecialMesh")
		m.MeshType="Wedge"
		m.Scale=Vector3.new(.5,2.2,1)/1.5
		m.Parent=p
		w=Instance.new("Weld")
		w.Part0=playor.Character.Torso
		w.Part1=p
		w.C0=CFrame.new(.32,-3.3,.7)
		w.C0=w.C0*CFrame.fromEulerAnglesXYZ(0,math.pi/4,math.pi)
		w.C0=w.C0*CFrame.new(0,0,.65)
		w.Parent=w.Part0
		p.Parent=playor.Character

		p=Instance.new("Part")
		p.Name="WingPart"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.BrickColor=BrickColor.new("Really black")
		p.Size=Vector3.new(1,1,1)
		p.CFrame=playor.Character.Torso.CFrame
		m=Instance.new("SpecialMesh")
		m.MeshType="Wedge"
		m.Scale=Vector3.new(.5,2.2,1)/1.5
		m.Parent=p
		w=Instance.new("Weld")
		w.Part0=playor.Character.Torso
		w.Part1=p
		w.C0=CFrame.new(-.32,-3.3,.7)
		w.C0=w.C0*CFrame.fromEulerAnglesXYZ(0,-math.pi/4,math.pi)
		w.C0=w.C0*CFrame.new(0,0,.65)
		w.Parent=w.Part0
		p.Parent=playor.Character

		p=Instance.new("Part")
		p.Name="WingPart"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.BrickColor=BrickColor.new("Really black")
		p.Size=Vector3.new(1,1,1)
		p.CFrame=playor.Character.Torso.CFrame
		m=Instance.new("SpecialMesh")
		m.MeshType="Wedge"
		m.Scale=Vector3.new(.5,2.2,1)/1.5
		m.Parent=p
		w=Instance.new("Weld")
		w.Part0=playor.Character.Torso
		w.Part1=p
		w.C0=CFrame.new(.32,-5.1625,.7)
		w.C0=w.C0*CFrame.fromEulerAnglesXYZ(0,math.pi/4,math.pi)
		w.C0=w.C0*CFrame.new(0,0,.65*2)
		w.Parent=w.Part0
		p.Parent=playor.Character
		_pp=p

		p=Instance.new("Part")
		p.Name="WingPart"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.BrickColor=BrickColor.new("Really black")
		p.Size=Vector3.new(1,1,1)
		p.CFrame=playor.Character.Torso.CFrame
		m=Instance.new("SpecialMesh")
		m.MeshType="Wedge"
		m.Scale=Vector3.new(.5,2.2,1)/1.5
		m.Parent=p
		w=Instance.new("Weld")
		w.Part0=playor.Character.Torso
		w.Part1=p
		w.C0=CFrame.new(-.32,-5.1625,.7)
		w.C0=w.C0*CFrame.fromEulerAnglesXYZ(0,-math.pi/4,math.pi)
		w.C0=w.C0*CFrame.new(0,0,.65*2)
		w.Parent=w.Part0
		p.Parent=playor.Character
		_p=p

		p=Instance.new("Part")
		p.Name="WingPart"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.BrickColor=BrickColor.new("Really black")
		p.Size=Vector3.new(1,1,1)
		p.CFrame=playor.Character.Torso.CFrame
		m=Instance.new("SpecialMesh")
		m.MeshType="Wedge"
		m.Scale=Vector3.new(.5,3.6,1)/1.5
		m.Parent=p
		w=Instance.new("Weld")
		w.Part0=_p
		w.Part1=p
		w.C0=w.C0*CFrame.fromEulerAnglesXYZ(0,math.pi,0)
		w.C0=w.C0*CFrame.new(0,-.45,-.65)
		w.Parent=w.Part0
		p.Parent=playor.Character

		_ppp=p

		p=Instance.new("Part")
		p.Name="WingPart"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.BrickColor=BrickColor.new("Really black")
		p.Size=Vector3.new(1,1,1)
		p.CFrame=playor.Character.Torso.CFrame
		m=Instance.new("SpecialMesh")
		m.MeshType="Wedge"
		m.Scale=Vector3.new(.5,3.6,1)/1.5
		m.Parent=p
		w=Instance.new("Weld")
		w.Part0=_pp
		w.Part1=p
		w.C0=w.C0*CFrame.fromEulerAnglesXYZ(0,math.pi,0)
		w.C0=w.C0*CFrame.new(0,-.45,-.65)
		w.Parent=w.Part0
		p.Parent=playor.Character
		_p=p

		p=Instance.new("Part")
		p.Name="WingPart"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.BrickColor=BrickColor.new("Really black")
		p.Size=Vector3.new(1,1,1)
		p.CFrame=playor.Character.Torso.CFrame
		m=Instance.new("SpecialMesh")
		m.MeshType="Wedge"
		m.Scale=Vector3.new(.5,3.6,1)/1.5
		m.Parent=p
		w=Instance.new("Weld")
		w.Part0=_p
		w.Part1=p
		w.C0=w.C0*CFrame.fromEulerAnglesXYZ(0,0,math.pi)
		w.C0=w.C0*CFrame.new(0,6,-0)
		w.Parent=w.Part0
		p.Parent=playor.Character

		p=Instance.new("Part")
		p.Name="WingPart"
		p.TopSurface=0
		p.BottomSurface=0
		p.CanCollide=false
		p.BrickColor=BrickColor.new("Really black")
		p.Size=Vector3.new(1,1,1)
		p.CFrame=playor.Character.Torso.CFrame
		m=Instance.new("SpecialMesh")
		m.MeshType="Wedge"
		m.Scale=Vector3.new(.5,3.6,1)/1.5
		m.Parent=p
		w=Instance.new("Weld")
		w.Part0=_ppp
		w.Part1=p
		w.C0=w.C0*CFrame.fromEulerAnglesXYZ(0,0,math.pi)
		w.C0=w.C0*CFrame.new(0,6,-0)
		w.Parent=w.Part0
		p.Parent=playor.Character



		for i =1,8 do
			swait(1)
			local spark = Instance.new("FlagStand",script)
			spark.Anchored = true
			spark.CanCollide =  false
			spark.Shape = "Ball"
			spark.Size = Vector3.new(9,9,9)
			spark.BrickColor = BrickColor.new("Really black")
			spark.Material = Enum.Material.Neon
			spark.CFrame = playor.Character.Torso.CFrame * CFrame.new(math.random(minus333,0.25),0,math.random(minus333,0.25))
			spark.Orientation = Vector3.new(math.random(minu2,90),math.random(minus,180),0)


			spawn(function()
				for i =1,40 do
					swait(1)
					spark.Size = spark.Size - Vector3.new(0.25,0.25,0.25)
					spark.Transparency = spark.Transparency + 0.05
					spark.CFrame = spark.CFrame * CFrame.new(0.15,0.15,0.15)
					spark.Orientation = spark.Orientation + Vector3.new(0,3,3)
					spark.Orientation = spark.Orientation + Vector3.new(5,0,0)						
				end
				spark:destroy()
			end)

		end
	end)	
	MAINCOLOR = BrickColor.new("Really black")
	local torsio = Instance.new("Part",script)
	torsio.Size = playor.Character.Torso.Size + Vector3.new(0.05,0.05,0.05)
	torsio.Anchored = true
	torsio.CFrame = playor.Character.Torso.CFrame
	torsio.BrickColor = MAINCOLOR
	torsio.Material = Enum.Material.Plastic
	torsio.CanCollide = false
	torsio.Transparency =0
	local spm = Instance.new("SpecialMesh",torsio)
	spm.MeshType = Enum.MeshType.Brick
	local headio = Instance.new("Part",script)
	headio.Size = Vector3.new(2,1.26,1.26)
	headio.Anchored = true
	headio.CFrame = playor.Character.Head.CFrame + Vector3.new(0.05,0.05,0.05)
	headio.BrickColor = MAINCOLOR
	headio.Material = Enum.Material.Plastic
	headio.CanCollide = false
	headio.Transparency =0
	local spm = Instance.new("SpecialMesh",headio)
	spm.MeshType = Enum.MeshType.Head
	local rightarmio = Instance.new("Part",script)
	rightarmio.Size = playor.Character["Right Arm"].Size+ Vector3.new(0.05,0.05,0.05)
	rightarmio.Anchored = true
	rightarmio.CFrame = playor.Character["Right Arm"].CFrame
	rightarmio.BrickColor = MAINCOLOR
	rightarmio.Material = Enum.Material.Plastic
	rightarmio.CanCollide = false
	rightarmio.Transparency =0
	local spm = Instance.new("SpecialMesh",rightarmio)
	spm.MeshType = Enum.MeshType.Brick
	local leftarmio = Instance.new("Part",script)
	leftarmio.Size = playor.Character["Left Arm"].Size + Vector3.new(0.05,0.05,0.05)
	leftarmio.Anchored = true
	leftarmio.CFrame = playor.Character["Left Arm"].CFrame
	leftarmio.BrickColor = MAINCOLOR
	leftarmio.Material = Enum.Material.Plastic
	leftarmio.CanCollide = false
	leftarmio.Transparency =0

	local spm = Instance.new("SpecialMesh",lefttarmio)
	spm.MeshType = Enum.MeshType.Brick

	local leftlegio = Instance.new("Part",script)
	leftlegio.Size = playor.Character["Left Leg"].Size + Vector3.new(0.05,0.05,0.05)
	leftlegio.Anchored = true
	leftlegio.CFrame = playor.Character["Left Leg"].CFrame
	leftlegio.BrickColor = MAINCOLOR
	leftlegio.Material = Enum.Material.Plastic
	leftlegio.CanCollide = false
	leftlegio.Transparency =0
	local spm = Instance.new("SpecialMesh",leftlegio)
	spm.MeshType = Enum.MeshType.Brick
	local rightlegio = Instance.new("Part",script)
	rightlegio.Size = playor.Character["Right Leg"].Size + Vector3.new(0.05,0.05,0.05)
	rightlegio.Anchored = true
	rightlegio.Transparency =0
	rightlegio.CFrame = playor.Character["Right Leg"].CFrame
	rightlegio.BrickColor = MAINCOLOR
	rightlegio.Material = Enum.Material.Plastic
	rightlegio.CanCollide = false
	local spm = Instance.new("SpecialMesh",rightlegio)
	spm.MeshType = Enum.MeshType.Brick
	spawn(function() repeat


			swait(1)
			rightlegio.CFrame = playor.Character["Right Leg"].CFrame
			leftarmio.CFrame = playor.Character["Left Arm"].CFrame
			leftlegio.CFrame = playor.Character["Left Leg"].CFrame
			rightarmio.CFrame = playor.Character["Right Arm"].CFrame
			headio.CFrame = playor.Character.Head.CFrame
			torsio.CFrame = playor.Character.Torso.CFrame

		until OVERDRIVE == false

		leftarmio:Destroy()
		leftlegio:Destroy()
		rightarmio:Destroy()
		rightlegio:Destroy()
		headio:Destroy()
		torsio:Destroy()
	end)
	spawn(function() 
		OVERDRIVECD = true
		swait(60*15)

		OVERDRIVE = false
		swait(60*15)
		OVERDRIVECD = false


	end)

	for _,v in pairs(playor.Character:children()) do
		if v.Name =="WingPart" then
			v.Massless = true


		end
	end

	playor.Character.Humanoid.WalkSpeed = 16
	repeat
		swait()
	until OVERDRIVE == false
	playor.Character.Torso.OHNO2:Pause()
	playor.Character.Torso.OHNO:Resume()
	local ODend = Instance.new("Sound",playor.Character.Torso)
	ODend.SoundId = "rbxassetid://148636758"
	ODend.Volume = 2.5
	ODend.Looped = false
	ODend:Play()
	spawn(function()
		local BANGG4 = Instance.new("FlagStand",script)
		BANGG4.BrickColor = BrickColor.new("Institutional white")
		BANGG4.Size = Vector3.new(5, 5, 5)
		BANGG4.Locked = false
		BANGG4.Material = Enum.Material.Neon
		BANGG4.CanCollide = false
		BANGG4.Anchored = true
		BANGG4.Transparency = 0.5
		--RHe.Orientation = Vector3.new(0, -90, 0)
		BANGG4.formFactor =  "Symmetric"
		BANGG4.CFrame = playor.Character.Torso.CFrame  * CFrame.Angles(math.random(-180,170),math.random(-180,170),math.random(-180,170))
		local joe3 = Instance.new("SpecialMesh",BANGG4)
		joe3.MeshType = Enum.MeshType.FileMesh
		joe3.MeshId = "http://www.roblox.com/Asset/?id=9982590"
		joe3.TextureId = "http://www.roblox.com/Asset/?id=5614579544"
		joe3.VertexColor = Vector3.new(0,0,0)
		joe3.Scale = Vector3.new(10,10,10)




		spawn(function()
			swait()
			for i = 1,20 do
				swait(1)
				BANGG4.Transparency = BANGG4.Transparency + 0.05	


				joe3.Scale = joe3.Scale + Vector3.new(0.5,0.5,0.5)

			end
			BANGG4:destroy()

		end)
	end)


	spawn(function()
		local BANGG4 = Instance.new("FlagStand",script)
		BANGG4.BrickColor = BrickColor.new("Dark indigo")
		BANGG4.Size = Vector3.new(10,10,10)
		BANGG4.Locked = false
		BANGG4.Material = Enum.Material.Neon
		BANGG4.CanCollide = false
		BANGG4.Anchored = true
		BANGG4.Transparency = 0.3
		BANGG4.Shape = "Ball"
		--RHe.Orientation = Vector3.new(0, -90, 0)
		BANGG4.formFactor =  "Symmetric"
		BANGG4.CFrame = playor.Character.Torso.CFrame  * CFrame.Angles(math.random(-180,170),math.random(-180,170),math.random(-180,170))



		spawn(function()
			swait()
			for i = 1,10 do
				swait(1)
				BANGG4.Transparency = BANGG4.Transparency + 0.1	

			end
			BANGG4:destroy()

		end)
	end)
	ParticleEmitter1:Emit(8)
	spawn(function()
		local BANGG4 = Instance.new("FlagStand",script)
		BANGG4.BrickColor = BrickColor.new("Institutional white")
		BANGG4.Size = Vector3.new(5, 5, 5)
		BANGG4.Locked = false
		BANGG4.Material = Enum.Material.Neon
		BANGG4.CanCollide = false
		BANGG4.Anchored = true
		BANGG4.Transparency = 0.3
		--RHe.Orientation = Vector3.new(0, -90, 0)
		BANGG4.formFactor =  "Symmetric"
		BANGG4.CFrame = playor.Character.Torso.CFrame  * CFrame.Angles(math.random(-180,170),math.random(-180,170),math.random(-180,170))
		local joe3 = Instance.new("SpecialMesh",BANGG4)
		joe3.MeshType = Enum.MeshType.FileMesh
		joe3.MeshId = "http://www.roblox.com/Asset/?id=9982590"
		joe3.TextureId = "http://www.roblox.com/Asset/?id=5614579544"
		joe3.VertexColor = Vector3.new(0,0,0)
		joe3.Scale = Vector3.new(8,8,8)



		spawn(function()
			swait()
			for i = 1,10 do
				swait(1)
				BANGG4.Transparency = BANGG4.Transparency + 0.1	


				joe3.Scale = joe3.Scale + Vector3.new(0.3,0.3,0.3)

			end
			BANGG4:destroy()

		end)
	end)

	for _,v in pairs(playor.Character:children()) do
		if v.Name =="WingPart" then
			spawn(function()
				for i = 1,20 do
					swait()
					v.Transparency = v.Transparency + 0.05
				end
				v:destroy()
			end)

		end
	end

end

function asdasdq()
	footsteps:Stop()
	local CSUFVOICE = Instance.new("Sound")
	CSUFVOICE.Name = "CSUF VOICE"
	CSUFVOICE.Parent = Head
	CSUFVOICE.SoundId = "rbxasset://sounds/saul2/saul_1-34.wav"
	CSUFVOICE.Volume = 3.5
	CSUFVOICE.Pitch = 1.15
	CSUFVOICE:Play()
	game:GetService("Debris"):AddItem(CSUFVOICE,5)
	attack = true
	playor.Character.Humanoid.WalkSpeed = 0
	NO = Instance.new("Sound", char.Torso)
	NO.SoundId = "http://www.roblox.com/asset/?id=1552487586"
	NO.Volume = 5
	NO.Pitch = 1
	NO.Looped = false
	NO:Play()
	A = Instance.new("Sound", char.Torso)
	A.SoundId = "http://www.roblox.com/asset/?id=1548527129"
	A.Volume = 5
	A.Pitch = 1
	A.Looped = false
	A:Play()

	local ParticleEmitter0 = Instance.new("ParticleEmitter")
	ParticleEmitter0.Name = "Charge"
	ParticleEmitter0.Parent = playor.Character.HumanoidRootPart
	ParticleEmitter0.Speed = NumberRange.new(0, 0)
	ParticleEmitter0.Rotation = NumberRange.new(37, 999)
	ParticleEmitter0.Color = ColorSequence.new(Color3.new(0.211765, 0, 0.317647),Color3.new(0.12549, 0, 0.192157))
	ParticleEmitter0.LightEmission = 1
	ParticleEmitter0.Texture = "rbxassetid://1084976679"
	ParticleEmitter0.Transparency = NumberSequence.new(0.5,1)
	ParticleEmitter0.Size = NumberSequence.new(25,50)
	ParticleEmitter0.Lifetime = NumberRange.new(2)
	ParticleEmitter0.Rate = 100



	spawn(function()
		local ParticleEmitter1 = Instance.new("ParticleEmitter")
		ParticleEmitter1.Parent = playor.Character.Torso
		ParticleEmitter1.Speed = NumberRange.new(0, 0)
		ParticleEmitter1.Color = ColorSequence.new(Color3.new(0.333333, 0, 1),Color3.new(0.14902, 0, 0.227451))
		ParticleEmitter1.LightInfluence = 1
		ParticleEmitter1.Texture = "http://www.roblox.com/asset/?id=3232005358"
		ParticleEmitter1.Transparency = NumberSequence.new(0.5,1)
		ParticleEmitter1.Size = NumberSequence.new(3,50)
		ParticleEmitter1.Drag = 1
		ParticleEmitter1.Lifetime = NumberRange.new(0.3	)
		ParticleEmitter1.LockedToPart = false
		ParticleEmitter1.Rate = 1
		ParticleEmitter1.RotSpeed = NumberRange.new(190, 190)
		ParticleEmitter1.SpreadAngle = Vector2.new(-360, 360)
		ParticleEmitter1.VelocitySpread = -360
		ParticleEmitter1.Enabled = false
		ParticleEmitter1:Emit(3)
		local ParticleEmitter0 = Instance.new("ParticleEmitter")
		ParticleEmitter0.Name = "Rays"
		ParticleEmitter0.Parent = playor.Character.Torso
		ParticleEmitter0.Speed = NumberRange.new(0, 0)
		ParticleEmitter0.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.333333, 0, 0.498039))
		ParticleEmitter0.LightEmission = 0.30000001192093
		ParticleEmitter0.Texture = "rbxassetid://459811994"
		ParticleEmitter0.Transparency = NumberSequence.new(0.5,1)
		ParticleEmitter0.ZOffset = 1
		ParticleEmitter0.Size = NumberSequence.new(10,200)
		ParticleEmitter0.Lifetime = NumberRange.new(0.3)
		ParticleEmitter0.LockedToPart = true
		ParticleEmitter0.Rate = 6
		ParticleEmitter0.RotSpeed = NumberRange.new(-100, -100)

		ParticleEmitter0.Enabled = false
		spawn(function()
			for i = 1,2 do
				wait(0.05)
				ParticleEmitter1:Emit(4)
				ParticleEmitter0:Emit(1)
			end
		end)

		BillboardGui1 = Instance.new("BillboardGui")
		ImageLabel2 = Instance.new("ImageLabel")

		BillboardGui1.Parent = playor.Character.HumanoidRootPart
		BillboardGui1.LightInfluence = 1
		BillboardGui1.Size = UDim2.new(10, 10, 10, 10)
		BillboardGui1.Active = true
		BillboardGui1.ClipsDescendants = true
		ImageLabel2.Parent = BillboardGui1
		ImageLabel2.Size = UDim2.new(1, 0, 1, 0)
		ImageLabel2.BackgroundColor = BrickColor.new("Institutional white")
		ImageLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
		ImageLabel2.BackgroundTransparency = 1
		ImageLabel2.BorderSizePixel = 0
		ImageLabel2.ZIndex = 0
		ImageLabel2.Image = "http://www.roblox.com/asset/?id=6301360935"
		ImageLabel2.ImageTransparency = 1

		BillboardGui1.StudsOffset = Vector3.new(0,0,0)

		for i = 1,5 do
			swait()
			ImageLabel2.ImageTransparency = ImageLabel2.ImageTransparency - 1/5

			BillboardGui1.StudsOffset =BillboardGui1.StudsOffset + Vector3.new(0,1,0)


		end
		r = 255
		r2 = 255
		spawn(function()
			while true do
				swait(1)
				ImageLabel2.ImageColor3 = Color3.fromRGB(r2, r, 255)

			end
		end)
		spawn(function()
			for i = 1,3 do
				swait(1)
				ImageLabel2.ImageTransparency =  	ImageLabel2.ImageTransparency + 0.02
				r = r - 255/3
				r2 = r2 - 255/7
			end
		end)
		for i = 1,20 do
			swait(1)
			ImageLabel2.ImageTransparency =  	ImageLabel2.ImageTransparency + 0.05
			BillboardGui1.Size = BillboardGui1.Size + UDim2.new( 0.5,  0.5,  0.5, 0.5)

		end
	end)



	for i = 0,1,0.1 do 
		swait()
		ls.C0=ls.C0:Lerp(cf(-1, 0.5, 0, 0.788048804, -0.351596057, -0.50533092, -0.614797413, -0.491717368, -0.616634369, -0.0316737704, 0.79661411, -0.603657663),i) 

		rs.C0=rs.C0:Lerp(cf(1.11794376, 0.216088086, 0.151669085, -0.129409492, -0.466506302, 0.87500006, -0.508518577, 0.788770795, 0.345325053, -0.851270795, -0.400265515, -0.339301556),i) 

		lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0.466473311, 0.330366075, -0.820524752, -0.395400792, 0.907673419, 0.140666798, 0.791240036, 0.258818835, 0.554032445),i) 

		rh.C0=rh.C0:Lerp(cf(1.06114841, -1.15503454, -0.0178642087, 0.42261827, -0.0789900273, 0.902859032, 2.38418579e-07, 0.99619472, 0.0871557593, -0.906307757, -0.0368334055, 0.421010107),i) 

		rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.566381514, -0.8240695, -0.0110146627, -0.165506691, 0.100639433, 0.981060266, -0.807353318, 0.557477415, -0.193389341),i) 

		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.769771516, 0.635759473, 0.0571108237, 0.0669872463, -0.0085183233, 0.99771744, 0.634794831, 0.771840215, -0.0360306352),i) 


	end

	wait(1)


	for i = 0,0.8,0.2 do 
		swait()

		ls.C0=ls.C0:Lerp(cf(-1.12604225, 0.148518026, 0.248499513, 0.470396131, 0.422002703, -0.775010347, 0.390725672, 0.687861979, 0.611702025, 0.791240096, -0.590558767, 0.15868029),i) 

		rs.C0=rs.C0:Lerp(cf(1.25010538, 0.26527366, -0.736828566, -0.890800476, -0.426525265, 0.156686455, 0.177249625, -0.0086620152, 0.984127879, -0.418398142, 0.904434085, 0.0833175778),i) 

		lh.C0=lh.C0:Lerp(cf(-0.886929035, -1.58678997, -0.0401817113, -0.498718321, 0.0858316496, -0.862503946, 0.252995491, 0.966167331, -0.0501397811, 0.829019487, -0.243215233, -0.503560364),i) 

		rh.C0=rh.C0:Lerp(cf(1.08627462, -0.622976124, 0.149432048, 0.816175103, -0.35848254, 0.453153789, 0.157378688, 0.892538905, 0.42261824, -0.555958688, -0.273613691, 0.784885585),i) 

		rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.0672323853, 0.990856171, 0.116977759, 0.330366075, -0.0885212496, 0.939692616, 0.941455245, 0.10182327, -0.321393788),i) 

		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.231322795, -0.965362191, -0.12068782, -0.266236842, -0.0565023348, 0.962250173, -0.93573904, 0.254722029, -0.243944705),i) 



	end

	for i = 0,0.3,0.05 do 
		swait()
		ls.C0=ls.C0:Lerp(cf(-1.55796337, 0.264194489, 0.505686581, 0, 0.707106769, -0.707106769, 0.906307817, 0.298836231, 0.298836231, 0.42261824, -0.640856385, -0.640856385),i) 

		rs.C0=rs.C0:Lerp(cf(1.25010538, 0.26527366, -0.736828566, -0.890800476, -0.426525265, 0.156686455, 0.177249625, -0.0086620152, 0.984127879, -0.418398142, 0.904434085, 0.0833175778),i) 

		lh.C0=lh.C0:Lerp(cf(-0.951293707, -1.14707923, -0.25963977, -0.64034164, 0.218347684, -0.736401379, 0.188193724, 0.974120617, 0.125188127, 0.744678259, -0.0584229529, -0.664861679),i) 

		rh.C0=rh.C0:Lerp(cf(1.20886183, -0.82274884, -0.193502665, 0.817930698, -0.173251942, 0.548609972, 0.044198446, 0.969684005, 0.240331739, -0.573616147, -0.172327042, 0.800791919),i) 

		rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.433999568, 0.898112893, -0.0709762424, 0.125652999, 0.138355583, 0.982379317, 0.892107427, 0.417433798, -0.172896862),i) 

		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.819151938, -0.571393967, -0.0499905944, 0, -0.0871559381, 0.996194661, -0.57357657, 0.816034734, 0.0713939443),i) 


	end
	local alr = false
	for i, v in pairs(FindNearestHead(playor.Character.Torso.CFrame.p, 9)) do
		if alr == false and  v:FindFirstChild("Head") and v:FindFirstChild("dodge") == nil  then
			alr = true
			BTAUNT2 = Instance.new("Sound", playor.Character.Torso)
			BTAUNT2.SoundId = "http://www.roblox.com/asset/?id=1613998698"
			BTAUNT2.Volume = 3
			BTAUNT2.TimePosition = 0.3
			BTAUNT2.Pitch = 1
			BTAUNT2.Looped = false
			BTAUNT2:Play()

			local LOLXD = Instance.new("BodyPosition",v:WaitForChild("Torso"))
			LOLXD.MaxForce = Vector3.new(40000,40000,40000)

			LOLXD.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-5).p

			wait(0.1)
			local ticleEmitter2 = Instance.new("ParticleEmitter")
			ticleEmitter2.Name = "Rays"
			ticleEmitter2.Parent = playor.Character.Torso
			ticleEmitter2.Speed = NumberRange.new(0, 0)
			ticleEmitter2.Color = ColorSequence.new(Color3.new(1, 1, 1),Color3.new(0, 0, 0))
			ticleEmitter2.Texture = "rbxassetid://678262230"
			ticleEmitter2.Transparency = NumberSequence.new(.7,1)
			ticleEmitter2.Size = NumberSequence.new(5,100)
			ticleEmitter2.Lifetime = NumberRange.new(0.3)
			ticleEmitter2.LockedToPart = true
			ticleEmitter2.Enabled = false
			ticleEmitter2.Rotation = NumberRange.new(-180,180)
			spawn(function()
				for i = 1,5 do
					swait(7)
					ticleEmitter2:Emit(1)
				end
			end)


			for i = 0,1,0.07 do 
				swait()
				ls.C0=ls.C0:Lerp(cf(-0.303940475, 0.173566252, -0.511928856, -0.113450468, -0.992383718, 0.0479939282, -0.90044409, 0.0822834149, -0.427117974, 0.419915885, -0.0916726142, -0.902921081),i) 

				rs.C0=rs.C0:Lerp(cf(1.15802646, 0.29284507, 0.0473983586, -0.467270523, -0.65893203, 0.589463174, -0.178438306, 0.723294616, 0.667086542, -0.865920246, 0.206526816, -0.455552995),i) 

				lh.C0=lh.C0:Lerp(cf(-1.12390804, -0.960798979, -0.190289915, 0.66315341, 0.129651189, -0.737168789, -0.179208279, 0.983740211, 0.0118025392, 0.726712942, 0.124279901, 0.675605416),i) 

				rh.C0=rh.C0:Lerp(cf(1.07324934, -1.0222187, -0.43685317, -0.511397183, -0.418595314, 0.750500321, -0.283218175, 0.906645834, 0.31269896, -0.811332405, -0.0526419729, -0.582209945),i) 

				rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.252924711, -0.932497025, 0.257833958, 0.0449434184, 0.254886776, 0.965925872, -0.966441512, 0.255894482, -0.0225575641),i) 

				ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.805362403, 0.569881499, -0.163175911, -0.167731255, 0.0449434556, 0.98480773, 0.568557382, 0.820496857, 0.0593911707),i) 

			end
			wait(0.1)

			for i = 0,0.6,0.1 do 
				swait()
				ls.C0=ls.C0:Lerp(cf(-1.41409039, 0.112233013, 0.245482281, 0.178606197, 0.669898629, -0.720649421, 0.383022219, 0.627313673, 0.678064466, 0.906307757, -0.397131264, -0.144543946),i) 

				rs.C0=rs.C0:Lerp(cf(0.879612565, 0.397809654, -0.971872211, -0.927046776, 0.349788785, -0.135025978, -0.198168918, -0.151382029, 0.968407273, 0.318297505, 0.924516797, 0.209655464),i) 

				lh.C0=lh.C0:Lerp(cf(-0.86888814, -1.28275299, -0.227092266, -0.498097539, 0.0435778797, -0.866025329, 0.0871557444, 0.99619472, 0, 0.862729788, -0.0754790753, -0.500000179),i) 

				rh.C0=rh.C0:Lerp(cf(1.06439066, -0.66869086, -0.21216841, 0.575163722, -0.358900547, 0.735103428, 0.251610488, 0.932670236, 0.25849244, -0.778382123, 0.0362842605, 0.62674129),i) 

				rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.683012724, 0.72814405, 0.0574446917, 0.258819044, 0.167731062, 0.951251268, 0.683012664, 0.664584517, -0.30302),i) 

				ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.257834136, -0.964216232, -0.0617140755, 0.087155737, -0.0868238956, 0.992403924, -0.962250173, 0.250496864, 0.106423132),i) 


				joe.C0 =  joe.C0:Lerp(CFrame.new(1,0,0) * CFrame.Angles(math.rad(90),math.rad(	-10-150),math.rad(90)),i)
			end
			local ParticleEmitter0 = Instance.new("ParticleEmitter")
			ParticleEmitter0.Name = "Black Hole"
			ParticleEmitter0.Parent = v:WaitForChild("Torso")
			ParticleEmitter0.Speed = NumberRange.new(0, 0)
			ParticleEmitter0.Rotation = NumberRange.new(-180, 170)
			ParticleEmitter0.Color = ColorSequence.new(Color3.new(0.333333, 0, 1),Color3.new(0.333333, 0, 0.498039))
			ParticleEmitter0.Enabled = false
			ParticleEmitter0.Texture = "rbxassetid://284385486"
			ParticleEmitter0.Transparency = NumberSequence.new(0.7,1)
			ParticleEmitter0.ZOffset = 2
			ParticleEmitter0.Size = NumberSequence.new(0,15)
			ParticleEmitter0.Drag = 50
			ParticleEmitter0.Lifetime = NumberRange.new(0.1, 0.30000001192093)
			ParticleEmitter0.LockedToPart = true
			ParticleEmitter0.Rate = 5
			ParticleEmitter0.RotSpeed = NumberRange.new(-50, -50)


			coroutine.resume(coroutine.create(function()
				spawn(function()
					for i = 1,math.random(1,2) do
						local Part0 = Instance.new("Part")
						local ParticleEmitter1 = Instance.new("ParticleEmitter")
						local ParticleEmitter2 = Instance.new("ParticleEmitter")
						Part0.Name = "ORB O_OO_O__O"
						Part0.Parent = game.Workspace
						Part0.CFrame = CFrame.new(119.075157, 2.55000997, -37.0025864, 1, 0, 0, 0, 1, 0, 0, 0, 1)
						Part0.Position = Vector3.new(119.075157, 2.55000997, -37.0025864)
						Part0.Transparency = 1
						Part0.Size = Vector3.new(0.0999998227, 0.099999927, 0.0999999121)
						Part0.BottomSurface = Enum.SurfaceType.Smooth
						Part0.CanCollide = false
						Part0.Material = Enum.Material.SmoothPlastic
						Part0.TopSurface = Enum.SurfaceType.Smooth
						ParticleEmitter1.Name = "Vigor"
						ParticleEmitter1.Parent = Part0
						ParticleEmitter1.Speed = NumberRange.new(0, 0)
						ParticleEmitter1.Rotation = NumberRange.new(37, 999)
						ParticleEmitter1.Color = ColorSequence.new(Color3.new(0.117647, 0, 0.352941),Color3.new(0.117647, 0, 0.352941))
						ParticleEmitter1.Texture = "rbxassetid://48315270"
						ParticleEmitter1.Size = NumberSequence.new(0.99999964237213,0)
						ParticleEmitter1.Drag = 50
						ParticleEmitter1.EmissionDirection = Enum.NormalId.Left
						ParticleEmitter1.Lifetime = NumberRange.new(1, 1)
						ParticleEmitter1.Rate = 8000
						ParticleEmitter1.RotSpeed = NumberRange.new(400, 400)
						ParticleEmitter2.Name = "Void"
						ParticleEmitter2.Parent = Part0
						ParticleEmitter2.Speed = NumberRange.new(0, 0)
						ParticleEmitter2.Rotation = NumberRange.new(37, 999)
						ParticleEmitter2.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
						ParticleEmitter2.Texture = "rbxassetid://48315270"
						ParticleEmitter2.ZOffset = 1
						ParticleEmitter2.Size = NumberSequence.new(0.50000011920929,0)
						ParticleEmitter2.Drag = 50
						ParticleEmitter2.EmissionDirection = Enum.NormalId.Left
						ParticleEmitter2.Lifetime = NumberRange.new(1, 1)
						ParticleEmitter2.Rate = 8000
						ParticleEmitter2.RotSpeed = NumberRange.new(-400, -400)
						local b2p2 = Instance.new("BodyPosition",Part0)
						b2p2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
						b2p2.Position =v:WaitForChild("Torso").CFrame * CFrame.new(0,0,0).p

						spawn(function()
							Part0.CFrame =v:WaitForChild("Torso").CFrame * CFrame.Angles(0,math.rad(math.random(-180,180)),0)

							wait(0.1)
							b2p2.Position = Part0.CFrame * CFrame.new(0,math.random(5,20),math.random(5,20)).p



							wait(1)
							b2p2.D = 800
							for i = 1,5 do
								wait(0.1)
								b2p2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0).p

							end
							playor.Character.Humanoid.Health = playor.Character.Humanoid.Health + 2
							ParticleEmitter1.Enabled = false
							ParticleEmitter2.Enabled = false
							wait(1)
							Part0:Destroy()

						end)

					end
				end)

				v:FindFirstChildOfClass("Humanoid").Health = 	v:FindFirstChildOfClass("Humanoid").Health -  v:FindFirstChildOfClass("Humanoid").Health /15
				local LCUT = Instance.new("Sound",v:WaitForChild("Torso"))
				LCUT.SoundId = "rbxassetid://153092285"
				LCUT.Volume = 1
				LCUT.Looped = false
				local joe2 = Instance.new("BodyVelocity",v:WaitForChild("Torso"))
				joe2.maxForce = Vector3.new(4e9, 4e9, 4e9)
				joe2.velocity = playor.Character.HumanoidRootPart.CFrame.lookVector*1
				joe2.Name = "speedy"
				spawn(function()
					wait(1)
					joe2:Destroy()
				end)


				for i = 1,5 do
					swait()

					ParticleEmitter0:Emit(1)
				end

				spawn(function()
					local  Part0 = Instance.new("Part")
					local SpecialMesh1 = Instance.new("SpecialMesh")
					local Part2 = Instance.new("Part")
					local SpecialMesh3 = Instance.new("SpecialMesh")
					local Part4 = Instance.new("Part")
					local SpecialMesh5 = Instance.new("SpecialMesh")
					Part0.Name = "black shockwave"
					Part0.Parent = game.Workspace
					Part0.CFrame = CFrame.new(-1.05810452, 3.97946167, -146.655472, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					Part0.Position = Vector3.new(-1.05810452, 3.97946167, -146.655472)
					Part0.Color = Color3.new(0.384314, 0.145098, 0.819608)
					Part0.Size = Vector3.new(3.48000002, 0.922646344, 2.7172091)
					Part0.BottomSurface = Enum.SurfaceType.Smooth
					Part0.BrickColor = BrickColor.new("Royal purple")
					Part0.TopSurface = Enum.SurfaceType.Smooth
					Part0.brickColor = BrickColor.new("Royal purple")
					SpecialMesh1.Parent = Part0
					SpecialMesh1.MeshId = "rbxassetid://5862674837"
					SpecialMesh1.Offset = Vector3.new(0, 0, -0.699999988)
					SpecialMesh1.Scale = Vector3.new(18.0501289, 18.839695, 18.3808346)
					SpecialMesh1.VertexColor = Vector3.new(0, 0, 0)
					SpecialMesh1.TextureId = "rbxassetid://0"
					SpecialMesh1.MeshType = Enum.MeshType.FileMesh
					Part2.Name = "purpl"
					Part2.Parent = game.Workspace
					Part2.CFrame = CFrame.new(-1.05810452, 3.97946167, -146.655472, 0.94861114, 0.316444159, 0, -0.316444159, 0.94861114, 0, 0, 0, 1)
					Part2.Orientation = Vector3.new(0, 0, -18.4500008)
					Part2.Position = Vector3.new(-1.05810452, 3.97946167, -146.655472)
					Part2.Rotation = Vector3.new(0, 0, -18.4500008)
					Part2.Color = Color3.new(0.384314, 0.145098, 0.819608)
					Part2.Size = Vector3.new(2.63192654, 0.922646344, 2.24898744)
					Part2.BottomSurface = Enum.SurfaceType.Smooth
					Part2.BrickColor = BrickColor.new("Royal purple")
					Part2.TopSurface = Enum.SurfaceType.Smooth
					Part2.brickColor = BrickColor.new("Royal purple")
					SpecialMesh3.Parent = Part2
					SpecialMesh3.MeshId = "rbxassetid://5922911630"
					SpecialMesh3.Scale = Vector3.new(2.29999995, 2.29999995, 2.29999995)
					SpecialMesh3.VertexColor = Vector3.new(1, 0, 123)
					SpecialMesh3.TextureId = "rbxassetid://0"
					SpecialMesh3.MeshType = Enum.MeshType.FileMesh
					Part4.Name = "purpl2"
					Part4.Parent = game.Workspace
					Part4.CFrame = CFrame.new(-1.05810452, 3.97946024, -146.655472, 0.81878233, -0.220212519, -0.530190468, -0.237241879, 0.711184859, -0.661764562, 0.522792339, 0.667624533, 0.53006196)
					Part4.Orientation = Vector3.new(41.4300003, -45.0099983, -18.4500008)
					Part4.Position = Vector3.new(-1.05810452, 3.97946024, -146.655472)
					Part4.Rotation = Vector3.new(51.3100014, -32.0200005, 15.0500002)
					Part4.Color = Color3.new(0.384314, 0.145098, 0.819608)
					Part4.Size = Vector3.new(2.63192654, 0.922646344, 2.24898744)
					Part4.BottomSurface = Enum.SurfaceType.Smooth
					Part4.BrickColor = BrickColor.new("Royal purple")
					Part4.TopSurface = Enum.SurfaceType.Smooth
					Part4.brickColor = BrickColor.new("Royal purple")
					SpecialMesh5.Parent = Part4
					SpecialMesh5.MeshId = "rbxassetid://5922911630"
					SpecialMesh5.Scale = Vector3.new(2.29999995, 2.29999995 ,2.29999995)
					SpecialMesh5.VertexColor = Vector3.new(1, 0, 123)
					SpecialMesh5.TextureId = "rbxassetid://0"
					SpecialMesh5.MeshType = Enum.MeshType.FileMesh
					Part0.Anchored = true
					Part0.CanCollide = false
					Part2.Anchored = true
					Part2.CanCollide = false
					Part4.Anchored = true
					Part4.CanCollide = false
					Part0.Transparency = 0.3
					Part2.Transparency =  0.3
					Part4.Transparency =  0.3

					Part0.CFrame = v:WaitForChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
					Part2.CFrame = v:WaitForChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
					Part4.CFrame = v:WaitForChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))

					for i = 1,5 do
						swait()
						Part0.Transparency = Part0.Transparency + 0.2
						SpecialMesh1.Scale = SpecialMesh1.Scale  + Vector3.new(5,5,5)
						Part2.Transparency = Part2.Transparency + 0.2
						SpecialMesh3.Scale = SpecialMesh3.Scale  + Vector3.new(0.5,0.5,0.5)
						Part4.Transparency = Part4.Transparency + 0.2
						SpecialMesh5.Scale = SpecialMesh5.Scale  + Vector3.new(0.5,0.5,0.5)

					end
				end) LCUT:play()
				spawn(function()
					for i =1,3 do
						game:GetService('RunService').Stepped:wait()
						local spark = Instance.new("FlagStand",script)
						spark.Anchored = true
						spark.CanCollide =  false
						spark.Size = Vector3.new(1.2,0.25,0.25)
						spark.BrickColor = BrickColor.new("Really black")
						spark.Material = Enum.Material.Neon
						spark.CFrame = v:WaitForChild("Torso").CFrame 	
						spark.Orientation = Vector3.new(math.random(-180,180),math.random(-180,180),math.random(-180,180))
						local joe2 = Instance.new("SpecialMesh",spark)
						joe2.MeshType = Enum.MeshType.Sphere
						spawn(function()
							for i = 1,20 do
								game:GetService('RunService').Stepped:wait()
								spark.Transparency = spark.Transparency + 0.05
								spark.CFrame = spark.CFrame * CFrame.new(0.25,0.25,0.25) * CFrame.Angles(math.rad(15),math.rad(15),math.rad(15))

							end
							spark:destroy()
						end)
					end
				end)
				for i = 1,2 do
					local minus = -180
					local blood = Instance.new("FlagStand",script)
					blood.Anchored = true
					blood.Material = Enum.Material.SmoothPlastic
					blood.BrickColor = BrickColor.new("Royal purple")
					blood.CanCollide = false
					blood.Material = Enum.Material.Neon
					blood.Transparency = 0
					blood.Size = Vector3.new(1,math.random(4,6),1)

					blood.CFrame = v:FindFirstChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(minus,180)),math.rad(math.random(minus,180)),math.rad(math.random(minus,180)))
					local joemama123 = Instance.new("SpecialMesh",blood)
					joemama123.MeshType = Enum.MeshType.Sphere
					spawn(function()
						for i =1,5 do
							game:GetService('RunService').Stepped:wait()

							blood.Size = 					blood.Size + Vector3.new(0,0.5,0)								
							blood.Transparency = blood.Transparency + 0.2
						end
						blood:Destroy()
					end)
				end		






				local blood = Instance.new("FlagStand",game.Workspace)
				blood.Anchored = true
				blood.Material = Enum.Material.SmoothPlastic
				blood.BrickColor = BrickColor.new("Royal purple")
				blood.CanCollide = false
				blood.Material = Enum.Material.Neon
				blood.Transparency = 0
				blood.Size = Vector3.new(0.7,math.random(8,12),0.7)
				local BANG3 = Instance.new("FlagStand",game.Workspace)
				BANG3.BrickColor = BrickColor.new("Really black")
				BANG3.Size = Vector3.new(0.65, 0.65, 0.65)
				BANG3.Locked = false
				BANG3.Material = Enum.Material.SmoothPlastic
				BANG3.CanCollide = false
				BANG3.Anchored = true
				BANG3.Transparency =  0
				--RHe.Orientation = Vector3.new(0, -90, 0)
				BANG3.formFactor =  "Symmetric"
				local joe2 = Instance.new("SpecialMesh",BANG3)
				joe2.MeshType = Enum.MeshType.FileMesh
				joe2.MeshId = "rbxassetid://3454554153"
				joe2.TextureId = "rbxassetid://0"
				joe2.Scale = Vector3.new(1, 0.2, 1)
				joe2.VertexColor = Vector3.new(0,0,0)

				blood.CFrame =			v:WaitForChild("Torso").CFrame * CFrame.new(0,0,-2.7)*CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))

				local joemama123 = Instance.new("SpecialMesh",blood)
				joemama123.MeshType = Enum.MeshType.Sphere
				BANG3.CFrame = blood.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))

				spawn(function()
					for i =1,5 do
						swait()
						joe2.Scale = 		joe2.Scale + Vector3.new(0.05, 0.05, 0.05)				
						BANG3.Transparency = BANG3.Transparency + 0.2	

						blood.Size = 					blood.Size + Vector3.new(0,0.5,0)								
						blood.Transparency = blood.Transparency + 0.2
					end
					blood:Destroy()
				end)
				local minus = -180				


			end))


			for i = 0,1,0.1 do 
				swait()
				ls.C0=ls.C0:Lerp(cf(-1.08178937, 0.194757879, 0.316009909, 0.183012694, 0.183012694, -0.965925813, 0.683012664, 0.683012664, 0.258819044, 0.707106769, -0.707106769, 0),i) 

				rs.C0=rs.C0:Lerp(cf(0.964919865, 0.153169453, -1.16274631, -0.909841061, -0.00880826265, 0.414863169, 0.405008942, -0.236450925, 0.883209348, 0.0903152302, 0.971603453, 0.218700215),i) 

				lh.C0=lh.C0:Lerp(cf(-1.16389155, -1.34024477, 0.231364191, 0.641895175, 0.0789899155, -0.762713075, 0.176585495, 0.952717006, 0.247280955, 0.746182382, -0.293412507, 0.59759593),i) 

				rh.C0=rh.C0:Lerp(cf(1.18806314, -0.760494411, 0.374737799, 0.819152176, -0.286788106, 0.49673155, 0, 0.866025388, 0.5, -0.573576212, -0.409576088, 0.709406555),i) 

				rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.26889962, 0.888312936, 0.372280955, 0.197661176, -0.327395588, 0.923981667, 0.94266808, 0.322043955, -0.0875483751),i) 

				ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.2724199, -0.955360949, -0.114336818, -0.194802836, -0.061606884, 0.978905737, -0.942252278, 0.288946509, -0.169324115),i) 
				joe.C0 =  joe.C0:Lerp(CFrame.new(1,0,0) * CFrame.Angles(math.rad(90),math.rad(	-150-40),math.rad(90)),i)

			end



			for i = 0,0.8,0.2 do 
				swait()

				ls.C0=ls.C0:Lerp(cf(-0.752381325, 0.175353527, 0.27241075, 0, 0.422618359, -0.906307817, 0.642787576, 0.694272041, 0.323744357, 0.766044438, -0.5825634, -0.271653831),i) 

				rs.C0=rs.C0:Lerp(cf(1.05939841, -0.0666409582, -0.194617704, 0.522658706, -0.640856326, 0.562255144, -0.0389696956, 0.640856326, 0.766671121, -0.851650894, -0.42261827, 0.309975207),i) 

				lh.C0=lh.C0:Lerp(cf(-1.17781317, -0.400432318, -0.470524639, 0.402504802, 0.394672304, -0.825968206, -0.534953713, 0.833596468, 0.137627542, 0.742842078, 0.386459053, 0.546658039),i) 

				rh.C0=rh.C0:Lerp(cf(1.17933977, -1.4026866, -0.188120291, -0.500000179, -0.224143773, 0.836516201, -0.150383651, 0.973722935, 0.171021253, -0.852868438, -0.0402876623, -0.520569146),i) 

				rj.C0=rj.C0:Lerp(cf(0.24355185, -0.168669179, -0.34853664, -0.844656825, -0.532432199, -0.0554145426, -0.290361792, 0.368730128, 0.88302213, -0.449716449, 0.761940956, -0.46604839),i) 

				ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.57357645, 0.819152057, 0, -0.280166686, -0.19617483, 0.939692557, 0.769751072, 0.53898555, 0.342020363),i) 

				joe.C0 =  joe.C0:Lerp(CFrame.new(1,0,0) * CFrame.Angles(math.rad(90),math.rad(	-150),math.rad(90)),i)


			end
			coroutine.resume(coroutine.create(function()
				spawn(function()
					for i = 1,math.random(1,2) do
						local Part0 = Instance.new("Part")
						local ParticleEmitter1 = Instance.new("ParticleEmitter")
						local ParticleEmitter2 = Instance.new("ParticleEmitter")
						Part0.Name = "ORB O_OO_O__O"
						Part0.Parent = game.Workspace
						Part0.CFrame = CFrame.new(119.075157, 2.55000997, -37.0025864, 1, 0, 0, 0, 1, 0, 0, 0, 1)
						Part0.Position = Vector3.new(119.075157, 2.55000997, -37.0025864)
						Part0.Transparency = 1
						Part0.Size = Vector3.new(0.0999998227, 0.099999927, 0.0999999121)
						Part0.BottomSurface = Enum.SurfaceType.Smooth
						Part0.CanCollide = false
						Part0.Material = Enum.Material.SmoothPlastic
						Part0.TopSurface = Enum.SurfaceType.Smooth
						ParticleEmitter1.Name = "Vigor"
						ParticleEmitter1.Parent = Part0
						ParticleEmitter1.Speed = NumberRange.new(0, 0)
						ParticleEmitter1.Rotation = NumberRange.new(37, 999)
						ParticleEmitter1.Color = ColorSequence.new(Color3.new(0.117647, 0, 0.352941),Color3.new(0.117647, 0, 0.352941))
						ParticleEmitter1.Texture = "rbxassetid://48315270"
						ParticleEmitter1.Size = NumberSequence.new(0.99999964237213,0)
						ParticleEmitter1.Drag = 50
						ParticleEmitter1.EmissionDirection = Enum.NormalId.Left
						ParticleEmitter1.Lifetime = NumberRange.new(1, 1)
						ParticleEmitter1.Rate = 8000
						ParticleEmitter1.RotSpeed = NumberRange.new(400, 400)
						ParticleEmitter2.Name = "Void"
						ParticleEmitter2.Parent = Part0
						ParticleEmitter2.Speed = NumberRange.new(0, 0)
						ParticleEmitter2.Rotation = NumberRange.new(37, 999)
						ParticleEmitter2.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
						ParticleEmitter2.Texture = "rbxassetid://48315270"
						ParticleEmitter2.ZOffset = 1
						ParticleEmitter2.Size = NumberSequence.new(0.50000011920929,0)
						ParticleEmitter2.Drag = 50
						ParticleEmitter2.EmissionDirection = Enum.NormalId.Left
						ParticleEmitter2.Lifetime = NumberRange.new(1, 1)
						ParticleEmitter2.Rate = 8000
						ParticleEmitter2.RotSpeed = NumberRange.new(-400, -400)
						local b2p2 = Instance.new("BodyPosition",Part0)
						b2p2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
						b2p2.Position =v:WaitForChild("Torso").CFrame * CFrame.new(0,0,0).p

						spawn(function()
							Part0.CFrame =v:WaitForChild("Torso").CFrame * CFrame.Angles(0,math.rad(math.random(-180,180)),0)

							wait(0.1)
							b2p2.Position = Part0.CFrame * CFrame.new(0,math.random(5,20),math.random(5,20)).p



							wait(1)
							b2p2.D = 800
							for i = 1,5 do
								wait(0.1)
								b2p2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0).p

							end
							playor.Character.Humanoid.Health = playor.Character.Humanoid.Health + 2
							ParticleEmitter1.Enabled = false
							ParticleEmitter2.Enabled = false
							wait(1)
							Part0:Destroy()

						end)

					end
				end)
				v:FindFirstChildOfClass("Humanoid").Health = 	v:FindFirstChildOfClass("Humanoid").Health -  v:FindFirstChildOfClass("Humanoid").Health /15
				local LCUT = Instance.new("Sound",v:WaitForChild("Torso"))
				LCUT.SoundId = "rbxassetid://153092285"
				LCUT.Volume = 1
				LCUT.Looped = false
				local joe2 = Instance.new("BodyVelocity",v:WaitForChild("Torso"))
				joe2.maxForce = Vector3.new(4e9, 4e9, 4e9)
				joe2.velocity = playor.Character.HumanoidRootPart.CFrame.lookVector*1
				joe2.Name = "speedy"
				spawn(function()
					wait(1)
					joe2:Destroy()
				end)


				for i = 1,5 do
					swait()

					ParticleEmitter0:Emit(1)
				end

				spawn(function()
					local  Part0 = Instance.new("Part")
					local SpecialMesh1 = Instance.new("SpecialMesh")
					local Part2 = Instance.new("Part")
					local SpecialMesh3 = Instance.new("SpecialMesh")
					local Part4 = Instance.new("Part")
					local SpecialMesh5 = Instance.new("SpecialMesh")
					Part0.Name = "black shockwave"
					Part0.Parent = game.Workspace
					Part0.CFrame = CFrame.new(-1.05810452, 3.97946167, -146.655472, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					Part0.Position = Vector3.new(-1.05810452, 3.97946167, -146.655472)
					Part0.Color = Color3.new(0.384314, 0.145098, 0.819608)
					Part0.Size = Vector3.new(3.48000002, 0.922646344, 2.7172091)
					Part0.BottomSurface = Enum.SurfaceType.Smooth
					Part0.BrickColor = BrickColor.new("Royal purple")
					Part0.TopSurface = Enum.SurfaceType.Smooth
					Part0.brickColor = BrickColor.new("Royal purple")
					SpecialMesh1.Parent = Part0
					SpecialMesh1.MeshId = "rbxassetid://5862674837"
					SpecialMesh1.Offset = Vector3.new(0, 0, -0.699999988)
					SpecialMesh1.Scale = Vector3.new(18.0501289, 18.839695, 18.3808346)
					SpecialMesh1.VertexColor = Vector3.new(0, 0, 0)
					SpecialMesh1.TextureId = "rbxassetid://0"
					SpecialMesh1.MeshType = Enum.MeshType.FileMesh
					Part2.Name = "purpl"
					Part2.Parent = game.Workspace
					Part2.CFrame = CFrame.new(-1.05810452, 3.97946167, -146.655472, 0.94861114, 0.316444159, 0, -0.316444159, 0.94861114, 0, 0, 0, 1)
					Part2.Orientation = Vector3.new(0, 0, -18.4500008)
					Part2.Position = Vector3.new(-1.05810452, 3.97946167, -146.655472)
					Part2.Rotation = Vector3.new(0, 0, -18.4500008)
					Part2.Color = Color3.new(0.384314, 0.145098, 0.819608)
					Part2.Size = Vector3.new(2.63192654, 0.922646344, 2.24898744)
					Part2.BottomSurface = Enum.SurfaceType.Smooth
					Part2.BrickColor = BrickColor.new("Royal purple")
					Part2.TopSurface = Enum.SurfaceType.Smooth
					Part2.brickColor = BrickColor.new("Royal purple")
					SpecialMesh3.Parent = Part2
					SpecialMesh3.MeshId = "rbxassetid://5922911630"
					SpecialMesh3.Scale = Vector3.new(2.29999995, 2.29999995, 2.29999995)
					SpecialMesh3.VertexColor = Vector3.new(1, 0, 123)
					SpecialMesh3.TextureId = "rbxassetid://0"
					SpecialMesh3.MeshType = Enum.MeshType.FileMesh
					Part4.Name = "purpl2"
					Part4.Parent = game.Workspace
					Part4.CFrame = CFrame.new(-1.05810452, 3.97946024, -146.655472, 0.81878233, -0.220212519, -0.530190468, -0.237241879, 0.711184859, -0.661764562, 0.522792339, 0.667624533, 0.53006196)
					Part4.Orientation = Vector3.new(41.4300003, -45.0099983, -18.4500008)
					Part4.Position = Vector3.new(-1.05810452, 3.97946024, -146.655472)
					Part4.Rotation = Vector3.new(51.3100014, -32.0200005, 15.0500002)
					Part4.Color = Color3.new(0.384314, 0.145098, 0.819608)
					Part4.Size = Vector3.new(2.63192654, 0.922646344, 2.24898744)
					Part4.BottomSurface = Enum.SurfaceType.Smooth
					Part4.BrickColor = BrickColor.new("Royal purple")
					Part4.TopSurface = Enum.SurfaceType.Smooth
					Part4.brickColor = BrickColor.new("Royal purple")
					SpecialMesh5.Parent = Part4
					SpecialMesh5.MeshId = "rbxassetid://5922911630"
					SpecialMesh5.Scale = Vector3.new(2.29999995, 2.29999995 ,2.29999995)
					SpecialMesh5.VertexColor = Vector3.new(1, 0, 123)
					SpecialMesh5.TextureId = "rbxassetid://0"
					SpecialMesh5.MeshType = Enum.MeshType.FileMesh
					Part0.Anchored = true
					Part0.CanCollide = false
					Part2.Anchored = true
					Part2.CanCollide = false
					Part4.Anchored = true
					Part4.CanCollide = false
					Part0.Transparency = 0.3
					Part2.Transparency =  0.3
					Part4.Transparency =  0.3

					Part0.CFrame = v:WaitForChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
					Part2.CFrame = v:WaitForChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
					Part4.CFrame = v:WaitForChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))

					for i = 1,5 do
						swait()
						Part0.Transparency = Part0.Transparency + 0.2
						SpecialMesh1.Scale = SpecialMesh1.Scale  + Vector3.new(5,5,5)
						Part2.Transparency = Part2.Transparency + 0.2
						SpecialMesh3.Scale = SpecialMesh3.Scale  + Vector3.new(0.5,0.5,0.5)
						Part4.Transparency = Part4.Transparency + 0.2
						SpecialMesh5.Scale = SpecialMesh5.Scale  + Vector3.new(0.5,0.5,0.5)

					end
				end) LCUT:play()
				spawn(function()
					for i =1,3 do
						game:GetService('RunService').Stepped:wait()
						local spark = Instance.new("FlagStand",script)
						spark.Anchored = true
						spark.CanCollide =  false
						spark.Size = Vector3.new(1.2,0.25,0.25)
						spark.BrickColor = BrickColor.new("Really black")
						spark.Material = Enum.Material.Neon
						spark.CFrame = v:WaitForChild("Torso").CFrame 	
						spark.Orientation = Vector3.new(math.random(-180,180),math.random(-180,180),math.random(-180,180))
						local joe2 = Instance.new("SpecialMesh",spark)
						joe2.MeshType = Enum.MeshType.Sphere
						spawn(function()
							for i = 1,20 do
								game:GetService('RunService').Stepped:wait()
								spark.Transparency = spark.Transparency + 0.05
								spark.CFrame = spark.CFrame * CFrame.new(0.25,0.25,0.25) * CFrame.Angles(math.rad(15),math.rad(15),math.rad(15))

							end
							spark:destroy()
						end)
					end
				end)
				for i = 1,2 do
					local minus = -180
					local blood = Instance.new("FlagStand",script)
					blood.Anchored = true
					blood.Material = Enum.Material.SmoothPlastic
					blood.BrickColor = BrickColor.new("Royal purple")
					blood.CanCollide = false
					blood.Material = Enum.Material.Neon
					blood.Transparency = 0
					blood.Size = Vector3.new(1,math.random(4,6),1)

					blood.CFrame = v:FindFirstChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(minus,180)),math.rad(math.random(minus,180)),math.rad(math.random(minus,180)))
					local joemama123 = Instance.new("SpecialMesh",blood)
					joemama123.MeshType = Enum.MeshType.Sphere
					spawn(function()
						for i =1,5 do
							game:GetService('RunService').Stepped:wait()

							blood.Size = 					blood.Size + Vector3.new(0,0.5,0)								
							blood.Transparency = blood.Transparency + 0.2
						end
						blood:Destroy()
					end)
				end		






				local blood = Instance.new("FlagStand",game.Workspace)
				blood.Anchored = true
				blood.Material = Enum.Material.SmoothPlastic
				blood.BrickColor = BrickColor.new("Royal purple")
				blood.CanCollide = false
				blood.Material = Enum.Material.Neon
				blood.Transparency = 0
				blood.Size = Vector3.new(0.7,math.random(8,12),0.7)
				local BANG3 = Instance.new("FlagStand",game.Workspace)
				BANG3.BrickColor = BrickColor.new("Really black")
				BANG3.Size = Vector3.new(0.65, 0.65, 0.65)
				BANG3.Locked = false
				BANG3.Material = Enum.Material.SmoothPlastic
				BANG3.CanCollide = false
				BANG3.Anchored = true
				BANG3.Transparency =  0
				--RHe.Orientation = Vector3.new(0, -90, 0)
				BANG3.formFactor =  "Symmetric"
				local joe2 = Instance.new("SpecialMesh",BANG3)
				joe2.MeshType = Enum.MeshType.FileMesh
				joe2.MeshId = "rbxassetid://3454554153"
				joe2.TextureId = "rbxassetid://0"
				joe2.Scale = Vector3.new(1, 0.2, 1)
				joe2.VertexColor = Vector3.new(0,0,0)

				blood.CFrame =			v:WaitForChild("Torso").CFrame * CFrame.new(0,0,-2.7)*CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))

				local joemama123 = Instance.new("SpecialMesh",blood)
				joemama123.MeshType = Enum.MeshType.Sphere
				BANG3.CFrame = blood.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))

				spawn(function()
					for i =1,5 do
						swait()
						joe2.Scale = 		joe2.Scale + Vector3.new(0.05, 0.05, 0.05)				
						BANG3.Transparency = BANG3.Transparency + 0.2	

						blood.Size = 					blood.Size + Vector3.new(0,0.5,0)								
						blood.Transparency = blood.Transparency + 0.2
					end
					blood:Destroy()
				end)
				local minus = -180				


			end))

			wait(0.05)

			for i = 0,1,0.05 do 
				swait()
				ls.C0=ls.C0:Lerp(cf(-0.492497563, 0.389783144, -0.411334813, 0, -0.766044438, -0.642787635, -0.965925813, 0.166365698, -0.198266909, 0.258819073, 0.620885193, -0.739942074),i) 

				rs.C0=rs.C0:Lerp(cf(1.33733809, 0.893395305, -0.460030496, 0.75423938, -0.656121314, 0.0250551403, 0.185678184, 0.17653279, -0.96662277, 0.62979877, 0.733717203, 0.254975438),i) 

				lh.C0=lh.C0:Lerp(cf(-1.17473662, -0.534313798, -0.462599397, 0.69924736, 0.438867837, -0.564311922, -0.320870131, 0.898073971, 0.300841093, 0.638823211, -0.0292915478, 0.76879549),i) 

				rh.C0=rh.C0:Lerp(cf(0.846802294, -1.21608126, -0.137040973, -0.533622444, -0.0638587177, 0.843308389, -0.331168801, 0.933294713, -0.138881683, -0.77818656, -0.353387773, -0.519175112),i) 

				rj.C0=rj.C0:Lerp(cf(0.0579884537, -0.305217952, 0.0202246364, -0.667062104, -0.704416037, -0.242541045, -0.257834166, -0.0871555507, 0.962250173, -0.698963225, 0.704416037, -0.123484351),i) 

				ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.632085919, 0.765108109, 0.122787803, 0.172987387, -0.0151344314, 0.98480773, 0.755342722, 0.643723845, -0.122787803),i) 

			end
			coroutine.resume(coroutine.create(function()
				spawn(function()
					for i = 1,math.random(1,2) do
						local Part0 = Instance.new("Part")
						local ParticleEmitter1 = Instance.new("ParticleEmitter")
						local ParticleEmitter2 = Instance.new("ParticleEmitter")
						Part0.Name = "ORB O_OO_O__O"
						Part0.Parent = game.Workspace
						Part0.CFrame = CFrame.new(119.075157, 2.55000997, -37.0025864, 1, 0, 0, 0, 1, 0, 0, 0, 1)
						Part0.Position = Vector3.new(119.075157, 2.55000997, -37.0025864)
						Part0.Transparency = 1
						Part0.Size = Vector3.new(0.0999998227, 0.099999927, 0.0999999121)
						Part0.BottomSurface = Enum.SurfaceType.Smooth
						Part0.CanCollide = false
						Part0.Material = Enum.Material.SmoothPlastic
						Part0.TopSurface = Enum.SurfaceType.Smooth
						ParticleEmitter1.Name = "Vigor"
						ParticleEmitter1.Parent = Part0
						ParticleEmitter1.Speed = NumberRange.new(0, 0)
						ParticleEmitter1.Rotation = NumberRange.new(37, 999)
						ParticleEmitter1.Color = ColorSequence.new(Color3.new(0.117647, 0, 0.352941),Color3.new(0.117647, 0, 0.352941))
						ParticleEmitter1.Texture = "rbxassetid://48315270"
						ParticleEmitter1.Size = NumberSequence.new(0.99999964237213,0)
						ParticleEmitter1.Drag = 50
						ParticleEmitter1.EmissionDirection = Enum.NormalId.Left
						ParticleEmitter1.Lifetime = NumberRange.new(1, 1)
						ParticleEmitter1.Rate = 8000
						ParticleEmitter1.RotSpeed = NumberRange.new(400, 400)
						ParticleEmitter2.Name = "Void"
						ParticleEmitter2.Parent = Part0
						ParticleEmitter2.Speed = NumberRange.new(0, 0)
						ParticleEmitter2.Rotation = NumberRange.new(37, 999)
						ParticleEmitter2.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
						ParticleEmitter2.Texture = "rbxassetid://48315270"
						ParticleEmitter2.ZOffset = 1
						ParticleEmitter2.Size = NumberSequence.new(0.50000011920929,0)
						ParticleEmitter2.Drag = 50
						ParticleEmitter2.EmissionDirection = Enum.NormalId.Left
						ParticleEmitter2.Lifetime = NumberRange.new(1, 1)
						ParticleEmitter2.Rate = 8000
						ParticleEmitter2.RotSpeed = NumberRange.new(-400, -400)
						local b2p2 = Instance.new("BodyPosition",Part0)
						b2p2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
						b2p2.Position =v:WaitForChild("Torso").CFrame * CFrame.new(0,0,0).p

						spawn(function()
							Part0.CFrame =v:WaitForChild("Torso").CFrame * CFrame.Angles(0,math.rad(math.random(-180,180)),0)

							wait(0.1)
							b2p2.Position = Part0.CFrame * CFrame.new(0,math.random(5,20),math.random(5,20)).p



							wait(1)
							b2p2.D = 800
							for i = 1,5 do
								wait(0.1)
								b2p2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0).p

							end
							playor.Character.Humanoid.Health = playor.Character.Humanoid.Health + 2
							ParticleEmitter1.Enabled = false
							ParticleEmitter2.Enabled = false
							wait(1)
							Part0:Destroy()

						end)

					end
				end)
				v:FindFirstChildOfClass("Humanoid").Health = 	v:FindFirstChildOfClass("Humanoid").Health -  v:FindFirstChildOfClass("Humanoid").Health /15
				local LCUT = Instance.new("Sound",v:WaitForChild("Torso"))
				LCUT.SoundId = "rbxassetid://153092285"
				LCUT.Volume = 1
				LCUT.Looped = false
				local joe2 = Instance.new("BodyVelocity",v:WaitForChild("Torso"))
				joe2.maxForce = Vector3.new(4e9, 4e9, 4e9)
				joe2.velocity = playor.Character.HumanoidRootPart.CFrame.lookVector*1
				joe2.Name = "speedy"
				spawn(function()
					wait(1)
					joe2:Destroy()
				end)

				for i = 1,5 do
					swait()

					ParticleEmitter0:Emit(1)
				end

				spawn(function()
					local  Part0 = Instance.new("Part")
					local SpecialMesh1 = Instance.new("SpecialMesh")
					local Part2 = Instance.new("Part")
					local SpecialMesh3 = Instance.new("SpecialMesh")
					local Part4 = Instance.new("Part")
					local SpecialMesh5 = Instance.new("SpecialMesh")
					Part0.Name = "black shockwave"
					Part0.Parent = game.Workspace
					Part0.CFrame = CFrame.new(-1.05810452, 3.97946167, -146.655472, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					Part0.Position = Vector3.new(-1.05810452, 3.97946167, -146.655472)
					Part0.Color = Color3.new(0.384314, 0.145098, 0.819608)
					Part0.Size = Vector3.new(3.48000002, 0.922646344, 2.7172091)
					Part0.BottomSurface = Enum.SurfaceType.Smooth
					Part0.BrickColor = BrickColor.new("Royal purple")
					Part0.TopSurface = Enum.SurfaceType.Smooth
					Part0.brickColor = BrickColor.new("Royal purple")
					SpecialMesh1.Parent = Part0
					SpecialMesh1.MeshId = "rbxassetid://5862674837"
					SpecialMesh1.Offset = Vector3.new(0, 0, -0.699999988)
					SpecialMesh1.Scale = Vector3.new(18.0501289, 18.839695, 18.3808346)
					SpecialMesh1.VertexColor = Vector3.new(0, 0, 0)
					SpecialMesh1.TextureId = "rbxassetid://0"
					SpecialMesh1.MeshType = Enum.MeshType.FileMesh
					Part2.Name = "purpl"
					Part2.Parent = game.Workspace
					Part2.CFrame = CFrame.new(-1.05810452, 3.97946167, -146.655472, 0.94861114, 0.316444159, 0, -0.316444159, 0.94861114, 0, 0, 0, 1)
					Part2.Orientation = Vector3.new(0, 0, -18.4500008)
					Part2.Position = Vector3.new(-1.05810452, 3.97946167, -146.655472)
					Part2.Rotation = Vector3.new(0, 0, -18.4500008)
					Part2.Color = Color3.new(0.384314, 0.145098, 0.819608)
					Part2.Size = Vector3.new(2.63192654, 0.922646344, 2.24898744)
					Part2.BottomSurface = Enum.SurfaceType.Smooth
					Part2.BrickColor = BrickColor.new("Royal purple")
					Part2.TopSurface = Enum.SurfaceType.Smooth
					Part2.brickColor = BrickColor.new("Royal purple")
					SpecialMesh3.Parent = Part2
					SpecialMesh3.MeshId = "rbxassetid://5922911630"
					SpecialMesh3.Scale = Vector3.new(2.29999995, 2.29999995, 2.29999995)
					SpecialMesh3.VertexColor = Vector3.new(1, 0, 123)
					SpecialMesh3.TextureId = "rbxassetid://0"
					SpecialMesh3.MeshType = Enum.MeshType.FileMesh
					Part4.Name = "purpl2"
					Part4.Parent = game.Workspace
					Part4.CFrame = CFrame.new(-1.05810452, 3.97946024, -146.655472, 0.81878233, -0.220212519, -0.530190468, -0.237241879, 0.711184859, -0.661764562, 0.522792339, 0.667624533, 0.53006196)
					Part4.Orientation = Vector3.new(41.4300003, -45.0099983, -18.4500008)
					Part4.Position = Vector3.new(-1.05810452, 3.97946024, -146.655472)
					Part4.Rotation = Vector3.new(51.3100014, -32.0200005, 15.0500002)
					Part4.Color = Color3.new(0.384314, 0.145098, 0.819608)
					Part4.Size = Vector3.new(2.63192654, 0.922646344, 2.24898744)
					Part4.BottomSurface = Enum.SurfaceType.Smooth
					Part4.BrickColor = BrickColor.new("Royal purple")
					Part4.TopSurface = Enum.SurfaceType.Smooth
					Part4.brickColor = BrickColor.new("Royal purple")
					SpecialMesh5.Parent = Part4
					SpecialMesh5.MeshId = "rbxassetid://5922911630"
					SpecialMesh5.Scale = Vector3.new(2.29999995, 2.29999995 ,2.29999995)
					SpecialMesh5.VertexColor = Vector3.new(1, 0, 123)
					SpecialMesh5.TextureId = "rbxassetid://0"
					SpecialMesh5.MeshType = Enum.MeshType.FileMesh
					Part0.Anchored = true
					Part0.CanCollide = false
					Part2.Anchored = true
					Part2.CanCollide = false
					Part4.Anchored = true
					Part4.CanCollide = false
					Part0.Transparency = 0.3
					Part2.Transparency =  0.3
					Part4.Transparency =  0.3

					Part0.CFrame = v:WaitForChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
					Part2.CFrame = v:WaitForChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
					Part4.CFrame = v:WaitForChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))

					for i = 1,5 do
						swait()
						Part0.Transparency = Part0.Transparency + 0.2
						SpecialMesh1.Scale = SpecialMesh1.Scale  + Vector3.new(5,5,5)
						Part2.Transparency = Part2.Transparency + 0.2
						SpecialMesh3.Scale = SpecialMesh3.Scale  + Vector3.new(0.5,0.5,0.5)
						Part4.Transparency = Part4.Transparency + 0.2
						SpecialMesh5.Scale = SpecialMesh5.Scale  + Vector3.new(0.5,0.5,0.5)

					end
				end) LCUT:play()
				spawn(function()
					for i =1,3 do
						game:GetService('RunService').Stepped:wait()
						local spark = Instance.new("FlagStand",script)
						spark.Anchored = true
						spark.CanCollide =  false
						spark.Size = Vector3.new(1.2,0.25,0.25)
						spark.BrickColor = BrickColor.new("Really black")
						spark.Material = Enum.Material.Neon
						spark.CFrame = v:WaitForChild("Torso").CFrame 	
						spark.Orientation = Vector3.new(math.random(-180,180),math.random(-180,180),math.random(-180,180))
						local joe2 = Instance.new("SpecialMesh",spark)
						joe2.MeshType = Enum.MeshType.Sphere
						spawn(function()
							for i = 1,20 do
								game:GetService('RunService').Stepped:wait()
								spark.Transparency = spark.Transparency + 0.05
								spark.CFrame = spark.CFrame * CFrame.new(0.25,0.25,0.25) * CFrame.Angles(math.rad(15),math.rad(15),math.rad(15))

							end
							spark:destroy()
						end)
					end
				end)
				for i = 1,2 do
					local minus = -180
					local blood = Instance.new("FlagStand",script)
					blood.Anchored = true
					blood.Material = Enum.Material.SmoothPlastic
					blood.BrickColor = BrickColor.new("Royal purple")
					blood.CanCollide = false
					blood.Material = Enum.Material.Neon
					blood.Transparency = 0
					blood.Size = Vector3.new(1,math.random(4,6),1)

					blood.CFrame = v:FindFirstChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(minus,180)),math.rad(math.random(minus,180)),math.rad(math.random(minus,180)))
					local joemama123 = Instance.new("SpecialMesh",blood)
					joemama123.MeshType = Enum.MeshType.Sphere
					spawn(function()
						for i =1,5 do
							game:GetService('RunService').Stepped:wait()

							blood.Size = 					blood.Size + Vector3.new(0,0.5,0)								
							blood.Transparency = blood.Transparency + 0.2
						end
						blood:Destroy()
					end)
				end		






				local blood = Instance.new("FlagStand",game.Workspace)
				blood.Anchored = true
				blood.Material = Enum.Material.SmoothPlastic
				blood.BrickColor = BrickColor.new("Royal purple")
				blood.CanCollide = false
				blood.Material = Enum.Material.Neon
				blood.Transparency = 0
				blood.Size = Vector3.new(0.7,math.random(8,12),0.7)
				local BANG3 = Instance.new("FlagStand",game.Workspace)
				BANG3.BrickColor = BrickColor.new("Really black")
				BANG3.Size = Vector3.new(0.65, 0.65, 0.65)
				BANG3.Locked = false
				BANG3.Material = Enum.Material.SmoothPlastic
				BANG3.CanCollide = false
				BANG3.Anchored = true
				BANG3.Transparency =  0
				--RHe.Orientation = Vector3.new(0, -90, 0)
				BANG3.formFactor =  "Symmetric"
				local joe2 = Instance.new("SpecialMesh",BANG3)
				joe2.MeshType = Enum.MeshType.FileMesh
				joe2.MeshId = "rbxassetid://3454554153"
				joe2.TextureId = "rbxassetid://0"
				joe2.Scale = Vector3.new(1, 0.2, 1)
				joe2.VertexColor = Vector3.new(0,0,0)

				blood.CFrame =			v:WaitForChild("Torso").CFrame * CFrame.new(0,0,-2.7)*CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))

				local joemama123 = Instance.new("SpecialMesh",blood)
				joemama123.MeshType = Enum.MeshType.Sphere
				BANG3.CFrame = blood.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))

				spawn(function()
					for i =1,5 do
						swait()
						joe2.Scale = 		joe2.Scale + Vector3.new(0.05, 0.05, 0.05)				
						BANG3.Transparency = BANG3.Transparency + 0.2	

						blood.Size = 					blood.Size + Vector3.new(0,0.5,0)								
						blood.Transparency = blood.Transparency + 0.2
					end
					blood:Destroy()
				end)
				local minus = -180				


			end))

			wait(0.05)
			for i = 0,0.6,0.3 do 
				swait()

				ls.C0=ls.C0:Lerp(cf(-1.18574762, 0.270265132, 0.132637545, 0, 0.57357645, -0.819152057, 0.500000179, 0.709406435, 0.496731728, 0.866025329, -0.409576178, -0.286788315),i) 
				rs.C0=rs.C0:Lerp(cf(1.66151774, -0.0688906163, -0.267905682, -0.635307074, -0.754800797, 0.163280666, -0.0868241265, 0.279903799, 0.956093729, -0.76736331, 0.593236506, -0.243359804),i) 

				lh.C0=lh.C0:Lerp(cf(-1.08625078, -0.829405189, -0.0313320309, 0.704321146, 0.439538956, -0.557438016, -0.219951391, 0.881732166, 0.417336494, 0.674946666, -0.171329677, 0.717699766),i) 

				rh.C0=rh.C0:Lerp(cf(1.19621575, -1.26281881, 0.342005134, 0.441260904, -0.0852823853, 0.893317223, -0.350324869, 0.900112987, 0.258976817, -0.82617259, -0.427227557, 0.36730811),i) 

				rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.103620991, 0.952143312, 0.287551075, -0.205152839, -0.303351104, 0.930532217, 0.973229051, 0.0374308527, 0.226768479),i) 

				ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.757771909, -0.623405576, 0.192736357, 0.153335422, 0.116977833, 0.981225908, -0.634247601, 0.773098826, 0.00694765151),i) 
				joe.C0 =  joe.C0:Lerp(CFrame.new(-1,0,0) * CFrame.Angles(math.rad(90),math.rad(	-0),math.rad(90)),i)

			end
			coroutine.resume(coroutine.create(function()
				spawn(function()
					for i = 1,math.random(1,2) do
						local Part0 = Instance.new("Part")
						local ParticleEmitter1 = Instance.new("ParticleEmitter")
						local ParticleEmitter2 = Instance.new("ParticleEmitter")
						Part0.Name = "ORB O_OO_O__O"
						Part0.Parent = game.Workspace
						Part0.CFrame = CFrame.new(119.075157, 2.55000997, -37.0025864, 1, 0, 0, 0, 1, 0, 0, 0, 1)
						Part0.Position = Vector3.new(119.075157, 2.55000997, -37.0025864)
						Part0.Transparency = 1
						Part0.Size = Vector3.new(0.0999998227, 0.099999927, 0.0999999121)
						Part0.BottomSurface = Enum.SurfaceType.Smooth
						Part0.CanCollide = false
						Part0.Material = Enum.Material.SmoothPlastic
						Part0.TopSurface = Enum.SurfaceType.Smooth
						ParticleEmitter1.Name = "Vigor"
						ParticleEmitter1.Parent = Part0
						ParticleEmitter1.Speed = NumberRange.new(0, 0)
						ParticleEmitter1.Rotation = NumberRange.new(37, 999)
						ParticleEmitter1.Color = ColorSequence.new(Color3.new(0.117647, 0, 0.352941),Color3.new(0.117647, 0, 0.352941))
						ParticleEmitter1.Texture = "rbxassetid://48315270"
						ParticleEmitter1.Size = NumberSequence.new(0.99999964237213,0)
						ParticleEmitter1.Drag = 50
						ParticleEmitter1.EmissionDirection = Enum.NormalId.Left
						ParticleEmitter1.Lifetime = NumberRange.new(1, 1)
						ParticleEmitter1.Rate = 8000
						ParticleEmitter1.RotSpeed = NumberRange.new(400, 400)
						ParticleEmitter2.Name = "Void"
						ParticleEmitter2.Parent = Part0
						ParticleEmitter2.Speed = NumberRange.new(0, 0)
						ParticleEmitter2.Rotation = NumberRange.new(37, 999)
						ParticleEmitter2.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
						ParticleEmitter2.Texture = "rbxassetid://48315270"
						ParticleEmitter2.ZOffset = 1
						ParticleEmitter2.Size = NumberSequence.new(0.50000011920929,0)
						ParticleEmitter2.Drag = 50
						ParticleEmitter2.EmissionDirection = Enum.NormalId.Left
						ParticleEmitter2.Lifetime = NumberRange.new(1, 1)
						ParticleEmitter2.Rate = 8000
						ParticleEmitter2.RotSpeed = NumberRange.new(-400, -400)
						local b2p2 = Instance.new("BodyPosition",Part0)
						b2p2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
						b2p2.Position =v:WaitForChild("Torso").CFrame * CFrame.new(0,0,0).p

						spawn(function()
							Part0.CFrame =v:WaitForChild("Torso").CFrame * CFrame.Angles(0,math.rad(math.random(-180,180)),0)

							wait(0.1)
							b2p2.Position = Part0.CFrame * CFrame.new(0,math.random(5,20),math.random(5,20)).p



							wait(1)
							b2p2.D = 800
							for i = 1,5 do
								wait(0.1)
								b2p2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0).p

							end
							playor.Character.Humanoid.Health = playor.Character.Humanoid.Health + 2
							ParticleEmitter1.Enabled = false
							ParticleEmitter2.Enabled = false
							wait(1)
							Part0:Destroy()

						end)

					end
				end)
				v:FindFirstChildOfClass("Humanoid").Health = 	v:FindFirstChildOfClass("Humanoid").Health -  v:FindFirstChildOfClass("Humanoid").Health /15
				local LCUT = Instance.new("Sound",v:WaitForChild("Torso"))
				LCUT.SoundId = "rbxassetid://153092285"
				LCUT.Volume = 1
				LCUT.Looped = false
				local joe2 = Instance.new("BodyVelocity",v:WaitForChild("Torso"))
				joe2.maxForce = Vector3.new(4e9, 4e9, 4e9)
				joe2.velocity = playor.Character.HumanoidRootPart.CFrame.lookVector*1
				joe2.Name = "speedy"
				spawn(function()
					wait(1)
					joe2:Destroy()
				end)

				for i = 1,5 do
					swait()

					ParticleEmitter0:Emit(1)
				end

				spawn(function()
					local  Part0 = Instance.new("Part")
					local SpecialMesh1 = Instance.new("SpecialMesh")
					local Part2 = Instance.new("Part")
					local SpecialMesh3 = Instance.new("SpecialMesh")
					local Part4 = Instance.new("Part")
					local SpecialMesh5 = Instance.new("SpecialMesh")
					Part0.Name = "black shockwave"
					Part0.Parent = game.Workspace
					Part0.CFrame = CFrame.new(-1.05810452, 3.97946167, -146.655472, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					Part0.Position = Vector3.new(-1.05810452, 3.97946167, -146.655472)
					Part0.Color = Color3.new(0.384314, 0.145098, 0.819608)
					Part0.Size = Vector3.new(3.48000002, 0.922646344, 2.7172091)
					Part0.BottomSurface = Enum.SurfaceType.Smooth
					Part0.BrickColor = BrickColor.new("Royal purple")
					Part0.TopSurface = Enum.SurfaceType.Smooth
					Part0.brickColor = BrickColor.new("Royal purple")
					SpecialMesh1.Parent = Part0
					SpecialMesh1.MeshId = "rbxassetid://5862674837"
					SpecialMesh1.Offset = Vector3.new(0, 0, -0.699999988)
					SpecialMesh1.Scale = Vector3.new(18.0501289, 18.839695, 18.3808346)
					SpecialMesh1.VertexColor = Vector3.new(0, 0, 0)
					SpecialMesh1.TextureId = "rbxassetid://0"
					SpecialMesh1.MeshType = Enum.MeshType.FileMesh
					Part2.Name = "purpl"
					Part2.Parent = game.Workspace
					Part2.CFrame = CFrame.new(-1.05810452, 3.97946167, -146.655472, 0.94861114, 0.316444159, 0, -0.316444159, 0.94861114, 0, 0, 0, 1)
					Part2.Orientation = Vector3.new(0, 0, -18.4500008)
					Part2.Position = Vector3.new(-1.05810452, 3.97946167, -146.655472)
					Part2.Rotation = Vector3.new(0, 0, -18.4500008)
					Part2.Color = Color3.new(0.384314, 0.145098, 0.819608)
					Part2.Size = Vector3.new(2.63192654, 0.922646344, 2.24898744)
					Part2.BottomSurface = Enum.SurfaceType.Smooth
					Part2.BrickColor = BrickColor.new("Royal purple")
					Part2.TopSurface = Enum.SurfaceType.Smooth
					Part2.brickColor = BrickColor.new("Royal purple")
					SpecialMesh3.Parent = Part2
					SpecialMesh3.MeshId = "rbxassetid://5922911630"
					SpecialMesh3.Scale = Vector3.new(2.29999995, 2.29999995, 2.29999995)
					SpecialMesh3.VertexColor = Vector3.new(1, 0, 123)
					SpecialMesh3.TextureId = "rbxassetid://0"
					SpecialMesh3.MeshType = Enum.MeshType.FileMesh
					Part4.Name = "purpl2"
					Part4.Parent = game.Workspace
					Part4.CFrame = CFrame.new(-1.05810452, 3.97946024, -146.655472, 0.81878233, -0.220212519, -0.530190468, -0.237241879, 0.711184859, -0.661764562, 0.522792339, 0.667624533, 0.53006196)
					Part4.Orientation = Vector3.new(41.4300003, -45.0099983, -18.4500008)
					Part4.Position = Vector3.new(-1.05810452, 3.97946024, -146.655472)
					Part4.Rotation = Vector3.new(51.3100014, -32.0200005, 15.0500002)
					Part4.Color = Color3.new(0.384314, 0.145098, 0.819608)
					Part4.Size = Vector3.new(2.63192654, 0.922646344, 2.24898744)
					Part4.BottomSurface = Enum.SurfaceType.Smooth
					Part4.BrickColor = BrickColor.new("Royal purple")
					Part4.TopSurface = Enum.SurfaceType.Smooth
					Part4.brickColor = BrickColor.new("Royal purple")
					SpecialMesh5.Parent = Part4
					SpecialMesh5.MeshId = "rbxassetid://5922911630"
					SpecialMesh5.Scale = Vector3.new(2.29999995, 2.29999995 ,2.29999995)
					SpecialMesh5.VertexColor = Vector3.new(1, 0, 123)
					SpecialMesh5.TextureId = "rbxassetid://0"
					SpecialMesh5.MeshType = Enum.MeshType.FileMesh
					Part0.Anchored = true
					Part0.CanCollide = false
					Part2.Anchored = true
					Part2.CanCollide = false
					Part4.Anchored = true
					Part4.CanCollide = false
					Part0.Transparency = 0.3
					Part2.Transparency =  0.3
					Part4.Transparency =  0.3

					Part0.CFrame = v:WaitForChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
					Part2.CFrame = v:WaitForChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
					Part4.CFrame = v:WaitForChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))

					for i = 1,5 do
						swait()
						Part0.Transparency = Part0.Transparency + 0.2
						SpecialMesh1.Scale = SpecialMesh1.Scale  + Vector3.new(5,5,5)
						Part2.Transparency = Part2.Transparency + 0.2
						SpecialMesh3.Scale = SpecialMesh3.Scale  + Vector3.new(0.5,0.5,0.5)
						Part4.Transparency = Part4.Transparency + 0.2
						SpecialMesh5.Scale = SpecialMesh5.Scale  + Vector3.new(0.5,0.5,0.5)

					end
				end) LCUT:play()
				spawn(function()
					for i =1,3 do
						game:GetService('RunService').Stepped:wait()
						local spark = Instance.new("FlagStand",script)
						spark.Anchored = true
						spark.CanCollide =  false
						spark.Size = Vector3.new(1.2,0.25,0.25)
						spark.BrickColor = BrickColor.new("Really black")
						spark.Material = Enum.Material.Neon
						spark.CFrame = v:WaitForChild("Torso").CFrame 	
						spark.Orientation = Vector3.new(math.random(-180,180),math.random(-180,180),math.random(-180,180))
						local joe2 = Instance.new("SpecialMesh",spark)
						joe2.MeshType = Enum.MeshType.Sphere
						spawn(function()
							for i = 1,20 do
								game:GetService('RunService').Stepped:wait()
								spark.Transparency = spark.Transparency + 0.05
								spark.CFrame = spark.CFrame * CFrame.new(0.25,0.25,0.25) * CFrame.Angles(math.rad(15),math.rad(15),math.rad(15))

							end
							spark:destroy()
						end)
					end
				end)
				for i = 1,2 do
					local minus = -180
					local blood = Instance.new("FlagStand",script)
					blood.Anchored = true
					blood.Material = Enum.Material.SmoothPlastic
					blood.BrickColor = BrickColor.new("Royal purple")
					blood.CanCollide = false
					blood.Material = Enum.Material.Neon
					blood.Transparency = 0
					blood.Size = Vector3.new(1,math.random(4,6),1)

					blood.CFrame = v:FindFirstChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(minus,180)),math.rad(math.random(minus,180)),math.rad(math.random(minus,180)))
					local joemama123 = Instance.new("SpecialMesh",blood)
					joemama123.MeshType = Enum.MeshType.Sphere
					spawn(function()
						for i =1,5 do
							game:GetService('RunService').Stepped:wait()

							blood.Size = 					blood.Size + Vector3.new(0,0.5,0)								
							blood.Transparency = blood.Transparency + 0.2
						end
						blood:Destroy()
					end)
				end		






				local blood = Instance.new("FlagStand",game.Workspace)
				blood.Anchored = true
				blood.Material = Enum.Material.SmoothPlastic
				blood.BrickColor = BrickColor.new("Royal purple")
				blood.CanCollide = false
				blood.Material = Enum.Material.Neon
				blood.Transparency = 0
				blood.Size = Vector3.new(0.7,math.random(8,12),0.7)
				local BANG3 = Instance.new("FlagStand",game.Workspace)
				BANG3.BrickColor = BrickColor.new("Really black")
				BANG3.Size = Vector3.new(0.65, 0.65, 0.65)
				BANG3.Locked = false
				BANG3.Material = Enum.Material.SmoothPlastic
				BANG3.CanCollide = false
				BANG3.Anchored = true
				BANG3.Transparency =  0
				--RHe.Orientation = Vector3.new(0, -90, 0)
				BANG3.formFactor =  "Symmetric"
				local joe2 = Instance.new("SpecialMesh",BANG3)
				joe2.MeshType = Enum.MeshType.FileMesh
				joe2.MeshId = "rbxassetid://3454554153"
				joe2.TextureId = "rbxassetid://0"
				joe2.Scale = Vector3.new(1, 0.2, 1)
				joe2.VertexColor = Vector3.new(0,0,0)

				blood.CFrame =			v:WaitForChild("Torso").CFrame * CFrame.new(0,0,-2.7)*CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))

				local joemama123 = Instance.new("SpecialMesh",blood)
				joemama123.MeshType = Enum.MeshType.Sphere
				BANG3.CFrame = blood.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))

				spawn(function()
					for i =1,5 do
						swait()
						joe2.Scale = 		joe2.Scale + Vector3.new(0.05, 0.05, 0.05)				
						BANG3.Transparency = BANG3.Transparency + 0.2	

						blood.Size = 					blood.Size + Vector3.new(0,0.5,0)								
						blood.Transparency = blood.Transparency + 0.2
					end
					blood:Destroy()
				end)
				local minus = -180				


			end))


			for i = 0,1,0.1 do 
				swait()
				ls.C0=ls.C0:Lerp(cf(-1.08178937, 0.194757879, 0.316009909, 0.183012694, 0.183012694, -0.965925813, 0.683012664, 0.683012664, 0.258819044, 0.707106769, -0.707106769, 0),i) 

				rs.C0=rs.C0:Lerp(cf(0.964919865, 0.153169453, -1.16274631, -0.909841061, -0.00880826265, 0.414863169, 0.405008942, -0.236450925, 0.883209348, 0.0903152302, 0.971603453, 0.218700215),i) 

				lh.C0=lh.C0:Lerp(cf(-1.16389155, -1.34024477, 0.231364191, 0.641895175, 0.0789899155, -0.762713075, 0.176585495, 0.952717006, 0.247280955, 0.746182382, -0.293412507, 0.59759593),i) 

				rh.C0=rh.C0:Lerp(cf(1.18806314, -0.760494411, 0.374737799, 0.819152176, -0.286788106, 0.49673155, 0, 0.866025388, 0.5, -0.573576212, -0.409576088, 0.709406555),i) 

				rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.26889962, 0.888312936, 0.372280955, 0.197661176, -0.327395588, 0.923981667, 0.94266808, 0.322043955, -0.0875483751),i) 

				ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.2724199, -0.955360949, -0.114336818, -0.194802836, -0.061606884, 0.978905737, -0.942252278, 0.288946509, -0.169324115),i) 

			end
			wait(0.1)
			---SPINS 'ERE??





			for i = 0,1,0.07 do 
				swait()
				ls.C0=ls.C0:Lerp(cf(-0.303940475, 0.173566252, -0.511928856, -0.113450468, -0.992383718, 0.0479939282, -0.90044409, 0.0822834149, -0.427117974, 0.419915885, -0.0916726142, -0.902921081),i) 

				rs.C0=rs.C0:Lerp(cf(1.15802646, 0.29284507, 0.0473983586, -0.467270523, -0.65893203, 0.589463174, -0.178438306, 0.723294616, 0.667086542, -0.865920246, 0.206526816, -0.455552995),i) 

				lh.C0=lh.C0:Lerp(cf(-1.12390804, -0.960798979, -0.190289915, 0.66315341, 0.129651189, -0.737168789, -0.179208279, 0.983740211, 0.0118025392, 0.726712942, 0.124279901, 0.675605416),i) 

				rh.C0=rh.C0:Lerp(cf(1.07324934, -1.0222187, -0.43685317, -0.511397183, -0.418595314, 0.750500321, -0.283218175, 0.906645834, 0.31269896, -0.811332405, -0.0526419729, -0.582209945),i) 

				rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.252924711, -0.932497025, 0.257833958, 0.0449434184, 0.254886776, 0.965925872, -0.966441512, 0.255894482, -0.0225575641),i) 

				ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.805362403, 0.569881499, -0.163175911, -0.167731255, 0.0449434556, 0.98480773, 0.568557382, 0.820496857, 0.0593911707),i) 

			end
			wait(0.1)
			coroutine.resume(coroutine.create(function()
				spawn(function()
					for i = 1,math.random(1,2) do
						local Part0 = Instance.new("Part")
						local ParticleEmitter1 = Instance.new("ParticleEmitter")
						local ParticleEmitter2 = Instance.new("ParticleEmitter")
						Part0.Name = "ORB O_OO_O__O"
						Part0.Parent = game.Workspace
						Part0.CFrame = CFrame.new(119.075157, 2.55000997, -37.0025864, 1, 0, 0, 0, 1, 0, 0, 0, 1)
						Part0.Position = Vector3.new(119.075157, 2.55000997, -37.0025864)
						Part0.Transparency = 1
						Part0.Size = Vector3.new(0.0999998227, 0.099999927, 0.0999999121)
						Part0.BottomSurface = Enum.SurfaceType.Smooth
						Part0.CanCollide = false
						Part0.Material = Enum.Material.SmoothPlastic
						Part0.TopSurface = Enum.SurfaceType.Smooth
						ParticleEmitter1.Name = "Vigor"
						ParticleEmitter1.Parent = Part0
						ParticleEmitter1.Speed = NumberRange.new(0, 0)
						ParticleEmitter1.Rotation = NumberRange.new(37, 999)
						ParticleEmitter1.Color = ColorSequence.new(Color3.new(0.117647, 0, 0.352941),Color3.new(0.117647, 0, 0.352941))
						ParticleEmitter1.Texture = "rbxassetid://48315270"
						ParticleEmitter1.Size = NumberSequence.new(0.99999964237213,0)
						ParticleEmitter1.Drag = 50
						ParticleEmitter1.EmissionDirection = Enum.NormalId.Left
						ParticleEmitter1.Lifetime = NumberRange.new(1, 1)
						ParticleEmitter1.Rate = 8000
						ParticleEmitter1.RotSpeed = NumberRange.new(400, 400)
						ParticleEmitter2.Name = "Void"
						ParticleEmitter2.Parent = Part0
						ParticleEmitter2.Speed = NumberRange.new(0, 0)
						ParticleEmitter2.Rotation = NumberRange.new(37, 999)
						ParticleEmitter2.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
						ParticleEmitter2.Texture = "rbxassetid://48315270"
						ParticleEmitter2.ZOffset = 1
						ParticleEmitter2.Size = NumberSequence.new(0.50000011920929,0)
						ParticleEmitter2.Drag = 50
						ParticleEmitter2.EmissionDirection = Enum.NormalId.Left
						ParticleEmitter2.Lifetime = NumberRange.new(1, 1)
						ParticleEmitter2.Rate = 8000
						ParticleEmitter2.RotSpeed = NumberRange.new(-400, -400)
						local b2p2 = Instance.new("BodyPosition",Part0)
						b2p2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
						b2p2.Position =v:WaitForChild("Torso").CFrame * CFrame.new(0,0,0).p

						spawn(function()
							Part0.CFrame =v:WaitForChild("Torso").CFrame * CFrame.Angles(0,math.rad(math.random(-180,180)),0)

							wait(0.1)
							b2p2.Position = Part0.CFrame * CFrame.new(0,math.random(5,20),math.random(5,20)).p



							wait(1)
							b2p2.D = 800
							for i = 1,5 do
								wait(0.1)
								b2p2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0).p

							end
							playor.Character.Humanoid.Health = playor.Character.Humanoid.Health + 2
							ParticleEmitter1.Enabled = false
							ParticleEmitter2.Enabled = false
							wait(1)
							Part0:Destroy()

						end)

					end
				end)
				v:FindFirstChildOfClass("Humanoid").Health = 	v:FindFirstChildOfClass("Humanoid").Health -  v:FindFirstChildOfClass("Humanoid").Health /15
				local LCUT = Instance.new("Sound",v:WaitForChild("Torso"))
				LCUT.SoundId = "rbxassetid://153092285"
				LCUT.Volume = 1
				LCUT.Looped = false
				local joe2 = Instance.new("BodyVelocity",v:WaitForChild("Torso"))
				joe2.maxForce = Vector3.new(4e9, 4e9, 4e9)
				joe2.velocity = playor.Character.HumanoidRootPart.CFrame.lookVector*1
				joe2.Name = "speedy"
				spawn(function()
					wait(1)
					joe2:Destroy()
				end)

				for i = 1,5 do
					swait()

					ParticleEmitter0:Emit(1)
				end

				spawn(function()
					local  Part0 = Instance.new("Part")
					local SpecialMesh1 = Instance.new("SpecialMesh")
					local Part2 = Instance.new("Part")
					local SpecialMesh3 = Instance.new("SpecialMesh")
					local Part4 = Instance.new("Part")
					local SpecialMesh5 = Instance.new("SpecialMesh")
					Part0.Name = "black shockwave"
					Part0.Parent = game.Workspace
					Part0.CFrame = CFrame.new(-1.05810452, 3.97946167, -146.655472, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					Part0.Position = Vector3.new(-1.05810452, 3.97946167, -146.655472)
					Part0.Color = Color3.new(0.384314, 0.145098, 0.819608)
					Part0.Size = Vector3.new(3.48000002, 0.922646344, 2.7172091)
					Part0.BottomSurface = Enum.SurfaceType.Smooth
					Part0.BrickColor = BrickColor.new("Royal purple")
					Part0.TopSurface = Enum.SurfaceType.Smooth
					Part0.brickColor = BrickColor.new("Royal purple")
					SpecialMesh1.Parent = Part0
					SpecialMesh1.MeshId = "rbxassetid://5862674837"
					SpecialMesh1.Offset = Vector3.new(0, 0, -0.699999988)
					SpecialMesh1.Scale = Vector3.new(18.0501289, 18.839695, 18.3808346)
					SpecialMesh1.VertexColor = Vector3.new(0, 0, 0)
					SpecialMesh1.TextureId = "rbxassetid://0"
					SpecialMesh1.MeshType = Enum.MeshType.FileMesh
					Part2.Name = "purpl"
					Part2.Parent = game.Workspace
					Part2.CFrame = CFrame.new(-1.05810452, 3.97946167, -146.655472, 0.94861114, 0.316444159, 0, -0.316444159, 0.94861114, 0, 0, 0, 1)
					Part2.Orientation = Vector3.new(0, 0, -18.4500008)
					Part2.Position = Vector3.new(-1.05810452, 3.97946167, -146.655472)
					Part2.Rotation = Vector3.new(0, 0, -18.4500008)
					Part2.Color = Color3.new(0.384314, 0.145098, 0.819608)
					Part2.Size = Vector3.new(2.63192654, 0.922646344, 2.24898744)
					Part2.BottomSurface = Enum.SurfaceType.Smooth
					Part2.BrickColor = BrickColor.new("Royal purple")
					Part2.TopSurface = Enum.SurfaceType.Smooth
					Part2.brickColor = BrickColor.new("Royal purple")
					SpecialMesh3.Parent = Part2
					SpecialMesh3.MeshId = "rbxassetid://5922911630"
					SpecialMesh3.Scale = Vector3.new(2.29999995, 2.29999995, 2.29999995)
					SpecialMesh3.VertexColor = Vector3.new(1, 0, 123)
					SpecialMesh3.TextureId = "rbxassetid://0"
					SpecialMesh3.MeshType = Enum.MeshType.FileMesh
					Part4.Name = "purpl2"
					Part4.Parent = game.Workspace
					Part4.CFrame = CFrame.new(-1.05810452, 3.97946024, -146.655472, 0.81878233, -0.220212519, -0.530190468, -0.237241879, 0.711184859, -0.661764562, 0.522792339, 0.667624533, 0.53006196)
					Part4.Orientation = Vector3.new(41.4300003, -45.0099983, -18.4500008)
					Part4.Position = Vector3.new(-1.05810452, 3.97946024, -146.655472)
					Part4.Rotation = Vector3.new(51.3100014, -32.0200005, 15.0500002)
					Part4.Color = Color3.new(0.384314, 0.145098, 0.819608)
					Part4.Size = Vector3.new(2.63192654, 0.922646344, 2.24898744)
					Part4.BottomSurface = Enum.SurfaceType.Smooth
					Part4.BrickColor = BrickColor.new("Royal purple")
					Part4.TopSurface = Enum.SurfaceType.Smooth
					Part4.brickColor = BrickColor.new("Royal purple")
					SpecialMesh5.Parent = Part4
					SpecialMesh5.MeshId = "rbxassetid://5922911630"
					SpecialMesh5.Scale = Vector3.new(2.29999995, 2.29999995 ,2.29999995)
					SpecialMesh5.VertexColor = Vector3.new(1, 0, 123)
					SpecialMesh5.TextureId = "rbxassetid://0"
					SpecialMesh5.MeshType = Enum.MeshType.FileMesh
					Part0.Anchored = true
					Part0.CanCollide = false
					Part2.Anchored = true
					Part2.CanCollide = false
					Part4.Anchored = true
					Part4.CanCollide = false
					Part0.Transparency = 0.3
					Part2.Transparency =  0.3
					Part4.Transparency =  0.3

					Part0.CFrame = v:WaitForChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
					Part2.CFrame = v:WaitForChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
					Part4.CFrame = v:WaitForChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
					for i = 1,5 do
						swait()
						Part0.Transparency = Part0.Transparency + 0.2
						SpecialMesh1.Scale = SpecialMesh1.Scale  + Vector3.new(5,5,5)
						Part2.Transparency = Part2.Transparency + 0.2
						SpecialMesh3.Scale = SpecialMesh3.Scale  + Vector3.new(0.5,0.5,0.5)
						Part4.Transparency = Part4.Transparency + 0.2
						SpecialMesh5.Scale = SpecialMesh5.Scale  + Vector3.new(0.5,0.5,0.5)

					end
				end) LCUT:play()
				spawn(function()
					for i =1,3 do
						game:GetService('RunService').Stepped:wait()
						local spark = Instance.new("FlagStand",script)
						spark.Anchored = true
						spark.CanCollide =  false
						spark.Size = Vector3.new(1.2,0.25,0.25)
						spark.BrickColor = BrickColor.new("Really black")
						spark.Material = Enum.Material.Neon
						spark.CFrame = v:WaitForChild("Torso").CFrame 	
						spark.Orientation = Vector3.new(math.random(-180,180),math.random(-180,180),math.random(-180,180))
						local joe2 = Instance.new("SpecialMesh",spark)
						joe2.MeshType = Enum.MeshType.Sphere
						spawn(function()
							for i = 1,20 do
								game:GetService('RunService').Stepped:wait()
								spark.Transparency = spark.Transparency + 0.05
								spark.CFrame = spark.CFrame * CFrame.new(0.25,0.25,0.25) * CFrame.Angles(math.rad(15),math.rad(15),math.rad(15))

							end
							spark:destroy()
						end)
					end
				end)
				for i = 1,2 do
					local minus = -180
					local blood = Instance.new("FlagStand",script)
					blood.Anchored = true
					blood.Material = Enum.Material.SmoothPlastic
					blood.BrickColor = BrickColor.new("Royal purple")
					blood.CanCollide = false
					blood.Material = Enum.Material.Neon
					blood.Transparency = 0
					blood.Size = Vector3.new(1,math.random(4,6),1)

					blood.CFrame = v:FindFirstChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(minus,180)),math.rad(math.random(minus,180)),math.rad(math.random(minus,180)))
					local joemama123 = Instance.new("SpecialMesh",blood)
					joemama123.MeshType = Enum.MeshType.Sphere
					spawn(function()
						for i =1,5 do
							game:GetService('RunService').Stepped:wait()

							blood.Size = 					blood.Size + Vector3.new(0,0.5,0)								
							blood.Transparency = blood.Transparency + 0.2
						end
						blood:Destroy()
					end)
				end		






				local blood = Instance.new("FlagStand",game.Workspace)
				blood.Anchored = true
				blood.Material = Enum.Material.SmoothPlastic
				blood.BrickColor = BrickColor.new("Royal purple")
				blood.CanCollide = false
				blood.Material = Enum.Material.Neon
				blood.Transparency = 0
				blood.Size = Vector3.new(0.7,math.random(8,12),0.7)
				local BANG3 = Instance.new("FlagStand",game.Workspace)
				BANG3.BrickColor = BrickColor.new("Really black")
				BANG3.Size = Vector3.new(0.65, 0.65, 0.65)
				BANG3.Locked = false
				BANG3.Material = Enum.Material.SmoothPlastic
				BANG3.CanCollide = false
				BANG3.Anchored = true
				BANG3.Transparency =  0
				--RHe.Orientation = Vector3.new(0, -90, 0)
				BANG3.formFactor =  "Symmetric"
				local joe2 = Instance.new("SpecialMesh",BANG3)
				joe2.MeshType = Enum.MeshType.FileMesh
				joe2.MeshId = "rbxassetid://3454554153"
				joe2.TextureId = "rbxassetid://0"
				joe2.Scale = Vector3.new(1, 0.2, 1)
				joe2.VertexColor = Vector3.new(0,0,0)

				blood.CFrame =			v:WaitForChild("Torso").CFrame * CFrame.new(0,0,-2.7)*CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))

				local joemama123 = Instance.new("SpecialMesh",blood)
				joemama123.MeshType = Enum.MeshType.Sphere
				BANG3.CFrame = blood.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))

				spawn(function()
					for i =1,5 do
						swait()
						joe2.Scale = 		joe2.Scale + Vector3.new(0.05, 0.05, 0.05)				
						BANG3.Transparency = BANG3.Transparency + 0.2	

						blood.Size = 					blood.Size + Vector3.new(0,0.5,0)								
						blood.Transparency = blood.Transparency + 0.2
					end
					blood:Destroy()
				end)
				local minus = -180				


			end))


			for i = 0,0.6,0.1 do 
				swait()
				ls.C0=ls.C0:Lerp(cf(-1.41409039, 0.112233013, 0.245482281, 0.178606197, 0.669898629, -0.720649421, 0.383022219, 0.627313673, 0.678064466, 0.906307757, -0.397131264, -0.144543946),i) 

				rs.C0=rs.C0:Lerp(cf(0.879612565, 0.397809654, -0.971872211, -0.927046776, 0.349788785, -0.135025978, -0.198168918, -0.151382029, 0.968407273, 0.318297505, 0.924516797, 0.209655464),i) 

				lh.C0=lh.C0:Lerp(cf(-0.86888814, -1.28275299, -0.227092266, -0.498097539, 0.0435778797, -0.866025329, 0.0871557444, 0.99619472, 0, 0.862729788, -0.0754790753, -0.500000179),i) 

				rh.C0=rh.C0:Lerp(cf(1.06439066, -0.66869086, -0.21216841, 0.575163722, -0.358900547, 0.735103428, 0.251610488, 0.932670236, 0.25849244, -0.778382123, 0.0362842605, 0.62674129),i) 

				rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.683012724, 0.72814405, 0.0574446917, 0.258819044, 0.167731062, 0.951251268, 0.683012664, 0.664584517, -0.30302),i) 

				ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.257834136, -0.964216232, -0.0617140755, 0.087155737, -0.0868238956, 0.992403924, -0.962250173, 0.250496864, 0.106423132),i) 


				joe.C0 =  joe.C0:Lerp(CFrame.new(1,0,0) * CFrame.Angles(math.rad(90),math.rad(	-10-150),math.rad(90)),i)
			end



			for i = 0,1,0.1 do 
				swait()
				ls.C0=ls.C0:Lerp(cf(-1.08178937, 0.194757879, 0.316009909, 0.183012694, 0.183012694, -0.965925813, 0.683012664, 0.683012664, 0.258819044, 0.707106769, -0.707106769, 0),i) 

				rs.C0=rs.C0:Lerp(cf(0.964919865, 0.153169453, -1.16274631, -0.909841061, -0.00880826265, 0.414863169, 0.405008942, -0.236450925, 0.883209348, 0.0903152302, 0.971603453, 0.218700215),i) 

				lh.C0=lh.C0:Lerp(cf(-1.16389155, -1.34024477, 0.231364191, 0.641895175, 0.0789899155, -0.762713075, 0.176585495, 0.952717006, 0.247280955, 0.746182382, -0.293412507, 0.59759593),i) 

				rh.C0=rh.C0:Lerp(cf(1.18806314, -0.760494411, 0.374737799, 0.819152176, -0.286788106, 0.49673155, 0, 0.866025388, 0.5, -0.573576212, -0.409576088, 0.709406555),i) 

				rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.26889962, 0.888312936, 0.372280955, 0.197661176, -0.327395588, 0.923981667, 0.94266808, 0.322043955, -0.0875483751),i) 

				ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.2724199, -0.955360949, -0.114336818, -0.194802836, -0.061606884, 0.978905737, -0.942252278, 0.288946509, -0.169324115),i) 
				joe.C0 =  joe.C0:Lerp(CFrame.new(1,0,0) * CFrame.Angles(math.rad(90),math.rad(	-150-40),math.rad(90)),i)

			end



			for i = 0,0.8,0.2 do 
				swait()

				ls.C0=ls.C0:Lerp(cf(-0.752381325, 0.175353527, 0.27241075, 0, 0.422618359, -0.906307817, 0.642787576, 0.694272041, 0.323744357, 0.766044438, -0.5825634, -0.271653831),i) 

				rs.C0=rs.C0:Lerp(cf(1.05939841, -0.0666409582, -0.194617704, 0.522658706, -0.640856326, 0.562255144, -0.0389696956, 0.640856326, 0.766671121, -0.851650894, -0.42261827, 0.309975207),i) 

				lh.C0=lh.C0:Lerp(cf(-1.17781317, -0.400432318, -0.470524639, 0.402504802, 0.394672304, -0.825968206, -0.534953713, 0.833596468, 0.137627542, 0.742842078, 0.386459053, 0.546658039),i) 

				rh.C0=rh.C0:Lerp(cf(1.17933977, -1.4026866, -0.188120291, -0.500000179, -0.224143773, 0.836516201, -0.150383651, 0.973722935, 0.171021253, -0.852868438, -0.0402876623, -0.520569146),i) 

				rj.C0=rj.C0:Lerp(cf(0.24355185, -0.168669179, -0.34853664, -0.844656825, -0.532432199, -0.0554145426, -0.290361792, 0.368730128, 0.88302213, -0.449716449, 0.761940956, -0.46604839),i) 

				ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.57357645, 0.819152057, 0, -0.280166686, -0.19617483, 0.939692557, 0.769751072, 0.53898555, 0.342020363),i) 

				joe.C0 =  joe.C0:Lerp(CFrame.new(1,0,0) * CFrame.Angles(math.rad(90),math.rad(	-150),math.rad(90)),i)


			end
			coroutine.resume(coroutine.create(function()
				spawn(function()
					for i = 1,math.random(1,2) do
						local Part0 = Instance.new("Part")
						local ParticleEmitter1 = Instance.new("ParticleEmitter")
						local ParticleEmitter2 = Instance.new("ParticleEmitter")
						Part0.Name = "ORB O_OO_O__O"
						Part0.Parent = game.Workspace
						Part0.CFrame = CFrame.new(119.075157, 2.55000997, -37.0025864, 1, 0, 0, 0, 1, 0, 0, 0, 1)
						Part0.Position = Vector3.new(119.075157, 2.55000997, -37.0025864)
						Part0.Transparency = 1
						Part0.Size = Vector3.new(0.0999998227, 0.099999927, 0.0999999121)
						Part0.BottomSurface = Enum.SurfaceType.Smooth
						Part0.CanCollide = false
						Part0.Material = Enum.Material.SmoothPlastic
						Part0.TopSurface = Enum.SurfaceType.Smooth
						ParticleEmitter1.Name = "Vigor"
						ParticleEmitter1.Parent = Part0
						ParticleEmitter1.Speed = NumberRange.new(0, 0)
						ParticleEmitter1.Rotation = NumberRange.new(37, 999)
						ParticleEmitter1.Color = ColorSequence.new(Color3.new(0.117647, 0, 0.352941),Color3.new(0.117647, 0, 0.352941))
						ParticleEmitter1.Texture = "rbxassetid://48315270"
						ParticleEmitter1.Size = NumberSequence.new(0.99999964237213,0)
						ParticleEmitter1.Drag = 50
						ParticleEmitter1.EmissionDirection = Enum.NormalId.Left
						ParticleEmitter1.Lifetime = NumberRange.new(1, 1)
						ParticleEmitter1.Rate = 8000
						ParticleEmitter1.RotSpeed = NumberRange.new(400, 400)
						ParticleEmitter2.Name = "Void"
						ParticleEmitter2.Parent = Part0
						ParticleEmitter2.Speed = NumberRange.new(0, 0)
						ParticleEmitter2.Rotation = NumberRange.new(37, 999)
						ParticleEmitter2.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
						ParticleEmitter2.Texture = "rbxassetid://48315270"
						ParticleEmitter2.ZOffset = 1
						ParticleEmitter2.Size = NumberSequence.new(0.50000011920929,0)
						ParticleEmitter2.Drag = 50
						ParticleEmitter2.EmissionDirection = Enum.NormalId.Left
						ParticleEmitter2.Lifetime = NumberRange.new(1, 1)
						ParticleEmitter2.Rate = 8000
						ParticleEmitter2.RotSpeed = NumberRange.new(-400, -400)
						local b2p2 = Instance.new("BodyPosition",Part0)
						b2p2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
						b2p2.Position =v:WaitForChild("Torso").CFrame * CFrame.new(0,0,0).p

						spawn(function()
							Part0.CFrame =v:WaitForChild("Torso").CFrame * CFrame.Angles(0,math.rad(math.random(-180,180)),0)

							wait(0.1)
							b2p2.Position = Part0.CFrame * CFrame.new(0,math.random(5,20),math.random(5,20)).p



							wait(1)
							b2p2.D = 800
							for i = 1,5 do
								wait(0.1)
								b2p2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0).p

							end
							playor.Character.Humanoid.Health = playor.Character.Humanoid.Health + 2
							ParticleEmitter1.Enabled = false
							ParticleEmitter2.Enabled = false
							wait(1)
							Part0:Destroy()

						end)

					end
				end)
				v:FindFirstChildOfClass("Humanoid").Health = 	v:FindFirstChildOfClass("Humanoid").Health -  v:FindFirstChildOfClass("Humanoid").Health /15
				local LCUT = Instance.new("Sound",v:WaitForChild("Torso"))
				LCUT.SoundId = "rbxassetid://153092285"
				LCUT.Volume = 1
				LCUT.Looped = false
				local joe2 = Instance.new("BodyVelocity",v:WaitForChild("Torso"))
				joe2.maxForce = Vector3.new(4e9, 4e9, 4e9)
				joe2.velocity = playor.Character.HumanoidRootPart.CFrame.lookVector*1
				joe2.Name = "speedy"
				spawn(function()
					wait(1)
					joe2:Destroy()
				end)

				for i = 1,5 do
					swait()

					ParticleEmitter0:Emit(1)
				end

				spawn(function()
					local  Part0 = Instance.new("Part")
					local SpecialMesh1 = Instance.new("SpecialMesh")
					local Part2 = Instance.new("Part")
					local SpecialMesh3 = Instance.new("SpecialMesh")
					local Part4 = Instance.new("Part")
					local SpecialMesh5 = Instance.new("SpecialMesh")
					Part0.Name = "black shockwave"
					Part0.Parent = game.Workspace
					Part0.CFrame = CFrame.new(-1.05810452, 3.97946167, -146.655472, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					Part0.Position = Vector3.new(-1.05810452, 3.97946167, -146.655472)
					Part0.Color = Color3.new(0.384314, 0.145098, 0.819608)
					Part0.Size = Vector3.new(3.48000002, 0.922646344, 2.7172091)
					Part0.BottomSurface = Enum.SurfaceType.Smooth
					Part0.BrickColor = BrickColor.new("Royal purple")
					Part0.TopSurface = Enum.SurfaceType.Smooth
					Part0.brickColor = BrickColor.new("Royal purple")
					SpecialMesh1.Parent = Part0
					SpecialMesh1.MeshId = "rbxassetid://5862674837"
					SpecialMesh1.Offset = Vector3.new(0, 0, -0.699999988)
					SpecialMesh1.Scale = Vector3.new(18.0501289, 18.839695, 18.3808346)
					SpecialMesh1.VertexColor = Vector3.new(0, 0, 0)
					SpecialMesh1.TextureId = "rbxassetid://0"
					SpecialMesh1.MeshType = Enum.MeshType.FileMesh
					Part2.Name = "purpl"
					Part2.Parent = game.Workspace
					Part2.CFrame = CFrame.new(-1.05810452, 3.97946167, -146.655472, 0.94861114, 0.316444159, 0, -0.316444159, 0.94861114, 0, 0, 0, 1)
					Part2.Orientation = Vector3.new(0, 0, -18.4500008)
					Part2.Position = Vector3.new(-1.05810452, 3.97946167, -146.655472)
					Part2.Rotation = Vector3.new(0, 0, -18.4500008)
					Part2.Color = Color3.new(0.384314, 0.145098, 0.819608)
					Part2.Size = Vector3.new(2.63192654, 0.922646344, 2.24898744)
					Part2.BottomSurface = Enum.SurfaceType.Smooth
					Part2.BrickColor = BrickColor.new("Royal purple")
					Part2.TopSurface = Enum.SurfaceType.Smooth
					Part2.brickColor = BrickColor.new("Royal purple")
					SpecialMesh3.Parent = Part2
					SpecialMesh3.MeshId = "rbxassetid://5922911630"
					SpecialMesh3.Scale = Vector3.new(2.29999995, 2.29999995, 2.29999995)
					SpecialMesh3.VertexColor = Vector3.new(1, 0, 123)
					SpecialMesh3.TextureId = "rbxassetid://0"
					SpecialMesh3.MeshType = Enum.MeshType.FileMesh
					Part4.Name = "purpl2"
					Part4.Parent = game.Workspace
					Part4.CFrame = CFrame.new(-1.05810452, 3.97946024, -146.655472, 0.81878233, -0.220212519, -0.530190468, -0.237241879, 0.711184859, -0.661764562, 0.522792339, 0.667624533, 0.53006196)
					Part4.Orientation = Vector3.new(41.4300003, -45.0099983, -18.4500008)
					Part4.Position = Vector3.new(-1.05810452, 3.97946024, -146.655472)
					Part4.Rotation = Vector3.new(51.3100014, -32.0200005, 15.0500002)
					Part4.Color = Color3.new(0.384314, 0.145098, 0.819608)
					Part4.Size = Vector3.new(2.63192654, 0.922646344, 2.24898744)
					Part4.BottomSurface = Enum.SurfaceType.Smooth
					Part4.BrickColor = BrickColor.new("Royal purple")
					Part4.TopSurface = Enum.SurfaceType.Smooth
					Part4.brickColor = BrickColor.new("Royal purple")
					SpecialMesh5.Parent = Part4
					SpecialMesh5.MeshId = "rbxassetid://5922911630"
					SpecialMesh5.Scale = Vector3.new(2.29999995, 2.29999995 ,2.29999995)
					SpecialMesh5.VertexColor = Vector3.new(1, 0, 123)
					SpecialMesh5.TextureId = "rbxassetid://0"
					SpecialMesh5.MeshType = Enum.MeshType.FileMesh
					Part0.Anchored = true
					Part0.CanCollide = false
					Part2.Anchored = true
					Part2.CanCollide = false
					Part4.Anchored = true
					Part4.CanCollide = false
					Part0.Transparency = 0.3
					Part2.Transparency =  0.3
					Part4.Transparency =  0.3

					Part0.CFrame = v:WaitForChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
					Part2.CFrame = v:WaitForChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
					Part4.CFrame = v:WaitForChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))

					for i = 1,5 do
						swait()
						Part0.Transparency = Part0.Transparency + 0.2
						SpecialMesh1.Scale = SpecialMesh1.Scale  + Vector3.new(5,5,5)
						Part2.Transparency = Part2.Transparency + 0.2
						SpecialMesh3.Scale = SpecialMesh3.Scale  + Vector3.new(0.5,0.5,0.5)
						Part4.Transparency = Part4.Transparency + 0.2
						SpecialMesh5.Scale = SpecialMesh5.Scale  + Vector3.new(0.5,0.5,0.5)

					end
				end) LCUT:play()
				spawn(function()
					for i =1,3 do
						game:GetService('RunService').Stepped:wait()
						local spark = Instance.new("FlagStand",script)
						spark.Anchored = true
						spark.CanCollide =  false
						spark.Size = Vector3.new(1.2,0.25,0.25)
						spark.BrickColor = BrickColor.new("Really black")
						spark.Material = Enum.Material.Neon
						spark.CFrame = v:WaitForChild("Torso").CFrame 	
						spark.Orientation = Vector3.new(math.random(-180,180),math.random(-180,180),math.random(-180,180))
						local joe2 = Instance.new("SpecialMesh",spark)
						joe2.MeshType = Enum.MeshType.Sphere
						spawn(function()
							for i = 1,20 do
								game:GetService('RunService').Stepped:wait()
								spark.Transparency = spark.Transparency + 0.05
								spark.CFrame = spark.CFrame * CFrame.new(0.25,0.25,0.25) * CFrame.Angles(math.rad(15),math.rad(15),math.rad(15))

							end
							spark:destroy()
						end)
					end
				end)
				for i = 1,2 do
					local minus = -180
					local blood = Instance.new("FlagStand",script)
					blood.Anchored = true
					blood.Material = Enum.Material.SmoothPlastic
					blood.BrickColor = BrickColor.new("Royal purple")
					blood.CanCollide = false
					blood.Material = Enum.Material.Neon
					blood.Transparency = 0
					blood.Size = Vector3.new(1,math.random(4,6),1)

					blood.CFrame = v:FindFirstChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(minus,180)),math.rad(math.random(minus,180)),math.rad(math.random(minus,180)))
					local joemama123 = Instance.new("SpecialMesh",blood)
					joemama123.MeshType = Enum.MeshType.Sphere
					spawn(function()
						for i =1,5 do
							game:GetService('RunService').Stepped:wait()

							blood.Size = 					blood.Size + Vector3.new(0,0.5,0)								
							blood.Transparency = blood.Transparency + 0.2
						end
						blood:Destroy()
					end)
				end		






				local blood = Instance.new("FlagStand",game.Workspace)
				blood.Anchored = true
				blood.Material = Enum.Material.SmoothPlastic
				blood.BrickColor = BrickColor.new("Royal purple")
				blood.CanCollide = false
				blood.Material = Enum.Material.Neon
				blood.Transparency = 0
				blood.Size = Vector3.new(0.7,math.random(8,12),0.7)
				local BANG3 = Instance.new("FlagStand",game.Workspace)
				BANG3.BrickColor = BrickColor.new("Really black")
				BANG3.Size = Vector3.new(0.65, 0.65, 0.65)
				BANG3.Locked = false
				BANG3.Material = Enum.Material.SmoothPlastic
				BANG3.CanCollide = false
				BANG3.Anchored = true
				BANG3.Transparency =  0
				--RHe.Orientation = Vector3.new(0, -90, 0)
				BANG3.formFactor =  "Symmetric"
				local joe2 = Instance.new("SpecialMesh",BANG3)
				joe2.MeshType = Enum.MeshType.FileMesh
				joe2.MeshId = "rbxassetid://3454554153"
				joe2.TextureId = "rbxassetid://0"
				joe2.Scale = Vector3.new(1, 0.2, 1)
				joe2.VertexColor = Vector3.new(0,0,0)

				blood.CFrame =			v:WaitForChild("Torso").CFrame * CFrame.new(0,0,-2.7)*CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))

				local joemama123 = Instance.new("SpecialMesh",blood)
				joemama123.MeshType = Enum.MeshType.Sphere
				BANG3.CFrame = blood.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))

				spawn(function()
					for i =1,5 do
						swait()
						joe2.Scale = 		joe2.Scale + Vector3.new(0.05, 0.05, 0.05)				
						BANG3.Transparency = BANG3.Transparency + 0.2	

						blood.Size = 					blood.Size + Vector3.new(0,0.5,0)								
						blood.Transparency = blood.Transparency + 0.2
					end
					blood:Destroy()
				end)
				local minus = -180				


			end))



			wait(0.05)

			for i = 0,1,0.05 do 
				swait()
				ls.C0=ls.C0:Lerp(cf(-0.492497563, 0.389783144, -0.411334813, 0, -0.766044438, -0.642787635, -0.965925813, 0.166365698, -0.198266909, 0.258819073, 0.620885193, -0.739942074),i) 

				rs.C0=rs.C0:Lerp(cf(1.33733809, 0.893395305, -0.460030496, 0.75423938, -0.656121314, 0.0250551403, 0.185678184, 0.17653279, -0.96662277, 0.62979877, 0.733717203, 0.254975438),i) 

				lh.C0=lh.C0:Lerp(cf(-1.17473662, -0.534313798, -0.462599397, 0.69924736, 0.438867837, -0.564311922, -0.320870131, 0.898073971, 0.300841093, 0.638823211, -0.0292915478, 0.76879549),i) 

				rh.C0=rh.C0:Lerp(cf(0.846802294, -1.21608126, -0.137040973, -0.533622444, -0.0638587177, 0.843308389, -0.331168801, 0.933294713, -0.138881683, -0.77818656, -0.353387773, -0.519175112),i) 

				rj.C0=rj.C0:Lerp(cf(0.0579884537, -0.305217952, 0.0202246364, -0.667062104, -0.704416037, -0.242541045, -0.257834166, -0.0871555507, 0.962250173, -0.698963225, 0.704416037, -0.123484351),i) 

				ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.632085919, 0.765108109, 0.122787803, 0.172987387, -0.0151344314, 0.98480773, 0.755342722, 0.643723845, -0.122787803),i) 

			end
			coroutine.resume(coroutine.create(function()
				spawn(function()
					for i = 1,math.random(1,2) do
						local Part0 = Instance.new("Part")
						local ParticleEmitter1 = Instance.new("ParticleEmitter")
						local ParticleEmitter2 = Instance.new("ParticleEmitter")
						Part0.Name = "ORB O_OO_O__O"
						Part0.Parent = game.Workspace
						Part0.CFrame = CFrame.new(119.075157, 2.55000997, -37.0025864, 1, 0, 0, 0, 1, 0, 0, 0, 1)
						Part0.Position = Vector3.new(119.075157, 2.55000997, -37.0025864)
						Part0.Transparency = 1
						Part0.Size = Vector3.new(0.0999998227, 0.099999927, 0.0999999121)
						Part0.BottomSurface = Enum.SurfaceType.Smooth
						Part0.CanCollide = false
						Part0.Material = Enum.Material.SmoothPlastic
						Part0.TopSurface = Enum.SurfaceType.Smooth
						ParticleEmitter1.Name = "Vigor"
						ParticleEmitter1.Parent = Part0
						ParticleEmitter1.Speed = NumberRange.new(0, 0)
						ParticleEmitter1.Rotation = NumberRange.new(37, 999)
						ParticleEmitter1.Color = ColorSequence.new(Color3.new(0.117647, 0, 0.352941),Color3.new(0.117647, 0, 0.352941))
						ParticleEmitter1.Texture = "rbxassetid://48315270"
						ParticleEmitter1.Size = NumberSequence.new(0.99999964237213,0)
						ParticleEmitter1.Drag = 50
						ParticleEmitter1.EmissionDirection = Enum.NormalId.Left
						ParticleEmitter1.Lifetime = NumberRange.new(1, 1)
						ParticleEmitter1.Rate = 8000
						ParticleEmitter1.RotSpeed = NumberRange.new(400, 400)
						ParticleEmitter2.Name = "Void"
						ParticleEmitter2.Parent = Part0
						ParticleEmitter2.Speed = NumberRange.new(0, 0)
						ParticleEmitter2.Rotation = NumberRange.new(37, 999)
						ParticleEmitter2.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
						ParticleEmitter2.Texture = "rbxassetid://48315270"
						ParticleEmitter2.ZOffset = 1
						ParticleEmitter2.Size = NumberSequence.new(0.50000011920929,0)
						ParticleEmitter2.Drag = 50
						ParticleEmitter2.EmissionDirection = Enum.NormalId.Left
						ParticleEmitter2.Lifetime = NumberRange.new(1, 1)
						ParticleEmitter2.Rate = 8000
						ParticleEmitter2.RotSpeed = NumberRange.new(-400, -400)
						local b2p2 = Instance.new("BodyPosition",Part0)
						b2p2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
						b2p2.Position =v:WaitForChild("Torso").CFrame * CFrame.new(0,0,0).p

						spawn(function()
							Part0.CFrame =v:WaitForChild("Torso").CFrame * CFrame.Angles(0,math.rad(math.random(-180,180)),0)

							wait(0.1)
							b2p2.Position = Part0.CFrame * CFrame.new(0,math.random(5,20),math.random(5,20)).p



							wait(1)
							b2p2.D = 800
							for i = 1,5 do
								wait(0.1)
								b2p2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0).p

							end
							playor.Character.Humanoid.Health = playor.Character.Humanoid.Health + 2
							ParticleEmitter1.Enabled = false
							ParticleEmitter2.Enabled = false
							wait(1)
							Part0:Destroy()

						end)

					end
				end)
				v:FindFirstChildOfClass("Humanoid").Health = 	v:FindFirstChildOfClass("Humanoid").Health -  v:FindFirstChildOfClass("Humanoid").Health /15
				local LCUT = Instance.new("Sound",v:WaitForChild("Torso"))
				LCUT.SoundId = "rbxassetid://153092285"
				LCUT.Volume = 1
				LCUT.Looped = false
				local joe2 = Instance.new("BodyVelocity",v:WaitForChild("Torso"))
				joe2.maxForce = Vector3.new(4e9, 4e9, 4e9)
				joe2.velocity = playor.Character.HumanoidRootPart.CFrame.lookVector*1
				joe2.Name = "speedy"
				spawn(function()
					wait(1)
					joe2:Destroy()
				end)

				for i = 1,5 do
					swait()

					ParticleEmitter0:Emit(1)
				end

				spawn(function()
					local  Part0 = Instance.new("Part")
					local SpecialMesh1 = Instance.new("SpecialMesh")
					local Part2 = Instance.new("Part")
					local SpecialMesh3 = Instance.new("SpecialMesh")
					local Part4 = Instance.new("Part")
					local SpecialMesh5 = Instance.new("SpecialMesh")
					Part0.Name = "black shockwave"
					Part0.Parent = game.Workspace
					Part0.CFrame = CFrame.new(-1.05810452, 3.97946167, -146.655472, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					Part0.Position = Vector3.new(-1.05810452, 3.97946167, -146.655472)
					Part0.Color = Color3.new(0.384314, 0.145098, 0.819608)
					Part0.Size = Vector3.new(3.48000002, 0.922646344, 2.7172091)
					Part0.BottomSurface = Enum.SurfaceType.Smooth
					Part0.BrickColor = BrickColor.new("Royal purple")
					Part0.TopSurface = Enum.SurfaceType.Smooth
					Part0.brickColor = BrickColor.new("Royal purple")
					SpecialMesh1.Parent = Part0
					SpecialMesh1.MeshId = "rbxassetid://5862674837"
					SpecialMesh1.Offset = Vector3.new(0, 0, -0.699999988)
					SpecialMesh1.Scale = Vector3.new(18.0501289, 18.839695, 18.3808346)
					SpecialMesh1.VertexColor = Vector3.new(0, 0, 0)
					SpecialMesh1.TextureId = "rbxassetid://0"
					SpecialMesh1.MeshType = Enum.MeshType.FileMesh
					Part2.Name = "purpl"
					Part2.Parent = game.Workspace
					Part2.CFrame = CFrame.new(-1.05810452, 3.97946167, -146.655472, 0.94861114, 0.316444159, 0, -0.316444159, 0.94861114, 0, 0, 0, 1)
					Part2.Orientation = Vector3.new(0, 0, -18.4500008)
					Part2.Position = Vector3.new(-1.05810452, 3.97946167, -146.655472)
					Part2.Rotation = Vector3.new(0, 0, -18.4500008)
					Part2.Color = Color3.new(0.384314, 0.145098, 0.819608)
					Part2.Size = Vector3.new(2.63192654, 0.922646344, 2.24898744)
					Part2.BottomSurface = Enum.SurfaceType.Smooth
					Part2.BrickColor = BrickColor.new("Royal purple")
					Part2.TopSurface = Enum.SurfaceType.Smooth
					Part2.brickColor = BrickColor.new("Royal purple")
					SpecialMesh3.Parent = Part2
					SpecialMesh3.MeshId = "rbxassetid://5922911630"
					SpecialMesh3.Scale = Vector3.new(2.29999995, 2.29999995, 2.29999995)
					SpecialMesh3.VertexColor = Vector3.new(1, 0, 123)
					SpecialMesh3.TextureId = "rbxassetid://0"
					SpecialMesh3.MeshType = Enum.MeshType.FileMesh
					Part4.Name = "purpl2"
					Part4.Parent = game.Workspace
					Part4.CFrame = CFrame.new(-1.05810452, 3.97946024, -146.655472, 0.81878233, -0.220212519, -0.530190468, -0.237241879, 0.711184859, -0.661764562, 0.522792339, 0.667624533, 0.53006196)
					Part4.Orientation = Vector3.new(41.4300003, -45.0099983, -18.4500008)
					Part4.Position = Vector3.new(-1.05810452, 3.97946024, -146.655472)
					Part4.Rotation = Vector3.new(51.3100014, -32.0200005, 15.0500002)
					Part4.Color = Color3.new(0.384314, 0.145098, 0.819608)
					Part4.Size = Vector3.new(2.63192654, 0.922646344, 2.24898744)
					Part4.BottomSurface = Enum.SurfaceType.Smooth
					Part4.BrickColor = BrickColor.new("Royal purple")
					Part4.TopSurface = Enum.SurfaceType.Smooth
					Part4.brickColor = BrickColor.new("Royal purple")
					SpecialMesh5.Parent = Part4
					SpecialMesh5.MeshId = "rbxassetid://5922911630"
					SpecialMesh5.Scale = Vector3.new(2.29999995, 2.29999995 ,2.29999995)
					SpecialMesh5.VertexColor = Vector3.new(1, 0, 123)
					SpecialMesh5.TextureId = "rbxassetid://0"
					SpecialMesh5.MeshType = Enum.MeshType.FileMesh
					Part0.Anchored = true
					Part0.CanCollide = false
					Part2.Anchored = true
					Part2.CanCollide = false
					Part4.Anchored = true
					Part4.CanCollide = false
					Part0.Transparency = 0.3
					Part2.Transparency =  0.3
					Part4.Transparency =  0.3

					Part0.CFrame = v:WaitForChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
					Part2.CFrame = v:WaitForChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
					Part4.CFrame = v:WaitForChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))

					for i = 1,5 do
						swait()
						Part0.Transparency = Part0.Transparency + 0.2
						SpecialMesh1.Scale = SpecialMesh1.Scale  + Vector3.new(5,5,5)
						Part2.Transparency = Part2.Transparency + 0.2
						SpecialMesh3.Scale = SpecialMesh3.Scale  + Vector3.new(0.5,0.5,0.5)
						Part4.Transparency = Part4.Transparency + 0.2
						SpecialMesh5.Scale = SpecialMesh5.Scale  + Vector3.new(0.5,0.5,0.5)

					end
				end) LCUT:play()
				spawn(function()
					for i =1,3 do
						game:GetService('RunService').Stepped:wait()
						local spark = Instance.new("FlagStand",script)
						spark.Anchored = true
						spark.CanCollide =  false
						spark.Size = Vector3.new(1.2,0.25,0.25)
						spark.BrickColor = BrickColor.new("Really black")
						spark.Material = Enum.Material.Neon
						spark.CFrame = v:WaitForChild("Torso").CFrame 	
						spark.Orientation = Vector3.new(math.random(-180,180),math.random(-180,180),math.random(-180,180))
						local joe2 = Instance.new("SpecialMesh",spark)
						joe2.MeshType = Enum.MeshType.Sphere
						spawn(function()
							for i = 1,20 do
								game:GetService('RunService').Stepped:wait()
								spark.Transparency = spark.Transparency + 0.05
								spark.CFrame = spark.CFrame * CFrame.new(0.25,0.25,0.25) * CFrame.Angles(math.rad(15),math.rad(15),math.rad(15))

							end
							spark:destroy()
						end)
					end
				end)
				for i = 1,2 do
					local minus = -180
					local blood = Instance.new("FlagStand",script)
					blood.Anchored = true
					blood.Material = Enum.Material.SmoothPlastic
					blood.BrickColor = BrickColor.new("Royal purple")
					blood.CanCollide = false
					blood.Material = Enum.Material.Neon
					blood.Transparency = 0
					blood.Size = Vector3.new(1,math.random(4,6),1)

					blood.CFrame = v:FindFirstChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(minus,180)),math.rad(math.random(minus,180)),math.rad(math.random(minus,180)))
					local joemama123 = Instance.new("SpecialMesh",blood)
					joemama123.MeshType = Enum.MeshType.Sphere
					spawn(function()
						for i =1,5 do
							game:GetService('RunService').Stepped:wait()

							blood.Size = 					blood.Size + Vector3.new(0,0.5,0)								
							blood.Transparency = blood.Transparency + 0.2
						end
						blood:Destroy()
					end)
				end		






				local blood = Instance.new("FlagStand",game.Workspace)
				blood.Anchored = true
				blood.Material = Enum.Material.SmoothPlastic
				blood.BrickColor = BrickColor.new("Royal purple")
				blood.CanCollide = false
				blood.Material = Enum.Material.Neon
				blood.Transparency = 0
				blood.Size = Vector3.new(0.7,math.random(8,12),0.7)
				local BANG3 = Instance.new("FlagStand",game.Workspace)
				BANG3.BrickColor = BrickColor.new("Really black")
				BANG3.Size = Vector3.new(0.65, 0.65, 0.65)
				BANG3.Locked = false
				BANG3.Material = Enum.Material.SmoothPlastic
				BANG3.CanCollide = false
				BANG3.Anchored = true
				BANG3.Transparency =  0
				--RHe.Orientation = Vector3.new(0, -90, 0)
				BANG3.formFactor =  "Symmetric"
				local joe2 = Instance.new("SpecialMesh",BANG3)
				joe2.MeshType = Enum.MeshType.FileMesh
				joe2.MeshId = "rbxassetid://3454554153"
				joe2.TextureId = "rbxassetid://0"
				joe2.Scale = Vector3.new(1, 0.2, 1)
				joe2.VertexColor = Vector3.new(0,0,0)

				blood.CFrame =			v:WaitForChild("Torso").CFrame * CFrame.new(0,0,-2.7)*CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))

				local joemama123 = Instance.new("SpecialMesh",blood)
				joemama123.MeshType = Enum.MeshType.Sphere
				BANG3.CFrame = blood.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))

				spawn(function()
					for i =1,5 do
						swait()
						joe2.Scale = 		joe2.Scale + Vector3.new(0.05, 0.05, 0.05)				
						BANG3.Transparency = BANG3.Transparency + 0.2	

						blood.Size = 					blood.Size + Vector3.new(0,0.5,0)								
						blood.Transparency = blood.Transparency + 0.2
					end
					blood:Destroy()
				end)
				local minus = -180				


			end))


			wait(0.05)
			local joe2 = Instance.new("BodyVelocity",playor.Character.Torso)
			joe2.maxForce = Vector3.new(40000,40000,40000)
			joe2.velocity = playor.Character.HumanoidRootPart.CFrame.lookVector*85
			joe2.Name = "speedy"

			playor.Character.Humanoid.AutoRotate = false

			for i = 1,8 do
				LOLXD:Destroy()
				v:WaitForChild("Torso").Anchored = true
				v:WaitForChild("Torso").CFrame = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-25)


				spawn(function()

					wait(0.1)
					spawn(function()
						local Sound0 = Instance.new("Sound")
						Sound0.Name = "THUD"

						Sound0.Parent = playor.Character.Torso
						Sound0.SoundId = "rbxassetid://5382576606"
						Sound0.Volume = 1
						Sound0:Play()
					end)


					local 	Part0 = Instance.new("Part")
					local 	SpecialMesh2 = Instance.new("SpecialMesh")
					local 	Part3 = Instance.new("Part")
					local  SpecialMesh5 = Instance.new("SpecialMesh")
					Part0.Parent = game.Workspace
					Part0.CFrame = CFrame.new(3.28999996, 0.500003815, -2.83999991, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					Part0.Position = Vector3.new(3.28999996, 0.500003815, -2.83999991)
					Part0.Size = Vector3.new(0.5, 0.5, 0.5)
					Part0.BottomSurface = Enum.SurfaceType.Smooth
					Part0.TopSurface = Enum.SurfaceType.Smooth
					SpecialMesh2.Parent = Part0
					SpecialMesh2.MeshId = "rbxassetid://5769821006"
					SpecialMesh2.Scale = Vector3.new(10, 10, 10)
					SpecialMesh2.VertexColor = Vector3.new(0.7, 0, 123)
					SpecialMesh2.TextureId = "rbxassetid://5614579544"
					SpecialMesh2.MeshType = Enum.MeshType.FileMesh
					Part3.Parent = game.Workspace
					Part3.CFrame = CFrame.new(3.28999996, 0.500003815, -2.83999991, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					Part3.Position = Vector3.new(3.28999996, 0.500003815, -2.83999991)
					Part3.Size = Vector3.new(0.5, 0.5, 0.5)
					Part3.BottomSurface = Enum.SurfaceType.Smooth
					Part3.TopSurface = Enum.SurfaceType.Smooth
					SpecialMesh5.Parent = Part3
					SpecialMesh5.MeshId = "rbxassetid://5769821006"
					SpecialMesh5.Scale = Vector3.new(15, 15, 15)
					SpecialMesh5.VertexColor = Vector3.new(0, 0, 0)
					SpecialMesh5.TextureId = "rbxassetid://5614579544"
					SpecialMesh5.MeshType = Enum.MeshType.FileMesh
					Part0.CFrame = playor.Character.Torso.CFrame
					Part3.CFrame = Part0.CFrame

					Part0.Anchored = true
					Part3.Anchored = true
					Part0.CanCollide = false
					Part3.CanCollide = false
					spawn(function()
						for i = 1,10 do
							game:GetService('RunService').Stepped:wait()



							Part0.CFrame = Part0.CFrame *CFrame.Angles(0,math.rad(35),0)
							Part3.CFrame = Part3.CFrame *CFrame.Angles(0,math.rad(-35),0)
							Part0.Transparency = Part0.Transparency + 0.1
							Part3.Transparency = Part3.Transparency + 0.1

						end
						Part0:Destroy()
						Part3:Destroy()

					end)		




					local 	Part0 = Instance.new("FlagStand")
					local 	SpecialMesh2 = Instance.new("SpecialMesh")
					Part0.Parent = game.Workspace
					Part0.CFrame = CFrame.new(3.28999996, 0.500003815, -2.83999991, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					Part0.Position = Vector3.new(3.28999996, 0.500003815, -2.83999991)
					Part0.Size = Vector3.new(0.5, 0.5, 0.5)
					Part0.Transparency = 0.2
					Part0.BottomSurface = Enum.SurfaceType.Smooth
					Part0.TopSurface = Enum.SurfaceType.Smooth
					SpecialMesh2.Parent = Part0
					SpecialMesh2.MeshId = "rbxassetid://5926606164"
					SpecialMesh2.Scale = Vector3.new(1,1,1)
					SpecialMesh2.VertexColor = Vector3.new(0.3, 0, 123)
					SpecialMesh2.TextureId = "rbxassetid://5926606164"
					SpecialMesh2.MeshType = Enum.MeshType.FileMesh
					Part0.CFrame = playor.Character.HumanoidRootPart.CFrame

					Part0.Anchored = true
					Part0.CanCollide = false
					spawn(function()
						for i = 1,10 do
							game:GetService('RunService').Stepped:wait()

							Part0.CFrame = Part0.CFrame *CFrame.Angles(0,math.rad(-15),0)
							Part0.Transparency = Part0.Transparency + 0.1
							SpecialMesh2.Scale = 	SpecialMesh2.Scale + Vector3.new(0.5,0,0.5)

						end
						Part0:Destroy()

					end)		
					local 	Part0 = Instance.new("Part")
					local SpecialMesh1 = Instance.new("SpecialMesh")
					Part0.Name = "Yo2"
					Part0.Parent = game.Workspace
					Part0.CFrame = CFrame.new(-124.599998, 3.9500041, -173.449997, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					Part0.Position = Vector3.new(-124.599998, 3.9500041, -173.449997)
					Part0.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
					Part0.Size = Vector3.new(4, 1, 2)
					Part0.BottomSurface = Enum.SurfaceType.Smooth
					Part0.BrickColor = BrickColor.new("Really black")
					Part0.Material = Enum.Material.Neon
					Part0.TopSurface = Enum.SurfaceType.Smooth
					Part0.brickColor = BrickColor.new("Really black")
					SpecialMesh1.Parent = Part0
					SpecialMesh1.MeshId = "rbxassetid://5704435466"
					SpecialMesh1.Scale = Vector3.new(0.300000012, 0.300000012, 0.300000012)
					SpecialMesh1.VertexColor = Vector3.new(0, 0, 0)
					SpecialMesh1.TextureId = "rbxassetid://0"
					SpecialMesh1.MeshType = Enum.MeshType.FileMesh
					Part0.Anchored = true
					Part0.CanCollide = false


					Part0.CFrame = playor.Character.Torso.CFrame
					spawn(function()
						for i = 1,10 do
							game:GetService('RunService').Stepped:wait()

							Part0.Transparency = Part0.Transparency + 0.1
							SpecialMesh1.Scale = SpecialMesh1.Scale + Vector3.new(0.05,0.05,0.05)
						end

					end)



				end)



				for i = 0,0.7,0.2 do 
					swait()
					ls.C0=ls.C0:Lerp(cf(-1.114434, 0.197188705, -0.197626919, -0.210736245, 0.743058741, -0.635180235, -0.316907346, 0.562749267, 0.763467789, 0.9247486, 0.362183541, 0.116889089),i)  

					rs.C0=rs.C0:Lerp(cf(1.57743979, 0.0442694798, 0.268424213, 0.57357645, -0.819152057, -4.37113883e-08, 2.50718237e-08, -3.58062735e-08, 1, -0.819152057, -0.57357645, 0),i)  

					lh.C0=lh.C0:Lerp(cf(-0.886823535, -0.819461346, 0.0934229046, -0.0394821018, 0.486444384, -0.872818947, -0.439588964, 0.775974393, 0.452355325, 0.897330999, 0.401541591, 0.183198512),i)  

					rh.C0=rh.C0:Lerp(cf(1.10298657, -1.10506833, -0.0683246553, 0.40154779, -0.25919348, 0.87839514, -0.822730124, 0.319259405, 0.470306963, -0.402336448, -0.911532879, -0.0850483775),i)  

					rj.C0=rj.C0:Lerp(cf(0, 0, 0, 0.173648134, 0.984807789, 0, 0, 0, 1, 0.984807789, -0.173648134, 0),i)  

					ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.914689422, -0.369695395, 0.163304806, -0.00588241965, 0.416197538, 0.909255147, -0.404114544, 0.830725551, -0.382866204),i)  
					joe.C0 =  joe.C0:Lerp(CFrame.new(-1,0,0) * CFrame.Angles(math.rad(90),math.rad(	0),math.rad(90)),i)

				end

				for i = 0,0.7,0.2 do 
					swait()
					ls.C0=ls.C0:Lerp(cf(-1.114434, 0.197188705, -0.197626919, -0.210736245, 0.743058741, -0.635180235, -0.316907346, 0.562749267, 0.763467789, 0.9247486, 0.362183541, 0.116889089),i)  

					rs.C0=rs.C0:Lerp(cf(1.57743979, 0.0442694798, 0.268424213, 0.57357645, -0.819152057, -4.37113883e-08, 2.50718237e-08, -3.58062735e-08, 1, -0.819152057, -0.57357645, 0),i)  

					lh.C0=lh.C0:Lerp(cf(-0.886823535, -0.819461346, 0.0934229046, -0.0394821018, 0.486444384, -0.872818947, -0.439588964, 0.775974393, 0.452355325, 0.897330999, 0.401541591, 0.183198512),i)  

					rh.C0=rh.C0:Lerp(cf(1.10298657, -1.10506833, -0.0683246553, 0.40154779, -0.25919348, 0.87839514, -0.822730124, 0.319259405, 0.470306963, -0.402336448, -0.911532879, -0.0850483775),i)  

					rj.C0=rj.C0:Lerp(cf(0, 0, 0, 0.57357645, -0.819152057, 0, 0, 0, 1, -0.819152057, -0.57357645, 0),i)  

					ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.914689422, -0.369695395, 0.163304806, -0.00588241965, 0.416197538, 0.909255147, -0.404114544, 0.830725551, -0.382866204),i)  


				end
				coroutine.resume(coroutine.create(function()
					spawn(function()
						for i = 1,math.random(1,2) do
							local Part0 = Instance.new("Part")
							local ParticleEmitter1 = Instance.new("ParticleEmitter")
							local ParticleEmitter2 = Instance.new("ParticleEmitter")
							Part0.Name = "ORB O_OO_O__O"
							Part0.Parent = game.Workspace
							Part0.CFrame = CFrame.new(119.075157, 2.55000997, -37.0025864, 1, 0, 0, 0, 1, 0, 0, 0, 1)
							Part0.Position = Vector3.new(119.075157, 2.55000997, -37.0025864)
							Part0.Transparency = 1
							Part0.Size = Vector3.new(0.0999998227, 0.099999927, 0.0999999121)
							Part0.BottomSurface = Enum.SurfaceType.Smooth
							Part0.CanCollide = false
							Part0.Material = Enum.Material.SmoothPlastic
							Part0.TopSurface = Enum.SurfaceType.Smooth
							ParticleEmitter1.Name = "Vigor"
							ParticleEmitter1.Parent = Part0
							ParticleEmitter1.Speed = NumberRange.new(0, 0)
							ParticleEmitter1.Rotation = NumberRange.new(37, 999)
							ParticleEmitter1.Color = ColorSequence.new(Color3.new(0.117647, 0, 0.352941),Color3.new(0.117647, 0, 0.352941))
							ParticleEmitter1.Texture = "rbxassetid://48315270"
							ParticleEmitter1.Size = NumberSequence.new(0.99999964237213,0)
							ParticleEmitter1.Drag = 50
							ParticleEmitter1.EmissionDirection = Enum.NormalId.Left
							ParticleEmitter1.Lifetime = NumberRange.new(1, 1)
							ParticleEmitter1.Rate = 8000
							ParticleEmitter1.RotSpeed = NumberRange.new(400, 400)
							ParticleEmitter2.Name = "Void"
							ParticleEmitter2.Parent = Part0
							ParticleEmitter2.Speed = NumberRange.new(0, 0)
							ParticleEmitter2.Rotation = NumberRange.new(37, 999)
							ParticleEmitter2.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
							ParticleEmitter2.Texture = "rbxassetid://48315270"
							ParticleEmitter2.ZOffset = 1
							ParticleEmitter2.Size = NumberSequence.new(0.50000011920929,0)
							ParticleEmitter2.Drag = 50
							ParticleEmitter2.EmissionDirection = Enum.NormalId.Left
							ParticleEmitter2.Lifetime = NumberRange.new(1, 1)
							ParticleEmitter2.Rate = 8000
							ParticleEmitter2.RotSpeed = NumberRange.new(-400, -400)
							local b2p2 = Instance.new("BodyPosition",Part0)
							b2p2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
							b2p2.Position =v:WaitForChild("Torso").CFrame * CFrame.new(0,0,0).p
							spawn(function()
								Part0.CFrame =v:WaitForChild("Torso").CFrame * CFrame.Angles(0,math.rad(math.random(-180,180)),0)

								wait(0.1)
								b2p2.Position = Part0.CFrame * CFrame.new(0,math.random(5,20),math.random(5,20)).p



								wait(1)
								b2p2.D = 800
								for i = 1,5 do
									wait(0.1)
									b2p2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0).p

								end
								playor.Character.Humanoid.Health = playor.Character.Humanoid.Health + 2
								ParticleEmitter1.Enabled = false
								ParticleEmitter2.Enabled = false
								wait(1)
								Part0:Destroy()

							end)

						end
					end)
					v:FindFirstChildOfClass("Humanoid").Health = 	v:FindFirstChildOfClass("Humanoid").Health -  v:FindFirstChildOfClass("Humanoid").Health /15
					local LCUT = Instance.new("Sound",v:WaitForChild("Torso"))
					LCUT.SoundId = "rbxassetid://153092285"
					LCUT.Volume = 1
					LCUT.Looped = false
					local joe2 = Instance.new("BodyVelocity",v:WaitForChild("Torso"))
					joe2.maxForce = Vector3.new(4e9, 4e9, 4e9)
					joe2.velocity = playor.Character.HumanoidRootPart.CFrame.lookVector*1
					joe2.Name = "speedy"
					spawn(function()
						wait(1)
						joe2:Destroy()
					end)

					for i = 1,5 do
						swait()

						ParticleEmitter0:Emit(1)
					end

					spawn(function()
						local  Part0 = Instance.new("Part")
						local SpecialMesh1 = Instance.new("SpecialMesh")
						local Part2 = Instance.new("Part")
						local SpecialMesh3 = Instance.new("SpecialMesh")
						local Part4 = Instance.new("Part")
						local SpecialMesh5 = Instance.new("SpecialMesh")
						Part0.Name = "black shockwave"
						Part0.Parent = game.Workspace
						Part0.CFrame = CFrame.new(-1.05810452, 3.97946167, -146.655472, 1, 0, 0, 0, 1, 0, 0, 0, 1)
						Part0.Position = Vector3.new(-1.05810452, 3.97946167, -146.655472)
						Part0.Color = Color3.new(0.384314, 0.145098, 0.819608)
						Part0.Size = Vector3.new(3.48000002, 0.922646344, 2.7172091)
						Part0.BottomSurface = Enum.SurfaceType.Smooth
						Part0.BrickColor = BrickColor.new("Royal purple")
						Part0.TopSurface = Enum.SurfaceType.Smooth
						Part0.brickColor = BrickColor.new("Royal purple")
						SpecialMesh1.Parent = Part0
						SpecialMesh1.MeshId = "rbxassetid://5862674837"
						SpecialMesh1.Offset = Vector3.new(0, 0, -0.699999988)
						SpecialMesh1.Scale = Vector3.new(18.0501289, 18.839695, 18.3808346)
						SpecialMesh1.VertexColor = Vector3.new(0, 0, 0)
						SpecialMesh1.TextureId = "rbxassetid://0"
						SpecialMesh1.MeshType = Enum.MeshType.FileMesh
						Part2.Name = "purpl"
						Part2.Parent = game.Workspace
						Part2.CFrame = CFrame.new(-1.05810452, 3.97946167, -146.655472, 0.94861114, 0.316444159, 0, -0.316444159, 0.94861114, 0, 0, 0, 1)
						Part2.Orientation = Vector3.new(0, 0, -18.4500008)
						Part2.Position = Vector3.new(-1.05810452, 3.97946167, -146.655472)
						Part2.Rotation = Vector3.new(0, 0, -18.4500008)
						Part2.Color = Color3.new(0.384314, 0.145098, 0.819608)
						Part2.Size = Vector3.new(2.63192654, 0.922646344, 2.24898744)
						Part2.BottomSurface = Enum.SurfaceType.Smooth
						Part2.BrickColor = BrickColor.new("Royal purple")
						Part2.TopSurface = Enum.SurfaceType.Smooth
						Part2.brickColor = BrickColor.new("Royal purple")
						SpecialMesh3.Parent = Part2
						SpecialMesh3.MeshId = "rbxassetid://5922911630"
						SpecialMesh3.Scale = Vector3.new(2.29999995, 2.29999995, 2.29999995)
						SpecialMesh3.VertexColor = Vector3.new(1, 0, 123)
						SpecialMesh3.TextureId = "rbxassetid://0"
						SpecialMesh3.MeshType = Enum.MeshType.FileMesh
						Part4.Name = "purpl2"
						Part4.Parent = game.Workspace
						Part4.CFrame = CFrame.new(-1.05810452, 3.97946024, -146.655472, 0.81878233, -0.220212519, -0.530190468, -0.237241879, 0.711184859, -0.661764562, 0.522792339, 0.667624533, 0.53006196)
						Part4.Orientation = Vector3.new(41.4300003, -45.0099983, -18.4500008)
						Part4.Position = Vector3.new(-1.05810452, 3.97946024, -146.655472)
						Part4.Rotation = Vector3.new(51.3100014, -32.0200005, 15.0500002)
						Part4.Color = Color3.new(0.384314, 0.145098, 0.819608)
						Part4.Size = Vector3.new(2.63192654, 0.922646344, 2.24898744)
						Part4.BottomSurface = Enum.SurfaceType.Smooth
						Part4.BrickColor = BrickColor.new("Royal purple")
						Part4.TopSurface = Enum.SurfaceType.Smooth
						Part4.brickColor = BrickColor.new("Royal purple")
						SpecialMesh5.Parent = Part4
						SpecialMesh5.MeshId = "rbxassetid://5922911630"
						SpecialMesh5.Scale = Vector3.new(2.29999995, 2.29999995 ,2.29999995)
						SpecialMesh5.VertexColor = Vector3.new(1, 0, 123)
						SpecialMesh5.TextureId = "rbxassetid://0"
						SpecialMesh5.MeshType = Enum.MeshType.FileMesh
						Part0.Anchored = true
						Part0.CanCollide = false
						Part2.Anchored = true
						Part2.CanCollide = false
						Part4.Anchored = true
						Part4.CanCollide = false
						Part0.Transparency = 0.3
						Part2.Transparency =  0.3
						Part4.Transparency =  0.3

						Part0.CFrame = v:WaitForChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
						Part2.CFrame = v:WaitForChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
						Part4.CFrame = v:WaitForChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))

						for i = 1,5 do
							swait()
							Part0.Transparency = Part0.Transparency + 0.2
							SpecialMesh1.Scale = SpecialMesh1.Scale  + Vector3.new(5,5,5)
							Part2.Transparency = Part2.Transparency + 0.2
							SpecialMesh3.Scale = SpecialMesh3.Scale  + Vector3.new(0.5,0.5,0.5)
							Part4.Transparency = Part4.Transparency + 0.2
							SpecialMesh5.Scale = SpecialMesh5.Scale  + Vector3.new(0.5,0.5,0.5)

						end
					end) LCUT:play()
					spawn(function()
						for i =1,3 do
							game:GetService('RunService').Stepped:wait()
							local spark = Instance.new("FlagStand",script)
							spark.Anchored = true
							spark.CanCollide =  false
							spark.Size = Vector3.new(1.2,0.25,0.25)
							spark.BrickColor = BrickColor.new("Really black")
							spark.Material = Enum.Material.Neon
							spark.CFrame = v:WaitForChild("Torso").CFrame 	
							spark.Orientation = Vector3.new(math.random(-180,180),math.random(-180,180),math.random(-180,180))
							local joe2 = Instance.new("SpecialMesh",spark)
							joe2.MeshType = Enum.MeshType.Sphere
							spawn(function()
								for i = 1,20 do
									game:GetService('RunService').Stepped:wait()
									spark.Transparency = spark.Transparency + 0.05
									spark.CFrame = spark.CFrame * CFrame.new(0.25,0.25,0.25) * CFrame.Angles(math.rad(15),math.rad(15),math.rad(15))

								end
								spark:destroy()
							end)
						end
					end)
					for i = 1,2 do
						local minus = -180
						local blood = Instance.new("FlagStand",script)
						blood.Anchored = true
						blood.Material = Enum.Material.SmoothPlastic
						blood.BrickColor = BrickColor.new("Royal purple")
						blood.CanCollide = false
						blood.Material = Enum.Material.Neon
						blood.Transparency = 0
						blood.Size = Vector3.new(1,math.random(4,6),1)

						blood.CFrame = v:FindFirstChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(minus,180)),math.rad(math.random(minus,180)),math.rad(math.random(minus,180)))
						local joemama123 = Instance.new("SpecialMesh",blood)
						joemama123.MeshType = Enum.MeshType.Sphere
						spawn(function()
							for i =1,5 do
								game:GetService('RunService').Stepped:wait()

								blood.Size = 					blood.Size + Vector3.new(0,0.5,0)								
								blood.Transparency = blood.Transparency + 0.2
							end
							blood:Destroy()
						end)
					end		






					local blood = Instance.new("FlagStand",game.Workspace)
					blood.Anchored = true
					blood.Material = Enum.Material.SmoothPlastic
					blood.BrickColor = BrickColor.new("Royal purple")
					blood.CanCollide = false
					blood.Material = Enum.Material.Neon
					blood.Transparency = 0
					blood.Size = Vector3.new(0.7,math.random(8,12),0.7)
					local BANG3 = Instance.new("FlagStand",game.Workspace)
					BANG3.BrickColor = BrickColor.new("Really black")
					BANG3.Size = Vector3.new(0.65, 0.65, 0.65)
					BANG3.Locked = false
					BANG3.Material = Enum.Material.SmoothPlastic
					BANG3.CanCollide = false
					BANG3.Anchored = true
					BANG3.Transparency =  0
					--RHe.Orientation = Vector3.new(0, -90, 0)
					BANG3.formFactor =  "Symmetric"
					local joe2 = Instance.new("SpecialMesh",BANG3)
					joe2.MeshType = Enum.MeshType.FileMesh
					joe2.MeshId = "rbxassetid://3454554153"
					joe2.TextureId = "rbxassetid://0"
					joe2.Scale = Vector3.new(1, 0.2, 1)
					joe2.VertexColor = Vector3.new(0,0,0)

					blood.CFrame =			v:WaitForChild("Torso").CFrame * CFrame.new(0,0,-2.7)*CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))

					local joemama123 = Instance.new("SpecialMesh",blood)
					joemama123.MeshType = Enum.MeshType.Sphere
					BANG3.CFrame = blood.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))

					spawn(function()
						for i =1,5 do
							swait()
							joe2.Scale = 		joe2.Scale + Vector3.new(0.05, 0.05, 0.05)				
							BANG3.Transparency = BANG3.Transparency + 0.2	

							blood.Size = 					blood.Size + Vector3.new(0,0.5,0)								
							blood.Transparency = blood.Transparency + 0.2
						end
						blood:Destroy()
					end)
					local minus = -180				


				end))


				for i = 0,0.7,0.2 do 
					swait()
					ls.C0=ls.C0:Lerp(cf(-1.114434, 0.197188705, -0.197626919, -0.210736245, 0.743058741, -0.635180235, -0.316907346, 0.562749267, 0.763467789, 0.9247486, 0.362183541, 0.116889089),i)  

					rs.C0=rs.C0:Lerp(cf(1.57743979, 0.0442694798, 0.268424213, 0.57357645, -0.819152057, -4.37113883e-08, 2.50718237e-08, -3.58062735e-08, 1, -0.819152057, -0.57357645, 0),i)  

					lh.C0=lh.C0:Lerp(cf(-0.886823535, -0.819461346, 0.0934229046, -0.0394821018, 0.486444384, -0.872818947, -0.439588964, 0.775974393, 0.452355325, 0.897330999, 0.401541591, 0.183198512),i)  

					rh.C0=rh.C0:Lerp(cf(1.10298657, -1.10506833, -0.0683246553, 0.40154779, -0.25919348, 0.87839514, -0.822730124, 0.319259405, 0.470306963, -0.402336448, -0.911532879, -0.0850483775),i)  

					rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.50000006, -0.866025448, 0, 0, 0, 1, -0.866025448, 0.50000006, 0),i)  

					ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.914689422, -0.369695395, 0.163304806, -0.00588241965, 0.416197538, 0.909255147, -0.404114544, 0.830725551, -0.382866204),i)  


				end
			end

			playor.Character.HumanoidRootPart.CFrame = CFrame.new(playor.Character.HumanoidRootPart.CFrame.p, Vector3.new(v:WaitForChild("Torso").CFrame.x, playor.Character.HumanoidRootPart.CFrame.y, v:WaitForChild("Torso").CFrame.z))

			playor.Character.HumanoidRootPart.CFrame = CFrame.new(playor.Character.HumanoidRootPart.CFrame.p, Vector3.new(v:WaitForChild("Torso").CFrame.x, playor.Character.HumanoidRootPart.CFrame.y, v:WaitForChild("Torso").CFrame.z))
			v:WaitForChild("Torso").CFrame = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-5)
			playor.Character.HumanoidRootPart.CFrame = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-10)					
			playor.Character.HumanoidRootPart.CFrame = CFrame.new(playor.Character.HumanoidRootPart.CFrame.p, Vector3.new(v:WaitForChild("Torso").CFrame.x, playor.Character.HumanoidRootPart.CFrame.y, v:WaitForChild("Torso").CFrame.z))

			joe2:Destroy()

			local joemamamam = Instance.new("FlagStand",script)
			joemamamam.Size = Vector3.new(5,5,5)
			joemamamam.Anchored = true
			joemamamam.CanCollide = false
			joemamamam.Material = Enum.Material.Neon
			joemamamam.BrickColor = BrickColor.new("Dark indigo")
			joemamamam.Transparency = 0
			joemamamam.Shape = "Ball"
			joemamamam.CFrame = playor.Character.HumanoidRootPart.CFrame 

			spawn(function()

				for i =1,20 do
					wait()
					joemamamam.Transparency = joemamamam.Transparency + 0.05
				end
				joemamamam:Destroy()
			end)
			spawn(function()
				spawn(function()




					local torsio = Instance.new("FlagStand",script)
					torsio.Size = playor.Character.Torso.Size
					torsio.Anchored = true
					torsio.CFrame = playor.Character.Torso.CFrame
					torsio.BrickColor = BrickColor.new("Royal purple")
					torsio.Material = Enum.Material.Neon
					torsio.CanCollide = false
					spawn(function()
						for i =1,50 do
							swait()
							torsio.Transparency = torsio.Transparency + 0.02
						end
						torsio:Destroy()
					end)

					local headio = Instance.new("FlagStand",script)
					headio.Size = Vector3.new(1,1,1)
					headio.Anchored = true
					headio.CFrame = playor.Character.Head.CFrame
					headio.BrickColor = BrickColor.new("Royal purple")
					headio.Material = Enum.Material.Neon
					headio.CanCollide = false
					spawn(function()
						for i =1,100 do
							swait()
							headio.Transparency = headio.Transparency + 0.02
						end
						headio:Destroy()
					end)


					local rightarmio = Instance.new("FlagStand",script)
					rightarmio.Size = playor.Character["Right Arm"].Size
					rightarmio.Anchored = true
					rightarmio.CFrame = playor.Character["Right Arm"].CFrame
					rightarmio.BrickColor = BrickColor.new("Royal purple")
					rightarmio.Material = Enum.Material.Neon
					rightarmio.CanCollide = false
					spawn(function()
						for i =1,100 do
							swait()
							rightarmio.Transparency = rightarmio.Transparency + 0.02
						end
						rightarmio:Destroy()

					end)

					local leftarmio = Instance.new("FlagStand",script)
					leftarmio.Size = playor.Character["Left Arm"].Size
					leftarmio.Anchored = true
					leftarmio.CFrame = playor.Character["Left Arm"].CFrame
					leftarmio.BrickColor = BrickColor.new("Royal purple")
					leftarmio.Material = Enum.Material.Neon
					leftarmio.CanCollide = false
					spawn(function()
						for i =1,100 do
							swait()
							leftarmio.Transparency = leftarmio.Transparency + 0.02
						end
						leftarmio:Destroy()
					end)




					local leftlegio = Instance.new("FlagStand",script)
					leftlegio.Size = playor.Character["Left Leg"].Size
					leftlegio.Anchored = true
					leftlegio.CFrame = playor.Character["Left Leg"].CFrame
					leftlegio.BrickColor = BrickColor.new("Royal purple")
					leftlegio.Material = Enum.Material.Neon
					leftlegio.CanCollide = false
					spawn(function()
						for i =1,100 do
							swait()
							leftlegio.Transparency = leftlegio.Transparency + 0.02
						end
						leftlegio:Destroy()
					end)

					local rightlegio = Instance.new("FlagStand",script)
					rightlegio.Size = playor.Character["Right Leg"].Size
					rightlegio.Anchored = true
					rightlegio.CFrame = playor.Character["Right Leg"].CFrame
					rightlegio.BrickColor = BrickColor.new("Royal purple")
					rightlegio.Material = Enum.Material.Neon
					rightlegio.CanCollide = false
					spawn(function()
						for i =1,100 do
							swait()
							rightlegio.Transparency = rightlegio.Transparency + 0.02
						end
						rightlegio:Destroy()
					end)
					spawn(function()
						while true do
							swait()
							rightlegio.CFrame = playor.Character["Right Leg"].CFrame
							leftlegio.CFrame = playor.Character["Left Leg"].CFrame
							rightarmio.CFrame = playor.Character["Right Arm"].CFrame
							leftarmio.CFrame = playor.Character["Left Arm"].CFrame
							torsio.CFrame = playor.Character.Torso.CFrame
							headio.CFrame = playor.Character.Head.CFrame

						end
					end)
					for i =1,3 do
						for i =1,2 do
							local ea = Instance.new("FlagStand",script)
							ea.BrickColor = BrickColor.new("Really black")
							ea.Material = Enum.Material.Neon
							ea.Size = Vector3.new(6,6,6)
							ea.Anchored = true
							ea.CanCollide = false
							ea.CFrame = playor.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,0)

							spawn(function()
								for i=1,20 do
									swait()
									ea.Orientation = ea.Orientation + Vector3.new(math.random(-180,180),math.random(-180,180),math.random(-180,180))
									ea.Transparency = ea.Transparency + 0.05
								end
								ea:Destroy()
							end)
						end

					end
				end)



				wait(0.1)

			end)
			spawn(function()
				wait()
				for i =1,3 do
					wait()
					local bruh = Instance.new("FlagStand",script)
					bruh.Anchored = true
					minus = -180
					bruh.CanCollide = false
					bruh.CFrame = playor.Character.HumanoidRootPart.CFrame
					bruh.Transparency = 0.3
					bruh.Orientation = Vector3.new(math.random(minus,180),math.random(minus,180),math.random(minus,180))
					bruh.Material = Enum.Material.Neon
					bruh.BrickColor = BrickColor.new("Fossil")
					bruh.Size = Vector3.new(3.25,0.35,3.25)
					local bruhb = Instance.new("SpecialMesh",bruh)
					bruhb.MeshType = Enum.MeshType.FileMesh

					bruhb.MeshId = "rbxassetid://643098245"
					bruhb.TextureId = "rbxassetid://643064975"
					bruhb.Scale = Vector3.new(0.1,0.1,0.1)

					spawn(function()

						for i =1,50 do
							swait()
							bruhb.Scale = bruhb.Scale + Vector3.new(0.01,0,0.01)
							bruh.Transparency = bruh.Transparency + 0.02
						end
						bruh:Destroy()
					end)


				end

			end)

			local hitboxerino1 = Instance.new("FlagStand",script)
			hitboxerino1.Material = Enum.Material.Neon
			hitboxerino1.Color = Color3.new(0,0,0)
			local r=0 
			local r2=0
			spawn(function()
				while true do
					wait()
					for i =1,100 do
						wait()
						r=r+0.005 
						r2=r2+0.01
					end 
					wait()

				end
			end)
			spawn(function()


				while true  do 
					swait()

					hitboxerino1.Color=Color3.new(r, 0, r2)
				end


			end)
			hitboxerino1.Anchored = true
			hitboxerino1.CanCollide = false
			hitboxerino1.Transparency = 0
			hitboxerino1.CFrame = playor.Character.HumanoidRootPart.CFrame 
			hitboxerino1.Shape = "Cylinder"
			hitboxerino1.Orientation = hitboxerino1.Orientation + Vector3.new(0,0,90)
			hitboxerino1.Size = Vector3.new(1000,1,1)

			spawn(function()
				for i =1,50 do
					swait()
					hitboxerino1.Transparency = hitboxerino1.Transparency + 0.05

					hitboxerino1.CFrame = hitboxerino1.CFrame * CFrame.new(0,0,-2)

					hitboxerino1.Orientation = hitboxerino1.Orientation + Vector3.new(0,10,0)

				end
				hitboxerino1:Destroy()


			end)

			local hitboxerino1 = Instance.new("FlagStand",script)
			hitboxerino1.Material = Enum.Material.Neon
			hitboxerino1.Color = Color3.new(0,0,0)
			local r=0 
			local r2=0
			spawn(function()
				while true do
					wait()
					for i =1,100 do
						wait()
						r=r+0.005 
						r2=r2+0.01
					end 
					wait()

				end
			end)
			spawn(function()


				while true  do 
					swait()

					hitboxerino1.Color=Color3.new(r, 0, r2)
				end


			end)hitboxerino1.Anchored = true
			hitboxerino1.CanCollide = false
			hitboxerino1.Transparency = 0
			hitboxerino1.CFrame = playor.Character.HumanoidRootPart.CFrame 
			hitboxerino1.Shape = "Cylinder"
			hitboxerino1.Orientation = hitboxerino1.Orientation + Vector3.new(0,90,90)
			hitboxerino1.Size = Vector3.new(1000,1,1)

			spawn(function()
				for i =1,50 do
					swait()
					hitboxerino1.Transparency = hitboxerino1.Transparency + 0.05

					hitboxerino1.CFrame = hitboxerino1.CFrame * CFrame.new(0,0,-2)

					hitboxerino1.Orientation = hitboxerino1.Orientation + Vector3.new(0,10,0)
				end
				hitboxerino1:Destroy()
			end)



			local hitboxerino1 = Instance.new("FlagStand",script)
			hitboxerino1.Color = Color3.new(0,0,0)
			local r=0 
			local r2=0
			spawn(function()
				while true do
					wait()
					for i =1,100 do
						wait()
						r=r+0.005 
						r2=r2+0.01
					end 
					wait()

				end
			end)
			spawn(function()


				while true  do 
					swait()

					hitboxerino1.Color=Color3.new(r, 0, r2)
				end


			end)hitboxerino1.Anchored = true
			hitboxerino1.CanCollide = false
			hitboxerino1.Material = Enum.Material.Neon
			hitboxerino1.Transparency = 0
			hitboxerino1.CFrame = playor.Character.HumanoidRootPart.CFrame 
			hitboxerino1.Shape = "Cylinder"
			hitboxerino1.Orientation = hitboxerino1.Orientation + Vector3.new(0,-180,90)
			hitboxerino1.Size = Vector3.new(1000,1,1)

			spawn(function()
				for i =1,50 do
					swait()
					hitboxerino1.Transparency = hitboxerino1.Transparency + 0.05

					hitboxerino1.CFrame = hitboxerino1.CFrame * CFrame.new(0,0,-2)

					hitboxerino1.Orientation = hitboxerino1.Orientation + Vector3.new(0,10,0)
				end
				hitboxerino1:Destroy()
			end)




			local hitboxerino1 = Instance.new("FlagStand",script)
			hitboxerino1.Color = Color3.new(0,0,0)
			local r=0 
			local r2=0
			spawn(function()
				while true do
					wait()
					for i =1,100 do
						wait()
						r=r+0.005 
						r2=r2+0.01
					end 
					wait()

				end
			end)
			spawn(function()


				while true  do 
					swait()

					hitboxerino1.Color=Color3.new(r, 0, r2)
				end



			end)hitboxerino1.Anchored = true
			hitboxerino1.CanCollide = false
			hitboxerino1.Material = Enum.Material.Neon
			hitboxerino1.Transparency = 0
			hitboxerino1.CFrame = playor.Character.HumanoidRootPart.CFrame 
			hitboxerino1.Shape = "Cylinder"
			hitboxerino1.Orientation = hitboxerino1.Orientation + Vector3.new(0,-90,90)

			hitboxerino1.Size = Vector3.new(1000,1,1)
			spawn(function()
				for i =1,50 do
					swait()
					hitboxerino1.Transparency = hitboxerino1.Transparency + 0.05
					hitboxerino1.CFrame = hitboxerino1.CFrame * CFrame.new(0,0,-2)

					hitboxerino1.Orientation = hitboxerino1.Orientation + Vector3.new(0,10,0)end
				hitboxerino1:Destroy()
			end)


			for i = 0,1,0.1 do 
				swait()
				ls.C0=ls.C0:Lerp(cf(-1.16904354, 0.303720176, -0.0739526898, 0.57357645, 0.627506852, -0.526540816, -0.671010137, 0.728610992, 0.137373537, 0.469846219, 0.27452001, 0.838977516),i) 

				rs.C0=rs.C0:Lerp(cf(1, 0.5, 0, -0.115576908, -0.436259538, 0.892367303, -0.976080358, -0.116667695, -0.183455497, 0.184144631, -0.892225444, -0.412340224),i) 

				lh.C0=lh.C0:Lerp(cf(-1, -0.931385696, -0.655798852, 0.257833928, 0.0225575417, -0.965925872, -0.485654056, 0.867280722, -0.10938146, 0.835261405, 0.497308046, 0.234569564),i) 

				rh.C0=rh.C0:Lerp(cf(0.941021144, -1.36484027, 0.193310171, 0.267598242, -0.0622721016, 0.961516201, -0.175697267, 0.978025019, 0.112239331, -0.947376251, -0.198970795, 0.250776678),i) 

				rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.766044438, -0.604022682, 0.219846442, 0, 0.342020363, 0.939692557, -0.642787576, 0.719846249, -0.262002796),i) 

				ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.965925753, 0.166365817, -0.198267043, -0.0885213912, 0.507491112, 0.857097864, 0.243210554, 0.845443845, -0.475471795),i) 

				joe.C0 =  joe.C0:Lerp(CFrame.new(-1,1,0) * CFrame.Angles(math.rad(90),math.rad(-55),math.rad(90)),i)
			end 

			spawn(function()
				A:Play()
				for i = 1,8 do
					swait(3)
					spawn(function()
						local BANGG4 = Instance.new("FlagStand",game.Workspace)
						BANGG4.BrickColor = BrickColor.new("Institutional white")
						BANGG4.Size = Vector3.new(5, 5, 5)
						BANGG4.Locked = false
						BANGG4.Material = Enum.Material.Neon
						BANGG4.CanCollide = false
						BANGG4.Anchored = true
						BANGG4.Transparency = 0.8
						--RHe.Orientation = Vector3.new(0, -90, 0)
						BANGG4.formFactor =  "Symmetric"
						BANGG4.CFrame = playor.Character.Torso.CFrame  * CFrame.Angles(math.random(-180,170),math.random(-180,170),math.random(-180,170))
						local joe3 = Instance.new("SpecialMesh",BANGG4)
						joe3.MeshType = Enum.MeshType.FileMesh
						joe3.MeshId = "http://www.roblox.com/Asset/?id=9982590"
						joe3.TextureId = "http://www.roblox.com/Asset/?id=5614579544"
						joe3.VertexColor = Vector3.new(0.7,0,123)
						joe3.Scale = Vector3.new(10,10,10)




						for i = 1,20 do
							swait(1)
							BANGG4.Transparency = BANGG4.Transparency + 0.05	


							joe3.Scale = joe3.Scale - Vector3.new(2,2,2)

						end
						BANGG4:destroy()


					end)
				end
			end)
			wait(1)
			spawn(function()
				local unga = Instance.new("FlagStand",script)
				unga.BrickColor = BrickColor.new("Royal purple")
				unga.Material = Enum.Material.Neon
				unga.Size = Vector3.new(15,15,60)
				unga.Anchored = true
				unga.CanCollide = false
				unga.CFrame = playor.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,0)
				local bunga = Instance.new("SpecialMesh",unga)
				bunga.MeshType = Enum.MeshType.Sphere

				local joemama = Instance.new("FlagStand",script)
				joemama.BrickColor = BrickColor.new("Really black")
				joemama.Material = Enum.Material.Neon
				joemama.Size = Vector3.new(0,0,0)
				joemama.Anchored = true
				joemama.CanCollide = false
				joemama.CFrame = unga.CFrame * CFrame.new(0,0,10)
				joemama.Orientation = playor.Character.HumanoidRootPart.Orientation + Vector3.new(0,90,90)
				local bjoemama = Instance.new("SpecialMesh",joemama)
				bjoemama.MeshType = Enum.MeshType.FileMesh
				bjoemama.MeshId = "rbxassetid://2855431753"
				bjoemama.Scale = Vector3.new(0.5,2,0.5)
				spawn(function()
					for i =1,20 do
						wait()
						joemama.Transparency = joemama.Transparency + 0.05
						bjoemama.Scale = bjoemama.Scale + Vector3.new(0,0.05,0)
						joemama.CFrame = joemama.CFrame * CFrame.fromEulerAnglesXYZ(0,10,0)
					end
					joemama:Destroy()
				end)

				local joemama = Instance.new("FlagStand",script)
				joemama.BrickColor = BrickColor.new("Really black")
				joemama.Material = Enum.Material.Neon
				joemama.Size = Vector3.new(0,0,0)
				joemama.Anchored = true
				joemama.CanCollide = false
				joemama.CFrame = unga.CFrame * CFrame.new(0,0,25)
				joemama.Orientation = playor.Character.HumanoidRootPart.Orientation + Vector3.new(0,90,90)
				local bjoemama = Instance.new("SpecialMesh",joemama)
				bjoemama.MeshType = Enum.MeshType.FileMesh
				bjoemama.MeshId = "rbxassetid://3454554153"
				bjoemama.Scale = Vector3.new(0.65,0.65,0.65)
				spawn(function()
					for i =1,20 do
						wait()
						joemama.Transparency = joemama.Transparency + 0.05
						bjoemama.Scale = bjoemama.Scale + Vector3.new(0.05,0,0.05)
						joemama.CFrame = joemama.CFrame * CFrame.fromEulerAnglesXYZ(0,10,0)
					end
					joemama:Destroy()
				end)

				spawn(function()

					for i=1,10 do
						wait()
						unga.Size = unga.Size + Vector3.new(0,0,10)
						unga.Size = unga.Size- Vector3.new(15/10,15/10,0)

						unga.Transparency = unga.Transparency + 0.1

					end
					unga:Destroy()
				end)
				for i = 1,8 do

					for i = 1,3 do
						local random = math.random(1,2)
						if random == 1 then
							local Part0 = Instance.new("Part")


							Part0.Parent = game.Workspace
							Part0.CFrame = CFrame.new(-28.2444439, 12.9582043, 34.5625916, 1, 0, 0, 0, 1, 0, 0, 0, 1)
							Part0.Position = Vector3.new(-28.2444439, 12.9582043, 34.5625916)
							Part0.Color = Color3.new(0.411765, 0.25098, 0.156863)
							Part0.Size = Vector3.new(4,0.5,1.2)
							Part0.Anchored = false
							Part0.Material = "Neon"
							Part0.BottomSurface = Enum.SurfaceType.Smooth
							Part0.CanCollide = false
							Part0.BrickColor = BrickColor.new("Really black")
							Part0.CanCollide = false

							Part0.TopSurface = Enum.SurfaceType.Smooth
							Part0.CFrame =  v:WaitForChild("Torso").CFrame *  CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10)) * CFrame.new(0,0,1) * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
							local yea = Instance.new("BodyPosition",Part0)
							yea.MaxForce = Vector3.new(40000,40000,40000)

							yea.Position = Part0.CFrame * CFrame.new(0,10,math.random(-10,10)).p


							local joemama = Instance.new("SpecialMesh",Part0)
							joemama.MeshType = Enum.MeshType.Sphere
							spawn(function()


								for i = 1,10 do
									swait(1)
									Part0.CFrame = Part0.CFrame *CFrame.new(0,0,0) * CFrame.Angles(math.rad(15),math.rad(15),math.rad(15))
									Part0.Transparency = Part0.Transparency + 0.1
								end		
								Part0:Destroy()
							end)
						elseif random == 2 then
							local Part0 = Instance.new("FlagStand")

							Part0.CanCollide = false
							Part0.Parent = game.Workspace
							Part0.CFrame = CFrame.new(-28.2444439, 12.9582043, 34.5625916, 1, 0, 0, 0, 1, 0, 0, 0, 1)
							Part0.Position = Vector3.new(-28.2444439, 12.9582043, 34.5625916)
							Part0.Color = Color3.new(0.411765, 0.25098, 0.156863)
							Part0.Size = Vector3.new(4,0.5,1.2)
							Part0.Anchored = false
							Part0.Material = "Neon"
							Part0.BottomSurface = Enum.SurfaceType.Smooth

							Part0.BrickColor = BrickColor.new("Really black")

							Part0.CanCollide = false
							local yea = Instance.new("BodyPosition",Part0)
							yea.MaxForce = Vector3.new(40000,40000,40000)

							yea.Position = Part0.CFrame * CFrame.new(0,10,math.random(-10,10)).p


							Part0.TopSurface = Enum.SurfaceType.Smooth
							Part0.CFrame =  v:WaitForChild("Torso").CFrame *  CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)) * CFrame.new(0,0,1) * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
							local joemama = Instance.new("SpecialMesh",Part0)
							joemama.MeshType = Enum.MeshType.Sphere
							spawn(function()


								for i = 1,10 do
									swait(1)
									Part0.CFrame = Part0.CFrame *CFrame.new(0,0,0) * CFrame.Angles(math.rad(15),math.rad(15),math.rad(15))
									Part0.Transparency = Part0.Transparency + 0.1
								end		
								Part0:Destroy()
							end)
						end	
					end
				end
			end)

			t = v:WaitForChild("Torso")
			local EEEAAEAE21 = Instance.new("FlagStand",script)
			EEEAAEAE21.Size = Vector3.new(15,15,15)
			EEEAAEAE21.BrickColor = BrickColor.new("Really black")
			EEEAAEAE21.Anchored = true
			EEEAAEAE21.Material = Enum.Material.Neon
			EEEAAEAE21.Transparency = 0.5
			EEEAAEAE21.CanCollide = false
			EEEAAEAE21.CFrame = t.CFrame * CFrame.new(0,-0,0)
			EEEAAEAE21.Shape = "Ball"


			local EEEAAEAEAA = Instance.new("FlagStand",script)
			EEEAAEAEAA.Size = Vector3.new(15,15,15)
			EEEAAEAEAA.BrickColor = BrickColor.new("Really black")
			EEEAAEAEAA.Anchored = true
			EEEAAEAEAA.Material = Enum.Material.Neon
			EEEAAEAEAA.Transparency = 0.5
			EEEAAEAEAA.CanCollide = false
			EEEAAEAEAA.CFrame = t.CFrame * CFrame.new(0,-0,0)
			EEEAAEAEAA.Shape = "Ball"

			local EEEAAEAE = Instance.new("FlagStand",script)
			EEEAAEAE.Size = Vector3.new(17,17,17)
			EEEAAEAE.BrickColor = BrickColor.new("Royal purple")
			EEEAAEAE.Anchored = true
			EEEAAEAE.Material = Enum.Material.Neon
			EEEAAEAE.Transparency = 0.5
			EEEAAEAE.CanCollide = false
			EEEAAEAE.CFrame = t.CFrame * CFrame.new(0,0,0)
			EEEAAEAE.Shape = "Ball"

			local EEEAAEAE2 = Instance.new("FlagStand",script)
			EEEAAEAE2.Size = Vector3.new(17,17,17)
			EEEAAEAE2.BrickColor = BrickColor.new("Really black")
			EEEAAEAE2.Anchored = true
			EEEAAEAE2.Material = Enum.Material.Neon
			EEEAAEAE2.Transparency = 0.5
			EEEAAEAE2.CanCollide = false
			EEEAAEAE2.CFrame = t.CFrame * CFrame.new(0,-0,0)
			EEEAAEAE2.CFrame = EEEAAEAE2.CFrame * CFrame.fromEulerAnglesXYZ(math.random(minus,180),math.random(minus,180),math.random(minus,180))

			local EEEAAEAE22 = Instance.new("FlagStand",script)
			EEEAAEAE22.Size = Vector3.new(17,17,17)
			EEEAAEAE22.BrickColor = BrickColor.new("Really black")
			EEEAAEAE22.Anchored = true
			EEEAAEAE22.Material = Enum.Material.Neon
			EEEAAEAE22.Transparency = 0.5
			EEEAAEAE22.CanCollide = false
			EEEAAEAE22.CFrame = t.CFrame * CFrame.new(0,0,0)
			EEEAAEAE22.CFrame = EEEAAEAE22.CFrame * CFrame.fromEulerAnglesXYZ(math.random(minus,180),math.random(minus,180),math.random(minus,180))

			BTAUNT100 = Instance.new("Sound", char.Torso)
			BTAUNT100.SoundId = "http://www.roblox.com/asset/?id=1548544673"
			BTAUNT100.Volume = 4
			BTAUNT100.TimePosition = 0.7
			BTAUNT100.Pitch = 1
			BTAUNT100.Looped = false
			BTAUNT100:Play()
			hivus = Instance.new("Sound", char.Torso)
			hivus.SoundId = "http://www.roblox.com/asset/?id=3404418058"
			hivus.Volume = 4
			hivus.Pitch = 1
			hivus.Looped = false
			hivus:Play()
			spawn(function()
				for i =1,20 do
					swait()
					EEEAAEAE2.Transparency =	EEEAAEAE2.Transparency + 0.05 
					EEEAAEAE.Transparency =	EEEAAEAE.Transparency + 0.05 
					EEEAAEAEAA.Transparency =	EEEAAEAEAA.Transparency + 0.05 
					EEEAAEAE22.Transparency = EEEAAEAE22.Transparency + 0.05
					EEEAAEAE21.Transparency =	EEEAAEAE21.Transparency + 0.05 


				end
				EEEAAEAE2:Destroy()
				EEEAAEAE:Destroy()
				EEEAAEAEAA:Destroy()
				EEEAAEAE22:Destroy()
				EEEAAEAE21:Destroy()
			end)

			spawn(function()
				local minus2 = -12
				for i =1,15 do

					local spark = Instance.new("FlagStand",script)
					spark.Anchored = true
					spark.CanCollide =  false
					spark.Size = Vector3.new(2,2,2)
					spark.BrickColor = BrickColor.new("Really black")
					spark.Material = Enum.Material.Neon
					spark.CFrame = t.CFrame * CFrame.new(math.random(minus2,12),math.random(minus2,12),math.random(minus2,12))
					spark.Orientation = Vector3.new(math.random(minus,180),math.random(minus,180),math.random(minus,180))
					spark.Transparency = 0.5

					spawn(function()
						for i =1,20 do
							swait()
							spark.CFrame = spark.CFrame * CFrame.new(1,1,1)
							spark.Orientation = 		spark.Orientation  + Vector3.new(math.rad(15),math.rad(15),math.rad(15))
							spark.Size = 		spark.Size - Vector3.new(0.1,0.1,0.1)
							spark.Transparency = spark.Transparency + 0.05
						end
						spark:destroy()
					end)

				end
			end)

			for i = 0,0.7,0.2 do 
				swait()
				ls.C0=ls.C0:Lerp(cf(-1, 0.5, 0, 0.735024095, 0.242945224, -0.633022249, -0.432276428, 0.887170672, -0.161447272, 0.522375882, 0.392308205, 0.757111371),i) 

				rs.C0=rs.C0:Lerp(cf(1, 0.5, 0, -0.286788315, -0.496731728, 0.819152057, -0.322758436, 0.855179548, 0.405579686, -0.901986361, -0.14807269, -0.405579805),i) 

				lh.C0=lh.C0:Lerp(cf(-1.22796273, -1.06483221, -0.601926386, 0.397131443, -0.144544005, -0.906307697, -0.129627407, 0.968785346, -0.211309299, 0.90856117, 0.201399907, 0.365998268),i) 

				rh.C0=rh.C0:Lerp(cf(1.06913328, -1.25800908, 0.0715720505, -0.143627465, -0.228531271, 0.962883472, -0.124706388, 0.969394982, 0.21147503, -0.981743038, -0.0897040665, -0.167731062),i) 

				rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.896274447, -0.385174781, 0.219846502, 0.0885212496, 0.330366343, 0.939692557, -0.434575707, 0.861683488, -0.262002766),i) 

				ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.939692616, 0.340718657, 0.0298089515, 0, -0.0871555507, 0.99619472, 0.342020124, 0.936116815, 0.0818994269),i) 

			end
			local T = v:WaitForChild("Torso")
			local H = v:WaitForChild("Head")
			local LA = v:WaitForChild("Left Arm")
			local RA = v:WaitForChild("Right Arm")
			local LL = v:WaitForChild("Left Leg")
			local RL = v:WaitForChild("Right Leg")

			v:BreakJoints()

			T.BrickColor = BrickColor.new("Really black")
			H.BrickColor = BrickColor.new("Really black")
			LA.BrickColor = BrickColor.new("Really black")
			RA.BrickColor = BrickColor.new("Really black")
			LL.BrickColor = BrickColor.new("Really black")
			RL.BrickColor = BrickColor.new("Really black")




			T.Material = "Neon"
			H.Material = "Neon"
			LA.Material = "Neon"
			RA.Material = "Neon"
			LL.Material = "Neon"
			RL.Material = "Neon"




			local LOLXD = Instance.new("BodyPosition",T)
			LOLXD.MaxForce = Vector3.new(40000,40000,40000)
			LOLXD.D = 5000
			LOLXD.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,45,-50).p



			local LOLXD = Instance.new("BodyPosition",H)
			LOLXD.MaxForce = Vector3.new(40000,40000,40000)
			LOLXD.D = 5000
			LOLXD.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,50,-50).p



			local LOLXD = Instance.new("BodyPosition",LA)
			LOLXD.MaxForce = Vector3.new(40000,40000,40000)
			LOLXD.D = 5000
			LOLXD.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(-5,50,-50).p

			local LOLXD = Instance.new("BodyPosition",RA)
			LOLXD.MaxForce = Vector3.new(40000,40000,40000)
			LOLXD.D = 5000
			LOLXD.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(5,50,-50).p

			local LOLXD = Instance.new("BodyPosition",LL)
			LOLXD.MaxForce = Vector3.new(40000,40000,40000)
			LOLXD.D = 5000
			LOLXD.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(-5,40,-50).p





			local LOLXD = Instance.new("BodyPosition",RL)
			LOLXD.MaxForce = Vector3.new(40000,40000,40000)
			LOLXD.D = 5000
			LOLXD.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(5,40,-50).p


			spawn(function()
				for i = 1,50 do
					swait()
					T.Transparency = T.Transparency + 1/50
					H.Transparency = H.Transparency + 1/50
					RA.Transparency = RA.Transparency + 1/50
					LA.Transparency = LA.Transparency + 1/50
					RL.Transparency = RL.Transparency + 1/50
					LL.Transparency = LL.Transparency + 1/50

				end

			end)
			for i = 0,1,0.2 do 
				swait()
				ls.C0=ls.C0:Lerp(cf(-1, 0.5, 0, 0.447094798, 0.564445972, -0.693906903, -0.844277263, 0.0100415647, -0.535812378, -0.295469254, 0.825408816, 0.481038451),i) 

				rs.C0=rs.C0:Lerp(cf(1.52711987, 0.095554024, -0.233507037, -7.45058149e-09, -0.99999994, -1.29047848e-08, 0.5, -1.49011612e-08, 0.866025329, -0.866025448, 0, 0.50000006),i) 

				lh.C0=lh.C0:Lerp(cf(-1.28943968, -0.976078928, -0.413362682, 0.519836903, 0.242403924, -0.819151938, -0.42261827, 0.906307638, 0, 0.742403686, 0.346188605, 0.57357657),i) 

				rh.C0=rh.C0:Lerp(cf(1.19826138, -1.1089536, 0.203141093, 0.346902639, -0.247670501, 0.904609323, -0.111618862, 0.946747184, 0.302011311, -0.931235671, -0.205739975, 0.300784349),i) 

				rj.C0=rj.C0:Lerp(cf(0, 0, 0, 0.0438761003, 0.956229091, -0.289311051, -0.0260640904, 0.290587038, 0.956493556, 0.998696923, -0.0344266109, 0.0376730338),i) 

				ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.90732336, 0.420136213, -0.015805617, 0.130448386, 0.317055583, 0.939392805, 0.399684161, 0.850271225, -0.342478096),i) 
				joe.C0 =  joe.C0:Lerp(CFrame.new(0,1.3,0) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(90)),i)

			end
			playor.Character.Humanoid.AutoRotate = true

			alr = false
		end
	end




	if alr == true then
		repeat
			swait()
		until alr == false
	end
	wait(1)
	joe.C0 =  CFrame.new(-1,0,0) * CFrame.Angles(math.rad(90),0,math.rad(90))
	ParticleEmitter0.Enabled = false
	attack = false
	playor.Character.Humanoid.WalkSpeed = 16	
end


function ddsc()
	attack = true
	ddsccd = true
	footsteps:Stop()
	local CSUFVOICE = Instance.new("Sound")
	CSUFVOICE.Name = "CSUF VOICE"
	CSUFVOICE.Parent = Head
	CSUFVOICE.SoundId = "rbxasset://sounds/saul2/saul_1-17.wav"
	CSUFVOICE.Volume = 3.5
	CSUFVOICE.Pitch = 1.15
	CSUFVOICE:Play()
	game:GetService("Debris"):AddItem(CSUFVOICE,5)
	ddscammount = ddscammount + 1
	local bp2 = Instance.new("BodyPosition",playor.Character.HumanoidRootPart)
	bp2.MaxForce = Vector3.new(40000,40000,40000)
	bp2.D = 1500
	bp2.Position =playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,50,-20).p
	Clash3:Play()
	Clash2:Play()
	spawn(function()
		for i = 1,8 do

			for i, v in pairs(FindNearestHead(playor.Character.HumanoidRootPart.CFrame.p, 10)) do
				if v:FindFirstChild("Head") and v:FindFirstChild("dodge") == nil  then

					spawn(function()		local fart = Instance.new("Sound")
						fart.Parent = v:FindFirstChildOfClass("Humanoid").Torso
						fart.SoundId = "http://www.roblox.com/asset/?id=4761049714"
						fart.Volume = 3



						fart:Play()
					end)
					v:FindFirstChildOfClass("Humanoid").Health = v:FindFirstChildOfClass("Humanoid").Health  - 2.5
					if OVERDRIVE == true then


						v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 2	
					end
					local blood = Instance.new("Part",script)
					blood.Anchored = true
					blood.Material = Enum.Material.SmoothPlastic
					blood.BrickColor = BrickColor.new("Deep orange")
					blood.CanCollide = false
					blood.Material = Enum.Material.Neon
					blood.Transparency = 0
					blood.Size = Vector3.new(0.7,math.random(8,12),0.7)
					local BANG3 = Instance.new("Part",game.Workspace)
					BANG3.BrickColor = BrickColor.new("Deep orange")
					BANG3.Size = Vector3.new(0.65, 0.65, 0.65)
					BANG3.Locked = false
					BANG3.Material = Enum.Material.SmoothPlastic
					BANG3.CanCollide = false
					BANG3.Anchored = true
					BANG3.Transparency =  0
					--RHe.Orientation = Vector3.new(0, -90, 0)
					BANG3.formFactor =  "Symmetric"
					local joe2 = Instance.new("SpecialMesh",BANG3)
					joe2.MeshType = Enum.MeshType.FileMesh
					joe2.MeshId = "rbxassetid://3454554153"
					joe2.TextureId = "rbxassetid://0"
					joe2.Scale = Vector3.new(1, 0, 1)
					joe2.VertexColor = Vector3.new(3,1,0.5)

					blood.CFrame =				v:WaitForChild("Torso").CFrame * CFrame.new(0,0,-2.7)*CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))


					local bp2 = Instance.new("BodyPosition",v:WaitForChild("Torso"))
					bp2.MaxForce = Vector3.new(40000,40000,40000)
					bp2.D = 1500
					bp2.Position =playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,35,-5).p
					spawn(function()
						swait(3)
						bp2:Destroy()
					end)
					local joemama123 = Instance.new("SpecialMesh",blood)
					joemama123.MeshType = Enum.MeshType.Sphere
					BANG3.CFrame = blood.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))

					spawn(function()
						for i =1,5 do
							swait()
							joe2.Scale = 		joe2.Scale + Vector3.new(0.05, 0.05, 0.05)				
							BANG3.Transparency = BANG3.Transparency + 0.2	

							blood.Size = 					blood.Size + Vector3.new(0,0.5,0)								
							blood.Transparency = blood.Transparency + 0.2
						end
						blood:Destroy()
					end)

				end
			end
			spawn(function()
				local BTAUNT100 = Instance.new("Sound", playor.Character.Torso)
				BTAUNT100.SoundId = "http://www.roblox.com/asset/?id=1548544673"
				BTAUNT100.Volume = 1
				BTAUNT100.TimePosition =  0.7
				BTAUNT100.Pitch = 1
				BTAUNT100.Looped = false

				BTAUNT100:Play()


			end)
			local BANGG4 = Instance.new("Part",game.Workspace)
			BANGG4.BrickColor = BrickColor.new("Royal purple")
			BANGG4.Size = Vector3.new(5, 5, 5)
			BANGG4.Locked = false
			BANGG4.Material = Enum.Material.Neon
			BANGG4.CanCollide = false
			BANGG4.Anchored = true
			BANGG4.Transparency = 0.5
			--RHe.Orientation = Vector3.new(0, -90, 0)
			BANGG4.formFactor =  "Symmetric"
			BANGG4.CFrame = playor.Character["Right Arm"].CFrame  * CFrame.Angles(math.random(-180,170),math.random(-180,170),math.random(-180,170))
			local joe3 = Instance.new("SpecialMesh",BANGG4)
			joe3.MeshType = Enum.MeshType.FileMesh
			joe3.MeshId = "rbxassetid://863344136"
			joe3.TextureId = "http://www.roblox.com/Asset/?id=5614579544"
			joe3.VertexColor = Vector3.new(3,1,0)
			joe3.Scale = Vector3.new(0.05,0,0.05)




			spawn(function()
				swait()
				for i = 1,10 do
					swait()
					BANGG4.Transparency = BANGG4.Transparency + 0.1	


					joe3.Scale = joe3.Scale + Vector3.new(0.01,0,0.01)

				end
				BANGG4:destroy()

			end)
			swait(4)

		end

		for i, v in pairs(FindNearestHead(playor.Character.HumanoidRootPart.CFrame.p, 18)) do
			if v:FindFirstChild("Head") and v:FindFirstChild("dodge") == nil  then
				spawn(function()
					local fart = Instance.new("Sound")
					fart.Parent = v:FindFirstChildOfClass("Humanoid").Torso
					fart.SoundId = "http://www.roblox.com/asset/?id=62339698"
					fart.Volume = 1
					fart.Pitch = 0.6


					fart:Play()
				end)
				v:FindFirstChildOfClass("Humanoid").Health = v:FindFirstChildOfClass("Humanoid").Health  - 15
				if OVERDRIVE == true then
					spawn(function()
						for i = 1,math.random(2,4) do
							local Part0 = Instance.new("Part")
							local ParticleEmitter1 = Instance.new("ParticleEmitter")
							local ParticleEmitter2 = Instance.new("ParticleEmitter")
							Part0.Name = "ORB O_OO_O__O"
							Part0.Parent = game.Workspace
							Part0.CFrame = CFrame.new(119.075157, 2.55000997, -37.0025864, 1, 0, 0, 0, 1, 0, 0, 0, 1)
							Part0.Position = Vector3.new(119.075157, 2.55000997, -37.0025864)
							Part0.Transparency = 1
							Part0.Size = Vector3.new(0.0999998227, 0.099999927, 0.0999999121)
							Part0.BottomSurface = Enum.SurfaceType.Smooth
							Part0.CanCollide = false
							Part0.Material = Enum.Material.SmoothPlastic
							Part0.TopSurface = Enum.SurfaceType.Smooth
							ParticleEmitter1.Name = "Vigor"
							ParticleEmitter1.Parent = Part0
							ParticleEmitter1.Speed = NumberRange.new(0, 0)
							ParticleEmitter1.Rotation = NumberRange.new(37, 999)
							ParticleEmitter1.Color = ColorSequence.new(Color3.new(0.117647, 0, 0.352941),Color3.new(0.117647, 0, 0.352941))
							ParticleEmitter1.Texture = "rbxassetid://48315270"
							ParticleEmitter1.Size = NumberSequence.new(0.99999964237213,0)
							ParticleEmitter1.Drag = 50
							ParticleEmitter1.EmissionDirection = Enum.NormalId.Left
							ParticleEmitter1.Lifetime = NumberRange.new(1, 1)
							ParticleEmitter1.Rate = 8000
							ParticleEmitter1.RotSpeed = NumberRange.new(400, 400)
							ParticleEmitter2.Name = "Void"
							ParticleEmitter2.Parent = Part0
							ParticleEmitter2.Speed = NumberRange.new(0, 0)
							ParticleEmitter2.Rotation = NumberRange.new(37, 999)
							ParticleEmitter2.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
							ParticleEmitter2.Texture = "rbxassetid://48315270"
							ParticleEmitter2.ZOffset = 1
							ParticleEmitter2.Size = NumberSequence.new(0.50000011920929,0)
							ParticleEmitter2.Drag = 50
							ParticleEmitter2.EmissionDirection = Enum.NormalId.Left
							ParticleEmitter2.Lifetime = NumberRange.new(1, 1)
							ParticleEmitter2.Rate = 8000
							ParticleEmitter2.RotSpeed = NumberRange.new(-400, -400)
							local b2p2 = Instance.new("BodyPosition",Part0)
							b2p2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
							b2p2.Position =v:WaitForChild("Torso").CFrame * CFrame.new(0,0,0).p

							spawn(function()
								Part0.CFrame =v:WaitForChild("Torso").CFrame * CFrame.Angles(0,math.rad(math.random(-180,180)),0)

								wait(0.1)
								b2p2.Position = Part0.CFrame * CFrame.new(0,math.random(5,20),math.random(5,20)).p



								wait(1)
								b2p2.D = 800
								for i = 1,5 do
									wait(0.1)
									b2p2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0).p

								end
								playor.Character.Humanoid.Health = playor.Character.Humanoid.Health + 2
								ParticleEmitter1.Enabled = false
								ParticleEmitter2.Enabled = false
								wait(1)
								Part0:Destroy()

							end)

						end
					end)
					v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 6	
				end
				local blood = Instance.new("Part",script)
				blood.Anchored = true
				blood.Material = Enum.Material.SmoothPlastic
				blood.BrickColor = BrickColor.new("Black")
				blood.CanCollide = false
				blood.Material = Enum.Material.Neon
				blood.Transparency = 0
				blood.Size = Vector3.new(0.7,math.random(8,12),0.7)
				local BANG3 = Instance.new("Part",game.Workspace)
				BANG3.BrickColor = BrickColor.new("Deep orange")
				BANG3.Size = Vector3.new(0.65, 0.65, 0.65)
				BANG3.Locked = false
				BANG3.Material = Enum.Material.SmoothPlastic
				BANG3.CanCollide = false
				BANG3.Anchored = true
				BANG3.Transparency =  0
				--RHe.Orientation = Vector3.new(0, -90, 0)
				BANG3.formFactor =  "Symmetric"
				local joe2 = Instance.new("SpecialMesh",BANG3)
				joe2.MeshType = Enum.MeshType.FileMesh
				joe2.MeshId = "rbxassetid://3454554153"
				joe2.TextureId = "rbxassetid://0"
				joe2.Scale = Vector3.new(1, 0, 1)
				joe2.VertexColor = Vector3.new(3,1,0.5)

				blood.CFrame =				v:WaitForChild("Torso").CFrame * CFrame.new(0,0,-2.7)*CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
				local bp2 = Instance.new("BodyPosition",v:WaitForChild("Torso"))
				bp2.MaxForce = Vector3.new(40000,40000,40000)
				bp2.D = 750
				bp2.Position =playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,15,-5).p
				spawn(function()
					swait(1)
					bp2:Destroy()
				end)
				local joemama123 = Instance.new("SpecialMesh",blood)
				joemama123.MeshType = Enum.MeshType.Sphere
				BANG3.CFrame = blood.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))

				spawn(function()
					for i =1,5 do
						swait()
						joe2.Scale = 		joe2.Scale + Vector3.new(0.05, 0.05, 0.05)				
						BANG3.Transparency = BANG3.Transparency + 0.2	

						blood.Size = 					blood.Size + Vector3.new(0,0.5,0)								
						blood.Transparency = blood.Transparency + 0.2
					end
					blood:Destroy()
				end)

			end
		end
	end)	
	spawn(function()
		for i = 1,30 do
			swait(1)
			local partsaver = math.random(1,2)
			if partsaver == 1 then
				local Part0 = Instance.new("Part")

				Part0.Parent = script
				Part0.CFrame = CFrame.new(-28.2444439, 12.9582043, 34.5625916, 1, 0, 0, 0, 1, 0, 0, 0, 1)
				Part0.Position = Vector3.new(-28.2444439, 12.9582043, 34.5625916)
				Part0.Color = Color3.new(0.411765, 0.25098, 0.156863)
				Part0.Size = Vector3.new(5, 5, 5)
				Part0.Anchored = true
				Part0.BottomSurface = Enum.SurfaceType.Smooth
				local partcolor = math.random(1,3)
				if partcolor == 1 then
					Part0.BrickColor = BrickColor.new("Neon orange")

				elseif partcolor == 2 then

					Part0.BrickColor = BrickColor.new("Reddish brown")
				elseif partcolor == 3 then

					Part0.BrickColor = BrickColor.new("CGA brown")

				end
				Part0.CanCollide = false
				Part0.Material = Enum.Material.Neon
				Part0.TopSurface = Enum.SurfaceType.Smooth
				Part0.CFrame = playor.Character["Right Arm"].CFrame * CFrame.new(0,0,4) * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
				spawn(function()
					for i = 1,20 do
						swait()
						Part0.CFrame = Part0.CFrame * CFrame.Angles(math.rad(5),math.rad(5),math.rad(5))
						Part0.Transparency = Part0.Transparency + 0.05
						Part0.Size = Part0.Size - Vector3.new(0.03,0.03,0.03)
					end
				end)	
			else
				local Part0 = Instance.new("Part")	

				Part0.Parent = script
				Part0.CFrame = CFrame.new(-28.2444439, 12.9582043, 34.5625916, 1, 0, 0, 0, 1, 0, 0, 0, 1)
				Part0.Position = Vector3.new(-28.2444439, 12.9582043, 34.5625916)
				Part0.Color = Color3.new(0.411765, 0.25098, 0.156863)
				Part0.Size = Vector3.new(5, 5, 5)
				Part0.Anchored = true
				Part0.BottomSurface = Enum.SurfaceType.Smooth
				local partcolor = math.random(1,3)
				if partcolor == 1 then
					Part0.BrickColor = BrickColor.new("Neon orange")

				elseif partcolor == 2 then

					Part0.BrickColor = BrickColor.new("Reddish brown")
				elseif partcolor == 3 then

					Part0.BrickColor = BrickColor.new("CGA brown")

				end
				Part0.CanCollide = false
				Part0.Material = Enum.Material.Neon
				Part0.TopSurface = Enum.SurfaceType.Smooth
				Part0.CFrame = playor.Character["Right Arm"].CFrame * CFrame.new(0,0,4) * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
				spawn(function()
					for i = 1,20 do
						swait()
						Part0.CFrame = Part0.CFrame * CFrame.Angles(math.rad(5),math.rad(5),math.rad(5))
						Part0.Transparency = Part0.Transparency + 0.05
						Part0.Size = Part0.Size - Vector3.new(0.03,0.03,0.03)
					end
				end)	
			end

		end
	end)

	for i = 0,0.4,0.05 do
		swait()
		ls.C0=ls.C0:Lerp(cf(-1, 0.5, 0, -0.122167721, 0.626544774, -0.769751072, 0.40150249, 0.740466297, 0.53898555, 0.907673299, -0.243210331, -0.342020363),i)  

		rs.C0=rs.C0:Lerp(cf(1.38713503, 0.995709062, -0.624351978, -0.958271503, -0.236480325, 0.160601392, 0.27495423, -0.916197538, 0.291517019, 0.0782045275, 0.323510468, 0.942987263),i) 

		lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0, 0, -1, 0.642787755, 0.766044319, 0, 0.766044319, -0.642787755, 0),i) 

		rh.C0=rh.C0:Lerp(cf(1, -0.774321556, -0.742623448, 0, 0, 1, -0.500000179, 0.866025329, 0, -0.866025329, -0.500000179, 0),i) 

		rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.101823315, 0.982961893, 0.153029114, -0.0885212049, -0.162171215, 0.982784033, 0.990856171, 0.0865240097, 0.10352578),i)  

		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.321393818, -0.945729494, 0.0479755253, -0.342020124, 0.163176119, 0.925416529, -0.883022189, 0.281014562, -0.375902325),i) 

	end


	for i = 0,0.8,0.05 do
		swait()



		ls.C0=ls.C0:Lerp(cf(-1, 0.5, 0, 0.207472175, 0.603687525, -0.769751072, 0.717944622, 0.440511286, 0.53898555, 0.664462864, -0.664463103, -0.342020363),i) 

		rs.C0=rs.C0:Lerp(cf(1.8184104, 0.856781065, -0.327636689, -0.855974019, -0.209802642, -0.4725371, 0.268100768, -0.961600482, -0.0587062016, -0.442075193, -0.176938564, 0.879353225),i)  

		lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0, 0, -1, 0.258818984, 0.965925813, 0, 0.965925813, -0.258818984, 0),i) 


		rj.C0=rj.C0:Lerp(cf(0, 0, 0, 0.480395019, 0.863598704, 0.153029114, -0.165529922, -0.0820692033, 0.982784033, 0.861290038, -0.497455448, 0.10352578),i) 

		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.751199961, -0.57637316, 0.321702361, -0.21461004, 0.674160242, 0.706718028, -0.624212325, 0.461845994, -0.630124688),i) 





	end







	for i = 0,0.8,0.2 do
		swait()
		ls.C0=ls.C0:Lerp(cf(-1, 0.5, 0, -0.0115133673, 0.937607884, -0.347503781, 0.523983359, 0.301648229, 0.796523571, 0.851650715, -0.172915533, -0.494763911),i) 

		rs.C0=rs.C0:Lerp(cf(1.73658192, 0.858771026, -0.423426867, -0.944375157, -0.313762248, -0.0985329449, 0.273933589, -0.916271985, 0.292242765, -0.181977779, 0.248995289, 0.951254547),i)

		lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0, 0, -1, 0.258818984, 0.965925813, 0, 0.965925813, -0.258818984, 0),i)
		rh.C0=rh.C0:Lerp(cf(1, -0.774321556, -0.742623448, -0.0368336104, 0.078989923, 0.99619472, -0.0856447965, 0.992954016, -0.0818996131, -0.995644689, -0.0883355513, -0.029809),i) 

		rj.C0=rj.C0:Lerp(cf(0, 0, 0, 0.958507597, -0.240509987, 0.153029114, -0.122115061, 0.13864851, 0.982784033, -0.257586598, -0.9606933, 0.10352578),i) 

		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.751199961, -0.660004973, -0.00958415866, -0.21461004, 0.23048088, 0.949115872, -0.624212325, 0.715032697, -0.31478101),i) 
	end

	for i = 0,0.8,0.2 do
		swait()



		ls.C0=ls.C0:Lerp(cf(-1, 0.5, 0, -0.0115133673, 0.937607884, -0.347503781, 0.523983359, 0.301648229, 0.796523571, 0.851650715, -0.172915533, -0.494763911),.1) 

		rs.C0=rs.C0:Lerp(cf(1.73658192, 0.858771026, -0.423426867, -0.944375157, -0.313762248, -0.0985329449, 0.273933589, -0.916271985, 0.292242765, -0.181977779, 0.248995289, 0.951254547),.1) 

		lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0, 0, -1, 0.258818984, 0.965925813, 0, 0.965925813, -0.258818984, 0),.1) 

		rh.C0=rh.C0:Lerp(cf(1, -0.774321556, -0.742623448, -0.0368336104, 0.078989923, 0.99619472, -0.0856447965, 0.992954016, -0.0818996131, -0.995644689, -0.0883355513, -0.029809),.1) 

		rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.970346808, -0.187106773, 0.153029114, 0.169269234, -0.0740501732, 0.982784033, -0.172553793, 0.97954458, 0.10352578),.1) 

		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.751199961, -0.660004973, -0.00958415866, -0.21461004, 0.23048088, 0.949115872, -0.624212325, 0.715032697, -0.31478101),.1) 




	end


	for i = 0,0.8,0.2 do
		swait()




		ls.C0=ls.C0:Lerp(cf(-1, 0.5, 0, -0.0115133673, 0.937607884, -0.347503781, 0.523983359, 0.301648229, 0.796523571, 0.851650715, -0.172915533, -0.494763911),.1) 

		rs.C0=rs.C0:Lerp(cf(1.73658192, 0.858771026, -0.423426867, -0.944375157, -0.313762248, -0.0985329449, 0.273933589, -0.916271985, 0.292242765, -0.181977779, 0.248995289, 0.951254547),.1) 

		lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0, 0, -1, 0.258818984, 0.965925813, 0, 0.965925813, -0.258818984, 0),.1) 

		rh.C0=rh.C0:Lerp(cf(1, -0.774321556, -0.742623448, -0.0368336104, 0.078989923, 0.99619472, -0.0856447965, 0.992954016, -0.0818996131, -0.995644689, -0.0883355513, -0.029809),.1) 

		rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.352763176, 0.923114359, 0.153029114, -0.0435318835, -0.179556325, 0.982784033, 0.934699476, 0.340028465, 0.10352578),.1) 

		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.751199961, -0.660004973, -0.00958415866, -0.21461004, 0.23048088, 0.949115872, -0.624212325, 0.715032697, -0.31478101),.1) 



	end

	for i = 0,0.8,0.2 do
		swait()

		ls.C0=ls.C0:Lerp(cf(-1, 0.5, 0, 0.207472175, 0.603687525, -0.769751072, 0.717944622, 0.440511286, 0.53898555, 0.664462864, -0.664463103, -0.342020363),i) 

		rs.C0=rs.C0:Lerp(cf(1.8184104, 0.856781065, -0.327636689, -0.855974019, -0.209802642, -0.4725371, 0.268100768, -0.961600482, -0.0587062016, -0.442075193, -0.176938564, 0.879353225),i)  

		lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0, 0, -1, 0.258818984, 0.965925813, 0, 0.965925813, -0.258818984, 0),i) 

		rh.C0=rh.C0:Lerp(cf(1, -0.774321556, -0.742623448, 0, 0, 1, 0.342019945, 0.939692736, 0, -0.939692736, 0.342019945, 0),i)  

		rj.C0=rj.C0:Lerp(cf(0, 0, 0, 0.480395019, 0.863598704, 0.153029114, -0.165529922, -0.0820692033, 0.982784033, 0.861290038, -0.497455448, 0.10352578),i) 

		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.751199961, -0.57637316, 0.321702361, -0.21461004, 0.674160242, 0.706718028, -0.624212325, 0.461845994, -0.630124688),i) 


	end

	wait(0.1)
	attack = false
	wait(0.2)
	bp2:Destroy()
	spawn(function()
		if ddscammount < 4 then
			swait(12)
			ddsccd = false
			local jma = ddscammount
			swait(75)
			if ddscammount == jma then
				ddscammount = 0
			end 
		else
			swait(350)
			ddsccd = false
			ddscammount = 0
		end
	end)


end

function wadq()
	if wadqsummoned == false then
		wadqsummoned = true
		local CSUFVOICE = Instance.new("Sound")
		CSUFVOICE.Name = "CSUF VOICE"
		CSUFVOICE.Parent = Head
		CSUFVOICE.SoundId = "rbxasset://sounds/saul2/saul_1-22.wav"
		CSUFVOICE.Volume = 3.5
		CSUFVOICE.Pitch = 1.15
		CSUFVOICE:Play()
		game:GetService("Debris"):AddItem(CSUFVOICE,5)

		local Model1 = Instance.new("Model")
		local Part1 = Instance.new("Part")
		local SpecialMesh2 = Instance.new("SpecialMesh")
		local Weld3 = Instance.new("Weld")
		local Part4 = Instance.new("Part")
		local SpecialMesh5 = Instance.new("SpecialMesh")



		Model1.Parent = game.Workspace
		Model1.PrimaryPart = Part1
		Part1.Parent = Model1
		Part1.CFrame = CFrame.new(10.5660248, 0.749998927, 40.7548637, 1, 0, 0, 0, 0.999998391, 7.4505806e-09, 0, -7.4505806e-09, 0.999998391)
		Part1.Position = Vector3.new(10.5660248, 0.749998927, 40.7548637)
		Part1.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
		Part1.Size = Vector3.new(1.5, 1.5, 3.5)
		Part1.BottomSurface = Enum.SurfaceType.Smooth
		Part1.BrickColor = BrickColor.new("Really black")
		Part1.Material = Enum.Material.Neon
		Part1.TopSurface = Enum.SurfaceType.Smooth
		Part1.brickColor = BrickColor.new("Really black")
		SpecialMesh2.Name = "JawMesh"
		SpecialMesh2.Parent = Part1
		SpecialMesh2.MeshId = "http://www.roblox.com/asset/?id=51177741"
		SpecialMesh2.Scale = Vector3.new(1, 1.5, 1.08224845)
		SpecialMesh2.VertexColor = Vector3.new(0.75, 0.25, 2)
		SpecialMesh2.MeshType = Enum.MeshType.FileMesh
		Weld3.Name = "Smooth Block Model"
		Weld3.Parent = Part1
		Weld3.C1 = CFrame.new(-0.161857605, -1.57067347, -1.05737686, 1, 0, 0, 0, 0.993436873, 0.114377275, 0, -0.114377275, 0.993436873)
		Weld3.Part0 = Part1
		Weld3.Part1 = Part4
		Weld3.part1 = Part4
		Part4.Name = "Smooth Block Model"
		Part4.Parent = Model1
		Part4.CFrame = CFrame.new(10.7278824, 2.18942308, 41.984951, 1, 0, 0, 0, 0.993436277, -0.114377193, 0, 0.114377193, 0.993436277)
		Part4.Orientation = Vector3.new(6.57000017, 0, 0)
		Part4.Position = Vector3.new(10.7278824, 2.18942308, 41.984951)
		Part4.Rotation = Vector3.new(6.57000017, 0, 0)
		Part4.Color = Color3.new(0.960784, 0.803922, 0.188235)
		Part4.Size = Vector3.new(2, 1.41236544, 1)
		Part4.Anchored = false
		Part4.BackSurface = Enum.SurfaceType.Weld
		Part4.BrickColor = BrickColor.new("Bright yellow")
		Part4.TopSurface = Enum.SurfaceType.Smooth
		Part4.brickColor = BrickColor.new("Bright yellow")
		SpecialMesh5.Parent = Part4
		SpecialMesh5.MeshId = "http://www.roblox.com/asset/?id=1028713"
		SpecialMesh5.Scale = Vector3.new(1, 1.7654568, 1)
		SpecialMesh5.TextureId = "http://www.roblox.com/asset/?id=1028714"
		SpecialMesh5.MeshType = Enum.MeshType.FileMesh
		Part1.Anchored = true
		local cdir=Vector3.new(playor.Character.HumanoidRootPart.CFrame.lookVector.x,0,playor.Character.HumanoidRootPart.CFrame.lookVector.z)
		Part1.CFrame=CFrame.new(playor.Character.HumanoidRootPart.CFrame.p+cdir*4-Vector3.new(0,2,0),playor.Character.HumanoidRootPart.CFrame.p-Vector3.new(0,2,0)+cdir*40)
		spawn(function()
			local HELO = Instance.new("Sound")
			HELO.Parent = Part1
			HELO.SoundId = "http://www.roblox.com/asset/?id=4833964587"
			HELO.Volume = 7
			HELO:Play()
		end)
		for i = 1,2 do
			local Part0 = Instance.new("Part")

			Part0.Parent = script
			Part0.CFrame = CFrame.new(-28.2444439, 12.9582043, 34.5625916, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			Part0.Position = Vector3.new(-28.2444439, 12.9582043, 34.5625916)
			Part0.Color = Color3.new(0.411765, 0.25098, 0.156863)
			Part0.Size = Vector3.new(5,5,5)
			Part0.Anchored = true
			Part0.BottomSurface = Enum.SurfaceType.Smooth

			Part0.BrickColor = BrickColor.new("Really black")

			Part0.CanCollide = false

			Part0.TopSurface = Enum.SurfaceType.Smooth
			Part0.CFrame =  Part1.CFrame * CFrame.new(0,0,1) * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
			spawn(function()
				for i = 1,10 do
					swait()
					Part0.CFrame = Part0.CFrame * CFrame.Angles(math.rad(15),math.rad(15),math.rad(15))
					Part0.Transparency = Part0.Transparency + 0.1
				end
			end)	
		end

		spawn(function()
			repeat
				if adqlaunched == true then
					adqlaunched = false
					local dir=Vector3.new(playor.Character.HumanoidRootPart.CFrame.lookVector.x,0,playor.Character.HumanoidRootPart.CFrame.lookVector.z)
					Part1.CFrame=CFrame.new(Part1.Position,Part1.Position+dir*50)
				end


				spawn(function()
					if wadqattack == false then
						wait(0.1)
						local Part0 = Instance.new("Part")

						Part0.Parent = script
						Part0.CFrame = CFrame.new(-28.2444439, 12.9582043, 34.5625916, 1, 0, 0, 0, 1, 0, 0, 0, 1)
						Part0.Position = Vector3.new(-28.2444439, 12.9582043, 34.5625916)
						Part0.Color = Color3.new(0.411765, 0.25098, 0.156863)
						Part0.Size = Vector3.new(2,2,2)
						Part0.Anchored = true
						Part0.BottomSurface = Enum.SurfaceType.Smooth

						Part0.BrickColor = BrickColor.new("Really black")

						Part0.CanCollide = false

						Part0.TopSurface = Enum.SurfaceType.Smooth
						Part0.CFrame =  Part1.CFrame * CFrame.new(0,0,1) * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
						spawn(function()
							for i = 1,20 do
								swait()
								Part0.CFrame = Part0.CFrame * CFrame.Angles(math.rad(5),math.rad(5),math.rad(5))
								Part0.Transparency = Part0.Transparency + 0.05
								Part0.Size = Part0.Size - Vector3.new(0.1,0.1,0.1)
							end
						end)	
					end	
				end)
				swait(1)
				Part1.CFrame = Part1.CFrame  * CFrame.new(0,0,-1)




				if swqlaunched == true and swqcooldown == false then
					swqlaunched = false
					swqcooldown = true
					wadqattack = true
					local CSUFVOICE = Instance.new("Sound")
					CSUFVOICE.Name = "CSUF VOICE"
					CSUFVOICE.Parent = Head
					CSUFVOICE.SoundId = "rbxasset://sounds/enmau1.wav"
					CSUFVOICE.Volume = 3.5
					CSUFVOICE.Pitch = 1.05
					CSUFVOICE:Play()
					spawn(function()
						swait(1000)

						swqcooldown = false



					end)


					function FindNearestHead(Position, Distance, SinglePlayer)
						if SinglePlayer then
							return Distance > (SinglePlayer.Torso.CFrame.p - Position).magnitude
						end
						local List = {}
						for i, v in pairs(workspace:GetChildren()) do
							if v:IsA("Model") and v:findFirstChild("Head") and v ~= playor.Character and Distance >= (v.Head.Position - Position).magnitude then
								table.insert(List, v)
							end
						end
						return List
					end


					local Part0 = Instance.new("Part")
					local Decal1 = Instance.new("Decal")
					local Decal2 = Instance.new("Decal")
					local Decal3 = Instance.new("Decal")
					local Decal4 = Instance.new("Decal")
					local Decal5 = Instance.new("Decal")
					local Decal6 = Instance.new("Decal")
					Part0.Parent = playor.Character
					Part0.CFrame = CFrame.new(-8.71780396, 10.0637398, 80.1042786, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					Part0.Position = Vector3.new(-8.71780396, 10.0637398, 80.1042786)
					Part0.Size = Vector3.new(5, 5, 5)
					Part0.Anchored = true
					Part0.BottomSurface = Enum.SurfaceType.Smooth
					Part0.CanCollide = false
					Part0.TopSurface = Enum.SurfaceType.Smooth
					Decal1.Name = "among us drip"
					Decal1.Parent = Part0
					Decal1.Texture = "http://www.roblox.com/asset/?id=6213272962"
					Decal1.Face = Enum.NormalId.Right
					Decal2.Name = "among us drip"
					Decal2.Parent = Part0
					Decal2.Texture = "http://www.roblox.com/asset/?id=6213272962"
					Decal2.Face = Enum.NormalId.Bottom
					Decal3.Name = "among us drip"
					Decal3.Parent = Part0
					Decal3.Texture = "http://www.roblox.com/asset/?id=6213272962"
					Decal3.Face = Enum.NormalId.Back
					Decal4.Name = "among us drip"
					Decal4.Parent = Part0
					Decal4.Texture = "http://www.roblox.com/asset/?id=6213272962"
					Decal4.Face = Enum.NormalId.Left
					Decal5.Name = "among us drip"
					Decal5.Parent = Part0
					Decal5.Texture = "http://www.roblox.com/asset/?id=6213272962"
					Decal5.Face = Enum.NormalId.Top
					Decal6.Name = "among us drip"
					Decal6.Parent = Part0
					Decal6.Texture = "http://www.roblox.com/asset/?id=6213272962"
					Part0.CFrame= Part1.CFrame* CFrame.new(0,5.5,0)
					local sine = 0


					spawn(function()
						local minus = -180
						local minu2 = -90
						local minus333 = -0.25

						Model1:Destroy()
						for i =1,8 do

							swait()
							local spark2 = Instance.new("Part",script)
							spark2.Anchored = true
							spark2.CanCollide =  false
							spark2.Shape = "Ball"
							spark2.Size = Vector3.new(12,12,12)
							spark2.BrickColor = BrickColor.new("Really black")
							spark2.Material = Enum.Material.Neon
							spark2.CFrame = Part0.CFrame * CFrame.new(math.random(minus333,0.25),math.random(minus333,0.25),-2*math.random(minus333,0.25))
							spark2.Orientation = Vector3.new(math.random(minu2,90),math.random(minus,180),0)


							spawn(function()
								for i =1,40 do
									swait()

									spark2.Size = spark2.Size - Vector3.new(0.25,0.25,0.25)
									spark2.Transparency = spark2.Transparency + 0.05
									spark2.CFrame = spark2.CFrame * CFrame.new(0.15,0.15,0.15)
									spark2.Orientation = spark2.Orientation + Vector3.new(0,3,3)
									spark2.Orientation = spark2.Orientation + Vector3.new(5,0,0)						
								end
								spark2:destroy()
							end)
						end
						wadqsummoned = false
						wadqattack = false

						local swoosh = Instance.new("Sound",Part0)
						swoosh.SoundId = "rbxassetid://4575188877"
						swoosh.Volume = 4
						swoosh.Looped = false

						spawn(function()

							local RUHROPH = Instance.new("Sound",Part0)
							RUHROPH.SoundId = "rbxassetid://5700753924"
							RUHROPH.Volume = 10
							RUHROPH.Looped = false
							RUHROPH:Play()
						end)
						for i = 1,5 do
							swait(25)

							swoosh:Play()
							IT = Instance.new	
							local blood = Instance.new("Part",script)
							blood.Anchored = true
							blood.Material = Enum.Material.Neon
							blood.BrickColor = BrickColor.new("Really black")
							blood.CanCollide = false
							blood.Shape = "Ball"		
							blood.Transparency = 0.3
							blood.Size = Vector3.new(8,8,8)
							blood.CFrame = Part0.CFrame
							local minus = -180				
							BANG3 = IT("Part",blood)
							BANG3.BrickColor = BrickColor.new("Really black")
							BANG3.Size = Vector3.new(0.65, 0.65, 0.65)
							BANG3.Locked = false
							BANG3.Material = Enum.Material.Neon
							BANG3.CanCollide = false
							BANG3.Anchored = true
							BANG3.Transparency =  0.3
							--RHe.Orientation = Vector3.new(0, -90, 0)
							BANG3.formFactor =  "Symmetric"
							BANG3.CFrame = blood.CFrame * CFrame.Angles(math.random(minus,180),math.random(minus,180),math.random(minus,180))
							local joe2 = Instance.new("SpecialMesh",BANG3)
							joe2.MeshType = Enum.MeshType.FileMesh
							joe2.MeshId = "rbxassetid://3454554153"
							joe2.Scale = Vector3.new(3,3,3)
							spawn(function()
								for i = 1,20 do
									swait()
									for i, v in pairs(FindNearestHead(Part0.CFrame.p, 25)) do
										if v:FindFirstChild("Head")then
											if OVERDRIVE == true then
												v:FindFirstChildOfClass("Humanoid").Health = 		v:FindFirstChildOfClass("Humanoid").Health - 0.5
											end
											v:FindFirstChildOfClass("Humanoid").Health = 		v:FindFirstChildOfClass("Humanoid").Health - 0.2 

											local spark2 = Instance.new("Part",script)

											spark2.CanCollide =  false

											spark2.Size = Vector3.new(1.5,1.5,1.5)
											local partcolor = math.random(1,3)
											if partcolor == 1 then
												spark2.BrickColor = BrickColor.new("Really black")

											elseif partcolor == 2 then

												spark2.BrickColor = BrickColor.new("Royal purple")
											elseif partcolor == 3 then

												spark2.BrickColor = BrickColor.new("Dark indigo")

											end			spark2.Material = Enum.Material.Neon
											spark2.CFrame = v:WaitForChild("Torso").CFrame
											minus10101 = -15	
											local b2p2 = Instance.new("BodyPosition",spark2)
											b2p2.MaxForce = Vector3.new(40000,40000,40000)
											b2p2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(math.random(minus10101,5),math.random(minus10101,15),math.random(minus10101,15)).p
											b2p2.D = 600

											spawn(function()


												b2p2.Position = playor.Character.HumanoidRootPart.CFrame.p
												wait(0.15)

												b2p2.Position = playor.Character.HumanoidRootPart.CFrame.p
												if OVERDRIVE == true then
													v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health + 1	
												end
												playor.Character.Humanoid.Health = playor.Character.Humanoid.Health + 0.5
												spawn(function()
													for i = 1,20 do
														swait()
														spark2.Transparency = spark2.Transparency + 0.05
													end
													spark2:destroy()
												end)

											end)

										end
									end
									joe2.Scale = 		joe2.Scale + Vector3.new(0.1, 0.1, 0.1)				
									BANG3.Transparency = BANG3.Transparency + 0.05		
								end
								BANG3:destroy()
							end)

							BANG4 = IT("Part",blood)
							BANG4.BrickColor = BrickColor.new("Really black")
							BANG4.Size = Vector3.new(0.65, 0.65, 0.65)
							BANG4.Locked = false
							BANG4.Material = Enum.Material.Neon
							BANG4.CanCollide = false
							BANG4.Anchored = true
							BANG4.Transparency =  0.3
							--RHe.Orientation = Vector3.new(0, -90, 0)
							BANG4.formFactor =  "Symmetric"
							BANG4.CFrame = blood.CFrame * CFrame.Angles(math.random(minus,180),math.random(minus,180),math.random(minus,180))
							local joe3 = Instance.new("SpecialMesh",BANG4)
							joe3.MeshType = Enum.MeshType.FileMesh
							joe3.MeshId = "rbxassetid://3454554153"
							joe3.Scale = Vector3.new(3,3,3)
							spawn(function()
								for i = 1,20 do
									swait()
									joe3.Scale = 		joe3.Scale + Vector3.new(0.1, 0.1, 0.1)				
									BANG4.Transparency = BANG4.Transparency + 0.05		
								end
								BANG4:destroy()
							end)
							spawn(function()
								for i =1,20 do
									swait()

									blood.Size = 					blood.Size + Vector3.new(1,1,1)								
									blood.Transparency = blood.Transparency + 0.05
								end
								blood:Destroy()
							end)

							for i = 1,5 do
								swait()
								Part0.Size = Part0.Size + Vector3.new(0.6,0.6,0.6) 
							end
							for i = 1,20 do
								swait()
								Part0.Size = Part0.Size - Vector3.new(0.1,0.1,0.1) 
							end

						end
						for i = 1,30 do
							swait()

							Part0.Size = Part0.Size - Vector3.new(0.1,0.1,0.1) 
						end
						for i = 1,5 do
							swait()
							Part0.Size = Part0.Size + Vector3.new(3,3,3)
							Decal1.Transparency = Decal1.Transparency + 0.2
							Decal3.Transparency = Decal3.Transparency + 0.2
							Decal2.Transparency = Decal2.Transparency + 0.2
							Decal4.Transparency = Decal4.Transparency + 0.2
							Decal5.Transparency = Decal5.Transparency + 0.2
							Decal6.Transparency = Decal6.Transparency + 0.2

							Part0.Transparency = Part0.Transparency + 0.2
						end
					end)

					while true do
						swait()

						sine = sine+ 0.01
						Part0.CFrame = Part0.CFrame * CFrame.new(0,0+.05*math.sin(sine/0.5),0) * CFrame.Angles(math.rad(1),math.rad(1),math.rad(1))
					end
				end
				if wwqlaunched == true and wwqcooldown == false then
					wwqlaunched = false
					wadqattack = true
					wwqcooldown = true


					spawn(function()
						swait(25)

						wwqcooldown = false
						wadqattack = false



					end)


					--game:GetService("Chat"):Chat(CPlayer,"YOIYOIYOIYIOY",2)

					for effect=1, 3 do
						local 	p=Instance.new("Part")
						p.TopSurface=0
						p.BottomSurface=0
						p.CanCollide=false
						p.Anchored=true
						p.BrickColor=BrickColor.new("Really black")
						p.formFactor="Symmetric"
						p.Size=Vector3.new(1,1,1)
						p.CFrame=Part1.CFrame
						p.Parent=CPlayer.Torso
						local m=Instance.new("BlockMesh")
						m.Parent=p
						m.Scale=Vector3.new(4,4,4)
						spawn(function()for i=1, 20 do p.Transparency=i/20 p.Mesh.Scale=p.Mesh.Scale+Vector3.new(.4,.4,.4)/2 p.CFrame=p.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20)+Part1.CFrame.lookVector*.25 swait() end p.Parent=nil end)
						swait()
					end

					Part1.Parent = nil
					local lol=Part1:clone()
					lol.Name="SEE?"
					lol.JawMesh.Scale=Vector3.new(16,16,16)
					lol.Parent=workspace
					lol.Transparency = -1.25
					lol.JawMesh.MeshId = "rbxassetid://5890611020"
					lol.JawMesh.TextureId = "rbxassetid://5890700260"
					lol.JawMesh.VertexColor = Vector3.new(0.3,0.3,0.3)
					local last=Part1.CFrame* CFrame.new(0,0,5) *  CFrame.fromEulerAnglesXYZ(0,math.pi,-math.pi/2)-Vector3.new(0,2,0)-Part1.CFrame.lookVector*5
					last=last*CFrame.new(0,-math.pi/5,0)
					--s=Tool.Handle.Screech:clone()

					--s=Tool.Handle.Ominent:clone()
					spawn(function()
						local s=Instance.new("Sound")
						s.SoundId="http://www.roblox.com/asset/?id=1825844398"
						s.Volume=2
						s.Pitch=0.7
						s.Parent=lol
						s:Play()
						local s=Instance.new("Sound")
						s.SoundId="http://www.roblox.com/asset/?id=69935389"
						s.Volume=4
						s.Pitch=1.2
						s.Parent=lol
						s:Play()
						local s=Instance.new("Sound")
						s.SoundId="http://www.roblox.com/asset/?id=51322486"
						s.Volume=1
						s.Pitch=.7
						s.Parent=lol
						s:Play()
						--s=Tool.Handle.Ominent:clone()
						local s=Instance.new("Sound")
						s.SoundId="http://www.roblox.com/asset/?id=28257433"
						s.Volume=1
						s.Pitch=.7
						s.Parent=lol
						s:Play()
					end)
					spawn(function()
						local joemamam = Instance.new("Part",game.Workspace)
						joemamam.Shape = "Cylinder"
						joemamam.BrickColor = BrickColor.new("Really black")
						joemamam.Anchored = true
						joemamam.CanCollide = false
						joemamam.Size = Vector3.new(0.1, 6, 6)

						joemamam.CFrame = Part1.CFrame * CFrame.new(0,-0.25,0)* CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(0))
						joemamam.CFrame = joemamam.CFrame * CFrame.new(0,-0.3,0)
						local lol = Instance.new("SpecialMesh",joemamam)
						lol.MeshType = Enum.MeshType.FileMesh
						lol.MeshId = "http://www.roblox.com/asset/?id=16659363"
						lol.Scale = Vector3.new(2,1,2)
						spawn(function()
							for i = 1,20 do
								swait()
								lol.Scale = 			lol.Scale + Vector3.new(1,-0.4,1)								
								joemamam.Transparency = joemamam.Transparency + 0.05
								joemamam.CFrame = joemamam.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(5),0)
							end
							joemamam:Destroy()

						end)

					end)


					spawn(function()
						local joemamam = Instance.new("Part",game.Workspace)
						joemamam.Shape = "Cylinder"
						joemamam.BrickColor = BrickColor.new("Really black")
						joemamam.Anchored = true
						joemamam.CanCollide = false
						joemamam.Size = Vector3.new(0.1, 6, 6)

						joemamam.CFrame = Part1.CFrame * CFrame.new(0,-0.25,0)* CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(0))
						joemamam.CFrame = joemamam.CFrame * CFrame.new(0,-0.3,0)
						local lol = Instance.new("SpecialMesh",joemamam)
						lol.MeshType = Enum.MeshType.FileMesh
						lol.MeshId = "http://www.roblox.com/asset/?id=16659363"
						lol.Scale = Vector3.new(2,1,2)
						spawn(function()
							for i = 1,20 do
								swait()
								lol.Scale = 			lol.Scale + Vector3.new(2,0,2)								
								joemamam.Transparency = joemamam.Transparency + 0.05
								joemamam.CFrame = joemamam.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(-5),0)
							end
							joemamam:Destroy()

						end)
					end)
					local Part0 = Instance.new("Part")
					local SpecialMesh1 = Instance.new("SpecialMesh")
					Part0.Parent = game.Workspace
					Part0.CFrame = CFrame.new(-101.290001, 7.30272579, -197.509995, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					Part0.Position = Vector3.new(-101.290001, 7.30272579, -197.509995)
					Part0.Size = Vector3.new(4.71152735, 0.641620576, 2.52291441)
					Part0.BottomSurface = Enum.SurfaceType.Smooth
					Part0.TopSurface = Enum.SurfaceType.Smooth
					SpecialMesh1.Parent = Part0
					SpecialMesh1.MeshId = "rbxassetid://5922652183"
					SpecialMesh1.Scale = Vector3.new(1.17788184, 0.641620576, 1.2614572)
					SpecialMesh1.VertexColor = Vector3.new(1, 0, 10)
					SpecialMesh1.TextureId = "rbxassetid://0"
					SpecialMesh1.MeshType = Enum.MeshType.FileMesh
					Part0.Anchored = true
					Part0.CanCollide = false
					Part0.CFrame =  Part1.CFrame * CFrame.new(0,-0.25,0)* CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(0))

					spawn(function()
						for i = 1,20 do
							swait()
							SpecialMesh1.Scale = 			SpecialMesh1.Scale + Vector3.new(0.1,0,0.1)								
							Part0.Transparency = Part0.Transparency + 0.05
							Part0.CFrame = Part0.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(5),0)
						end
						Part0:Destroy()

					end)
					for i=1, 16 do
						local 	p=Instance.new("Part")
						p.TopSurface=0
						p.BottomSurface=0
						p.CanCollide=false
						p.Anchored=true
						p.BrickColor=BrickColor.new("Really black")
						p.formFactor="Symmetric"
						p.Size=Vector3.new(1,1,1)
						p.CFrame=last
						p.Parent=CPlayer.Torso
						--local m=Tool.ClawMesh:clone()
						m=Instance.new("SpecialMesh")
						m.MeshId="http://www.roblox.com/asset/?id=10681506"
						m.TextureId="http://www.roblox.com/asset/?id=10681501"
						m.Scale=Vector3.new(12,16,8)
						m.VertexColor=Vector3.new(0,0,0)
						m.Parent=p
						spawn(function()for i=1, 30 do p.Transparency=i/30 swait(1) end p.Parent=nil end)
						last=last*CFrame.new(0,0,3)*CFrame.fromEulerAnglesXYZ(0,-math.pi/(13+i),0)
						lol.CFrame=last*CFrame.fromEulerAnglesXYZ(0,math.pi,math.pi/2)
						lol.Transparency=i/24
						local 	p=Instance.new("Part")
						p.TopSurface=0
						p.BottomSurface=0
						p.CanCollide=false
						p.Anchored=true
						p.BrickColor=BrickColor.new("Really black")
						p.formFactor="Symmetric"
						p.Size=Vector3.new(1,1,1)
						p.CFrame=last
						p.Parent=CPlayer.Torso
						p.Material = "Neon"
						local m=Instance.new("BlockMesh")
						m.Parent=p
						m.Scale=Vector3.new(8,8,8)
						spawn(function()for i=1, 20 do
								p.Transparency=i/20
								p.Mesh.Scale=p.Mesh.Scale-Vector3.new(.4,.4,.4)/2
								p.CFrame=p.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-10,10)/20,math.random(-10,10)/20,math.random(-10,10)/20) swait(1) end p.Parent=nil end)
						local hpos=last.p
						local maxdec=15
						for i,v in pairs(workspace:children()) do
							if v.className=="Model" then
								local H=v:findFirstChildOfClass("Humanoid")
								if H~=nil then
									if H.Health>0 and H~=CPlayer:findFirstChildOfClass("Humanoid") then
										local T=H.Parent:FindFirstChild("Torso")
										if T~=nil then
											--print((T.Position-hpos).magnitude)
											if (T.Position-hpos).magnitude<=maxdec then
												if OVERDRIVE == true then
													v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 2	
												end
												H.Parent:FindFirstChildOfClass("Humanoid").Health = 		H.Parent:FindFirstChildOfClass("Humanoid").Health - 2 
												local bp2 = Instance.new("BodyPosition",H.Parent:WaitForChild("Torso"))
												bp2.MaxForce = Vector3.new(40000,40000,40000)
												bp2.D = 600
												bp2.Position =H.Parent:WaitForChild("Torso").CFrame * CFrame.new(0,5,2).p
												spawn(function()
													swait(3)
													bp2:Destroy()
												end)
												T.CFrame=T.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-5,5)/15,math.random(-5,5)/15,0)
											end
										end
									end
								end
							end
						end
						swait(1)
					end

					for i=16, 24 do
						lol.Transparency=i/24
						swait(2)
					end
					lol:Destroy()
					wadqsummoned  = false

				end
				if asqlaunched == true  then
					asqlaunched = false
					asqcooldown = true
					spawn(function()
						swait(50)
						asqcooldown = false
					end)
					local RHe4 = Instance.new("Part",game.Workspace)
					RHe4.BrickColor = BrickColor.new("Really red")
					RHe4.Locked = false
					RHe4.CanCollide = false
					RHe4.Anchored = true
					RHe4.Transparency = 0
					RHe4.Material = Enum.Material.Granite
					RHe4.Size = Vector3.new(1, 0.7, 1)

					--RHe.Orientation = Vector3.new(0, -90, 0)
					local m = Instance.new("SpecialMesh",RHe4)
					m.MeshType = Enum.MeshType.FileMesh
					m.MeshId = "rbxassetid://3885633274"
					m.TextureId = "rbxassetid://3885633344"
					m.Scale = Vector3.new(1,1,1)
					RHe4.CFrame = playor.Character.HumanoidRootPart.CFrame
					spawn(function()
						for i = 1,20 do
							swait(1)
							RHe4.CFrame = RHe4.CFrame * CFrame.Angles(math.rad(15),math.rad(15),math.rad(15))
							RHe4.Transparency = RHe4.Transparency + 0.05

						end

					end)

					PP = Instance.new("Part",game.Workspace)
					PP.BrickColor = BrickColor.new("Really red")
					PP.Locked = false
					PP.CanCollide = false
					PP.Anchored = true
					PP.Transparency = 1
					PP.Material = Enum.Material.Granite
					PP.Size = Vector3.new(1, 1, 1)
					PP.CFrame = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,-2.4,0)
					local RHe4 = Instance.new("FlagStand",game.Workspace)
					RHe4.BrickColor = BrickColor.new("Really red")
					RHe4.Locked = false
					RHe4.CanCollide = false
					RHe4.Anchored = true
					RHe4.Transparency = 0
					RHe4.Material = Enum.Material.Granite
					RHe4.Size = Vector3.new(1, 0.7, 1)

					--RHe.Orientation = Vector3.new(0, -90, 0)
					local m = Instance.new("SpecialMesh",RHe4)
					m.MeshType = Enum.MeshType.FileMesh
					m.MeshId = "rbxassetid://3885633274"
					m.TextureId = "rbxassetid://3885633344"
					m.Scale = Vector3.new(1,1,1)
					RHe4.CFrame = Part1.CFrame
					swait()
					spawn(function()
						local Clash2 = Instance.new("Sound")
						Clash2.Parent = playor.Character.Torso
						Clash2.SoundId = "http://www.roblox.com/asset/?id=236382703"
						Clash2.Volume = 3
						Clash2.Pitch = 1
						Clash2:play()

					end)
					playor.Character.HumanoidRootPart.CFrame = Part1.CFrame * CFrame.new(0,3,0)

					Part1.CFrame = PP.CFrame

					spawn(function()
						for i = 1,20 do
							swait(1)
							RHe4.CFrame = RHe4.CFrame * CFrame.Angles(math.rad(15),math.rad(15),math.rad(15))
							RHe4.Transparency = RHe4.Transparency + 0.05

						end
					end)
				end

				if ddqlaunched == true and 	ddqcooldown == false then
					ddqlaunched = false
					wadqattack = true
					ddqcooldown = true
					spawn(function()
						swait(150)
						ddqcooldown = false

					end)
					wadqsummoned = false
					local Part0 = Instance.new("FlagStand")
					local SpecialMesh1 = Instance.new("SpecialMesh")
					Part0.Parent = playor.Character
					Part0.CFrame = CFrame.new(27.9936256, 5.54999208, 111.183998, 0.999999523, 0, 0, 0, 0.99999845, 0, 0, 0, 0.999998927)
					Part0.Position = Vector3.new(27.9936256, 5.54999208, 111.183998)
					Part0.Size = Vector3.new(6, 11, 4)
					Part0.BottomSurface = Enum.SurfaceType.Smooth
					Part0.TopSurface = Enum.SurfaceType.Smooth
					Part0.Anchored = true
					Part0.CanCollide = false
					SpecialMesh1.Parent = Part0
					SpecialMesh1.MeshId = "rbxassetid://735160433"
					SpecialMesh1.Scale = Vector3.new(0.0799999982, 0.0799999982, 0.125)
					SpecialMesh1.TextureId = "http://www.roblox.com/asset/?id=145954725"
					SpecialMesh1.MeshType = Enum.MeshType.FileMesh

					Part0.CFrame = Part1.CFrame * CFrame.new(0,52,0)



					for i = 1,4 do
						swait()
						Part0.CFrame =  Part0.CFrame * CFrame.new(0,-11.74,0)
					end
					for i, v in pairs(FindNearestHead(Part0.CFrame.p, 9)) do
						if v:FindFirstChild("Head") and v:FindFirstChild("dodge") == nil  then
							if OVERDRIVE == true then
								v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 10	
							end
							v:FindFirstChildOfClass("Humanoid").Health = v:FindFirstChildOfClass("Humanoid").Health - 20
							local bp2 = Instance.new("BodyPosition",v:WaitForChild("Torso"))
							bp2.MaxForce = Vector3.new(40000,40000,40000)
							bp2.D = 1500
							bp2.Position =playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,15,8).p
							spawn(function()
								swait(6)
								bp2:Destroy()
							end)
						end
					end
					wadqattack = false
					spawn(function()
						local Sound0 = Instance.new("Sound")
						Sound0.Name = "Slam"
						Sound0.Parent = Part0
						Sound0.SoundId = "rbxassetid://5532556720"
						Sound0.Volume = 2
						Sound0:Play()
						local Sound0 = Instance.new("Sound")
						Sound0.Name = "Impact"
						Sound0.Parent = Part0
						Sound0.SoundId = "rbxassetid://5540424854"
						Sound0.Volume = 2
						Sound0:Play()
					end)
					local Part2 = Instance.new("FlagStand")
					local  Decal3 = Instance.new("Decal")
					local ParticleEmitter4 = Instance.new("ParticleEmitter")
					local at1 = Instance.new("Attachment",Part2)
					Part2.Parent = playor.Character
					Part2.CFrame = CFrame.new(27.2845154, 0.0250005722, 110.467117, -4.37113883e-08, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883e-08)
					Part2.Orientation = Vector3.new(0, 90, 0)
					Part2.Position = Vector3.new(27.2845154, 0.0250005722, 110.467117)
					Part2.Rotation = Vector3.new(0, 90, 0)
					Part2.Transparency = 1
					Part2.Size = Vector3.new(5, 0.0500000007, 5)
					Part2.BottomSurface = Enum.SurfaceType.Smooth
					Part2.TopSurface = Enum.SurfaceType.Smooth
					Decal3.Name = "Blood"
					Decal3.Parent = Part2
					Part2.Anchored = true
					Part2.CanCollide = false
					Decal3.Texture = "http://www.roblox.com/asset/?id=1634200191"
					Decal3.Face = Enum.NormalId.Top
					ParticleEmitter4.Name = "FunnelSmoke"
					ParticleEmitter4.Parent = at1
					ParticleEmitter4.Speed = NumberRange.new(25)
					ParticleEmitter4.Rotation = NumberRange.new(-90, 90)
					ParticleEmitter4.Color = ColorSequence.new(Color3.new(0.329412, 0.152941, 0),Color3.new(0.598902, 0.572149, 0.548962),Color3.new(0.647059, 0.647059, 0.647059))
					ParticleEmitter4.Enabled = false
					ParticleEmitter4.LightInfluence = 1
					ParticleEmitter4.Texture = "rbxassetid://254959503"
					ParticleEmitter4 .Transparency = NumberSequence.new(0.3125,1)
					ParticleEmitter4.Size = NumberSequence.new(2.7499997615814,3.5625)
					ParticleEmitter4.EmissionDirection = Enum.NormalId.Left
					ParticleEmitter4.Lifetime = NumberRange.new(2, 2)
					ParticleEmitter4.Rate = 100
					ParticleEmitter4.RotSpeed = NumberRange.new(-30, 30)
					ParticleEmitter4.SpreadAngle = Vector2.new(0, 360)
					Part2.CFrame = Part0.CFrame * CFrame.new(0,-6,0)
					ParticleEmitter4:Emit(10)

					spawn(function()
						for i = 1,3 do
							swait()
							Part2.Size = Part2.Size + Vector3.new(5,0,5)

						end
						spawn(function()
							local Sound0 = Instance.new("Sound")
							Sound0.Name = "Damn.."
							Sound0.Parent = Part2
							Sound0.SoundId = "rbxassetid://6481229000"
							Sound0.Volume = 3
							Sound0:Play()
						end)
						for i = 1,20 do
							swait()
							Part2.Size = Part2.Size + Vector3.new(0.2,0,0.2)

						end
						wait(8)
						Part0:Destroy()
						Part2:Destroy()



					end)

				end
				if ssqlaunched == true and ssqcooldown == false then
					ssqlaunched = false
					ssqcooldown = true

					wadqattack = true

					local minus333 = -0.25
					local minu2 = -90
					local minus = -180 --lol im retard!
					for i =1,8 do

						swait()
						local spark2 = Instance.new("Part",game.Workspace)
						spark2.Anchored = true
						spark2.CanCollide =  false
						spark2.Shape = "Ball"
						spark2.Size = Vector3.new(12,12,12)
						spark2.BrickColor = BrickColor.new("Really black")
						spark2.Material = Enum.Material.Neon
						spark2.CFrame = Part1.CFrame * CFrame.new(math.random(minus333,0.25),math.random(minus333,0.25),-2*math.random(minus333,0.25))
						spark2.Orientation = Vector3.new(math.random(minu2,90),math.random(minus,180),0)


						spawn(function()
							for i =1,40 do
								swait()

								spark2.Size = spark2.Size - Vector3.new(0.25,0.25,0.25)
								spark2.Transparency = spark2.Transparency + 0.05
								spark2.CFrame = spark2.CFrame * CFrame.new(0.15,0.15,0.15)
								spark2.Orientation = spark2.Orientation + Vector3.new(0,3,3)
								spark2.Orientation = spark2.Orientation + Vector3.new(5,0,0)						
							end
							spark2:destroy()
						end)
					end
					Part1.Transparency = 1
					TOILET2 = Instance.new("FlagStand",game.Workspace)
					TOILET2.BrickColor = BrickColor.new("Ghost grey")
					TOILET2.Locked = false
					local at1 = Instance.new("Attachment",TOILET2)
					ParticleEmitter0 = Instance.new("ParticleEmitter")
					ParticleEmitter0.Name = "Fire"
					ParticleEmitter0.Parent = at1
					ParticleEmitter0.Speed = NumberRange.new(35)
					ParticleEmitter0.Rotation = NumberRange.new(4, 9)
					ParticleEmitter0.Color = ColorSequence.new(Color3.new(1, 0.333333, 0),Color3.new(0.364706, 0, 0))
					ParticleEmitter0.LightEmission = 0.86000001430511
					ParticleEmitter0.Texture = "http://www.roblox.com/asset/?id=248625108"
					ParticleEmitter0.Transparency = NumberSequence.new(0,0.54374998807907,0.73749995231628,0,0.72500002384186,0.45625001192093,0.63749998807907,0,0.52499997615814,0)
					ParticleEmitter0.Size = NumberSequence.new(15,0.12499988079071)
					ParticleEmitter0.Lifetime = NumberRange.new(0, 3)
					ParticleEmitter0.Rate = 70
					ParticleEmitter0.RotSpeed = NumberRange.new(5, 9)
					ParticleEmitter0.SpreadAngle = Vector2.new(360, 360)
					ParticleEmitter0.VelocitySpread = 360
					ParticleEmitter0.Enabled = false
					TOILET2.CanCollide = false
					TOILET2.Transparency = 0
					TOILET2.CFrame = Part1.CFrame * CFrame.new(0,1.5,0) * CFrame.Angles(0,math.rad(-180),0)
					TOILET2.Anchored = true
					TOILET2.Material = Enum.Material.Granite
					TOILET2.Size = Vector3.new(3, 3, 1)
					--RHe.Orientation = Vector3.new(0, -90, 0)
					TOILET2.formFactor =  "Symmetric"
					game:GetService("Debris"):AddItem(TOILET2, 6)

					local aa = Instance.new("SpecialMesh",TOILET2)
					aa.MeshId =  "rbxassetid://4565453471"
					aa.TextureId =  "rbxassetid://1119168438"
					aa.MeshType = Enum.MeshType.FileMesh
					aa.Scale = Vector3.new(0.1, 0.1, 0.1)
					spawn(function()
						local lolo = Instance.new("Sound")
						lolo.Name = "skid?bidy"
						lolo.Parent = TOILET2
						lolo.SoundId = "rbxassetid://5702637856"
						lolo.Volume = 2
						lolo:Play()
					end)
					spawn(function()
						swait(15)
						wadqattack = false
						swait(60*4)
						ssqcooldown = false
					end)
					for i = 1,10 do
						swait(5)

						for i, v in pairs(FindNearestHead(TOILET2.CFrame.p, 13)) do
							if v:FindFirstChild("Head") and v:FindFirstChild("dodge") == nil  then
								local bp2 = Instance.new("BodyPosition",v:WaitForChild("Torso"))

								if OVERDRIVE == true then
									v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 2	
								end
								v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 1
								bp2.MaxForce = Vector3.new(40000,40000,40000)
								bp2.D = 1500
								bp2.Position = TOILET2.CFrame.p
								spawn(function()
									wait(0.1)
									bp2:Destroy()
								end)

							end
						end
						spawn(function()
							local BANGG4 = Instance.new("FlagStand",game.Workspace)
							BANGG4.BrickColor = BrickColor.new("Institutional white")
							BANGG4.Size = Vector3.new(5, 5, 5)
							BANGG4.Locked = false
							BANGG4.Material = Enum.Material.Neon
							BANGG4.CanCollide = false
							BANGG4.Anchored = true
							BANGG4.Transparency = 0.8
							--RHe.Orientation = Vector3.new(0, -90, 0)
							BANGG4.formFactor =  "Symmetric"
							BANGG4.CFrame = TOILET2.CFrame  * CFrame.Angles(math.random(-180,170),math.random(-180,170),math.random(-180,170))
							local joe3 = Instance.new("SpecialMesh",BANGG4)
							joe3.MeshType = Enum.MeshType.FileMesh
							joe3.MeshId = "http://www.roblox.com/Asset/?id=9982590"
							joe3.TextureId = "http://www.roblox.com/Asset/?id=5614579544"
							joe3.VertexColor = Vector3.new(123,123,123)
							joe3.Scale = Vector3.new(10,10,10)




							for i = 1,20 do
								swait(1)
								BANGG4.Transparency = BANGG4.Transparency + 0.05	


								joe3.Scale = joe3.Scale - Vector3.new(2,2,2)

							end
							BANGG4:destroy()


						end)
					end
					wadqsummoned = false
					ParticleEmitter0:Emit(100)
					spawn(function()
						local BANGG4 = Instance.new("FlagStand",game.Workspace)
						BANGG4.BrickColor = BrickColor.new("Neon orange")
						BANGG4.Size = Vector3.new(10,10,10)
						BANGG4.Locked = false
						BANGG4.Shape= "Ball"
						BANGG4.Material = Enum.Material.Neon
						BANGG4.CanCollide = false
						BANGG4.Anchored = true
						BANGG4.Transparency = 0.3
						--RHe.Orientation = Vector3.new(0, -90, 0)
						BANGG4.formFactor =  "Symmetric"
						BANGG4.CFrame = TOILET2.CFrame  * CFrame.Angles(math.random(-180,170),math.random(-180,170),math.random(-180,170))
						BANGG4.CastShadow = false

						for i, v in pairs(FindNearestHead(TOILET2.CFrame.p, 17)) do
							if v:FindFirstChild("Head") and v:FindFirstChild("dodge") == nil  then
								swait(1)
								local bp2 = Instance.new("BodyPosition",v:WaitForChild("Torso"))
								if OVERDRIVE == true then
									v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 8	
								end
								v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 15
								bp2.MaxForce = Vector3.new(40000,40000,40000)
								bp2.D = 1500
								bp2.Position = TOILET2.CFrame  * CFrame.new(math.random(-25,25),math.random(10,25),math.random(-25,25)).p
								spawn(function()
									swait(16)
									bp2:Destroy()
								end)

							end
						end	
						for i = 1,5 do
							swait()
							BANGG4.Transparency = BANGG4.Transparency + 0.1	


							BANGG4.Size = BANGG4.Size + Vector3.new(20,20,20)

						end
						for i = 1,10 do
							swait()
							BANGG4.Transparency = BANGG4.Transparency + 0.1	


							BANGG4.Size = BANGG4.Size + Vector3.new(1,1,1)

						end
						BANGG4:destroy()


					end)
				end
				if asdsdqlaunched == true and asdsdqcooldown == false then
					wadqattack = true
					asdsdqcooldown = true
					asdsdqlaunched = false
					local CSUFVOICE = Instance.new("Sound")
					CSUFVOICE.Name = "CSUF VOICE"
					CSUFVOICE.Parent = Head
					CSUFVOICE.SoundId = "rbxasset://sounds/enmau0.wav"
					CSUFVOICE.Volume = 3.5
					CSUFVOICE.Pitch = 1.05
					CSUFVOICE:Play()
					Part1.Transparency = 1 
					Part0 = Instance.new("Part")
					SpecialMesh1 = Instance.new("SpecialMesh")
					Part3 = Instance.new("Part")
					SpecialMesh4 = Instance.new("SpecialMesh")
					Part0.Name = "SawBlade"
					Part0.Parent = game.Workspace
					Part0.CFrame = CFrame.new(39.6463318, -0.261147141, 87.6755981, 1, 0, 0, 0, -1, 0, 0, 0, -1)
					Part0.Orientation = Vector3.new(0, 180, 180)
					Part0.Position = Vector3.new(39.6463318, -0.261147141, 87.6755981)
					Part0.Rotation = Vector3.new(-180, 0, 0)
					Part0.Color = Color3.new(0.388235, 0.372549, 0.384314)
					Part0.Size = Vector3.new(3.20000076, 3.20000076, 0.400000006)
					Part0.Anchored = false
					Part0.BottomSurface = Enum.SurfaceType.Smooth
					Part0.BrickColor = BrickColor.new("Dark stone grey")
					Part0.CanCollide = false
					Part0.TopSurface = Enum.SurfaceType.Smooth
					Part0.brickColor = BrickColor.new("Dark stone grey")
					Part0.FormFactor = Enum.FormFactor.Custom
					Part0.formFactor = Enum.FormFactor.Custom
					SpecialMesh1.Parent = Part0
					SpecialMesh1.MeshId = "http://www.roblox.com/asset/?id=74322089"
					SpecialMesh1.Scale = Vector3.new(34, 34, 15)
					SpecialMesh1.VertexColor = Vector3.new(0, 0, 0)
					SpecialMesh1.TextureId = "http://www.roblox.com/asset/?id=74322092"
					SpecialMesh1.MeshType = Enum.MeshType.FileMesh
					Part3.Name = "SawBlade"
					Part3.Parent = game.Workspace
					Part3.CFrame = CFrame.new(39.6463051, -0.261159062, 87.6760025, 1, 0, 0, 0, -1, 0, 0, 0, -1)
					Part3.Orientation = Vector3.new(0, 180, 180)
					Part3.Position = Vector3.new(39.6463051, -0.261159062, 87.6760025)
					Part3.Rotation = Vector3.new(-180, 0, 0)
					Part3.Color = Color3.new(0.384314, 0.145098, 0.819608)
					Part3.Size = Vector3.new(3.19999981, 3.25417209, 0.399999976)
					Part3.Anchored = true
					Part3.BottomSurface = Enum.SurfaceType.Smooth
					Part3.BrickColor = BrickColor.new("Royal purple")
					Part3.CanCollide = false
					Part3.Material = Enum.Material.ForceField
					Part3.TopSurface = Enum.SurfaceType.Smooth
					Part3.brickColor = BrickColor.new("Royal purple")
					Part3.FormFactor = Enum.FormFactor.Custom
					Part3.formFactor = Enum.FormFactor.Custom
					SpecialMesh4.Parent = Part3
					SpecialMesh4.MeshId = "http://www.roblox.com/asset/?id=74322089"
					SpecialMesh4.Scale = Vector3.new(35, 35, 14)
					SpecialMesh4.VertexColor = Vector3.new(0.400000006, 0, 3)
					SpecialMesh4.TextureId = "http://www.roblox.com/asset/?id=74322092"
					SpecialMesh4.MeshType = Enum.MeshType.FileMesh


					Part0.CFrame = Part1.CFrame * CFrame.Angles(0,math.rad(90),0)
					Part3.CFrame = Part0.CFrame

					local joe2 = Instance.new("BodyVelocity",Part0)
					joe2.maxForce = Vector3.new(40000,40000,40000)
					joe2.velocity = Part1.CFrame.lookVector*34
					joe2.Name = "speedy"


					Part0.Transparency = 1
					Part3.Transparency = 1
					spawn(function()
						repeat
							swait(15)
							for i, v in pairs(FindNearestHead(Part3.CFrame.p, 15)) do
								if v:FindFirstChild("Head") and v:FindFirstChild("dodge") == nil  then
									if OVERDRIVE == true then
										v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 5	
									end
									v:FindFirstChildOfClass("Humanoid").Health = v:FindFirstChildOfClass("Humanoid").Health -math.random(7,10)

									local joe2 = Instance.new("BodyVelocity",v:WaitForChild("Torso"))
									joe2.maxForce = Vector3.new(40000,40000,40000)
									joe2.velocity = playor.Character.HumanoidRootPart.CFrame.lookVector*65
									joe2.Name = "speedy"
									spawn(function()
										swait(10)
										joe2:Destroy()
									end)	

								end
							end
						until wadqsummoned == false
					end)
					spawn(function()
						repeat
							swait()

							Part0.CFrame = Part0.CFrame * CFrame.new(0,0.5,0)* CFrame.Angles(0,0,math.rad(-15))
							Part3.CFrame = Part0.CFrame

						until wadqsummoned == false
					end)
					spawn(function()
						for i = 1,10 do
							swait(5)

							local s=Instance.new("Sound",Part3)
							s.Volume=2
							s.SoundId="http://www.roblox.com/asset/?id=188959272"
							s.Pitch=2
							s:Play()
							game:GetService("Debris"):AddItem(s, 5)

						end
					end)
					spawn(function()
						for i = 1,10 do
							swait(1)

							for i = 1,3 do
								local random = math.random(1,2)
								if random == 1 then
									local Part0 = Instance.new("Part")


									Part0.Parent = game.Workspace
									Part0.CFrame = CFrame.new(-28.2444439, 12.9582043, 34.5625916, 1, 0, 0, 0, 1, 0, 0, 0, 1)
									Part0.Position = Vector3.new(-28.2444439, 12.9582043, 34.5625916)
									Part0.Color = Color3.new(0.411765, 0.25098, 0.156863)
									Part0.Size = Vector3.new(4,0.5,1.2)
									Part0.Anchored = true
									Part0.Material = "Neon"
									Part0.BottomSurface = Enum.SurfaceType.Smooth

									Part0.BrickColor = BrickColor.new("Really black")

									Part0.CanCollide = false

									Part0.TopSurface = Enum.SurfaceType.Smooth
									Part0.CFrame =  Part3.CFrame *  CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10)) * CFrame.new(0,0,1) * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
									local joemama = Instance.new("SpecialMesh",Part0)
									joemama.MeshType = Enum.MeshType.Sphere
									spawn(function()


										for i = 1,10 do
											swait(1)
											Part0.CFrame = Part0.CFrame *CFrame.new(0,3,0) * CFrame.Angles(math.rad(15),math.rad(15),math.rad(15))
											Part0.Transparency = Part0.Transparency + 0.1
										end		
										Part0:Destroy()
									end)
								elseif random == 2 then
									local Part0 = Instance.new("FlagStand")


									Part0.Parent = game.Workspace
									Part0.CFrame = CFrame.new(-28.2444439, 12.9582043, 34.5625916, 1, 0, 0, 0, 1, 0, 0, 0, 1)
									Part0.Position = Vector3.new(-28.2444439, 12.9582043, 34.5625916)
									Part0.Color = Color3.new(0.411765, 0.25098, 0.156863)
									Part0.Size = Vector3.new(4,0.5,1.2)
									Part0.Anchored = true
									Part0.Material = "Neon"
									Part0.BottomSurface = Enum.SurfaceType.Smooth

									Part0.BrickColor = BrickColor.new("Really black")

									Part0.CanCollide = false

									Part0.TopSurface = Enum.SurfaceType.Smooth
									Part0.CFrame =  Part3.CFrame *  CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10)) * CFrame.new(0,0,1) * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
									local joemama = Instance.new("SpecialMesh",Part0)
									joemama.MeshType = Enum.MeshType.Sphere
									spawn(function()


										for i = 1,10 do
											swait(1)
											Part0.CFrame = Part0.CFrame *CFrame.new(0,3,0) * CFrame.Angles(math.rad(15),math.rad(15),math.rad(15))
											Part0.Transparency = Part0.Transparency + 0.1
										end		
										Part0:Destroy()
									end)
								end	
							end
							local Part0 = Instance.new("Part")

							Part0.Parent = game.Workspace
							Part0.CFrame = CFrame.new(-28.2444439, 12.9582043, 34.5625916, 1, 0, 0, 0, 1, 0, 0, 0, 1)
							Part0.Position = Vector3.new(-28.2444439, 12.9582043, 34.5625916)
							Part0.Color = Color3.new(0.411765, 0.25098, 0.156863)
							Part0.Size = Vector3.new(25,25,25)
							Part0.Anchored = true
							Part0.Material = "Neon"
							Part0.BottomSurface = Enum.SurfaceType.Smooth

							Part0.BrickColor = BrickColor.new("Really black")

							Part0.CanCollide = false

							Part0.TopSurface = Enum.SurfaceType.Smooth
							Part0.CFrame =  Part3.CFrame * CFrame.new(0,0,1) * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
							spawn(function()
								for i = 1,5 do
									swait()
									Part0.CFrame = Part0.CFrame * CFrame.Angles(math.rad(5),math.rad(5),math.rad(5))
									Part0.Transparency = Part0.Transparency + 0.2
								end

								Part0:Destroy()
							end)	
						end
						Part0.Transparency = 0
						Part3.Transparency = 0
					end)
					swait(80)

					spawn(function()
						for i = 1,10 do
							swait(1)
							for i = 1,3 do
								local random = math.random(1,2)
								if random == 1 then
									local Part0 = Instance.new("Part")


									Part0.Parent = game.Workspace
									Part0.CFrame = CFrame.new(-28.2444439, 12.9582043, 34.5625916, 1, 0, 0, 0, 1, 0, 0, 0, 1)
									Part0.Position = Vector3.new(-28.2444439, 12.9582043, 34.5625916)
									Part0.Color = Color3.new(0.411765, 0.25098, 0.156863)
									Part0.Size = Vector3.new(4,0.5,1.2)
									Part0.Anchored = true
									Part0.Material = "Neon"
									Part0.BottomSurface = Enum.SurfaceType.Smooth

									Part0.BrickColor = BrickColor.new("Really black")

									Part0.CanCollide = false

									Part0.TopSurface = Enum.SurfaceType.Smooth
									Part0.CFrame =  Part3.CFrame *  CFrame.new(math.random(-25,25),math.random(-25,25),math.random(-25,25)) * CFrame.new(0,0,1) * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
									local joemama = Instance.new("SpecialMesh",Part0)
									joemama.MeshType = Enum.MeshType.Sphere
									spawn(function()


										for i = 1,10 do
											swait(1)
											Part0.CFrame = Part0.CFrame *CFrame.new(0,3,0) * CFrame.Angles(math.rad(15),math.rad(15),math.rad(15))
											Part0.Transparency = Part0.Transparency + 0.1
										end

										Part0:Destroy()
									end)
								elseif random == 2 then
									local Part0 = Instance.new("FlagStand")


									Part0.Parent = game.Workspace
									Part0.CFrame = CFrame.new(-28.2444439, 12.9582043, 34.5625916, 1, 0, 0, 0, 1, 0, 0, 0, 1)
									Part0.Position = Vector3.new(-28.2444439, 12.9582043, 34.5625916)
									Part0.Color = Color3.new(0.411765, 0.25098, 0.156863)
									Part0.Size = Vector3.new(4,0.5,1.2)
									Part0.Anchored = true
									Part0.Material = "Neon"
									Part0.BottomSurface = Enum.SurfaceType.Smooth

									Part0.BrickColor = BrickColor.new("Really black")

									Part0.CanCollide = false

									Part0.TopSurface = Enum.SurfaceType.Smooth
									Part0.CFrame = Part3.CFrame *  CFrame.new(math.random(-25,25),math.random(-25,25),math.random(-25,25)) * CFrame.new(0,0,1) * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
									local joemama = Instance.new("SpecialMesh",Part0)
									joemama.MeshType = Enum.MeshType.Sphere
									spawn(function()


										for i = 1,10 do
											swait(1)
											Part0.CFrame = Part0.CFrame *CFrame.new(0,3,0) * CFrame.Angles(math.rad(15),math.rad(15),math.rad(15))
											Part0.Transparency = Part0.Transparency + 0.1
										end
										Part0:Destroy()

									end)
								end	
							end
							local Part0 = Instance.new("Part")

							Part0.Parent = game.Workspace
							Part0.CFrame = CFrame.new(-28.2444439, 12.9582043, 34.5625916, 1, 0, 0, 0, 1, 0, 0, 0, 1)
							Part0.Position = Vector3.new(-28.2444439, 12.9582043, 34.5625916)
							Part0.Color = Color3.new(0.411765, 0.25098, 0.156863)
							Part0.Size = Vector3.new(25,25,25)
							Part0.Anchored = true
							Part0.Material = "Neon"
							Part0.BottomSurface = Enum.SurfaceType.Smooth

							Part0.BrickColor = BrickColor.new("Really black")

							Part0.CanCollide = false

							Part0.TopSurface = Enum.SurfaceType.Smooth
							Part0.CFrame =  Part3.CFrame * CFrame.new(0,0,1) * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
							spawn(function()
								for i = 1,5 do
									swait()
									Part0.CFrame = Part0.CFrame * CFrame.Angles(math.rad(5),math.rad(5),math.rad(5))
									Part0.Transparency = Part0.Transparency + 0.2
								end		
								Part0:Destroy()
							end)	
						end
						wadqsummoned =false
						Part0:Destroy()
						Part3:Destroy()
					end)
					wadqattack = false

					spawn(function()
						swait(60*10)
						asdsdqcooldown = false
					end)
				end
				if aaqlaunched == true then
					aaqlaunched = false
					wadqattack = true
					ParticleEmitter0 = Instance.new("ParticleEmitter")
					ParticleEmitter0.Parent = Part1
					ParticleEmitter0.Speed = NumberRange.new(25)
					ParticleEmitter0.Color = ColorSequence.new(Color3.new(0.54902, 0.666667, 0.027451),Color3.new(0.635294, 1, 0.160784))
					ParticleEmitter0.LightInfluence = 1
					ParticleEmitter0.Texture = "rbxassetid://5457833933"
					ParticleEmitter0.Transparency = NumberSequence.new(0,1,1)
					ParticleEmitter0.Size = NumberSequence.new(2,3)
					ParticleEmitter0.Lifetime = NumberRange.new(.5)
					ParticleEmitter0.Rate = 500
					ParticleEmitter0.SpreadAngle = Vector2.new(360, 360)
					ParticleEmitter0.VelocitySpread = 360
					ParticleEmitter0.Enabled = false
					spawn(function()

						local fart = Instance.new("Sound")
						fart.Parent = Part1
						fart.SoundId = "http://www.roblox.com/asset/?id=4761049714"
						fart.Volume = 10
					end)





					for i = 1,6 do

						for i, v in pairs(FindNearestHead(Part1.CFrame.p, 11)) do
							if v:FindFirstChild("Head") and v:FindFirstChild("dodge") == nil  then


								local bp2 = Instance.new("BodyPosition",v:WaitForChild("Torso"))
								bp2.MaxForce = Vector3.new(40000,40000,40000)
								if OVERDRIVE == true then
									v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 	3
								end
								v:FindFirstChildOfClass("Humanoid").Health = v:FindFirstChildOfClass("Humanoid").Health - 2.5
								bp2.Position = v:WaitForChild("Torso").CFrame * CFrame.new(0,5,5).p

								spawn(function()
									swait(8)
									bp2:Destroy()


								end)


							end
						end

						spawn(function()
							local random = math.random(1,10)
							Sound0 = Instance.new("Sound")
							Sound0.Name = "Fart"
							Sound0.Parent = Part1
							Sound0.Volume = 4
							Sound0.TimePosition = 1
							if random == 1 then
								Sound0.SoundId = "rbxassetid://3068569258"
								Sound0:Play()
							elseif random == 2 then
								Sound0.SoundId = "rbxassetid://3068569258"
								Sound0:Play()
							elseif random == 3 then
								Sound0.SoundId = "rbxassetid://30686480"
								Sound0:Play()
							elseif random == 4 then
								Sound0.SoundId = "rbxassetid://5673473298"
								Sound0:Play()
							elseif random == 5 then
								Sound0.SoundId = "rbxassetid://4171919880"
								Sound0:Play()
							elseif random == 6 then
								Sound0.SoundId = "rbxassetid://5814620491"
								Sound0:Play()
							elseif random == 7 then
								Sound0.SoundId = "rbxassetid://174658105"
								Sound0:Play()
							elseif random == 8 then
								Sound0.SoundId = "rbxassetid://4761049714"
								Sound0:Play()
							elseif random == 9 then
								Sound0.SoundId = "rbxassetid://4858245620"
								Sound0:Play()
							elseif random == 10 then
								Sound0.SoundId = "rbxassetid://3475233802"
								Sound0:Play()
							end
						end)


						ParticleEmitter0:Emit(100)
						swait(3)
					end
					wadqsummoned = false
					wadqattack = false

				end
			until wadqsummoned == false
			spawn(function()
				local ARGH = Instance.new("Sound")
				ARGH.Parent = Part4
				ARGH.SoundId = "http://www.roblox.com/asset/?id=1168269804"
				ARGH.Volume = 4
				ARGH:Play()
			end)
			for i = 1,2 do
				local Part0 = Instance.new("FlagStand")

				Part0.Parent = game.Workspace
				Part0.CFrame = CFrame.new(-28.2444439, 12.9582043, 34.5625916, 1, 0, 0, 0, 1, 0, 0, 0, 1)
				Part0.Position = Vector3.new(-28.2444439, 12.9582043, 34.5625916)
				Part0.Color = Color3.new(0.411765, 0.25098, 0.156863)
				Part0.Size = Vector3.new(5,5,5)
				Part0.Anchored = true
				Part0.BottomSurface = Enum.SurfaceType.Smooth

				Part0.BrickColor = BrickColor.new("Really black")

				Part0.CanCollide = false

				Part0.TopSurface = Enum.SurfaceType.Smooth
				Part0.CFrame =  Part1.CFrame * CFrame.new(0,0,1) * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
				spawn(function()
					for i = 1,10 do
						swait(1)
						Part0.CFrame = Part0.CFrame * CFrame.Angles(math.rad(15),math.rad(15),math.rad(15))
						Part0.Transparency = Part0.Transparency + 0.1
					end
				end)	
			end
			Part1.Transparency  = 1
			Weld3:Destroy()
			spawn(function()
				wait(1)
				Part4:Destroy()
				Model1:Destroy()
			end)
		end)

	elseif wadqsummoned == true then
		wadqsummoned = false
	end
end	
function adadwq()
	footsteps:Stop()
	local CSUFVOICE = Instance.new("Sound")
	CSUFVOICE.Name = "CSUF VOICE"
	CSUFVOICE.Parent = Head
	CSUFVOICE.SoundId = "rbxasset://sounds/saul2/saul_1-41.wav"
	CSUFVOICE.Volume = 3.5
	CSUFVOICE.Pitch = 1.15
	CSUFVOICE:Play()
	game:GetService("Debris"):AddItem(CSUFVOICE,5)
	attack = true
	adadwqcd = true
	Part0 = Instance.new("Part")
	BillboardGui1 = Instance.new("BillboardGui")
	TextBox2 = Instance.new("TextBox")
	Part0.Parent = playor.Character.HumanoidRootPart
	Part0.CFrame = CFrame.new(-89.3753281, 0.599999011, 109.460396, 0, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
	Part0.Orientation = Vector3.new(0, 90, 0)
	Part0.Position = Vector3.new(-89.3753281, 0.599999011, 109.460396)
	Part0.Rotation = Vector3.new(0, 90, 0)
	Part0.Transparency = 1
	Part0.Anchored = true
	Part0.CanCollide = false
	BillboardGui1.Parent = Part0
	BillboardGui1.Size = UDim2.new(40, 40, 3, 3)
	BillboardGui1.Active = true
	BillboardGui1.StudsOffset = Vector3.new(0, 3, 0)
	TextBox2.Name = "Text"
	TextBox2.Parent = BillboardGui1
	TextBox2.Size = UDim2.new(1, 1, 1, 1)
	TextBox2.BackgroundColor = BrickColor.new("Really black")
	TextBox2.BackgroundColor3 = Color3.new(0, 0, 0)
	TextBox2.BackgroundTransparency = 1
	TextBox2.BorderColor = BrickColor.new("Really black")
	TextBox2.BorderColor3 = Color3.new(0, 0, 0)
	TextBox2.Font = Enum.Font.ArialBold
	TextBox2.FontSize = Enum.FontSize.Size14
	local randomness = math.random(1,5)
	if randomness == 1 then
		TextBox2.Text = "Damn."
	elseif randomness == 2 then
		TextBox2.Text =([[MIZUCHI
REKKAZAN]])
	elseif randomness == 3 then
		TextBox2.Text =([[o_O?!?]])
	elseif randomness == 4 then
		TextBox2.Text =([[ [Insert Crest here.] ]])
	elseif randomness == 5 then
		TextBox2.Text =([[YOOOOOOOOOOOOOOOOOO?!?!??!?!?!]])

	end
	TextBox2.TextTransparency = 1
	TextBox2.TextColor = BrickColor.new("Really black")
	TextBox2.TextColor3 = Color3.new(0, 0, 0)
	TextBox2.TextScaled = true
	TextBox2.TextSize = 14
	TextBox2.TextStrokeColor3 = Color3.new(1, 1, 1)
	TextBox2.TextWrap = true
	TextBox2.TextWrapped = true
	TextBox2.TextYAlignment = Enum.TextYAlignment.Top
	TextBox2.ClearTextOnFocus = false
	TextBox2.MultiLine = true
	Part0.CFrame = playor.Character.HumanoidRootPart.CFrame

	ParticleEmitter1 = Instance.new("ParticleEmitter")
	ParticleEmitter1.Parent = playor.Character.Torso
	ParticleEmitter1.Speed = NumberRange.new(0, 0)
	ParticleEmitter1.Color = ColorSequence.new(Color3.new(1, 1, 1),Color3.new(0.494118, 0.494118, 0.494118))
	ParticleEmitter1.LightInfluence = 1
	ParticleEmitter1.Texture = "http://www.roblox.com/asset/?id=3232005358"
	ParticleEmitter1.Transparency = NumberSequence.new(0.2,1)
	ParticleEmitter1.Size = NumberSequence.new(8,56)
	ParticleEmitter1.Drag = 1
	ParticleEmitter1.Lifetime = NumberRange.new(0.1)
	ParticleEmitter1.LockedToPart = false
	ParticleEmitter1.Rate = 1
	ParticleEmitter1.RotSpeed = NumberRange.new(190, 190)
	ParticleEmitter1.SpreadAngle = Vector2.new(-360, 360)
	ParticleEmitter1.VelocitySpread = -360
	ParticleEmitter1.Enabled = false
	ParticleEmitter1:Emit(8)

	spawn(function()
		for i = 1,10 do
			swait()
			TextBox2.TextTransparency = TextBox2.TextTransparency - 0.1
		end
		swait(12)
		local jj = 3
		for i = 1,20 do
			swait()
			jj = jj + 0.2
			TextBox2.TextTransparency = TextBox2.TextTransparency + 0.05
			BillboardGui1.Size = UDim2.new(40, 40, jj, jj)
		end
	end)





	for i = 0,1,0.2 do 
		swait()
		ls.C0=ls.C0:Lerp(cf(-1.36273956, 1.25238776, -0.0127985254, 0.72064954, -0.178606182, -0.66989851, 0.0848966092, -0.936241627, 0.340946048, -0.68808198, -0.302574754, -0.659539104),i) 

		rs.C0=rs.C0:Lerp(cf(1, 0.5, 0, 0.293411821, -0.0950288028, 0.951251328, -0.554646194, 0.793530941, 0.250352383, -0.778638005, -0.601064205, 0.180124015),i) 

		lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0.258819044, 0.25, -0.933012664, 0, 0.965925813, 0.258819044, 0.965925813, -0.0669872984, 0.25),i)  

		rh.C0=rh.C0:Lerp(cf(1, -1, 0, 0.342020124, -0.163175911, 0.925416529, -0.243210152, 0.935879707, 0.254907668, -0.907673419, -0.31225425, 0.280403644),i)  

		rj.C0=rj.C0:Lerp(cf(0, 0, 0, 0.340741873, -0.925073624, -0.167731225, 0.0151344351, -0.172987401, 0.98480773, -0.940035045, -0.338103741, -0.0449435785),i)  

		ne.C0=ne.C0:Lerp(cf(0.02138016, 0.97336477, -0.0706495196, -0.272454858, 0.959055662, -0.077334024, 0.339422107, 0.171009868, 0.924958467, 0.90031153, 0.225760579, -0.372117192),i)  

	end

	spawn(function()


		mas = game.Workspace
		Model0 = Instance.new("Model")
		local Part1 = Instance.new("Part")
		Decal2 = Instance.new("Decal")
		Part3 = Instance.new("Part")
		Decal4 = Instance.new("Decal")
		Part5 = Instance.new("Part")
		Decal6 = Instance.new("Decal")
		Model0.Parent = mas
		Model0.PrimaryPart = Part1
		Part1.Parent = Model0
		Part1.CFrame = CFrame.new(-80.7317963, 0.0250000004, 127.939728, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Part1.Position = Vector3.new(-80.7317963, 0.0250000004, 127.939728)
		Part1.Transparency = 1
		Part1.Size = Vector3.new(1, 0.0500000007, 1)
		Part1.Anchored = true
		Part1.BottomSurface = Enum.SurfaceType.Smooth
		Part1.CanCollide = false
		Part1.TopSurface = Enum.SurfaceType.Smooth
		Decal2.Parent = Part1
		Decal2.Texture = "rbxassetid://583326323"
		Decal2.Face = Enum.NormalId.Top
		Decal2.Color3 = Color3.new(0, 0.666667, 0)
		Part3.Parent = Model0
		Part3.CFrame = CFrame.new(-80.7317963, 0.0250000004, 127.939728, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Part3.Position = Vector3.new(-80.7317963, 0.0250000004, 127.939728)
		Part3.Transparency = 1
		Part3.Size = Vector3.new(1, 0.0500000007, 1)
		Part3.Anchored = true
		Part3.BottomSurface = Enum.SurfaceType.Smooth
		Part3.CanCollide = false
		Part3.TopSurface = Enum.SurfaceType.Smooth
		Decal4.Parent = Part3
		Decal4.Texture = "rbxassetid://583326323"
		Decal4.Face = Enum.NormalId.Top
		Decal4.Color3 = Color3.new(0, 0.4, 0)
		Part5.Parent = Model0
		Part5.CFrame = CFrame.new(-80.7317963, 0.0250000004, 127.939728, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Part5.Position = Vector3.new(-80.7317963, 0.0250000004, 127.939728)
		Part5.Transparency = 1
		Part5.Size = Vector3.new(1, 0.0500000007, 1)
		Part5.Anchored = true
		Part5.BottomSurface = Enum.SurfaceType.Smooth
		Part5.CanCollide = false
		Part5.TopSurface = Enum.SurfaceType.Smooth
		Decal6.Parent = Part5
		Decal6.Texture = "rbxassetid://583326323"
		Decal6.Face = Enum.NormalId.Top
		Decal6.Color3 = Color3.new(0, 0.5, 0)


		ParticleEmitter1 = Instance.new("ParticleEmitter")
		ParticleEmitter1.Parent = Part1
		ParticleEmitter1.Speed = NumberRange.new(0, 0)
		ParticleEmitter1.Color = ColorSequence.new(Color3.new(1, 1, 1),Color3.new(0.494118, 0.494118, 0.494118))
		ParticleEmitter1.LightInfluence = 1
		ParticleEmitter1.Texture = "http://www.roblox.com/asset/?id=3232005358"
		ParticleEmitter1.Transparency = NumberSequence.new(0.2,1)
		ParticleEmitter1.Size = NumberSequence.new(7,26)
		ParticleEmitter1.Drag = 1
		ParticleEmitter1.Lifetime = NumberRange.new(0.1)
		ParticleEmitter1.LockedToPart = false
		ParticleEmitter1.Rate = 1
		ParticleEmitter1.RotSpeed = NumberRange.new(190, 190)
		ParticleEmitter1.SpreadAngle = Vector2.new(-360, 360)
		ParticleEmitter1.VelocitySpread = -360
		ParticleEmitter1.Enabled = false
		ParticleEmitter1:Emit(8)




		spawn(function()

			for i =1,8 do

				local spark = Instance.new("FlagStand",script)
				spark.Anchored = true
				spark.CanCollide =  false
				spark.Shape = "Ball"
				spark.Transparency = 0.5
				spark.Size = Vector3.new(9,9,9)
				spark.BrickColor = BrickColor.new("Camo")
				spark.Material = Enum.Material.Neon
				spark.CFrame = Part1.CFrame * CFrame.new(math.random(-0.25,0.25),0,math.random(-0.25,0.25))
				spark.Orientation = Vector3.new(math.random(-90,90),math.random(-180,180),0)


				spawn(function()
					for i =1,20 do
						swait()
						spark.Size = spark.Size - Vector3.new(0.5,0.5,0.5)
						spark.Transparency = spark.Transparency + 0.05
						spark.CFrame = spark.CFrame * CFrame.new(0.45,0.45,0.45)
						spark.Orientation = spark.Orientation + Vector3.new(0,6,6)
						spark.Orientation = spark.Orientation + Vector3.new(10,0,0)						
					end
					spark:destroy()
				end)

			end
		end)
		spawn(function()
			local screee = Instance.new("Sound",Part1)
			screee.Volume = 2
			screee.PlaybackSpeed = 1
			screee.Looped = false
			screee.SoundId = "rbxassetid://1135967858"


			screee:Play()
			for i = 1,10 do
				swait()
				Part3.Size= Part3.Size + Vector3.new(1.2,0,1.2)
				Part1.Size= Part1.Size + Vector3.new(1,0,1)	
				Part5.Size= Part5.Size + Vector3.new(1.3,0,1.3)
			end
			if attacked == true then
				for i = 1,45 do
					swait()
					Part3.Size= Part3.Size + Vector3.new(0.05,0,0.05)
					Part1.Size= Part1.Size + Vector3.new(0.05,0,0.05)	
					Part5.Size= Part5.Size + Vector3.new(0.05,0,0.05)
				end
			end
			for i = 1,5 do
				swait()
				Decal2.Transparency = Decal2.Transparency + 0.2
				Decal4.Transparency = Decal4.Transparency + 0.2
				Decal6.Transparency = Decal6.Transparency + 0.2
				Part3.Size= Part3.Size + Vector3.new(2,0,2)
				Part1.Size= Part1.Size + Vector3.new(2,0,2)	
				Part5.Size= Part5.Size + Vector3.new(2,0,2)
			end
		end)
		local alr = false
		Model0:SetPrimaryPartCFrame(playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,-3,-40))
		for i, v in pairs(FindNearestHead(Part1.CFrame.p, 15)) do
			if v:FindFirstChild("Head")  and alr == false then
				alr = true
				attacked = true	
				local bp2 = Instance.new("BodyPosition",v:WaitForChild("Torso"))
				playor.Character.Humanoid.WalkSpeed = 0

				v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 5
				bp2.MaxForce = Vector3.new(5000000,5000000,5000000)
				bp2.D = 600
				bp2.Position = Part1.CFrame * CFrame.new(0,5,0).p
				spawn(function()
					local  Model0 = Instance.new("Model")
					local at1 = Instance.new("Attachment")
					local at2 = Instance.new("Attachment")
					local at12 = Instance.new("Attachment")
					local at11 = Instance.new("Attachment")
					local Part1 = Instance.new("Part")
					local Beam2 = Instance.new("Beam")
					local Part3 = Instance.new("Part")
					local Beam4 = Instance.new("Beam")
					local Part5 = Instance.new("Part")
					local Part6 = Instance.new("Part")
					local Part7 = Instance.new("Part")
					at1.Parent =Part1
					at2.Parent = Part7
					at11.Parent =Part3
					at12.Parent = Part5
					Model0.Parent = game.Workspace
					Model0.PrimaryPart = Part6
					Part1.Parent = Model0
					Part1.CFrame = CFrame.new(-81.0007629, 3.15246654, 131.82901, 1, 0, 0, 0, -1, 8.74227766e-08, 0, -8.74227766e-08, -1)
					Part1.Orientation = Vector3.new(0, 180, 180)
					Part1.Position = Vector3.new(-81.0007629, 3.15246654, 131.82901)
					Part1.Rotation = Vector3.new(-180, 0, 0)
					Part1.Transparency = 1
					Part1.Size = Vector3.new(0.5, 0.5, 0.5)
					Part1.Anchored = true
					Part1.BottomSurface = Enum.SurfaceType.Smooth
					Part1.CanCollide = false
					Part1.TopSurface = Enum.SurfaceType.Smooth
					Beam2.Parent = Part1
					Beam2.Attachment0 = at1
					Beam2.Attachment1 = at2
					Beam2.Color = ColorSequence.new(Color3.new(0, 0.333333, 0),Color3.new(0, 0.333333, 0))
					Beam2.CurveSize0 = -5
					Beam2.CurveSize1 = 5
					Beam2.LightEmission = 0.55000001192093
					Beam2.LightInfluence = 1
					Beam2.Segments = 1000
					Beam2.Texture = "http://www.roblox.com/asset/?id=73042633"
					Beam2.TextureLength = 2
					Beam2.TextureMode = Enum.TextureMode.Static
					Beam2.TextureSpeed = 10
					Beam2.Transparency = NumberSequence.new(0,0)
					Beam2.Width0 = 5
					Beam2.Width1 = 5
					Part3.Parent = Model0
					Part3.CFrame = CFrame.new(-81.0007629, 3.15245962, 123.829437, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					Part3.Position = Vector3.new(-81.0007629, 3.15245962, 123.829437)
					Part3.Transparency = 1
					Part3.Size = Vector3.new(0.5, 0.5, 0.5)
					Part3.Anchored = true
					Part3.BottomSurface = Enum.SurfaceType.Smooth
					Part3.CanCollide = false
					Part3.TopSurface = Enum.SurfaceType.Smooth
					Beam4.Parent = Part3
					Beam4.Attachment0 = at12
					Beam4.Attachment1 = at11
					Beam4.Color = ColorSequence.new(Color3.new(0, 0.333333, 0),Color3.new(0, 0.333333, 0))
					Beam4.CurveSize0 = 5
					Beam4.CurveSize1 = -5
					Beam4.LightEmission = 0.55000001192093
					Beam4.LightInfluence = 1
					Beam4.Segments = 1000
					Beam4.Texture = "http://www.roblox.com/asset/?id=73042633"
					Beam4.TextureLength = 2
					Beam4.TextureMode = Enum.TextureMode.Static
					Beam4.TextureSpeed = 10
					Beam4.Transparency = NumberSequence.new(0,0)
					Beam4.Width0 = 5
					Beam4.Width1 = 5
					Part5.Parent = Model0
					Part5.CFrame = CFrame.new(-81.0009995, 3.15246701, 131.82901, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					Part5.Position = Vector3.new(-81.0009995, 3.15246701, 131.82901)
					Part5.Transparency = 1
					Part5.Size = Vector3.new(0.5, 0.5, 0.5)
					Part5.Anchored = true
					Part5.BottomSurface = Enum.SurfaceType.Smooth
					Part5.CanCollide = false
					Part5.TopSurface = Enum.SurfaceType.Smooth
					Part6.Name = "main"
					Part6.Parent = Model0
					Part6.CFrame = CFrame.new(-81.0009995, 3.15246701, 127.82901, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					Part6.Position = Vector3.new(-81.0009995, 3.15246701, 127.82901)
					Part6.Transparency = 1
					Part6.Size = Vector3.new(0.5, 0.5, 0.5)
					Part6.Anchored = true
					Part6.BottomSurface = Enum.SurfaceType.Smooth
					Part6.CanCollide = false
					Part6.TopSurface = Enum.SurfaceType.Smooth
					Part7.Parent = Model0
					Part7.CFrame = CFrame.new(-81.0009995, 3.15245962, 123.829437, 1, 0, 0, 0, -1, 8.74227766e-08, 0, -8.74227766e-08, -1)
					Part7.Orientation = Vector3.new(0, 180, 180)
					Part7.Position = Vector3.new(-81.0009995, 3.15245962, 123.829437)
					Part7.Rotation = Vector3.new(-180, 0, 0)
					Part7.Transparency = 1
					Part7.Size = Vector3.new(0.5, 0.5, 0.5)
					Part7.Anchored = true
					Part7.BottomSurface = Enum.SurfaceType.Smooth
					Part7.CanCollide = false
					Part7.TopSurface = Enum.SurfaceType.Smooth
					Model0:SetPrimaryPartCFrame(v:WaitForChild("Torso").CFrame*CFrame.new(0,-10,0))
					spawn(function()
						for i = 1,10 do
							swait()
							Model0:SetPrimaryPartCFrame(Part6.CFrame*CFrame.new(0,1,0))

						end
					end)


					wait(0.3)
					spawn(function()
						local jj = 0
						swait()
						for i = 1,40 do
							swait()
							jj = jj + 0.025
							Beam2.Transparency = NumberSequence.new(jj)
							Beam4.Transparency = NumberSequence.new(jj)

						end
					end)
				end)
				spawn(function()



					local Model0 = Instance.new("Model")
					local at1 = Instance.new("Attachment")
					local at2 = Instance.new("Attachment")
					local at12 = Instance.new("Attachment")
					local at11 = Instance.new("Attachment")
					local Part1 = Instance.new("Part")
					local Beam2 = Instance.new("Beam")
					local Part3 = Instance.new("Part")
					local Beam4 = Instance.new("Beam")
					local Part5 = Instance.new("Part")
					local Part6 = Instance.new("Part")
					local Part7 = Instance.new("Part")
					at1.Parent =Part1
					at2.Parent = Part7
					at11.Parent =Part3
					at12.Parent = Part5
					Model0.Parent = game.Workspace
					Model0.PrimaryPart = Part6
					Part1.Parent = Model0
					Part1.CFrame = CFrame.new(-81.0007629, 4.23644304, 130.82901, 1, 0, 0, 0, -1, 8.74227766e-08, 0, -8.74227766e-08, -1)
					Part1.Orientation = Vector3.new(0, 180, 180)
					Part1.Position = Vector3.new(-81.0007629, 4.23644304, 130.82901)
					Part1.Rotation = Vector3.new(-180, 0, 0)
					Part1.Transparency = 1
					Part1.Size = Vector3.new(0.5, 0.5, 0.5)
					Part1.Anchored = true
					Part1.BottomSurface = Enum.SurfaceType.Smooth
					Part1.CanCollide = false
					Part1.TopSurface = Enum.SurfaceType.Smooth
					Beam2.Parent = Part1
					Beam2.Attachment0 = at1
					Beam2.Attachment1 = at2
					Beam2.Color = ColorSequence.new(Color3.new(0, 0.333333, 0),Color3.new(0, 0.333333, 0))
					Beam2.CurveSize0 = -4
					Beam2.CurveSize1 = 4
					Beam2.LightEmission = 0.69999998807907
					Beam2.LightInfluence = 1
					Beam2.Segments = 1000
					Beam2.Texture = "http://www.roblox.com/asset/?id=73042633"
					Beam2.TextureLength = 2
					Beam2.TextureMode = Enum.TextureMode.Static
					Beam2.TextureSpeed = 10
					Beam2.Transparency = NumberSequence.new(0,0)
					Beam2.Width0 = 5
					Beam2.Width1 = 5
					Part3.Parent = Model0
					Part3.CFrame = CFrame.new(-81.0007629, 4.23643589, 124.829437, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					Part3.Position = Vector3.new(-81.0007629, 4.23643589, 124.829437)
					Part3.Transparency = 1
					Part3.Size = Vector3.new(0.5, 0.5, 0.5)
					Part3.Anchored = true
					Part3.BottomSurface = Enum.SurfaceType.Smooth
					Part3.CanCollide = false
					Part3.TopSurface = Enum.SurfaceType.Smooth
					Beam4.Parent = Part3
					Beam4.Attachment0 = at12
					Beam4.Attachment1 = at11
					Beam4.Color = ColorSequence.new(Color3.new(0, 0.333333, 0),Color3.new(0, 0.333333, 0))
					Beam4.CurveSize0 = 4
					Beam4.CurveSize1 = -4
					Beam4.LightEmission = 0.69999998807907
					Beam4.LightInfluence = 1
					Beam4.Segments = 1000
					Beam4.Texture = "http://www.roblox.com/asset/?id=73042633"
					Beam4.TextureLength = 2
					Beam4.TextureMode = Enum.TextureMode.Static
					Beam4.TextureSpeed = 10
					Beam4.Transparency = NumberSequence.new(0,0)
					Beam4.Width0 = 5
					Beam4.Width1 = 5
					Part5.Parent = Model0
					Part5.CFrame = CFrame.new(-81.0009995, 4.23644352, 130.82901, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					Part5.Position = Vector3.new(-81.0009995, 4.23644352, 130.82901)
					Part5.Transparency = 1
					Part5.Size = Vector3.new(0.5, 0.5, 0.5)
					Part5.Anchored = true
					Part5.BottomSurface = Enum.SurfaceType.Smooth
					Part5.CanCollide = false
					Part5.TopSurface = Enum.SurfaceType.Smooth
					Part6.Name = "main"
					Part6.Parent = Model0
					Part6.CFrame = CFrame.new(-81.0009995, 4.23644352, 127.82901, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					Part6.Position = Vector3.new(-81.0009995, 4.23644352, 127.82901)
					Part6.Transparency = 1
					Part6.Size = Vector3.new(0.5, 0.5, 0.5)
					Part6.Anchored = true
					Part6.BottomSurface = Enum.SurfaceType.Smooth
					Part6.CanCollide = false
					Part6.TopSurface = Enum.SurfaceType.Smooth
					Part7.Parent = Model0
					Part7.CFrame = CFrame.new(-81.0009995, 4.23643589, 124.829437, 1, 0, 0, 0, -1, 8.74227766e-08, 0, -8.74227766e-08, -1)
					Part7.Orientation = Vector3.new(0, 180, 180)
					Part7.Position = Vector3.new(-81.0009995, 4.23643589, 124.829437)
					Part7.Rotation = Vector3.new(-180, 0, 0)
					Part7.Transparency = 1
					Part7.Size = Vector3.new(0.5, 0.5, 0.5)
					Part7.Anchored = true
					Part7.BottomSurface = Enum.SurfaceType.Smooth
					Part7.CanCollide = false
					Part7.TopSurface = Enum.SurfaceType.Smooth
					Model0:SetPrimaryPartCFrame(v:WaitForChild("Torso").CFrame*CFrame.new(0,-8,0))
					spawn(function()
						for i = 1,10 do
							swait()
							Model0:SetPrimaryPartCFrame(Part6.CFrame*CFrame.new(0,1,0))

						end
					end)

					wait(0.3)
					spawn(function()
						local jj = 0
						swait()
						for i = 1,40 do
							swait()
							jj = jj + 0.025
							Beam2.Transparency = NumberSequence.new(jj)
							Beam4.Transparency = NumberSequence.new(jj)

						end
					end)
				end)



				spawn(function()

					local Model0 = Instance.new("Model")
					local at1 = Instance.new("Attachment")
					local at2 = Instance.new("Attachment")
					local at12 = Instance.new("Attachment")
					local at11 = Instance.new("Attachment")
					local Part1 = Instance.new("Part")
					local Beam2 = Instance.new("Beam")
					local Part3 = Instance.new("Part")
					local Beam4 = Instance.new("Beam")
					local Part5 = Instance.new("Part")
					local Part6 = Instance.new("Part")
					local Part7 = Instance.new("Part")
					at1.Parent =Part1
					at2.Parent = Part7
					at11.Parent =Part3
					at12.Parent = Part5
					Model0.Parent = game.Workspace
					Model0.PrimaryPart = Part6
					Part1.Parent = Model0
					Part1.CFrame = CFrame.new(-81.0007629, 4.23644304, 130.82901, 1, 0, 0, 0, -1, 8.74227766e-08, 0, -8.74227766e-08, -1)
					Part1.Orientation = Vector3.new(0, 180, 180)
					Part1.Position = Vector3.new(-81.0007629, 4.23644304, 130.82901)
					Part1.Rotation = Vector3.new(-180, 0, 0)
					Part1.Transparency = 1
					Part1.Size = Vector3.new(0.5, 0.5, 0.5)
					Part1.Anchored = true
					Part1.BottomSurface = Enum.SurfaceType.Smooth
					Part1.CanCollide = false
					Part1.TopSurface = Enum.SurfaceType.Smooth
					Beam2.Parent = Part1
					Beam2.Attachment0 = at1
					Beam2.Attachment1 = at2
					Beam2.Color = ColorSequence.new(Color3.new(0, 0.333333, 0),Color3.new(0, 0.333333, 0))
					Beam2.CurveSize0 = -4
					Beam2.CurveSize1 = 4
					Beam2.LightEmission = 0.69999998807907
					Beam2.LightInfluence = 1
					Beam2.Segments = 1000
					Beam2.Texture = "http://www.roblox.com/asset/?id=73042633"
					Beam2.TextureLength = 2
					Beam2.TextureMode = Enum.TextureMode.Static
					Beam2.TextureSpeed = 10
					Beam2.Transparency = NumberSequence.new(0,0)
					Beam2.Width0 = 5
					Beam2.Width1 = 5
					Part3.Parent = Model0
					Part3.CFrame = CFrame.new(-81.0007629, 4.23643589, 124.829437, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					Part3.Position = Vector3.new(-81.0007629, 4.23643589, 124.829437)
					Part3.Transparency = 1
					Part3.Size = Vector3.new(0.5, 0.5, 0.5)
					Part3.Anchored = true
					Part3.BottomSurface = Enum.SurfaceType.Smooth
					Part3.CanCollide = false
					Part3.TopSurface = Enum.SurfaceType.Smooth
					Beam4.Parent = Part3
					Beam4.Attachment0 = at12
					Beam4.Attachment1 = at11
					Beam4.Color = ColorSequence.new(Color3.new(0, 0.333333, 0),Color3.new(0, 0.333333, 0))
					Beam4.CurveSize0 = 4
					Beam4.CurveSize1 = -4
					Beam4.LightEmission = 0.69999998807907
					Beam4.LightInfluence = 1
					Beam4.Segments = 1000
					Beam4.Texture = "http://www.roblox.com/asset/?id=73042633"
					Beam4.TextureLength = 2
					Beam4.TextureMode = Enum.TextureMode.Static
					Beam4.TextureSpeed = 10
					Beam4.Transparency = NumberSequence.new(0,0)
					Beam4.Width0 = 5
					Beam4.Width1 = 5
					Part5.Parent = Model0
					Part5.CFrame = CFrame.new(-81.0009995, 4.23644352, 130.82901, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					Part5.Position = Vector3.new(-81.0009995, 4.23644352, 130.82901)
					Part5.Transparency = 1
					Part5.Size = Vector3.new(0.5, 0.5, 0.5)
					Part5.Anchored = true
					Part5.BottomSurface = Enum.SurfaceType.Smooth
					Part5.CanCollide = false
					Part5.TopSurface = Enum.SurfaceType.Smooth
					Part6.Name = "main"
					Part6.Parent = Model0
					Part6.CFrame = CFrame.new(-81.0009995, 4.23644352, 127.82901, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					Part6.Position = Vector3.new(-81.0009995, 4.23644352, 127.82901)
					Part6.Transparency = 1
					Part6.Size = Vector3.new(0.5, 0.5, 0.5)
					Part6.Anchored = true
					Part6.BottomSurface = Enum.SurfaceType.Smooth
					Part6.CanCollide = false
					Part6.TopSurface = Enum.SurfaceType.Smooth
					Part7.Parent = Model0
					Part7.CFrame = CFrame.new(-81.0009995, 4.23643589, 124.829437, 1, 0, 0, 0, -1, 8.74227766e-08, 0, -8.74227766e-08, -1)
					Part7.Orientation = Vector3.new(0, 180, 180)
					Part7.Position = Vector3.new(-81.0009995, 4.23643589, 124.829437)
					Part7.Rotation = Vector3.new(-180, 0, 0)
					Part7.Transparency = 1
					Part7.Size = Vector3.new(0.5, 0.5, 0.5)
					Part7.Anchored = true
					Part7.BottomSurface = Enum.SurfaceType.Smooth
					Part7.CanCollide = false
					Part7.TopSurface = Enum.SurfaceType.Smooth
					Model0:SetPrimaryPartCFrame(v:WaitForChild("Torso").CFrame*CFrame.new(0,-12,0))
					spawn(function()
						for i = 1,10 do
							swait()
							Model0:SetPrimaryPartCFrame(Part6.CFrame*CFrame.new(0,1,0))

						end
					end)








					wait(0.3)
					spawn(function()
						local jj = 0
						swait()
						for i = 1,40 do
							swait()
							jj = jj + 0.025
							Beam2.Transparency = NumberSequence.new(jj)
							Beam4.Transparency = NumberSequence.new(jj)

						end

					end)
					local YAHAHA = Instance.new("Sound",char.Head)
					YAHAHA.Volume = 0.7
					YAHAHA.Looped = false
					YAHAHA.SoundId = "rbxassetid://1595826525"
					YAHAHA:Play()


					for i = 0,0.7,0.06 do 
						swait()
						ls.C0=ls.C0:Lerp(cf(-1, 0.5, 0, 0, 0.42261827, -0.906307757, 0.57357645, 0.742403865, 0.346188635, 0.819152057, -0.519836783, -0.24240388),i)  

						rs.C0=rs.C0:Lerp(cf(1, 0.5, 0, 0, 0, 1, 0.766044557, -0.642787516, 0, 0.642787516, 0.766044557, 0),i)  

						lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0.443526447, -0.0816008151, -0.892538846, 0.216829985, 0.976033807, 0.0185142308, 0.869637311, -0.201740757, 0.450590312),i)  

						rh.C0=rh.C0:Lerp(cf(1, -1, 0, 0.0499904901, -0.0713937879, 0.99619472, -0.571393967, 0.816034853, 0.087155737, -0.819151938, -0.57357657, 0),i)  

						rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.819152057, -0.554032326, -0.148452505, 0, -0.258819044, 0.965925813, -0.57357645, 0.791240096, 0.212012157),i)  

						ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.965925872, 0.254886776, -0.044943478, 0, 0.173648387, 0.98480767, 0.258818835, 0.951251209, -0.167731479),i)  
					end




					for i = 0,1,0.2 do 
						swait()
						ls.C0=ls.C0:Lerp(cf(-1.32145214, 0.335099518, -0.260424018, 0.965925813, -0.0449434631, -0.254887015, 0.198266909, 0.761511743, 0.617081761, 0.166365698, -0.646590889, 0.744474769),i)  

						rs.C0=rs.C0:Lerp(cf(0.984135509, 2.06354666, -1.15651, -0.569881499, 0.163175911, 0.805362403, 0.371326238, -0.823172927, 0.42953819, 0.733042836, 0.543838084, 0.408519506),i)  

						lh.C0=lh.C0:Lerp(cf(-0.897907495, -1.23074532, -0.687878966, -0.122616589, 0.130158424, -0.98388195, 0.442062914, 0.894749582, 0.0632748008, 0.888563693, -0.427179158, -0.167249367),i)  

						rh.C0=rh.C0:Lerp(cf(1.07243097, -0.351057589, -0.148469135, -0.0455813706, -0.545506775, 0.836865842, 0.886364281, 0.364294469, 0.285740882, -0.460739195, 0.754792511, 0.466912717),i)  

						rj.C0=rj.C0:Lerp(cf(-0.0253434479, -0.453367442, -0.306923389, -0.95118773, 0.301193178, 0.0672640726, 0.295783669, 0.827540815, 0.477166831, 0.0880556628, 0.473770916, -0.87623471),i)  

						ne.C0=ne.C0:Lerp(cf(0.02138016, 0.97336477, -0.0706495196, -0.959055662, -0.264678001, -0.100785807, -0.171009883, 0.257514864, 0.951021373, -0.225760624, 0.929317772, -0.292233616),i)  
					end

					local chain = Instance.new("Part",game.Workspace)
					chain.Size = Vector3.new(1,1,1)
					chain.CFrame = playor.Character["Right Arm"].CFrame
					chain.CanCollide = false
					chain.Transparency = 1
					local bp1 = Instance.new("BodyPosition",chain)
					bp1.D = 450
					bp1.Position = v:WaitForChild("Torso").CFrame.p
					local at121 = Instance.new("Attachment",chain)
					local at112 = Instance.new("Attachment",playor.Character["Right Arm"])

					local	Beam4 = Instance.new("Beam",chain)
					Beam4.Parent = Part3
					Beam4.Attachment0 = at121
					Beam4.Attachment1 = at112
					Beam4.Color = ColorSequence.new(Color3.new(0, 0.333333, 0),Color3.new(0, 0.333333, 0))
					Beam4.CurveSize0 = 4
					Beam4.CurveSize1 = -4
					Beam4.LightEmission = 0.69999998807907
					Beam4.LightInfluence = 1
					Beam4.Segments = 1000
					Beam4.Texture = "http://www.roblox.com/asset/?id=73042633"
					Beam4.TextureLength = 2
					Beam4.TextureMode = Enum.TextureMode.Static
					Beam4.TextureSpeed = 10
					Beam4.Transparency = NumberSequence.new(0,0)
					Beam4.Width0 = 10
					Beam4.Width1 = 10





					wait(0.1)

					for i = 0,0.3,0.06 do 
						swait()
						ls.C0=ls.C0:Lerp(cf(-1.32145214, 0.335099518, -0.260424018, 0.965925813, -0.0449434631, -0.254887015, 0.198266909, 0.761511743, 0.617081761, 0.166365698, -0.646590889, 0.744474769),i)  

						rs.C0=rs.C0:Lerp(cf(0.984135509, 2.06354666, -1.15651, -0.569881499, 0.163175911, 0.805362403, 0.371326238, -0.823172927, 0.42953819, 0.733042836, 0.543838084, 0.408519506),i)  

						lh.C0=lh.C0:Lerp(cf(-0.992685676, -1.26181793, -0.142080545, -0.1226165, 0.130158544, -0.98388195, 0.4420636, 0.894749165, 0.0632748008, 0.888563335, -0.427179903, -0.167249367),i)  

						rh.C0=rh.C0:Lerp(cf(1.11263394, -0.564589322, -0.908710241, 0.0498373955, -0.140384793, 0.988841832, 0.809639215, 0.585401297, 0.04230313, -0.584807992, 0.798496962, 0.142835885),i)  

						--rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.998570144, 0.0462408327, 0.0268225484, 0.0533304065, 0.827199519, 0.559371769, 0.00367821753, 0.560002446, -0.828482747),i)  

						rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.965925813, -0.258819044, 0, -0.198266909, 0.739942133, 0.642787576, -0.166365668, 0.620885134, -0.766044497),i) 

						ne.C0=ne.C0:Lerp(cf(0.02138016, 0.97336477, -0.0706495196, -0.959055662, -0.281744599, -0.0288479105, -0.171009883, 0.494882703, 0.851966381, -0.225760624, 0.822016418, -0.522801161),i)  


					end


					for i = 0,1,0.2 do 
						swait()

						ls.C0=ls.C0:Lerp(cf(-1, 0.5, 0, -0.109381676, 0.965925872, 0.234569639, -0.956669509, -0.166365638, 0.238968521, 0.269850194, -0.198266849, 0.942269206),i) 

						rs.C0=rs.C0:Lerp(cf(1, 0.5, 0, -0.0301536564, -0.767363429, -0.64050293, 0.864329517, -0.34185639, 0.368874788, -0.502021074, -0.542482734, 0.673563182),i) 

						lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0, 0, -1, 0.984807968, 0.173647702, 0, 0.173647702, -0.984807968, 0),i) 

						rh.C0=rh.C0:Lerp(cf(1, -1.20145357, 0.0355216973, 0, 0, 1, -0.173648179, 0.98480773, 0, -0.98480773, -0.173648179, 0),i) 

						rj.C0=rj.C0:Lerp(cf(0, -0.700450301, 0.466628671, -1, 0, 0, 0, -0.8191517, 0.573576748, 0, 0.573576748, 0.8191517),i) 

						ne.C0=ne.C0:Lerp(cf(0, 1, 0, -1, 0, 0, 0, 0.258819282, 0.965925753, 0, 0.965925753, -0.258819282),i) 




					end
					bp1.D = 1000
					bp1.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,15,2).p
					bp2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,8,-15).p


					wait(0.1)
					spawn(function()
						local jj = 0
						swait(8)
						for i = 1,20 do
							swait()
							jj = jj + 0.05
							Beam4.Transparency = NumberSequence.new(jj)

						end
					end)

					bp2.Parent = nil

					bp1:Destroy()

					for i = 0,0.5,0.05 do 
						swait()

						ls.C0=ls.C0:Lerp(cf(-1, 0.5, 0, -0.0151344286, 0.819814026, -0.572429776, -0.996137142, 0.0371626243, 0.0795598179, 0.0864972547, 0.571422696, 0.816084743),i)  

						rs.C0=rs.C0:Lerp(cf(1, 0.5, 0, -0.00759616867, -0.965983391, 0.25849247, 0.965983272, 0.0597337484, 0.251611114, -0.258492887, 0.251610667, 0.932670057),i)  

						lh.C0=lh.C0:Lerp(cf(-1, -1.56340802, 0.0545125902, 0, 0, -1, 0.0871557146, 0.996194601, 0, 0.996194601, -0.0871557146, 0),i)  

						rh.C0=rh.C0:Lerp(cf(1, -1.0248878, 0.422379017, 0, 0, 1, -0.939692616, 0.342020214, 0, -0.342020214, -0.939692616, 0),i)  

						rj.C0=rj.C0:Lerp(cf(0, -0.223582447, -0.107693635, -1, 0, 0, 0, -0.70710665, 0.707106888, 0, 0.707106888, 0.70710665),i)  

						ne.C0=ne.C0:Lerp(cf(0, 1, 0, -1, 0, 0, 0, 0.342019767, 0.939692736, 0, 0.939692736, -0.342019767),i)  

					end


					ls.C0=cf(-1.46012437, 0.0981873125, 0, 0, 0.99619472, 0.0871557146, 0, -0.0871557146, 0.99619472, 1, 0, 0) 

					rs.C0=cf(1.54889929, -0.0547920242, 0, 0, -1, -4.37113883e-08, 0, -4.37113883e-08, 1, -1, 0, 0)

					lh.C0=cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0) 

					rh.C0=cf(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)

					rj.C0=cf(0, 0, 0, -0.766044497, 0.642787457, 0, -0.368687779, -0.439385086, 0.819152057, 0.526540697, 0.627506912, 0.57357645) 

					ne.C0=cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
					bp2.D = 500
					bp2.Parent =	v:WaitForChild("Torso")
					bp2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,5,-6).p
					spawn(function()
						for i  = 1,10 do
							swait(3)
							local MHP = playor.Character.Humanoid.MaxHealth
							if OVERDRIVE == true and playor.Character.Humanoid.MaxHealth < 200 then
								MHP = MHP + 2.5
								playor.Character.Humanoid.MaxHealth = MHP
							end
							v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 2.5
							spawn(function()
								for i = 1,math.random(0,2) do
									local Part0 = Instance.new("Part")
									local ParticleEmitter1 = Instance.new("ParticleEmitter")
									local ParticleEmitter2 = Instance.new("ParticleEmitter")
									Part0.Name = "ORB O_OO_O__O"
									Part0.Parent = game.Workspace
									Part0.CFrame = CFrame.new(119.075157, 2.55000997, -37.0025864, 1, 0, 0, 0, 1, 0, 0, 0, 1)
									Part0.Position = Vector3.new(119.075157, 2.55000997, -37.0025864)
									Part0.Transparency = 1
									Part0.Size = Vector3.new(0.0999998227, 0.099999927, 0.0999999121)
									Part0.BottomSurface = Enum.SurfaceType.Smooth
									Part0.CanCollide = false
									Part0.Material = Enum.Material.SmoothPlastic
									Part0.TopSurface = Enum.SurfaceType.Smooth
									ParticleEmitter1.Name = "Vigor"
									ParticleEmitter1.Parent = Part0
									ParticleEmitter1.Speed = NumberRange.new(0, 0)
									ParticleEmitter1.Rotation = NumberRange.new(37, 999)
									ParticleEmitter1.Color = ColorSequence.new(Color3.new(0.117647, 0, 0.352941),Color3.new(0.117647, 0, 0.352941))
									ParticleEmitter1.Texture = "rbxassetid://48315270"
									ParticleEmitter1.Size = NumberSequence.new(0.99999964237213,0)
									ParticleEmitter1.Drag = 50
									ParticleEmitter1.EmissionDirection = Enum.NormalId.Left
									ParticleEmitter1.Lifetime = NumberRange.new(1, 1)
									ParticleEmitter1.Rate = 8000
									ParticleEmitter1.RotSpeed = NumberRange.new(400, 400)
									ParticleEmitter2.Name = "Void"
									ParticleEmitter2.Parent = Part0
									ParticleEmitter2.Speed = NumberRange.new(0, 0)
									ParticleEmitter2.Rotation = NumberRange.new(37, 999)
									ParticleEmitter2.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
									ParticleEmitter2.Texture = "rbxassetid://48315270"
									ParticleEmitter2.ZOffset = 1
									ParticleEmitter2.Size = NumberSequence.new(0.50000011920929,0)
									ParticleEmitter2.Drag = 50
									ParticleEmitter2.EmissionDirection = Enum.NormalId.Left
									ParticleEmitter2.Lifetime = NumberRange.new(1, 1)
									ParticleEmitter2.Rate = 8000
									ParticleEmitter2.RotSpeed = NumberRange.new(-400, -400)
									local b2p2 = Instance.new("BodyPosition",Part0)
									b2p2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
									b2p2.Position =v:WaitForChild("Torso").CFrame * CFrame.new(0,0,0).p

									spawn(function()
										Part0.CFrame =v:WaitForChild("Torso").CFrame * CFrame.Angles(0,math.rad(math.random(-180,180)),0)

										wait(0.1)
										b2p2.Position = Part0.CFrame * CFrame.new(0,math.random(5,20),math.random(5,20)).p



										wait(1)
										b2p2.D = 800
										for i = 1,5 do
											wait(0.1)
											b2p2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0).p

										end
										playor.Character.Humanoid.Health = playor.Character.Humanoid.Health + 2
										ParticleEmitter1.Enabled = false
										ParticleEmitter2.Enabled = false
										wait(1)
										Part0:Destroy()

									end)

								end
							end)

							spawn(function()
								local Sound0 = Instance.new("Sound")
								Sound0.Name = "cut"

								Sound0.Parent = playor.Character.Torso
								Sound0.SoundId = "rbxassetid://3404418058"
								Sound0.Volume = 1
								Sound0:Play()
							end)

							local 	Part0 = Instance.new("FlagStand")
							local 	SpecialMesh2 = Instance.new("SpecialMesh")
							Part0.Parent = game.Workspace
							Part0.CFrame = CFrame.new(3.28999996, 0.500003815, -2.83999991, 1, 0, 0, 0, 1, 0, 0, 0, 1)
							Part0.Position = Vector3.new(3.28999996, 0.500003815, -2.83999991)
							Part0.Size = Vector3.new(0.5, 0.5, 0.5)
							Part0.BottomSurface = Enum.SurfaceType.Smooth
							Part0.TopSurface = Enum.SurfaceType.Smooth
							SpecialMesh2.Parent = Part0
							Part0.Transparency = 0.4
							SpecialMesh2.MeshId = "rbxassetid://5769821006"
							SpecialMesh2.Scale = Vector3.new(7,7,7)
							SpecialMesh2.VertexColor = Vector3.new(0, 2, 0)
							SpecialMesh2.TextureId = "rbxassetid://5614579544"
							SpecialMesh2.MeshType = Enum.MeshType.FileMesh
							Part0.CFrame = playor.Character.Torso.CFrame
							Part0.CFrame = Part0.CFrame * CFrame.Angles(math.rad(math.random(-15,15)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15)))
							Part0.Anchored = true
							Part0.CanCollide = false
							spawn(function()
								for i = 1,20 do
									game:GetService('RunService').Stepped:wait()
									SpecialMesh2.Scale =	SpecialMesh2.Scale + Vector3.new(0.1, 0.1, 0.1)


									Part0.Position = playor.Character.HumanoidRootPart.Position	
									Part0.CFrame = Part0.CFrame *CFrame.Angles(0,math.rad(-15),0)
									Part0.Transparency = Part0.Transparency + 0.05

								end
								Part0:Destroy()

							end)	
						end
					end)
					local Part0 = Instance.new("Part")
					local SpecialMesh1 = Instance.new("SpecialMesh")
					Part0.Parent = game.Workspace
					Part0.CFrame = CFrame.new(-101.290001, 7.30272579, -197.509995, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					Part0.Position = Vector3.new(-101.290001, 7.30272579, -197.509995)
					Part0.Size = Vector3.new(4.71152735, 0.641620576, 2.52291441)
					Part0.BottomSurface = Enum.SurfaceType.Smooth
					Part0.TopSurface = Enum.SurfaceType.Smooth
					SpecialMesh1.Parent = Part0
					Part0.Transparency = 0.5
					SpecialMesh1.MeshId = "rbxassetid://5922652183"
					SpecialMesh1.Scale = Vector3.new(1.17788184, 0.641620576, 1.2614572)
					SpecialMesh1.VertexColor = Vector3.new(1,1,1)
					SpecialMesh1.TextureId = "rbxassetid://0"
					SpecialMesh1.MeshType = Enum.MeshType.FileMesh
					Part0.Anchored = true
					Part0.CanCollide = false
					Part0.CFrame =  playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,-0.25,0)* CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(0))
					spawn(function()
						for i = 1,50 do
							wait()
							SpecialMesh1.Scale = 			SpecialMesh1.Scale + Vector3.new(0.03,0.01,0.03)								
							Part0.Transparency = Part0.Transparency + 0.02
							Part0.CFrame = Part0.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(8),0)
						end
						Part0:Destroy()

					end)
					for i = 1,40 do
						swait()

						rj.C0 = rj.C0 * CFrame.Angles(0,0,math.rad(40))
					end




					for i = 0,1,0.1 do 
						swait()
						ls.C0=ls.C0:lerp(cf(-1.65304542, 0.466647714, -0.517993689, -0.171009868, 0.92673564, 0.334539384, -0.030153662, -0.344304711, 0.938373506, 0.984807789, 0.150383562, 0.086823985),i)


						rs.C0=rs.C0:lerp(cf(1, 0.5, 0, 0.392212749, -0.526345789, 0.754406512, 0.540650666, 0.79541707, 0.273876667, -0.744221747, 0.300452471, 0.596541941),i) 

						lh.C0=lh.C0:lerp(cf(-0.961183548, -0.933184206, 0.013566006, 0.629633963, 0.494763881, -0.59897393, -0.48844558, 0.851650655, 0.190031707, 0.604137361, 0.172915742, 0.777893424),i)

						rh.C0=rh.C0:lerp(cf(0.786982894, -1.30577302, -0.365309685, -0.813144743, -0.0386584848, 0.580776274, -0.139104694, 0.981785595, -0.129409462, -0.565195024, -0.186017334, -0.803711414),i)

						rj.C0=rj.C0:lerp(cf(0, 0, 0, -0.249999762, -0.965925872, -0.0669872388, -0.258819044, 0, 0.965925813, -0.933012724, 0.258818805, -0.25) ,i)

						ne.C0=ne.C0:lerp(cf(0, 1, 0, -0.642787516, 0.754406512, 0.133022398, 0, -0.173648387, 0.98480767, 0.766044497, 0.63302201, 0.111618996) ,i)

					end

					bp2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-3).p
					local GRAPPLELEL = Instance.new("Sound",playor.Character.Torso)
					GRAPPLELEL.SoundId = "rbxassetid://153092304"
					GRAPPLELEL.Volume = 2
					GRAPPLELEL.Looped = false

					GRAPPLELEL:Play()
					spawn(function()
						local blood = Instance.new("FlagStand",script)
						blood.Anchored = true
						blood.Material = Enum.Material.SmoothPlastic
						blood.BrickColor = BrickColor.new("Institutional white")
						blood.CanCollide = false
						blood.Shape = "Ball"		
						blood.Transparency = 0.3
						blood.Size = Vector3.new(2,2,2)
						blood.CFrame = v:FindFirstChild("Torso").CFrame
						spawn(function()
							for i =1,5 do
								swait()

								blood.Size = 					blood.Size + Vector3.new(1,1,1)								
								blood.Transparency = blood.Transparency + 0.2
							end
							blood:Destroy()
						end)
					end)
					wait(0.2)
					for i = 0,1,0.06 do 
						swait()
						ls.C0=ls.C0:Lerp(cf(-1, 0.5, 0, 0, 0.42261827, -0.906307757, -0.939692557, 0.309975684, 0.144544035, 0.342020333, 0.851650655, 0.397131234),i) 

						rs.C0=rs.C0:Lerp(cf(1, 0.5, 0, -0.173648179, 0, 0.98480773, -0.806707323, 0.573576331, -0.142244279, -0.56486243, -0.819152117, -0.0996004865),i) 

						lh.C0=lh.C0:Lerp(cf(-1.05116975, -1.55667388, 0.0385430939, 0.342020363, 1.37835741e-07, -0.939692557, -4.02331352e-07, 1, 0, 0.939692497, 3.87430191e-07, 0.342020363),i) 

						rh.C0=rh.C0:Lerp(cf(1.01495707, -1.09136939, 0.115005709, 0.221664608, -0.101305813, 0.969846308, -0.749250054, 0.618854523, 0.23588869, -0.624090672, -0.778945565, 0.0612747669),i) 

						rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.642787635, -0.663413942, -0.383022219, 0, -0.5, 0.866025388, -0.766044438, 0.556670427, 0.321393818),i) 

						ne.C0=ne.C0:Lerp(cf(0, 1, 0, -1, 0, 0, 0, -0.422618449, 0.906307697, 0, 0.906307697, 0.422618449),i) 

					end

					wait(0.1)
					for i = 0,1,0.2 do 
						swait()


						ls.C0=ls.C0:Lerp(cf(-1, 0.5, 0, 0, 0.5, -0.866025388, 0.99619472, 0.0754791424, 0.043577902, 0.087155804, -0.862729907, -0.49809736),i) 

						rs.C0=rs.C0:Lerp(cf(1, 0.5, 0, -0.0151344314, -0.642215371, 0.766374826, 0.99619472, -0.0754790604, -0.0435778573, 0.0858316198, 0.762799025, 0.640913844),i) 

						lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0.0818994194, -0.0298089739, -0.99619472, 0.342020363, 0.939692557, 0, 0.936116755, -0.340718865, 0.0871555507),i) 

						rh.C0=rh.C0:Lerp(cf(1, -1.16327071, -0.448582739, 0, 0, 1, 0.939692616, 0.342020094, 0, -0.342020094, 0.939692616, 0),i) 

						rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.936116755, 0.320408165, -0.144996792, 0.183933139, 0.797446668, 0.574671566, 0.299756676, 0.511289954, -0.80543685),i) 

						ne.C0=ne.C0:Lerp(cf(0, 1, 0, -1, 0, 0, 0, 0.642787755, 0.766044319, 0, 0.766044319, -0.642787755),i) 



					end
					spawn(function()
						local IT = Instance.new
						local blood = Instance.new("FlagStand",script)
						blood.Anchored = true
						blood.Material = Enum.Material.SmoothPlastic
						blood.BrickColor = BrickColor.new("Institutional white")
						blood.CanCollide = false
						blood.Shape = "Ball"		
						blood.Transparency = 0.3
						blood.Size = Vector3.new(2,2,2)
						blood.CFrame = v:FindFirstChild("Torso").CFrame
						local minus = -180				
						BANG3 = IT("FlagStand",blood)
						BANG3.BrickColor = BrickColor.new("Institutional white")
						BANG3.Size = Vector3.new(0.65, 0.65, 0.65)
						BANG3.Locked = false
						BANG3.Material = Enum.Material.SmoothPlastic
						BANG3.CanCollide = false
						BANG3.Anchored = true
						BANG3.Transparency =  0.3
						--RHe.Orientation = Vector3.new(0, -90, 0)
						BANG3.formFactor =  "Symmetric"
						BANG3.CFrame = blood.CFrame * CFrame.Angles(math.random(minus,180),math.random(minus,180),math.random(minus,180))
						local joe2 = Instance.new("SpecialMesh",BANG3)
						joe2.MeshType = Enum.MeshType.FileMesh
						joe2.MeshId = "rbxassetid://3454554153"
						joe2.Scale = Vector3.new(1, 1, 1)
						spawn(function()
							for i = 1,20 do
								swait()
								joe2.Scale = 		joe2.Scale + Vector3.new(0.1, 0.1, 0.1)				
								BANG3.Transparency = BANG3.Transparency + 0.2		
							end
						end)

						BANG4 = IT("FlagStand",blood)
						BANG4.BrickColor = BrickColor.new("Institutional white")
						BANG4.Size = Vector3.new(0.65, 0.65, 0.65)
						BANG4.Locked = false
						BANG4.Material = Enum.Material.SmoothPlastic
						BANG4.CanCollide = false
						BANG4.Anchored = true
						BANG4.Transparency =  0.3
						--RHe.Orientation = Vector3.new(0, -90, 0)
						BANG4.formFactor =  "Symmetric"
						BANG4.CFrame = blood.CFrame * CFrame.Angles(math.random(minus,180),math.random(minus,180),math.random(minus,180))
						local joe3 = Instance.new("SpecialMesh",BANG4)
						joe3.MeshType = Enum.MeshType.FileMesh
						joe3.MeshId = "rbxassetid://3454554153"
						joe3.Scale = Vector3.new(1,1,1)
						spawn(function()
							for i = 1,5 do
								swait()
								joe3.Scale = 		joe3.Scale + Vector3.new(0.1, 0.1, 0.1)				
								BANG4.Transparency = BANG4.Transparency + 0.2		
							end
						end)
						spawn(function()
							for i =1,5 do
								swait()

								blood.Size = 					blood.Size + Vector3.new(1,1,1)								
								blood.Transparency = blood.Transparency + 0.2
							end
							blood:Destroy()
						end)
					end)
					local MHP = playor.Character.Humanoid.MaxHealth
					if OVERDRIVE == true and playor.Character.Humanoid.MaxHealth < 200 then
						MHP = MHP + 5
						playor.Character.Humanoid.MaxHealth = MHP
					end
					local GRAPPLELEL = Instance.new("Sound",playor.Character.Torso)
					GRAPPLELEL.SoundId = "rbxassetid://5312369043"
					GRAPPLELEL.Volume = 4
					GRAPPLELEL.Looped = false
					GRAPPLELEL:Play()
					v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 15
					bp2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,10,-15).p
					spawn(function()
						swait(0.5)
						spawn(function()
							for i = 1,math.random(2,4) do
								local Part0 = Instance.new("Part")
								local ParticleEmitter1 = Instance.new("ParticleEmitter")
								local ParticleEmitter2 = Instance.new("ParticleEmitter")
								Part0.Name = "ORB O_OO_O__O"
								Part0.Parent = game.Workspace
								Part0.CFrame = CFrame.new(119.075157, 2.55000997, -37.0025864, 1, 0, 0, 0, 1, 0, 0, 0, 1)
								Part0.Position = Vector3.new(119.075157, 2.55000997, -37.0025864)
								Part0.Transparency = 1
								Part0.Size = Vector3.new(0.0999998227, 0.099999927, 0.0999999121)
								Part0.BottomSurface = Enum.SurfaceType.Smooth
								Part0.CanCollide = false
								Part0.Material = Enum.Material.SmoothPlastic
								Part0.TopSurface = Enum.SurfaceType.Smooth
								ParticleEmitter1.Name = "Vigor"
								ParticleEmitter1.Parent = Part0
								ParticleEmitter1.Speed = NumberRange.new(0, 0)
								ParticleEmitter1.Rotation = NumberRange.new(37, 999)
								ParticleEmitter1.Color = ColorSequence.new(Color3.new(0.117647, 0, 0.352941),Color3.new(0.117647, 0, 0.352941))
								ParticleEmitter1.Texture = "rbxassetid://48315270"
								ParticleEmitter1.Size = NumberSequence.new(0.99999964237213,0)
								ParticleEmitter1.Drag = 50
								ParticleEmitter1.EmissionDirection = Enum.NormalId.Left
								ParticleEmitter1.Lifetime = NumberRange.new(1, 1)
								ParticleEmitter1.Rate = 8000
								ParticleEmitter1.RotSpeed = NumberRange.new(400, 400)
								ParticleEmitter2.Name = "Void"
								ParticleEmitter2.Parent = Part0
								ParticleEmitter2.Speed = NumberRange.new(0, 0)
								ParticleEmitter2.Rotation = NumberRange.new(37, 999)
								ParticleEmitter2.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
								ParticleEmitter2.Texture = "rbxassetid://48315270"
								ParticleEmitter2.ZOffset = 1
								ParticleEmitter2.Size = NumberSequence.new(0.50000011920929,0)
								ParticleEmitter2.Drag = 50
								ParticleEmitter2.EmissionDirection = Enum.NormalId.Left
								ParticleEmitter2.Lifetime = NumberRange.new(1, 1)
								ParticleEmitter2.Rate = 8000
								ParticleEmitter2.RotSpeed = NumberRange.new(-400, -400)
								local b2p2 = Instance.new("BodyPosition",Part0)
								b2p2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
								b2p2.Position =v:WaitForChild("Torso").CFrame * CFrame.new(0,0,0).p

								spawn(function()
									Part0.CFrame =v:WaitForChild("Torso").CFrame * CFrame.Angles(0,math.rad(math.random(-180,180)),0)

									wait(0.1)
									b2p2.Position = Part0.CFrame * CFrame.new(0,math.random(5,20),math.random(5,20)).p



									wait(1)
									b2p2.D = 800
									for i = 1,5 do
										wait(0.1)
										b2p2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0).p

									end
									playor.Character.Humanoid.Health = playor.Character.Humanoid.Health + 2
									ParticleEmitter1.Enabled = false
									ParticleEmitter2.Enabled = false
									wait(1)
									Part0:Destroy()

								end)

							end
						end)


						bp2:Destroy()
					end)
					for i = 0,0.3,0.05 do 
						swait()

						ls.C0=ls.C0:Lerp(cf(-1, 0.5, 0, -0.250000089, 0.433012664, -0.866025388, 0.824990273, 0.563464403, 0.043577902, 0.506844223, -0.703568041, -0.49809736),i) 

						rs.C0=rs.C0:Lerp(cf(1, 0.5, 0, 0.355962276, -0.534752727, 0.766374826, 0.859327853, 0.509565175, -0.0435778573, -0.367214501, 0.674079299, 0.640913844),i) 

						lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0.0868238956, 0.00759610161, -0.99619472, -0.0871557295, 0.99619472, 0, 0.992403924, 0.0868240595, 0.0871555507),i) 

						rh.C0=rh.C0:Lerp(cf(1, -1.16327071, -0.448582739, 0, 0, 1, 0.70710665, 0.707106888, 0, -0.707106888, 0.70710665, 0),i) 

						rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.936116755, 0.347018421, -0.0571284816, 0.183933139, 0.62153852, 0.761484325, 0.299756676, 0.70233041, -0.645660818),i) 

						ne.C0=ne.C0:Lerp(cf(0, 1, 0, -1, 0, 0, 0, 0.17364879, 0.984807611, 0, 0.984807611, -0.17364879),i) 

					end
					playor.Character.Humanoid.WalkSpeed = 16
					attacked = false
					attack = false
				end)
				local chiany = Instance.new("Sound",v:WaitForChild("Torso"))
				chiany.Volume = 2
				chiany.PlaybackSpeed = 1
				chiany.Looped = false
				chiany.SoundId = "rbxassetid://3522277332"
				chiany:Play()




				alr = false

			end
		end	
	end)
	swait(25)
	if attacked == true then
		swait(60*8)
		adadwqcd = false
	else
		attack = false
		swait(15)

		adadwqcd = false

	end
end
function asdq()
	attack = true
	asdqcd = true
	spawn(function()
		swait(75)
		asdqcd = false

	end)
	local CSUFVOICE = Instance.new("Sound")
	CSUFVOICE.Name = "CSUF VOICE"
	CSUFVOICE.Parent = Head
	CSUFVOICE.SoundId = "rbxasset://sounds/saul2/saul_1-36.wav"
	CSUFVOICE.Volume = 3.5
	CSUFVOICE.Pitch = 1.15
	CSUFVOICE:Play()
	game:GetService("Debris"):AddItem(CSUFVOICE,5)
	local Model0 = Instance.new("Model")
	local Part1 = Instance.new("FlagStand")
	local Part2 = Instance.new("FlagStand")
	local SurfaceGui3 = Instance.new("SurfaceGui")
	local TextLabel4 = Instance.new("TextLabel")
	local Part5 = Instance.new("FlagStand")
	local Weld6 = Instance.new("Weld")
	local Weld7 = Instance.new("Weld")
	local Weld8 = Instance.new("Weld")
	local Part9 = Instance.new("FlagStand")
	Model0.Parent = game.Workspace
	Model0.PrimaryPart = Part9
	Part1.Parent = Model0
	Part1.CFrame = CFrame.new(-4.51028585, 2.46112132, 19.8570881, -0.951360285, -0.306662619, 0.0295191705, -0.306796283, 0.951775193, -1.23736754e-09, -0.028095603, -0.00905637071, -0.999564469)
	Part1.Orientation = Vector3.new(0, 178.309998, -17.8700008)
	Part1.Position = Vector3.new(-4.51028585, 2.46112132, 19.8570881)
	Part1.Rotation = Vector3.new(180, 1.69000006, 162.130005)
	Part1.Color = Color3.new(0.337255, 0.258824, 0.211765)
	Part1.Size = Vector3.new(2.88876867, 1.58882284, 0.144438431)
	Part1.BrickColor = BrickColor.new("Dirt brown")
	Part1.CanCollide = false
	Part1.Material = Enum.Material.WoodPlanks
	Part1.brickColor = BrickColor.new("Dirt brown")
	Part2.Name = "Text"
	Part2.Parent = Model0
	Part2.CFrame = CFrame.new(-4.50372314, 2.46473169, 20.0017872, -0.979996204, -0.196844161, 0.0295195002, -0.196928203, 0.980417788, -5.54201129e-09, -0.0289413352, -0.00581321586, -0.999573529)
	Part2.Orientation = Vector3.new(0, 178.309998, -11.3599997)
	Part2.Position = Vector3.new(-4.50372314, 2.46473169, 20.0017872)
	Part2.Rotation = Vector3.new(180, 1.69000006, 168.639999)
	Part2.Color = Color3.new(0.411765, 0.25098, 0.156863)
	Part2.Size = Vector3.new(2.86710334, 1.59604478, 0.144438431)
	Part2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	Part2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	Part2.BrickColor = BrickColor.new("Reddish brown")
	Part2.CanCollide = false
	Part2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	Part2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	Part2.Material = Enum.Material.WoodPlanks
	Part2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	Part2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	Part2.brickColor = BrickColor.new("Reddish brown")
	Part2.FormFactor = Enum.FormFactor.Custom
	Part2.formFactor = Enum.FormFactor.Custom
	SurfaceGui3.Parent = Part2
	SurfaceGui3.CanvasSize = Vector2.new(200, 100)
	TextLabel4.Parent = SurfaceGui3
	TextLabel4.Size = UDim2.new(1, 0, 1, 0)
	TextLabel4.Active = true
	TextLabel4.BackgroundColor = BrickColor.new("Institutional white")
	TextLabel4.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel4.BackgroundTransparency = 1
	TextLabel4.Font = Enum.Font.ArialBold
	TextLabel4.FontSize = Enum.FontSize.Size12
	joerandom = math.random(1,8)
	if joerandom == 1 then
		TextLabel4.Text = "Warning! Trolling ahead"
	elseif joerandom == 2 then
		TextLabel4.Text = "Dead-spike but you dead"
	elseif joerandom == 3 then
		TextLabel4.Text = ([[
    IRONIC RACISM
    
    IRONIC RACISM
    ]])
	elseif joerandom == 4 then
		TextLabel4.Text = "Watch out! Wack Body-Movers!"
	elseif joerandom == 5 then
		TextLabel4.Text = "Embodiment of swag, i summon you!"
	elseif joerandom == 6 then
		TextLabel4.Text = "BEAT IT WHILE YOU STILL GOT YOUR LEGS KID"
	elseif joerandom == 7 then
		TextLabel4.Text = "NO MORE SAYING CUSS WORDS GUyS!!!"

	elseif joerandom == 8 then
		TextLabel4.Text = "yOU GUYS CANT STOP ME"



	end

	TextLabel4.TextColor = BrickColor.new("Institutional white")
	TextLabel4.TextColor3 = Color3.new(1, 1, 1)
	TextLabel4.TextScaled = true
	TextLabel4.TextSize = 12
	TextLabel4.TextStrokeColor3 = Color3.new(0, 0.0117647, 0)
	TextLabel4.TextStrokeTransparency = 0
	TextLabel4.TextWrap = true
	TextLabel4.TextWrapped = true
	Part5.Parent = Model0
	Part5.CFrame = CFrame.new(-4.50602102, 1.6667099, 19.7127056, -0.999567211, -1.19279321e-07, 0.0295192953, 1.49011612e-07, 1, -1.55232982e-09, -0.0295192506, -1.35394207e-09, -0.999568641)
	Part5.Orientation = Vector3.new(0, 178.309998, 0)
	Part5.Position = Vector3.new(-4.50602102, 1.6667099, 19.7127056)
	Part5.Rotation = Vector3.new(180, 1.69000006, 180)
	Part5.Color = Color3.new(0.352941, 0.298039, 0.258824)
	Part5.Size = Vector3.new(0.288876861, 3.46652246, 0.144438431)
	Part5.BrickColor = BrickColor.new("Dark taupe")
	Part5.CanCollide = false
	Part5.Material = Enum.Material.WoodPlanks
	Part5.brickColor = BrickColor.new("Dark taupe")
	Weld6.Name = "FlagStand"
	Weld6.Parent = Part5
	Weld6.C1 = CFrame.new(0.243721485, -0.75610137, 0.144445419, 0.951778114, -0.306796223, -1.86264515e-09, 0.306797385, 0.951775193, -9.31322575e-10, 0, -2.3723814e-09, 1.00000417)
	Weld6.Part0 = Part5
	Weld6.Part1 = Part1
	Weld6.part1 = Part1
	Weld7.Name = "Text"
	Weld7.Parent = Part5
	Weld7.C1 = CFrame.new(0.167771578, -0.780261993, 0.288885117, 0.98042053, -0.196928352, 5.58793545e-08, 0.196929276, 0.980417788, 9.77888703e-09, -6.14672899e-08, -3.9896646e-09, 1.00000489)
	Weld7.Part0 = Part5
	Weld7.Part1 = Part2
	Weld7.part1 = Part2
	Weld8.Name = "MAIN"
	Weld8.Parent = Part5
	Weld8.C1 = CFrame.new(-0.0023021698, 0.670515299, -0.00389099121, -0.999567211, -1.19279321e-07, 0.0295192953, 1.49011612e-07, 1, -1.55232982e-09, -0.0295192506, -1.35394207e-09, -0.999568641)
	Weld8.Part0 = Part5
	Weld8.Part1 = Part9
	Weld8.part1 = Part9
	Part9.Name = "MAIN"
	Part9.Parent = Model0
	Part9.CFrame = CFrame.new(-4.50371885, 0.996194601, 19.7165966, 1.00000596, -2.6827226e-07, -8.7544322e-08, -2.6827226e-07, 1, -4.20099333e-09, -8.7544322e-08, -4.20099333e-09, 1.00000882)
	Part9.Position = Vector3.new(-4.50371885, 0.996194601, 19.7165966)
	Part9.Color = Color3.new(0.352941, 0.298039, 0.258824)
	Part9.Transparency = 1
	Part9.Size = Vector3.new(0.5, 0.5, 0.5)
	Part9.BottomSurface = Enum.SurfaceType.Smooth
	Part9.BrickColor = BrickColor.new("Dark taupe")
	Part9.CanCollide = false
	Part9.TopSurface = Enum.SurfaceType.Smooth
	Part9.brickColor = BrickColor.new("Dark taupe")
	Part1.Massless = true
	Part2.Massless = true
	Part5.Massless = true
	Part9.Massless = true

	local joemama = Instance.new("Weld",Part9)
	joemama.Part0 = Part9
	joemama.Part1 = playor.Character["Left Arm"]
	joemama.C0 = CFrame.new(0,-0.5,-1) * CFrame.Angles(math.rad(90),0,math.rad(180))

	for i = 0,0.6,0.1 do
		swait()
		ls.C0=ls.C0:Lerp(cf(-1, 0.5, 0, 0, 0, -1, 0.707106709, -0.707106769, 0, -0.707106769, -0.707106709, 0),i) 

		rs.C0=rs.C0:Lerp(cf(1, 0.5, 0, -0.173648179, 0, 0.98480773, -0.416197926, 0.906307697, -0.0733869225, -0.892538846, -0.422618449, -0.157378674),i) 

		lh.C0=lh.C0:Lerp(cf(-1, -1, 0, -0.078989923, 0.0501306355, -0.995614171, -0.902859032, -0.427004218, 0.0501306318, -0.42261833, 0.902859032, 0.078989923),i) 

		rh.C0=rh.C0:Lerp(cf(1, -1, 0, -0.0868240818, -0.00759612257, 0.996194661, -0.341038823, 0.939778507, -0.0225575417, -0.936031044, -0.341699541, -0.0841859877),i) 

		rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.852868438, -0.466290265, -0.234923095, -0.0402878374, -0.389823467, 0.920007944, -0.520569205, 0.794110239, 0.313682288),i) 

		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.939692616, 0.342020124, 0, -0.0885212496, -0.243210152, 0.965925872, 0.330366075, 0.907673419, 0.258818835),i) 


	end
	spawn(function()
		swait(6)
		Part1.Anchored = true
		Part2.Anchored = true
		Part5.Anchored = true
		Part9.Anchored = true
		Model0:SetPrimaryPartCFrame(playor.Character.HumanoidRootPart.CFrame* CFrame.new(0,-2.5,-4) * CFrame.Angles(0,math.rad(180),0))
		spawn(function()
			local PartSex = Instance.new("FlagStand")
			local SpecialMesh1 = Instance.new("SpecialMesh")
			local Decal2 = Instance.new("Decal")
			PartSex.Name = "TROLOLOLO"
			PartSex.Parent = game.Workspace
			PartSex.CFrame = CFrame.new(-4.64611816, 0.0272448063, 20.3758545, -4.37113883e-08, -0.0834881291, 0.996508777, -1, 3.64938302e-09, -4.35587815e-08, 0, -0.996508777, -0.0834881291)
			PartSex.Orientation = Vector3.new(0, 94.7900009, -90)
			PartSex.Position = Vector3.new(-4.64611816, 0.0272448063, 20.3758545)
			PartSex.Rotation = Vector3.new(180, 85.2099991, 90)
			PartSex.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
			PartSex.Size = Vector3.new(0.0500000007, 3, 3)
			PartSex.BottomSurface = Enum.SurfaceType.Smooth
			PartSex.BrickColor = BrickColor.new("Really black")
			PartSex.TopSurface = Enum.SurfaceType.Smooth
			PartSex.brickColor = BrickColor.new("Really black")
			SpecialMesh1.Parent = PartSex
			SpecialMesh1.MeshType = Enum.MeshType.Cylinder
			Decal2.Name = "trollface"
			Decal2.Parent = PartSex
			Decal2.Texture = "http://www.roblox.com/asset/?id=6188653836"
			Decal2.Face = Enum.NormalId.Left
			Decal2.Color3 = Color3.new(0.666667, 0, 1)
			PartSex.Anchored= true
			PartSex.CanCollide = false
			PartSex.CFrame = playor.Character.HumanoidRootPart.CFrame * CFrame.Angles(0,0,math.rad(-90)) * CFrame.new(3,0,-5)
			local 	Part0 = Instance.new("FlagStand")
			local 	SpecialMesh1 = Instance.new("SpecialMesh")
			local SpecialMesh3 = Instance.new("SpecialMesh")
			Part0.Name = "Spin1"
			Part0.Parent = game.Workspace
			Part0.CFrame = CFrame.new(-4.12546349, 0.0772580206, 19.7861977, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			Part0.Position = Vector3.new(-4.12546349, 0.0772580206, 19.7861977)
			Part0.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
			Part0.Size = Vector3.new(1, 1, 1)
			Part0.BottomSurface = Enum.SurfaceType.Smooth
			Part0.BrickColor = BrickColor.new("Really black")
			Part0.TopSurface = Enum.SurfaceType.Smooth
			Part0.brickColor = BrickColor.new("Really black")
			SpecialMesh1.Parent = Part0
			SpecialMesh1.MeshId = "rbxassetid://5922912225"
			SpecialMesh1.VertexColor = Vector3.new(1, 0.300000012, 123)
			SpecialMesh1.TextureId = "rbxassetid://0"
			SpecialMesh1.MeshType = Enum.MeshType.FileMesh
			SpecialMesh1.Scale = Vector3.new(2,1,2)
			Part0.Anchored = true
			Part0.CanCollide = false

			spawn(function()
				Amogus:Play()
				for i = 1,20 do
					local Part0 = Instance.new("FlagStand")
					local SpecialMesh1 = Instance.new("SpecialMesh")
					Part0.Name = "Spike"
					Part0.Parent = game.Workspace
					Part0.CFrame = CFrame.new(-2.46046448, 5.22753668, 12.2309723, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					Part0.Position = Vector3.new(-2.46046448, 5.22753668, 12.2309723)
					Part0.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
					Part0.Size = Vector3.new(1, 10.4550734, 1)
					Part0.BottomSurface = Enum.SurfaceType.Smooth
					Part0.BrickColor = BrickColor.new("Really black")
					Part0.TopSurface = Enum.SurfaceType.Smooth
					Part0.brickColor = BrickColor.new("Really black")
					SpecialMesh1.Parent = Part0
					SpecialMesh1.MeshId = "http://www.roblox.com/asset/?id=1033714"
					SpecialMesh1.Scale = Vector3.new(1, 50, 1)
					SpecialMesh1.VertexColor = Vector3.new(0, 0, 0)
					SpecialMesh1.TextureId = "rbxassetid://0"
					SpecialMesh1.MeshType = Enum.MeshType.FileMesh


					Part0.Anchored = true
					Part0.CanCollide = false
					Part0.CFrame = PartSex.CFrame * CFrame.new(27,0,0)  * CFrame.Angles(0,0,math.rad(90))
					Part0.CFrame = Part0.CFrame  * CFrame.Angles(math.rad(math.random(-15,15)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15)))
					spawn(function()

						for i = 1,5 do
							swait()
							Part0.CFrame = Part0.CFrame * CFrame.new(0,8,0)
						end
						wait(0.1)
						for i = 1,10 do
							swait()
							Part0.CFrame = Part0.CFrame * CFrame.new(0,-4,0)

						end
						Part0:Destroy()
					end)

				end
			end)
			Part0.CFrame = PartSex.CFrame * CFrame.Angles(0,0,math.rad(90))
			for i = 1,10 do
				swait()
				SpecialMesh1.Scale  = SpecialMesh1.Scale + Vector3.new(0.5,0.01,0.5)
				PartSex.Size = PartSex.Size + Vector3.new(0,1.5,1.5)
				PartSex.CFrame = PartSex.CFrame * CFrame.Angles(math.rad(15),0,0)
				Part0.CFrame = Part0.CFrame * CFrame.Angles(0,math.rad(15),0)

			end
			spawn(function()
				swait(3)
				for i, v in pairs(FindNearestHead(PartSex.CFrame* CFrame.new(-5,0,0).p, 13)) do
					if v:FindFirstChild("Head") and v:FindFirstChild("dodge") == nil  then


						local bp2 = Instance.new("BodyPosition",v:WaitForChild("Torso"))
						bp2.MaxForce = Vector3.new(40000,40000,40000)
						if OVERDRIVE == true then
							v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 10	
						end
						v:FindFirstChildOfClass("Humanoid").Health = v:FindFirstChildOfClass("Humanoid").Health - 20
						bp2.Position = v:WaitForChild("Torso").CFrame * CFrame.new(0,35,0).p

						spawn(function()
							swait(5)
							bp2:Destroy()


						end)


					end
				end
			end)

			for i = 1,20 do
				swait()
				SpecialMesh1.Scale  = SpecialMesh1.Scale + Vector3.new(.015,0,.015)

				PartSex.Size = PartSex.Size + Vector3.new(0,.1,.1)
				PartSex.CFrame = PartSex.CFrame * CFrame.Angles(math.rad(2),0,0)
				Part0.CFrame = Part0.CFrame * CFrame.Angles(0,math.rad(2),0)

			end


			for i = 1,20 do
				swait()
				SpecialMesh1.Scale  = SpecialMesh1.Scale -  Vector3.new(0.4,0,0.4)
				Part0.CFrame = Part0.CFrame * CFrame.Angles(0,math.rad(-15),0)
				Part0.Transparency = Part0.Transparency + 0.05
				PartSex.Size = PartSex.Size - Vector3.new(0,1.5,1.5)
				PartSex.CFrame = PartSex.CFrame * CFrame.Angles(math.rad(-15),0,0)
			end
			Part0:Destroy()
			PartSex:Destroy()
			game:GetService("Debris"):AddItem(Model0, 5)

		end)
	end)
	for i = 0,1,0.2 do
		swait()


		ls.C0=ls.C0:Lerp(cf(-1, 1.08260155, -1.01121902, 0, 0, -1, -0.57357651, -0.819151878, 0, -0.819151878, 0.57357651, 0),i) 

		rs.C0=rs.C0:Lerp(cf(1, 0.5, 0, 0.0861795694, -0.483274579, 0.871216774, 0.302902848, 0.845783591, 0.43920368, -0.949116945, 0.226043671, 0.219274506),i) 

		lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0.179153562, 0.0123714432, -0.98374337, 0.411200613, 0.907450795, 0.0862974375, 0.893766284, -0.419976383, 0.157485902),i) 

		rh.C0=rh.C0:Lerp(cf(1, -1, 0, -0.0075961235, 0.0868240818, 0.996194661, 0.939778507, 0.341038823, -0.0225575417, -0.341699541, 0.936031044, -0.0841859877),i) 

		rj.C0=rj.C0:Lerp(cf(0.152776882, -0.598306179, -0.203996122, -0.997708738, -0.0629111677, -0.0248860382, -0.0676062852, 0.940979362, 0.331643403, 0.00255323201, 0.332565963, -0.943076491),i) 

		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.971543789, 0.0562032014, 0.230095148, 0.144245535, -0.630131662, 0.762972593, 0.187871754, 0.774451494, 0.604093552),i) 

	end
	attack = false
	joemama:Destroy()
end
function aadq()
	footsteps:Stop()
	aadqcd = true
	playor.Character.Humanoid.WalkSpeed = 0
	attack = true
	spawn(function()
		local Sound0 = Instance.new("Sound")
		Sound0.Name = "royal guard!!"
		local fl = Instance.new("FlangeSoundEffect",Sound0)
		fl.Depth = 0.025
		Sound0.Parent = playor.Character.Torso
		Sound0.SoundId = "rbxassetid://6051772972"
		Sound0.Volume = 1
		Sound0:Play()
	end)
	for i = 0,1,0.3 do

		swait()
		ls.C0=ls.C0:Lerp(cf(-1.34558499, 0.715779066, -0.460170448, 0.562303722, -0.813874006, -0.146368325, -0.351095319, -0.0747152567, -0.93335408, 0.748696625, 0.576217711, -0.327759981),i)

		rs.C0=rs.C0:Lerp(cf(1, 0.5, 0, -3.23057175e-05, 0.173666134, 0.98480463, 0.573604405, -0.806682348, 0.142273799, 0.819132566, 0.564892828, -0.0995897055),i)

		lh.C0=lh.C0:Lerp(cf(-1.39965069, -0.813366175, -0.529023886, 0.491276622, -0.0775420964, -0.867545068, 0.253436476, 0.965659082, 0.0572053045, 0.833316982, -0.247971192, 0.494057715),i) 

		rh.C0=rh.C0:Lerp(cf(1.42473674, -0.948899686, -0.485148579, -0.490686536, -0.16000253, 0.85651958, 0.0426118076, 0.977412999, 0.206997693, -0.870293498, 0.138068855, -0.472785354),i) 

		rj.C0=rj.C0:Lerp(cf(0.0184688382, -0.257719338, 0.0129333735, -0.573534489, 0.816064239, -0.0713980198, -6.55651093e-07, 0.0871571898, 0.99619472, 0.819181621, 0.571351886, -0.0499873161),i) 

		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.707060575, -0.70715332, -3.32891941e-05, 3.32891941e-05, -8.04662704e-05, 1.00000012, -0.70715332, 0.707060337, 8.02278519e-05),i)



	end	
	spawn(function()
		local Sound0 = Instance.new("Sound")
		Sound0.Name = "THUD"

		Sound0.Parent = playor.Character.Torso
		Sound0.SoundId = "rbxassetid://5382576606"
		Sound0.Volume = 1
		Sound0:Play()
	end)
	local Model0 = Instance.new("Model")
	local Part1 = Instance.new("FlagStand")
	local SpecialMesh2 = Instance.new("SpecialMesh")
	local Part3 = Instance.new("FlagStand")
	local SurfaceGui4 = Instance.new("SurfaceGui")
	local TextLabel5 = Instance.new("TextLabel")
	local Part6 = Instance.new("FlagStand")
	local SurfaceGui7 = Instance.new("SurfaceGui")
	local TextLabel8 = Instance.new("TextLabel")
	local Part9 = Instance.new("FlagStand")
	local SpecialMesh10 = Instance.new("SpecialMesh")
	local Decal11 = Instance.new("Decal")
	Part1.CanCollide = false
	Part3.CanCollide = false
	Part6.CanCollide = false
	Part9.CanCollide = false
	Model0.Parent = game.Workspace
	Model0.PrimaryPart = Part9
	Part1.Parent = Model0
	Part1.CFrame = CFrame.new(-131.032791, 3.11768913, -125.268089, -0.106394611, 9.30131261e-09, -0.994323969, -8.74227766e-08, -1, 0, -0.994323969, 8.69265619e-08, 0.106394611)
	Part1.Orientation = Vector3.new(0, -83.8899994, -180)
	Part1.Position = Vector3.new(-131.032791, 3.11768913, -125.268089)
	Part1.Rotation = Vector3.new(0, -83.8899994, -180)
	Part1.Size = Vector3.new(0.805077434, 0.728266835, 0.38144052)
	Part1.Anchored = true
	Part1.BottomSurface = Enum.SurfaceType.Smooth
	Part1.CanCollide = false
	Part1.TopSurface = Enum.SurfaceType.Smooth
	SpecialMesh2.Parent = Part1
	Part1.Transparency = 1
	SpecialMesh2.MeshId = "rbxassetid://3270017"
	SpecialMesh2.Scale = Vector3.new(0, 0, 0.71596193)
	SpecialMesh2.VertexColor = Vector3.new(0, 0, 0)
	SpecialMesh2.TextureId = "rbxassetid://15881163"
	SpecialMesh2.MeshType = Enum.MeshType.FileMesh
	Part3.Parent = Model0
	Part3.CFrame = CFrame.new(-130.998993, 0.85974288, -125.37606, -0.997106373, 0, -0.0760186538, 0, 1, 0, 0.0760186538, 0, -0.997106373)
	Part3.Orientation = Vector3.new(0, -175.639999, 0)
	Part3.Position = Vector3.new(-130.998993, 0.85974288, -125.37606)
	Part3.Rotation = Vector3.new(-180, -4.36000013, -180)
	Part3.Color = Color3.new(0.239216, 0.0823529, 0.521569)
	Part3.Transparency = 1
	Part3.Size = Vector3.new(0.0500000007, 1.65340519, 3.53343058)
	Part3.Anchored = true
	Part3.BottomSurface = Enum.SurfaceType.Smooth
	Part3.BrickColor = BrickColor.new("Dark indigo")
	Part3.Material = Enum.Material.SmoothPlastic
	Part3.TopSurface = Enum.SurfaceType.Smooth
	Part3.brickColor = BrickColor.new("Dark indigo")
	SurfaceGui4.Parent = Part3
	SurfaceGui4.ZOffset = 2
	SurfaceGui4.Face = Enum.NormalId.Right
	SurfaceGui4.CanvasSize = Vector2.new(200, 100)
	TextLabel5.Name = "hi"
	TextLabel5.Parent = SurfaceGui4
	TextLabel5.Size = UDim2.new(1, 0, 0.5, 0)
	TextLabel5.BackgroundColor = BrickColor.new("Institutional white")
	TextLabel5.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel5.BackgroundTransparency = 1
	TextLabel5.ZIndex = 3
	TextLabel5.TextTransparency = 1
	TextLabel5.Font = Enum.Font.SourceSansBold
	TextLabel5.FontSize = Enum.FontSize.Size96
	TextLabel5.Text = "REPOSTE"
	TextLabel5.TextColor = BrickColor.new("Institutional white")
	TextLabel5.TextColor3 = Color3.new(1, 1, 1)
	TextLabel5.TextScaled = true
	TextLabel5.TextSize = 100
	TextLabel5.TextStrokeTransparency = 0
	TextLabel5.TextWrap = true
	TextLabel5.TextWrapped = true
	TextLabel5.TextYAlignment = Enum.TextYAlignment.Top
	Part6.Parent = Model0
	Part6.CFrame = CFrame.new(-130.998993, 4.88335896, -125.37606, -0.997106373, 0, -0.0760186538, 0, 1, 0, 0.0760186538, 0, -0.997106373)
	Part6.Orientation = Vector3.new(0, -175.639999, 0)
	Part6.Position = Vector3.new(-130.998993, 4.88335896, -125.37606)
	Part6.Rotation = Vector3.new(-180, -4.36000013, -180)
	Part6.Color = Color3.new(0.239216, 0.0823529, 0.521569)
	Part6.Transparency = 1
	Part6.Size = Vector3.new(0.0500000007, 1.65340519, 3.53343058)
	Part6.Anchored = true
	Part6.BottomSurface = Enum.SurfaceType.Smooth
	Part6.BrickColor = BrickColor.new("Dark indigo")
	Part6.Material = Enum.Material.SmoothPlastic
	Part6.TopSurface = Enum.SurfaceType.Smooth
	Part6.brickColor = BrickColor.new("Dark indigo")
	SurfaceGui7.Parent = Part6
	SurfaceGui7.ZOffset = 2
	SurfaceGui7.Face = Enum.NormalId.Right
	SurfaceGui7.CanvasSize = Vector2.new(200, 100)
	TextLabel8.Name = "hi"
	TextLabel8.Parent = SurfaceGui7
	TextLabel8.Size = UDim2.new(1, 0, 0.5, 0)
	TextLabel8.BackgroundColor = BrickColor.new("Institutional white")
	TextLabel8.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel8.BackgroundTransparency = 1
	TextLabel8.ZIndex = 3
	TextLabel8.TextTransparency = 1
	TextLabel8.Font = Enum.Font.SourceSansBold
	TextLabel8.FontSize = Enum.FontSize.Size96
	TextLabel8.Text = "BIG DMG"
	TextLabel8.TextColor = BrickColor.new("Institutional white")
	TextLabel8.TextColor3 = Color3.new(1, 1, 1)
	TextLabel8.TextScaled = true
	TextLabel8.TextSize = 100
	TextLabel8.TextStrokeTransparency = 0
	TextLabel8.TextWrap = true
	TextLabel8.TextWrapped = true
	TextLabel8.TextYAlignment = Enum.TextYAlignment.Top
	Part9.Parent = Model0
	Part9.CFrame = CFrame.new(-131.031326, 3.07529521, -125.308846, -0.994323969, 0, -0.106394567, 0, 1, 0, 0.106394567, 0, -0.994323969)
	Part9.Orientation = Vector3.new(0, -173.889999, 0)
	Part9.Position = Vector3.new(-131.031326, 3.07529521, -125.308846)
	Part9.Rotation = Vector3.new(-180, -6.11000013, -180)
	Part9.Color = Color3.new(0.239216, 0.0823529, 0.521569)
	Part9.Transparency = 0.44999998807907
	Part9.Size = Vector3.new(0.05, 0,0)
	Part9.Anchored = true
	Part9.BottomSurface = Enum.SurfaceType.Smooth
	Part9.BrickColor = BrickColor.new("Dark indigo")
	Part9.CanCollide = false
	Part9.Material = Enum.Material.SmoothPlastic
	Part9.TopSurface = Enum.SurfaceType.Smooth
	Part9.brickColor = BrickColor.new("Dark indigo")
	SpecialMesh10.Parent = Part9
	SpecialMesh10.MeshType = Enum.MeshType.Cylinder
	Decal11.Name = "trollface"
	Decal11.Parent = Part9
	Decal11.Texture = "http://www.roblox.com/asset/?id=6327423095"
	Decal11.Transparency = 0.40000000596046
	Decal11.Face = Enum.NormalId.Right
	Decal11.Color3 = Color3.new(0.305882, 0, 0.462745)

	Model0:SetPrimaryPartCFrame(playor.Character.HumanoidRootPart.CFrame * CFrame.new(1,0,-4) * CFrame.Angles(0,math.rad(90),0))

	for i = 1,5 do
		swait()
		SpecialMesh2.Scale = SpecialMesh2.Scale + Vector3.new(1.6, 1.6, 0.4)
		Part9.Size = Part9.Size + Vector3.new(0,1.6,1.6)
		Part1.Transparency = Part1.Transparency - 0.2	 
	end


	for i = 1,10 do
		swait()
		TextLabel5.TextTransparency = 	TextLabel5.TextTransparency  - 0.1
		TextLabel8.TextTransparency = 	TextLabel8.TextTransparency  - 0.1	
	end
	local joe2 = true
	spawn(function()
		wait(1.5)
		joe2 = false
	end)
	local hprn = playor.Character.Humanoid.Health
	repeat

		swait()
		if aadqhit == false and playor.Character.Humanoid.Health < hprn then
			aadqhit = true
			joe2 = false
		end
	until joe2 == false or aadqhit == true
	if aadqhit == false then
		for i = 1,20 do
			swait()
			TextLabel5.TextTransparency = 	TextLabel5.TextTransparency  + 0.05
			TextLabel8.TextTransparency = 	TextLabel8.TextTransparency  + 0.05	
		end

		for i = 1,10 do
			swait()
			SpecialMesh2.Scale = SpecialMesh2.Scale - Vector3.new(0.8, 0.8, 0.15)
			Part9.Size = Part9.Size - Vector3.new(0,0.8,0.8)
			Part1.Transparency = Part1.Transparency+ 0.1	 
		end
		spawn(function()
			swait(100)
			aadqcd = false
		end)
	else
		aadqhit = false
		local CSUFVOICE = Instance.new("Sound")
		CSUFVOICE.Name = "CSUF VOICE"
		CSUFVOICE.Parent = Head
		CSUFVOICE.SoundId = "rbxasset://sounds/saul2/saul_1-35.wav"
		CSUFVOICE.Volume = 3.5
		CSUFVOICE.Pitch = 1.15
		CSUFVOICE:Play()
		game:GetService("Debris"):AddItem(CSUFVOICE,5)
		local Part0 = Instance.new("FlagStand")
		local SpecialMesh1 = Instance.new("SpecialMesh")
		local Part2 = Instance.new("FlagStand")
		local SpecialMesh3 = Instance.new("SpecialMesh")
		local Part4 = Instance.new("FlagStand")
		local ParticleEmitter5 = Instance.new("ParticleEmitter")
		local Part5 = Instance.new("FlagStand")
		local SpecialMesh6 = Instance.new("SpecialMesh")

		Part0.Name = "Part1"
		Part0.Parent = game.Workspace
		Part0.CFrame = CFrame.new(-28.4099426, 1.95130062, -0.0149976797, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Part0.Position = Vector3.new(-28.4099426, 1.95130062, -0.0149976797)
		Part0.Color = Color3.new(0.694118, 0.898039, 0.65098)
		Part0.Size = Vector3.new(1, 1, 1)
		Part0.BottomSurface = Enum.SurfaceType.Smooth
		Part0.BrickColor = BrickColor.new("Mint")
		Part0.Material = Enum.Material.SmoothPlastic
		Part0.TopSurface = Enum.SurfaceType.Smooth
		Part0.brickColor = BrickColor.new("Mint")
		SpecialMesh1.Parent = Part0
		SpecialMesh1.MeshId = "http://www.roblox.com/asset/?id=20329976"
		SpecialMesh1.Scale = Vector3.new(30, 15, 30)
		SpecialMesh1.VertexColor = Vector3.new(1, 123, 0.5)
		SpecialMesh1.TextureId = "rbxassetid://5614579544"
		SpecialMesh1.MeshType = Enum.MeshType.FileMesh
		Part2.Name = "Part2"
		Part2.Parent = game.Workspace
		Part2.CFrame = CFrame.new(-28.4099998, 1.95099998, 3.37700009, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Part2.Position = Vector3.new(-28.4099998, 1.95099998, 3.37700009)
		Part2.Color = Color3.new(0.694118, 0.898039, 0.65098)
		Part2.Size = Vector3.new(1, 1, 1)
		Part2.BottomSurface = Enum.SurfaceType.Smooth
		Part2.BrickColor = BrickColor.new("Mint")
		Part2.Material = Enum.Material.SmoothPlastic
		Part2.TopSurface = Enum.SurfaceType.Smooth
		Part2.brickColor = BrickColor.new("Mint")
		SpecialMesh3.Name = "SpawnMesh"
		SpecialMesh3.Parent = Part2
		SpecialMesh3.MeshId = "http://www.roblox.com/asset/?id=1051557"
		SpecialMesh3.Scale = Vector3.new(70, 50, 70)
		SpecialMesh3.VertexColor = Vector3.new(1, 123, 0.5)
		SpecialMesh3.TextureId = "rbxassetid://5614579544"
		SpecialMesh3.MeshType = Enum.MeshType.FileMesh
		Part4.Name = "PBHRHBRBHRBH"
		Part4.Parent = game.Workspace
		Part4.CFrame = CFrame.new(-28.4099998, 1.95099998, 3.37700009, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Part4.Position = Vector3.new(-28.4099998, 1.95099998, 3.37700009)
		Part4.Color = Color3.new(0.694118, 0.898039, 0.65098)
		Part4.Transparency = 1
		Part4.Size = Vector3.new(4, 1, 2)
		Part4.BottomSurface = Enum.SurfaceType.Smooth
		Part4.BrickColor = BrickColor.new("Mint")
		Part4.Material = Enum.Material.SmoothPlastic
		Part4.TopSurface = Enum.SurfaceType.Smooth
		Part4.brickColor = BrickColor.new("Mint")


		Part5.Name = "Part1"
		Part5.Parent = game.Workspace
		Part5.CFrame = CFrame.new(-28.4099426, 1.95130062, -0.0149976797, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		Part5.Position = Vector3.new(-28.4099426, 1.95130062, -0.0149976797)
		Part5.Color = Color3.new(0.694118, 0.898039, 0.65098)
		Part5.Size = Vector3.new(1, 1, 1)
		Part5.BottomSurface = Enum.SurfaceType.Smooth
		Part5.BrickColor = BrickColor.new("Mint")
		Part5.Material = Enum.Material.SmoothPlastic
		Part5.TopSurface = Enum.SurfaceType.Smooth
		Part5.brickColor = BrickColor.new("Mint")
		SpecialMesh6.Parent = Part5
		SpecialMesh6.MeshId = "rbxassetid://9982590"
		SpecialMesh6.Scale = Vector3.new(30, 30, 30)
		SpecialMesh6.VertexColor = Vector3.new(1, 123,0.6)
		SpecialMesh6.TextureId = "rbxassetid://5614579544"
		SpecialMesh6.MeshType = Enum.MeshType.FileMesh




		Part0.Anchored = true
		Part0.CanCollide = false

		Part2.Anchored = true
		Part2.CanCollide = false

		Part4.Anchored = true
		Part4.CanCollide = false

		Part5.Anchored = true
		Part5.CanCollide = false


		Part0.CFrame = playor.Character.HumanoidRootPart.CFrame
		Part2.CFrame = playor.Character.HumanoidRootPart.CFrame
		Part4.CFrame = playor.Character.HumanoidRootPart.CFrame
		Part5.CFrame = playor.Character.HumanoidRootPart.CFrame

		ParticleEmitter0 = Instance.new("ParticleEmitter")
		ParticleEmitter0.Parent = Part4
		ParticleEmitter0.Speed = NumberRange.new(200)
		ParticleEmitter0.Color = ColorSequence.new(Color3.new(0.54902, 0.666667, 0.027451),Color3.new(0.635294, 1, 0.160784))
		ParticleEmitter0.LightInfluence = 1
		ParticleEmitter0.Texture = "rbxassetid://5457833933"
		ParticleEmitter0.Transparency = NumberSequence.new(0,1,1)
		ParticleEmitter0.Size = NumberSequence.new(15,25)
		ParticleEmitter0.Lifetime = NumberRange.new(.5)
		ParticleEmitter0.Rate = 500
		ParticleEmitter0.SpreadAngle = Vector2.new(360, 360)
		ParticleEmitter0.VelocitySpread = 360
		ParticleEmitter0.Enabled = false

		ParticleEmitter0:Emit(100)
		spawn(function()
			Sound0 = Instance.new("Sound")
			Sound0.Name = "BHRBHRBHR"
			Sound0.Parent = game.Workspace
			Sound0.SoundId = "rbxassetid://5316091696"
			Sound0.Volume = 6
			Sound0:Play()
		end)
		for i, v in pairs(FindNearestHead(playor.Character.HumanoidRootPart.CFrame.p, 38)) do
			if v:FindFirstChild("Head") and v:FindFirstChild("dodge") == nil  then


				local bp2 = Instance.new("BodyPosition",v:WaitForChild("Torso"))
				bp2.MaxForce = Vector3.new(40000,40000,40000)

				bp2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(math.random(-50,50),math.random(25,50),math.random(-50,50)).p
				Clash:Play()
				spawn(function()
					swait(5)
					bp2:Destroy()
					if OVERDRIVE == true then
						v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 8	
					end
					v:FindFirstChildOfClass("Humanoid").Health = v:FindFirstChildOfClass("Humanoid").Health - 25

				end)


			end
		end

		spawn(function()
			for i = 1,10 do

				swait()

				SpecialMesh6.Scale = SpecialMesh6.Scale + Vector3.new(5,5,5)
				Part5.CFrame = Part5.CFrame * CFrame.Angles(0,math.rad(45),0)
				Part5.Transparency = Part5.Transparency + 0.1


			end
		end)
		spawn(function()
			for i = 1,5 do

				swait()

				SpecialMesh1.Scale = SpecialMesh1.Scale + Vector3.new(35,0,35)
				Part0.CFrame = Part0.CFrame * CFrame.Angles(0,math.rad(45),0)
				Part0.Transparency = Part0.Transparency + 0.2


			end
		end)


		spawn(function()
			for i = 1,20 do

				swait()
				Part2.CFrame = 	Part2.CFrame * CFrame.Angles(0,math.rad(25),0)
				Part2.Transparency = Part2.Transparency + 0.05
			end

			Part0:Destroy()
			Part2:Destroy()
			Part4:Destroy()
			Part5:Destroy()
			Sound0:Destroy()
		end)



		local joemama1235 = Instance.new("FlagStand",game.Workspace)
		joemama1235.BrickColor = BrickColor.new("Royal purple")
		joemama1235.Material = Enum.Material.Neon
		joemama1235.Size = Vector3.new(200,0.5,0.6)
		joemama1235.Anchored = true
		joemama1235.Transparency = 0.2
		joemama1235.CanCollide = false
		joemama1235.CFrame = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0.5,-100) * CFrame.Angles(math.rad(90),0,math.rad(90))
		joemama1235.Shape = "Cylinder"
		spawn(function()

			local Clash2 = Instance.new("Sound")
			Clash2.Parent = joemama1235
			Clash2.SoundId = "http://www.roblox.com/asset/?id=62339698 "
			Clash2.Volume = 5
			Clash2.Pitch = .5
			Clash2:Play()
		end)
		local joemam1235 = Instance.new("FlagStand",game.Workspace)
		joemam1235.BrickColor = BrickColor.new("Really black")
		joemam1235.Material = Enum.Material.Neon
		joemam1235.Size = Vector3.new(200,0.9,0.9)
		joemam1235.Anchored = true
		joemam1235.Transparency = 0.6
		joemam1235.CanCollide = false
		joemam1235.CFrame = joemama1235.CFrame
		joemam1235.Shape = "Cylinder"
		local  alr2 = false
		joemam1235.Touched:connect(function(hit)
			local h = hit.Parent:FindFirstChild("Humanoid")
			local t = hit.Parent:FindFirstChild("Torso")
			if h ~= nil and alr2 == false and hit.Parent ~= playor.Character then
				alr2 = true
				for i = 1,8 do
					swait(1)
					spawn(function()
						local Clash3 = Instance.new("Sound")
						Clash3.Parent = hit.Parent.Torso
						Clash3.SoundId = "http://www.roblox.com/asset/?id=62339698 "
						Clash3.Volume = 0.6
						Clash3.Pitch = 1.25


						Clash3:Play()
					end)
					if OVERDRIVE == true then
						v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 8	
					end
					hit.Parent.Humanoid.Health =  hit.Parent.Humanoid.Health  - 5

					local blood = Instance.new("FlagStand",game.Workspace)
					blood.Anchored = true
					blood.Material = Enum.Material.SmoothPlastic
					blood.BrickColor = BrickColor.new("Black")
					blood.CanCollide = false
					blood.Material = Enum.Material.Neon
					blood.Transparency = 0
					blood.Size = Vector3.new(0.7,math.random(8,12),0.7)
					local BANG3 = Instance.new("FlagStand",game.Workspace)
					BANG3.BrickColor = BrickColor.new("Really black")
					BANG3.Size = Vector3.new(0.65, 0.65, 0.65)
					BANG3.Locked = false
					BANG3.Material = Enum.Material.SmoothPlastic
					BANG3.CanCollide = false
					BANG3.Anchored = true
					BANG3.Transparency =  0
					--RHe.Orientation = Vector3.new(0, -90, 0)
					BANG3.formFactor =  "Symmetric"
					local joe2 = Instance.new("SpecialMesh",BANG3)
					joe2.MeshType = Enum.MeshType.FileMesh
					joe2.MeshId = "rbxassetid://3454554153"
					joe2.TextureId = "rbxassetid://0"
					joe2.Scale = Vector3.new(1, 0.2, 1)
					joe2.VertexColor = Vector3.new(0,0,0)

					blood.CFrame =				hit.Parent.Torso.CFrame * CFrame.new(0,0,-2.7)*CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))

					local joemama123 = Instance.new("SpecialMesh",blood)
					joemama123.MeshType = Enum.MeshType.Sphere
					BANG3.CFrame = blood.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))

					spawn(function()
						for i =1,5 do
							swait()
							joe2.Scale = 		joe2.Scale + Vector3.new(0.05, 0.05, 0.05)				
							BANG3.Transparency = BANG3.Transparency + 0.2	

							blood.Size = 					blood.Size + Vector3.new(0,0.5,0)								
							blood.Transparency = blood.Transparency + 0.2
						end
						blood:Destroy()
					end)
					local minus = -180				

				end
				alr2 = false
			end
		end)
		spawn(function()
			for i = 1,40 do
				swait()
				joemam1235.Size = 	joemam1235.Size - Vector3.new(0,0.025,0.025)
				joemama1235.Size = 	joemama1235.Size - Vector3.new(0,0.025,0.025)
				joemam1235.Transparency = joemam1235.Transparency + 0.025
				joemama1235.Transparency = joemama1235.Transparency + 0.025	
			end
			joemam1235:Destroy()
			joemama1235:Destroy()
		end)

		playor.Character.HumanoidRootPart.CFrame =playor.Character.HumanoidRootPart.CFrame  * CFrame.new(0,0,-200) 


		spawn(function()
			swait(500)
			aadqcd = false
		end)		
	end
	attack = false
	Part1:Destroy()
	Part3:Destroy()
	Part6:Destroy()
	Part9:Destroy()
	playor.Character.Humanoid.WalkSpeed = 16

end

function sax()
	footsteps:Stop()
	local CSUFVOICE = Instance.new("Sound")
	CSUFVOICE.Name = "CSUF VOICE"
	CSUFVOICE.Parent = Head
	CSUFVOICE.SoundId = "rbxasset://sounds/saul2/saul2_302-2.wav"
	CSUFVOICE.Volume = 3.5
	CSUFVOICE.Pitch = 1.05
	CSUFVOICE:Play()
	game:GetService("Debris"):AddItem(CSUFVOICE,5)
	saxcd = true
	spawn(function()
		swait(75)
		saxcd = false
	end)
	attack = true
	local joe2 = Instance.new("BodyVelocity",playor.Character.Torso)
	joe2.maxForce = Vector3.new(40000,40000,40000)
	joe2.velocity = playor.Character.HumanoidRootPart.CFrame.lookVector*65
	joe2.Name = "speedy"


	spawn(function()
		for i = 1,4 do

			spawn(function()
				local Sound0 = Instance.new("Sound")
				Sound0.Name = "THUD"

				Sound0.Parent = playor.Character.Torso
				Sound0.SoundId = "rbxassetid://5382576606"
				Sound0.Volume = 1
				Sound0:Play()
			end)

			local 	Part0 = Instance.new("FlagStand")
			local 	SpecialMesh2 = Instance.new("SpecialMesh")
			Part0.Parent = game.Workspace
			Part0.CFrame = CFrame.new(3.28999996, 0.500003815, -2.83999991, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			Part0.Position = Vector3.new(3.28999996, 0.500003815, -2.83999991)
			Part0.Size = Vector3.new(0.5, 0.5, 0.5)
			Part0.BottomSurface = Enum.SurfaceType.Smooth
			Part0.TopSurface = Enum.SurfaceType.Smooth
			SpecialMesh2.Parent = Part0
			SpecialMesh2.MeshId = "rbxassetid://5769821006"
			SpecialMesh2.Scale = Vector3.new(5, 5, 5)
			SpecialMesh2.VertexColor = Vector3.new(0.3, 0, 123)
			SpecialMesh2.TextureId = "rbxassetid://5614579544"
			SpecialMesh2.MeshType = Enum.MeshType.FileMesh
			Part0.CFrame = playor.Character.HumanoidRootPart.CFrame

			Part0.Anchored = true
			Part0.CanCollide = false
			spawn(function()
				for i = 1,20 do
					game:GetService('RunService').Stepped:wait()

					Part0.Position = playor.Character.HumanoidRootPart.Position	
					Part0.CFrame = Part0.CFrame *CFrame.Angles(0,math.rad(-15),0)
					Part0.Transparency = Part0.Transparency + 0.05

				end
				Part0:Destroy()

			end)		

			wait(0.1)
			for i, v in pairs(FindNearestHead(playor.Character.HumanoidRootPart.CFrame.p, 15)) do
				if v:FindFirstChild("Head") and v:FindFirstChild("dodge") == nil  then


					local bp2 = Instance.new("BodyPosition",v:WaitForChild("Torso"))
					bp2.MaxForce = Vector3.new(40000,40000,40000)

					bp2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,15,-25).p
					Clash:Play()
					spawn(function()
						swait(5)
						bp2:Destroy()
						if OVERDRIVE == true then
							v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health -	5
						end
						v:FindFirstChildOfClass("Humanoid").Health = v:FindFirstChildOfClass("Humanoid").Health - 3

					end)


				end
			end
		end

	end)

	for i = 0,1,0.2 do

		swait()
		ls.C0=ls.C0:Lerp(cf(-1.94939804, 0.607895136, 0, 0, 0.707106769, 0.707106769, 0, -0.707106769, 0.707106769, 1, 0, 0),i) 

		rs.C0=rs.C0:Lerp(cf(2.04024649, 0.552246928, 0, 0, -0.642787695, -0.766044438, 0, -0.766044438, 0.642787695, -1, 0, 0),i) 

		lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0, 0.766044438, -0.642787635, 0, 0.642787635, 0.766044438, 1, 0, 0),i)

		rh.C0=rh.C0:Lerp(cf(1, -1, 0, 0, -0.642787576, 0.766044378, 0, 0.766044378, 0.642787576, -1, 0, 0),i) 

		rj.C0=rj.C0:Lerp(cf(0, 0, 0, -1, 0, 0, 0, 1, 1.19248806e-08, 0, 1.19248806e-08, -1),i)

		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),i)


	end	
	for i = 0,0.6,0.1 do

		swait()
		ls.C0=ls.C0:Lerp(cf(-1.94939804, 0.607895136, 0, 0, 0.707106769, 0.707106769, 0, -0.707106769, 0.707106769, 1, 0, 0),i) 

		rs.C0=rs.C0:Lerp(cf(2.04024649, 0.552246928, 0, 0, -0.642787695, -0.766044438, 0, -0.766044438, 0.642787695, -1, 0, 0),i) 

		lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0, 0.766044438, -0.642787635, 0, 0.642787635, 0.766044438, 1, 0, 0),i)

		rh.C0=rh.C0:Lerp(cf(1, -1, 0, 0, -0.642787576, 0.766044378, 0, 0.766044378, 0.642787576, -1, 0, 0),i) 

		rj.C0=rj.C0:Lerp(cf(0, 0, 0, 0.707106769, 0, -0.707106829, -8.4321643e-09, 1, -8.4321643e-09, 0.707106829, 1.19248806e-08, 0.707106769),i) 

		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),i)


	end
	for i = 0,0.6,0.1 do

		swait()
		ls.C0=ls.C0:Lerp(cf(-1.94939804, 0.607895136, 0, 0, 0.707106769, 0.707106769, 0, -0.707106769, 0.707106769, 1, 0, 0),i) 

		rs.C0=rs.C0:Lerp(cf(2.04024649, 0.552246928, 0, 0, -0.642787695, -0.766044438, 0, -0.766044438, 0.642787695, -1, 0, 0),i) 

		lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0, 0.766044438, -0.642787635, 0, 0.642787635, 0.766044438, 1, 0, 0),i)

		rh.C0=rh.C0:Lerp(cf(1, -1, 0, 0, -0.642787576, 0.766044378, 0, 0.766044378, 0.642787576, -1, 0, 0),i) 

		rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.499999881, 0, 0.866025448, 1.03272502e-08, 1, 5.96243943e-09, -0.866025448, 1.19248806e-08, -0.499999881),i) 

		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),i)


	end	


	for i = 0,0.6,0.1 do

		swait()
		ls.C0=ls.C0:Lerp(cf(-1.94939804, 0.607895136, 0, 0, 0.707106769, 0.707106769, 0, -0.707106769, 0.707106769, 1, 0, 0),i) 

		rs.C0=rs.C0:Lerp(cf(2.04024649, 0.552246928, 0, 0, -0.642787695, -0.766044438, 0, -0.766044438, 0.642787695, -1, 0, 0),i) 

		lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0, 0.766044438, -0.642787635, 0, 0.642787635, 0.766044438, 1, 0, 0),i)

		rh.C0=rh.C0:Lerp(cf(1, -1, 0, 0, -0.642787576, 0.766044378, 0, 0.766044378, 0.642787576, -1, 0, 0),i) 


		rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.342020273, 0, -0.939692497, -1.12057226e-08, 1, 4.07855039e-09, 0.939692497, 1.19248806e-08, -0.342020273),i) 

		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),i)


	end	


	joe2:destroy()	

	attack = false
end




function sdq()
	sdqcd = true
	local CSUFVOICE = Instance.new("Sound")
	CSUFVOICE.Name = "CSUF VOICE"
	CSUFVOICE.Parent = Head
	CSUFVOICE.SoundId = "rbxasset://sounds/saul2/saul_1-16.wav"
	CSUFVOICE.Volume = 3.5
	CSUFVOICE.Pitch = 1.15
	CSUFVOICE:Play()
	game:GetService("Debris"):AddItem(CSUFVOICE,5)
	spawn(function()
		swait(120)
		sdqcd = false
	end)
	attack = true
	for i = 0,0.8,0.15 do

		swait()
		ls.C0=ls.C0:Lerp(cf(-1, 0.5, 0, 0.2961981, 0.5, -0.813797653, -0.171010062, 0.866025388, 0.469846308, 0.939692616, 0, 0.342020124),i) 

		rs.C0=rs.C0:Lerp(cf(1.06153023, 0.756661177, -0.21315679, -0.383022249, -0.760002136, 0.525062561, 0.642787576, -0.627506912, -0.439385086, 0.663414001, 0.16920945, 0.728869081),i) 

		lh.C0=lh.C0:Lerp(cf(-1.0354588, -0.990498841, -0.449239492, -0.554032326, 0.258819044, -0.791240096, 0.148452505, 0.965925813, 0.212012157, 0.819152057, 0, -0.57357645),i) 

		rh.C0=rh.C0:Lerp(cf(1.39675689, -0.536601543, -0.472836196, 0.604022801, -0.219846457, 0.766044319, 0.342020333, 0.939692557, 0, -0.719846129, 0.262002766, 0.642787755),i) 

		rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.664462924, 0.707106888, -0.241844699, -0.342020124, 0, 0.939692616, 0.664463103, 0.70710665, 0.241844788),i) 

		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.642787516, -0.754406571, 0.13302207, 0, 0.17364797, 0.984807789, -0.766044497, 0.63302213, -0.11161875),i) 


	end	

	for i = 0,1,0.2 do

		swait(1)
		ls.C0=ls.C0:Lerp(cf(-1.29542303, 0.318831384, 0.0601495728, 0.2961981, 0.83991152, -0.454769433, -0.171010062, 0.515076876, 0.83991152, 0.939692616, -0.171010062, 0.2961981),i) 

		rs.C0=rs.C0:Lerp(cf(1.79612386, 0.552829087, -0.489928037, -0.173968256, -0.984721959, -0.00759613095, 0.981146157, -0.172666788, -0.0868241116, 0.0841860101, -0.0225575548, 0.99619472),i) 

		lh.C0=lh.C0:Lerp(cf(-1.09411561, -1.209409, -0.449239492, -0.408218145, 0.258819044, -0.875425994, 0.109381706, 0.965925813, 0.234569699, 0.906307697, 0, -0.422618449),i) 

		rh.C0=rh.C0:Lerp(cf(1.71944642, -0.634589791, 0.203394249, 0.90409106, -0.092733264, 0.417156845, 0.0789900869, 0.995614111, 0.0501305461, -0.419975996, -0.0123712644, 0.907450855),i) 


		rj.C0=rj.C0:Lerp(cf(0, 0, 0, 3.59835397e-08, 1, -9.64176117e-09, 0.258819044, 0, 0.965925813, 0.965925813, -3.7252903e-08, -0.258819044),i) 

		ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.642787516, -0.754406571, 0.13302207, 0, 0.17364797, 0.984807789, -0.766044497, 0.63302213, -0.11161875),i) 



	end	

	local Part0 = Instance.new("Part")

	local SpecialMesh1 = Instance.new("SpecialMesh")
	Part0.Parent = game.Workspace
	Part0.CFrame = CFrame.new(-30.1782074, 3.37420082, 54.3409119, 0.99992156, 0.0120442174, -0.0013348785, -0.0121160643, 0.995586276, -0.0929782987, 0.000209138176, 0.0929871351, 0.995668948)
	Part0.Orientation = Vector3.new(5.32999992, -0.0799999982, -0.699999988)
	Part0.Position = Vector3.new(-30.1782074, 3.37420082, 54.3409119)
	Part0.Rotation = Vector3.new(5.32999992, -0.0799999982, -0.689999998)
	Part0.Velocity = Vector3.new(0.0590489842, 48.6100769, 0.116325878)
	Part0.Size = Vector3.new(1.88918805, 6.59438324, 1.72332072)
	Part0.BackSurface = Enum.SurfaceType.Weld
	Part0.BottomSurface = Enum.SurfaceType.Weld
	Part0.FrontSurface = Enum.SurfaceType.Weld
	Part0.LeftSurface = Enum.SurfaceType.Weld
	Part0.Material = Enum.Material.Slate
	Part0.RightSurface = Enum.SurfaceType.Weld
	Part0.RotVelocity = Vector3.new(-0.255170107, -0.00217773998, 0.312504321)
	Part0.TopSurface = Enum.SurfaceType.Weld
	Part0.FormFactor = Enum.FormFactor.Symmetric
	Part0.formFactor = Enum.FormFactor.Symmetric
	SpecialMesh1.Parent = Part0
	SpecialMesh1.MeshId = "http://www.roblox.com/asset/?id=15881174"
	SpecialMesh1.Scale = Vector3.new(1.66693044, 2.19812751, 1.31472826)
	SpecialMesh1.TextureId = "http://www.roblox.com/asset/?id=15881163"
	SpecialMesh1.MeshType = Enum.MeshType.FileMesh
	spawn(function()

		local swagminton = Instance.new("Sound")
		swagminton.Name = "Low Throat Singing 1"
		swagminton.Parent = Part0
		swagminton.Pitch = 1.25
		swagminton.Volume = 1
		swagminton.PlaybackSpeed = 1.25
		swagminton.SoundId = "http://www.roblox.com/asset/?id=48618802"


		swagminton:Play()
		local Sound0 = Instance.new("Sound")
		Sound0.Name = "Low Throat Singing 1"
		Sound0.TimePosition = 1
		Sound0.Parent = Part0
		joe2 = math.random(1,3)
		if joe2 == 1 then
			Sound0.Pitch = 1
		elseif joe2 == 2 then
			Sound0.Pitch = 1.25
		elseif joe2 == 3 then
			Sound0.Pitch = 0.9
		end
		Sound0.SoundId = "rbxassetid://1845939495"
		Sound0:Play()
	end)


	Part0.Anchored = true
	Part0.CanCollide = false
	Part0.Massless = true
	Part0.CFrame = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,-6,-2) * CFrame.Angles(math.rad(-20),0,0)
	game:GetService("Debris"):AddItem(Part0, 4)
	spawn(function()
		swait(3)
		for i, v in pairs(FindNearestHead(Part0.CFrame.p, 5)) do
			if v:FindFirstChild("Head") then
				if OVERDRIVE == true then
					spawn(function()
						for i = 1,math.random(1,2) do
							local Part0 = Instance.new("Part")
							local ParticleEmitter1 = Instance.new("ParticleEmitter")
							local ParticleEmitter2 = Instance.new("ParticleEmitter")
							Part0.Name = "ORB O_OO_O__O"
							Part0.Parent = game.Workspace
							Part0.CFrame = CFrame.new(119.075157, 2.55000997, -37.0025864, 1, 0, 0, 0, 1, 0, 0, 0, 1)
							Part0.Position = Vector3.new(119.075157, 2.55000997, -37.0025864)
							Part0.Transparency = 1
							Part0.Size = Vector3.new(0.0999998227, 0.099999927, 0.0999999121)
							Part0.BottomSurface = Enum.SurfaceType.Smooth
							Part0.CanCollide = false
							Part0.Material = Enum.Material.SmoothPlastic
							Part0.TopSurface = Enum.SurfaceType.Smooth
							ParticleEmitter1.Name = "Vigor"
							ParticleEmitter1.Parent = Part0
							ParticleEmitter1.Speed = NumberRange.new(0, 0)
							ParticleEmitter1.Rotation = NumberRange.new(37, 999)
							ParticleEmitter1.Color = ColorSequence.new(Color3.new(0.117647, 0, 0.352941),Color3.new(0.117647, 0, 0.352941))
							ParticleEmitter1.Texture = "rbxassetid://48315270"
							ParticleEmitter1.Size = NumberSequence.new(0.99999964237213,0)
							ParticleEmitter1.Drag = 50
							ParticleEmitter1.EmissionDirection = Enum.NormalId.Left
							ParticleEmitter1.Lifetime = NumberRange.new(1, 1)
							ParticleEmitter1.Rate = 8000
							ParticleEmitter1.RotSpeed = NumberRange.new(400, 400)
							ParticleEmitter2.Name = "Void"
							ParticleEmitter2.Parent = Part0
							ParticleEmitter2.Speed = NumberRange.new(0, 0)
							ParticleEmitter2.Rotation = NumberRange.new(37, 999)
							ParticleEmitter2.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
							ParticleEmitter2.Texture = "rbxassetid://48315270"
							ParticleEmitter2.ZOffset = 1
							ParticleEmitter2.Size = NumberSequence.new(0.50000011920929,0)
							ParticleEmitter2.Drag = 50
							ParticleEmitter2.EmissionDirection = Enum.NormalId.Left
							ParticleEmitter2.Lifetime = NumberRange.new(1, 1)
							ParticleEmitter2.Rate = 8000
							ParticleEmitter2.RotSpeed = NumberRange.new(-400, -400)
							local b2p2 = Instance.new("BodyPosition",Part0)
							b2p2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
							b2p2.Position =v:WaitForChild("Torso").CFrame * CFrame.new(0,0,0).p

							spawn(function()
								Part0.CFrame =v:WaitForChild("Torso").CFrame * CFrame.Angles(0,math.rad(math.random(-180,180)),0)

								wait(0.1)
								b2p2.Position = Part0.CFrame * CFrame.new(0,math.random(5,20),math.random(5,20)).p



								wait(1)
								b2p2.D = 800
								for i = 1,5 do
									wait(0.1)
									b2p2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0).p

								end
								playor.Character.Humanoid.Health = playor.Character.Humanoid.Health + 2
								ParticleEmitter1.Enabled = false
								ParticleEmitter2.Enabled = false
								wait(1)
								Part0:Destroy()

							end)

						end
					end)
					v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 5	
				end
				v:FindFirstChildOfClass("Humanoid").Health = v:FindFirstChildOfClass("Humanoid").Health -math.random( 6,8)

				local joe2 = Instance.new("BodyVelocity",v:WaitForChild("Torso"))
				joe2.maxForce = Vector3.new(40000,40000,40000)
				joe2.velocity = playor.Character.HumanoidRootPart.CFrame.lookVector*45
				joe2.Name = "speedy"
				spawn(function()
					swait(5)
					joe2:Destroy()
				end)	
			end
		end
	end)
	for i = 1,4 do
		swait()
		Part0.CFrame = Part0.CFrame * CFrame.new(0,1.6,0)


	end

	attack = false
	spawn(function()
		for i = 1,10 do
			swait()
			Part0.CFrame = Part0.CFrame * CFrame.new(0,-0.1,0)

		end
	end)



	local Part1 = Instance.new("Part")
	local SpecialMesh1 = Instance.new("SpecialMesh")
	Part1.Parent = game.Workspace
	Part1.CFrame = CFrame.new(-30.1782074, 3.37420082, 54.3409119, 0.99992156, 0.0120442174, -0.0013348785, -0.0121160643, 0.995586276, -0.0929782987, 0.000209138176, 0.0929871351, 0.995668948)
	Part1.Orientation = Vector3.new(5.32999992, -0.0799999982, -0.699999988)
	Part1.Position = Vector3.new(-30.1782074, 3.37420082, 54.3409119)
	Part1.Rotation = Vector3.new(5.32999992, -0.0799999982, -0.689999998)
	Part1.Velocity = Vector3.new(0.0590489842, 48.6100769, 0.116325878)
	Part1.Size = Vector3.new(1.88918805, 6.59438324, 1.72332072)
	Part1.BackSurface = Enum.SurfaceType.Weld
	Part1.BottomSurface = Enum.SurfaceType.Weld
	Part1.FrontSurface = Enum.SurfaceType.Weld
	Part1.LeftSurface = Enum.SurfaceType.Weld
	Part1.Material = Enum.Material.Slate
	Part1.RightSurface = Enum.SurfaceType.Weld
	Part1.RotVelocity = Vector3.new(-0.255170107, -0.00217773998, 0.312504321)
	Part1.TopSurface = Enum.SurfaceType.Weld
	Part1.FormFactor = Enum.FormFactor.Symmetric
	Part1.formFactor = Enum.FormFactor.Symmetric
	SpecialMesh1.Parent = Part1
	SpecialMesh1.MeshId = "http://www.roblox.com/asset/?id=15881174"
	SpecialMesh1.Scale = Vector3.new(1.66693044, 2.19812751, 1.31472826)
	SpecialMesh1.TextureId = "http://www.roblox.com/asset/?id=15881163"
	SpecialMesh1.MeshType = Enum.MeshType.FileMesh


	spawn(function()
		local Sound0 = Instance.new("Sound")
		Sound0.Name = "Sounds o_o"
		Sound0.TimePosition = 16.63
		Sound0.Parent = Part1
		Sound0.Volume = 6
		game:GetService("Debris"):AddItem(Sound0, 1)

		Sound0.SoundId = "rbxassetid://5987858580"
		Sound0:Play()
	end)
	swagminton2:play()
	Part1.Anchored = true
	Part1.CanCollide = false
	Part1.Massless = true
	Part1.CFrame = Part0.CFrame * CFrame.new(0,-5,-4) 
	game:GetService("Debris"):AddItem(Part1, 4)
	spawn(function()
		swait(3)
		for i, v in pairs(FindNearestHead(Part1.CFrame.p, 5)) do
			if v:FindFirstChild("Head") then
				if OVERDRIVE == true then
					spawn(function()
						for i = 1,math.random(1,2) do
							local Part0 = Instance.new("Part")
							local ParticleEmitter1 = Instance.new("ParticleEmitter")
							local ParticleEmitter2 = Instance.new("ParticleEmitter")
							Part0.Name = "ORB O_OO_O__O"
							Part0.Parent = game.Workspace
							Part0.CFrame = CFrame.new(119.075157, 2.55000997, -37.0025864, 1, 0, 0, 0, 1, 0, 0, 0, 1)
							Part0.Position = Vector3.new(119.075157, 2.55000997, -37.0025864)
							Part0.Transparency = 1
							Part0.Size = Vector3.new(0.0999998227, 0.099999927, 0.0999999121)
							Part0.BottomSurface = Enum.SurfaceType.Smooth
							Part0.CanCollide = false
							Part0.Material = Enum.Material.SmoothPlastic
							Part0.TopSurface = Enum.SurfaceType.Smooth
							ParticleEmitter1.Name = "Vigor"
							ParticleEmitter1.Parent = Part0
							ParticleEmitter1.Speed = NumberRange.new(0, 0)
							ParticleEmitter1.Rotation = NumberRange.new(37, 999)
							ParticleEmitter1.Color = ColorSequence.new(Color3.new(0.117647, 0, 0.352941),Color3.new(0.117647, 0, 0.352941))
							ParticleEmitter1.Texture = "rbxassetid://48315270"
							ParticleEmitter1.Size = NumberSequence.new(0.99999964237213,0)
							ParticleEmitter1.Drag = 50
							ParticleEmitter1.EmissionDirection = Enum.NormalId.Left
							ParticleEmitter1.Lifetime = NumberRange.new(1, 1)
							ParticleEmitter1.Rate = 8000
							ParticleEmitter1.RotSpeed = NumberRange.new(400, 400)
							ParticleEmitter2.Name = "Void"
							ParticleEmitter2.Parent = Part0
							ParticleEmitter2.Speed = NumberRange.new(0, 0)
							ParticleEmitter2.Rotation = NumberRange.new(37, 999)
							ParticleEmitter2.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
							ParticleEmitter2.Texture = "rbxassetid://48315270"
							ParticleEmitter2.ZOffset = 1
							ParticleEmitter2.Size = NumberSequence.new(0.50000011920929,0)
							ParticleEmitter2.Drag = 50
							ParticleEmitter2.EmissionDirection = Enum.NormalId.Left
							ParticleEmitter2.Lifetime = NumberRange.new(1, 1)
							ParticleEmitter2.Rate = 8000
							ParticleEmitter2.RotSpeed = NumberRange.new(-400, -400)
							local b2p2 = Instance.new("BodyPosition",Part0)
							b2p2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
							b2p2.Position =v:WaitForChild("Torso").CFrame * CFrame.new(0,0,0).p

							spawn(function()
								Part0.CFrame =v:WaitForChild("Torso").CFrame * CFrame.Angles(0,math.rad(math.random(-180,180)),0)

								wait(0.1)
								b2p2.Position = Part0.CFrame * CFrame.new(0,math.random(5,20),math.random(5,20)).p



								wait(1)
								b2p2.D = 800
								for i = 1,5 do
									wait(0.1)
									b2p2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0).p

								end
								playor.Character.Humanoid.Health = playor.Character.Humanoid.Health + 2
								ParticleEmitter1.Enabled = false
								ParticleEmitter2.Enabled = false
								wait(1)
								Part0:Destroy()

							end)

						end
					end)
					v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 6	
				end
				v:FindFirstChildOfClass("Humanoid").Health = v:FindFirstChildOfClass("Humanoid").Health -math.random( 6,8)

				local joe2 = Instance.new("BodyVelocity",v:WaitForChild("Torso"))
				joe2.maxForce = Vector3.new(40000,40000,40000)
				joe2.velocity = playor.Character.HumanoidRootPart.CFrame.lookVector*45
				joe2.Name = "speedy"
				spawn(function()
					swait(5)
					joe2:Destroy()
				end)	
			end
		end
	end)
	for i = 1,4 do
		swait()
		Part1.CFrame = Part1.CFrame * CFrame.new(0,1.6,0)

	end

	spawn(function()
		for i = 1,10 do
			swait()
			Part1.CFrame = Part1.CFrame * CFrame.new(0,-0.1,0)

		end
	end)


	local Part0 = Instance.new("Part")
	local SpecialMesh1 = Instance.new("SpecialMesh")
	Part0.Parent = game.Workspace
	Part0.CFrame = CFrame.new(-30.1782074, 3.37420082, 54.3409119, 0.99992156, 0.0120442174, -0.0013348785, -0.0121160643, 0.995586276, -0.0929782987, 0.000209138176, 0.0929871351, 0.995668948)
	Part0.Orientation = Vector3.new(5.32999992, -0.0799999982, -0.699999988)
	Part0.Position = Vector3.new(-30.1782074, 3.37420082, 54.3409119)
	Part0.Rotation = Vector3.new(5.32999992, -0.0799999982, -0.689999998)
	Part0.Velocity = Vector3.new(0.0590489842, 48.6100769, 0.116325878)
	Part0.Size = Vector3.new(1.88918805, 6.59438324, 1.72332072)
	Part0.BackSurface = Enum.SurfaceType.Weld
	Part0.BottomSurface = Enum.SurfaceType.Weld
	Part0.FrontSurface = Enum.SurfaceType.Weld
	Part0.LeftSurface = Enum.SurfaceType.Weld
	Part0.Material = Enum.Material.Slate
	Part0.RightSurface = Enum.SurfaceType.Weld
	Part0.RotVelocity = Vector3.new(-0.255170107, -0.00217773998, 0.312504321)
	Part0.TopSurface = Enum.SurfaceType.Weld
	Part0.FormFactor = Enum.FormFactor.Symmetric
	Part0.formFactor = Enum.FormFactor.Symmetric
	SpecialMesh1.Parent = Part0
	SpecialMesh1.MeshId = "http://www.roblox.com/asset/?id=15881174"
	SpecialMesh1.Scale = Vector3.new(1.66693044, 2.19812751, 1.31472826)
	SpecialMesh1.TextureId = "http://www.roblox.com/asset/?id=15881163"
	SpecialMesh1.MeshType = Enum.MeshType.FileMesh
	Part0.Anchored = true
	Part0.CanCollide = false
	Part0.Massless = true
	Part0.CFrame = Part1.CFrame * CFrame.new(0,-5,-4) 
	swagminton2:play()
	spawn(function()
		swait(3)
		for i, v in pairs(FindNearestHead(Part0.CFrame.p, 5)) do
			if v:FindFirstChild("Head") then
				if OVERDRIVE == true then
					spawn(function()
						for i = 1,math.random(1,2) do
							local Part0 = Instance.new("Part")
							local ParticleEmitter1 = Instance.new("ParticleEmitter")
							local ParticleEmitter2 = Instance.new("ParticleEmitter")
							Part0.Name = "ORB O_OO_O__O"
							Part0.Parent = game.Workspace
							Part0.CFrame = CFrame.new(119.075157, 2.55000997, -37.0025864, 1, 0, 0, 0, 1, 0, 0, 0, 1)
							Part0.Position = Vector3.new(119.075157, 2.55000997, -37.0025864)
							Part0.Transparency = 1
							Part0.Size = Vector3.new(0.0999998227, 0.099999927, 0.0999999121)
							Part0.BottomSurface = Enum.SurfaceType.Smooth
							Part0.CanCollide = false
							Part0.Material = Enum.Material.SmoothPlastic
							Part0.TopSurface = Enum.SurfaceType.Smooth
							ParticleEmitter1.Name = "Vigor"
							ParticleEmitter1.Parent = Part0
							ParticleEmitter1.Speed = NumberRange.new(0, 0)
							ParticleEmitter1.Rotation = NumberRange.new(37, 999)
							ParticleEmitter1.Color = ColorSequence.new(Color3.new(0.117647, 0, 0.352941),Color3.new(0.117647, 0, 0.352941))
							ParticleEmitter1.Texture = "rbxassetid://48315270"
							ParticleEmitter1.Size = NumberSequence.new(0.99999964237213,0)
							ParticleEmitter1.Drag = 50
							ParticleEmitter1.EmissionDirection = Enum.NormalId.Left
							ParticleEmitter1.Lifetime = NumberRange.new(1, 1)
							ParticleEmitter1.Rate = 8000
							ParticleEmitter1.RotSpeed = NumberRange.new(400, 400)
							ParticleEmitter2.Name = "Void"
							ParticleEmitter2.Parent = Part0
							ParticleEmitter2.Speed = NumberRange.new(0, 0)
							ParticleEmitter2.Rotation = NumberRange.new(37, 999)
							ParticleEmitter2.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
							ParticleEmitter2.Texture = "rbxassetid://48315270"
							ParticleEmitter2.ZOffset = 1
							ParticleEmitter2.Size = NumberSequence.new(0.50000011920929,0)
							ParticleEmitter2.Drag = 50
							ParticleEmitter2.EmissionDirection = Enum.NormalId.Left
							ParticleEmitter2.Lifetime = NumberRange.new(1, 1)
							ParticleEmitter2.Rate = 8000
							ParticleEmitter2.RotSpeed = NumberRange.new(-400, -400)
							local b2p2 = Instance.new("BodyPosition",Part0)
							b2p2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
							b2p2.Position =v:WaitForChild("Torso").CFrame * CFrame.new(0,0,0).p

							spawn(function()
								Part0.CFrame =v:WaitForChild("Torso").CFrame * CFrame.Angles(0,math.rad(math.random(-180,180)),0)

								wait(0.1)
								b2p2.Position = Part0.CFrame * CFrame.new(0,math.random(5,20),math.random(5,20)).p



								wait(1)
								b2p2.D = 800
								for i = 1,5 do
									wait(0.1)
									b2p2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0).p

								end
								playor.Character.Humanoid.Health = playor.Character.Humanoid.Health + 2
								ParticleEmitter1.Enabled = false
								ParticleEmitter2.Enabled = false
								wait(1)
								Part0:Destroy()

							end)

						end
					end)
					v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 5	
				end
				v:FindFirstChildOfClass("Humanoid").Health = v:FindFirstChildOfClass("Humanoid").Health -math.random( 6,8)

				local joe2 = Instance.new("BodyVelocity",v:WaitForChild("Torso"))
				joe2.maxForce = Vector3.new(40000,40000,40000)
				joe2.velocity = playor.Character.HumanoidRootPart.CFrame.lookVector*45
				joe2.Name = "speedy"
				spawn(function()
					swait(5)
					joe2:Destroy()
				end)	
			end
		end
	end)
	for i = 1,4 do
		swait()
		Part0.CFrame = Part0.CFrame * CFrame.new(0,1.6,0)

	end
	spawn(function()
		for i = 1,10 do
			swait()
			Part0.CFrame = Part0.CFrame * CFrame.new(0,-0.1,0)

		end
	end)
	game:GetService("Debris"):AddItem(Part0, 4)


	local Part0 = Instance.new("Part")
	local SpecialMesh1 = Instance.new("SpecialMesh")
	Part0.Parent = game.Workspace
	Part0.CFrame = CFrame.new(-30.1782074, 3.37420082, 54.3409119, 0.99992156, 0.0120442174, -0.0013348785, -0.0121160643, 0.995586276, -0.0929782987, 0.000209138176, 0.0929871351, 0.995668948)
	Part0.Orientation = Vector3.new(5.32999992, -0.0799999982, -0.699999988)
	Part0.Position = Vector3.new(-30.1782074, 3.37420082, 54.3409119)
	Part0.Rotation = Vector3.new(5.32999992, -0.0799999982, -0.689999998)
	Part0.Velocity = Vector3.new(0.0590489842, 48.6100769, 0.116325878)
	Part0.Size = Vector3.new(1.88918805, 6.59438324, 1.72332072)
	Part0.BackSurface = Enum.SurfaceType.Weld
	Part0.BottomSurface = Enum.SurfaceType.Weld
	Part0.FrontSurface = Enum.SurfaceType.Weld
	Part0.LeftSurface = Enum.SurfaceType.Weld
	Part0.Material = Enum.Material.Slate
	Part0.RightSurface = Enum.SurfaceType.Weld
	Part0.RotVelocity = Vector3.new(-0.255170107, -0.00217773998, 0.312504321)
	Part0.TopSurface = Enum.SurfaceType.Weld
	Part0.FormFactor = Enum.FormFactor.Symmetric
	Part0.formFactor = Enum.FormFactor.Symmetric
	SpecialMesh1.Parent = Part0
	SpecialMesh1.MeshId = "http://www.roblox.com/asset/?id=15881174"
	SpecialMesh1.Scale = Vector3.new(1.66693044, 2.19812751, 1.31472826)
	SpecialMesh1.TextureId = "http://www.roblox.com/asset/?id=15881163"
	SpecialMesh1.MeshType = Enum.MeshType.FileMesh
	Part0.Anchored = true
	Part0.CanCollide = false
	Part0.Massless = true
	Part0.CFrame = Part1.CFrame * CFrame.new(0,-3.5,-8) 
	spawn(function()
		swait(3)
		for i, v in pairs(FindNearestHead(Part0.CFrame.p, 5)) do
			if v:FindFirstChild("Head") then
				if OVERDRIVE == true then
					spawn(function()
						for i = 1,math.random(1,2) do
							local Part0 = Instance.new("Part")
							local ParticleEmitter1 = Instance.new("ParticleEmitter")
							local ParticleEmitter2 = Instance.new("ParticleEmitter")
							Part0.Name = "ORB O_OO_O__O"
							Part0.Parent = game.Workspace
							Part0.CFrame = CFrame.new(119.075157, 2.55000997, -37.0025864, 1, 0, 0, 0, 1, 0, 0, 0, 1)
							Part0.Position = Vector3.new(119.075157, 2.55000997, -37.0025864)
							Part0.Transparency = 1
							Part0.Size = Vector3.new(0.0999998227, 0.099999927, 0.0999999121)
							Part0.BottomSurface = Enum.SurfaceType.Smooth
							Part0.CanCollide = false
							Part0.Material = Enum.Material.SmoothPlastic
							Part0.TopSurface = Enum.SurfaceType.Smooth
							ParticleEmitter1.Name = "Vigor"
							ParticleEmitter1.Parent = Part0
							ParticleEmitter1.Speed = NumberRange.new(0, 0)
							ParticleEmitter1.Rotation = NumberRange.new(37, 999)
							ParticleEmitter1.Color = ColorSequence.new(Color3.new(0.117647, 0, 0.352941),Color3.new(0.117647, 0, 0.352941))
							ParticleEmitter1.Texture = "rbxassetid://48315270"
							ParticleEmitter1.Size = NumberSequence.new(0.99999964237213,0)
							ParticleEmitter1.Drag = 50
							ParticleEmitter1.EmissionDirection = Enum.NormalId.Left
							ParticleEmitter1.Lifetime = NumberRange.new(1, 1)
							ParticleEmitter1.Rate = 8000
							ParticleEmitter1.RotSpeed = NumberRange.new(400, 400)
							ParticleEmitter2.Name = "Void"
							ParticleEmitter2.Parent = Part0
							ParticleEmitter2.Speed = NumberRange.new(0, 0)
							ParticleEmitter2.Rotation = NumberRange.new(37, 999)
							ParticleEmitter2.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
							ParticleEmitter2.Texture = "rbxassetid://48315270"
							ParticleEmitter2.ZOffset = 1
							ParticleEmitter2.Size = NumberSequence.new(0.50000011920929,0)
							ParticleEmitter2.Drag = 50
							ParticleEmitter2.EmissionDirection = Enum.NormalId.Left
							ParticleEmitter2.Lifetime = NumberRange.new(1, 1)
							ParticleEmitter2.Rate = 8000
							ParticleEmitter2.RotSpeed = NumberRange.new(-400, -400)
							local b2p2 = Instance.new("BodyPosition",Part0)
							b2p2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
							b2p2.Position =v:WaitForChild("Torso").CFrame * CFrame.new(0,0,0).p

							spawn(function()
								Part0.CFrame =v:WaitForChild("Torso").CFrame * CFrame.Angles(0,math.rad(math.random(-180,180)),0)

								wait(0.1)
								b2p2.Position = Part0.CFrame * CFrame.new(0,math.random(5,20),math.random(5,20)).p



								wait(1)
								b2p2.D = 800
								for i = 1,5 do
									wait(0.1)
									b2p2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0).p

								end
								playor.Character.Humanoid.Health = playor.Character.Humanoid.Health + 2
								ParticleEmitter1.Enabled = false
								ParticleEmitter2.Enabled = false
								wait(1)
								Part0:Destroy()

							end)

						end
					end)
					v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 8	
				end
				v:FindFirstChildOfClass("Humanoid").Health = v:FindFirstChildOfClass("Humanoid").Health -math.random( 6,8)

				local joe2 = Instance.new("BodyVelocity",v:WaitForChild("Torso"))
				joe2.maxForce = Vector3.new(40000,40000,40000)
				joe2.velocity = playor.Character.HumanoidRootPart.CFrame.lookVector*45
				joe2.Name = "speedy"
				spawn(function()
					swait(5)
					joe2:Destroy()
				end)	
			end
		end
	end)
	swagminton2:play()
	for i = 1,4 do
		swait()
		Part0.CFrame = Part0.CFrame * CFrame.new(0,1.6,0)

	end
	spawn(function()
		for i = 1,10 do
			swait()
			Part0.CFrame = Part0.CFrame * CFrame.new(0,-0.1,0)

		end
	end)
	game:GetService("Debris"):AddItem(Part0, 4)



	local Part0 = Instance.new("Part")
	local SpecialMesh1 = Instance.new("SpecialMesh")
	Part0.Parent = game.Workspace
	Part0.CFrame = CFrame.new(-30.1782074, 3.37420082, 54.3409119, 0.99992156, 0.0120442174, -0.0013348785, -0.0121160643, 0.995586276, -0.0929782987, 0.000209138176, 0.0929871351, 0.995668948)
	Part0.Orientation = Vector3.new(5.32999992, -0.0799999982, -0.699999988)
	Part0.Position = Vector3.new(-30.1782074, 3.37420082, 54.3409119)
	Part0.Rotation = Vector3.new(5.32999992, -0.0799999982, -0.689999998)
	Part0.Velocity = Vector3.new(0.0590489842, 48.6100769, 0.116325878)
	Part0.Size = Vector3.new(1.88918805, 6.59438324, 1.72332072)
	Part0.BackSurface = Enum.SurfaceType.Weld
	Part0.BottomSurface = Enum.SurfaceType.Weld
	Part0.FrontSurface = Enum.SurfaceType.Weld
	Part0.LeftSurface = Enum.SurfaceType.Weld
	Part0.Material = Enum.Material.Slate
	Part0.RightSurface = Enum.SurfaceType.Weld
	Part0.RotVelocity = Vector3.new(-0.255170107, -0.00217773998, 0.312504321)
	Part0.TopSurface = Enum.SurfaceType.Weld
	Part0.FormFactor = Enum.FormFactor.Symmetric
	Part0.formFactor = Enum.FormFactor.Symmetric
	SpecialMesh1.Parent = Part0
	SpecialMesh1.MeshId = "http://www.roblox.com/asset/?id=15881174"
	SpecialMesh1.Scale = Vector3.new(1.66693044, 2.19812751, 1.31472826)
	SpecialMesh1.TextureId = "http://www.roblox.com/asset/?id=15881163"
	SpecialMesh1.MeshType = Enum.MeshType.FileMesh
	spawn(function()
		local Sound0 = Instance.new("Sound")
		Sound0.Name = "Sounds o_o"
		Sound0.TimePosition = 18.79
		Sound0.Parent = Part0
		Sound0.Volume = 6
		game:GetService("Debris"):AddItem(Sound0, 0.6)

		Sound0.SoundId = "rbxassetid://5987858580"
		Sound0:Play()
	end)
	Part0.Anchored = true
	Part0.CanCollide = false
	Part0.Massless = true
	Part0.CFrame = Part1.CFrame * CFrame.new(0,-2,-12) 
	spawn(function()
		swait(3)
		for i, v in pairs(FindNearestHead(Part0.CFrame.p, 5)) do
			if v:FindFirstChild("Head") then
				if OVERDRIVE == true then
					spawn(function()
						for i = 1,math.random(1,2) do
							local Part0 = Instance.new("Part")
							local ParticleEmitter1 = Instance.new("ParticleEmitter")
							local ParticleEmitter2 = Instance.new("ParticleEmitter")
							Part0.Name = "ORB O_OO_O__O"
							Part0.Parent = game.Workspace
							Part0.CFrame = CFrame.new(119.075157, 2.55000997, -37.0025864, 1, 0, 0, 0, 1, 0, 0, 0, 1)
							Part0.Position = Vector3.new(119.075157, 2.55000997, -37.0025864)
							Part0.Transparency = 1
							Part0.Size = Vector3.new(0.0999998227, 0.099999927, 0.0999999121)
							Part0.BottomSurface = Enum.SurfaceType.Smooth
							Part0.CanCollide = false
							Part0.Material = Enum.Material.SmoothPlastic
							Part0.TopSurface = Enum.SurfaceType.Smooth
							ParticleEmitter1.Name = "Vigor"
							ParticleEmitter1.Parent = Part0
							ParticleEmitter1.Speed = NumberRange.new(0, 0)
							ParticleEmitter1.Rotation = NumberRange.new(37, 999)
							ParticleEmitter1.Color = ColorSequence.new(Color3.new(0.117647, 0, 0.352941),Color3.new(0.117647, 0, 0.352941))
							ParticleEmitter1.Texture = "rbxassetid://48315270"
							ParticleEmitter1.Size = NumberSequence.new(0.99999964237213,0)
							ParticleEmitter1.Drag = 50
							ParticleEmitter1.EmissionDirection = Enum.NormalId.Left
							ParticleEmitter1.Lifetime = NumberRange.new(1, 1)
							ParticleEmitter1.Rate = 8000
							ParticleEmitter1.RotSpeed = NumberRange.new(400, 400)
							ParticleEmitter2.Name = "Void"
							ParticleEmitter2.Parent = Part0
							ParticleEmitter2.Speed = NumberRange.new(0, 0)
							ParticleEmitter2.Rotation = NumberRange.new(37, 999)
							ParticleEmitter2.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
							ParticleEmitter2.Texture = "rbxassetid://48315270"
							ParticleEmitter2.ZOffset = 1
							ParticleEmitter2.Size = NumberSequence.new(0.50000011920929,0)
							ParticleEmitter2.Drag = 50
							ParticleEmitter2.EmissionDirection = Enum.NormalId.Left
							ParticleEmitter2.Lifetime = NumberRange.new(1, 1)
							ParticleEmitter2.Rate = 8000
							ParticleEmitter2.RotSpeed = NumberRange.new(-400, -400)
							local b2p2 = Instance.new("BodyPosition",Part0)
							b2p2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
							b2p2.Position =v:WaitForChild("Torso").CFrame * CFrame.new(0,0,0).p

							spawn(function()
								Part0.CFrame =v:WaitForChild("Torso").CFrame * CFrame.Angles(0,math.rad(math.random(-180,180)),0)

								wait(0.1)
								b2p2.Position = Part0.CFrame * CFrame.new(0,math.random(5,20),math.random(5,20)).p



								wait(1)
								b2p2.D = 800
								for i = 1,5 do
									wait(0.1)
									b2p2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0).p

								end
								playor.Character.Humanoid.Health = playor.Character.Humanoid.Health + 2
								ParticleEmitter1.Enabled = false
								ParticleEmitter2.Enabled = false
								wait(1)
								Part0:Destroy()

							end)

						end
					end)
					v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 	4
				end
				v:FindFirstChildOfClass("Humanoid").Health = v:FindFirstChildOfClass("Humanoid").Health -math.random( 6,8)

				local joe2 = Instance.new("BodyVelocity",v:WaitForChild("Torso"))
				joe2.maxForce = Vector3.new(40000,40000,40000)
				joe2.velocity = playor.Character.HumanoidRootPart.CFrame.lookVector*45
				joe2.Name = "speedy"
				spawn(function()
					swait(5)
					joe2:Destroy()
				end)	
			end
		end
	end)
	for i = 1,4 do
		swait()
		Part0.CFrame = Part0.CFrame * CFrame.new(0,1.6,0)

	end
	game:GetService("Debris"):AddItem(Part0, 4)

	spawn(function()
		for i = 1,10 do
			swait()
			Part0.CFrame = Part0.CFrame * CFrame.new(0,-0.1,0)

		end
	end)


	local Part0 = Instance.new("Part")
	local SpecialMesh1 = Instance.new("SpecialMesh")
	Part0.Parent = game.Workspace
	Part0.CFrame = CFrame.new(-30.1782074, 3.37420082, 54.3409119, 0.99992156, 0.0120442174, -0.0013348785, -0.0121160643, 0.995586276, -0.0929782987, 0.000209138176, 0.0929871351, 0.995668948)
	Part0.Orientation = Vector3.new(5.32999992, -0.0799999982, -0.699999988)
	Part0.Position = Vector3.new(-30.1782074, 3.37420082, 54.3409119)
	Part0.Rotation = Vector3.new(5.32999992, -0.0799999982, -0.689999998)
	Part0.Velocity = Vector3.new(0.0590489842, 48.6100769, 0.116325878)
	Part0.Size = Vector3.new(1.88918805, 6.59438324, 1.72332072)
	Part0.BackSurface = Enum.SurfaceType.Weld
	Part0.BottomSurface = Enum.SurfaceType.Weld
	Part0.FrontSurface = Enum.SurfaceType.Weld
	Part0.LeftSurface = Enum.SurfaceType.Weld
	Part0.Material = Enum.Material.Slate
	Part0.RightSurface = Enum.SurfaceType.Weld
	Part0.RotVelocity = Vector3.new(-0.255170107, -0.00217773998, 0.312504321)
	Part0.TopSurface = Enum.SurfaceType.Weld
	Part0.FormFactor = Enum.FormFactor.Symmetric
	Part0.formFactor = Enum.FormFactor.Symmetric
	SpecialMesh1.Parent = Part0
	SpecialMesh1.MeshId = "http://www.roblox.com/asset/?id=15881174"
	SpecialMesh1.Scale = Vector3.new(1.66693044, 2.19812751, 1.31472826)
	SpecialMesh1.TextureId = "http://www.roblox.com/asset/?id=15881163"
	SpecialMesh1.MeshType = Enum.MeshType.FileMesh

	spawn(function()
		local Sound0 = Instance.new("Sound")
		Sound0.Name = "Sounds o_o"
		Sound0.TimePosition = 2.76
		Sound0.Parent = Part0
		Sound0.Volume = 6
		game:GetService("Debris"):AddItem(Sound0, 0.2)
		Sound0.SoundId = "rbxassetid://5987858580"
		Sound0:Play()
	end)

	swagminton2:play()
	Part0.Anchored = true
	Part0.CanCollide = false
	Part0.Massless = true
	Part0.CFrame = Part1.CFrame * CFrame.new(0,-0.5,-16) 
	game:GetService("Debris"):AddItem(Part0, 4)
	spawn(function()
		swait(3)
		for i, v in pairs(FindNearestHead(Part0.CFrame.p, 5)) do
			if v:FindFirstChild("Head") then
				if OVERDRIVE == true then
					spawn(function()
						for i = 1,math.random(1,2) do
							local Part0 = Instance.new("Part")
							local ParticleEmitter1 = Instance.new("ParticleEmitter")
							local ParticleEmitter2 = Instance.new("ParticleEmitter")
							Part0.Name = "ORB O_OO_O__O"
							Part0.Parent = game.Workspace
							Part0.CFrame = CFrame.new(119.075157, 2.55000997, -37.0025864, 1, 0, 0, 0, 1, 0, 0, 0, 1)
							Part0.Position = Vector3.new(119.075157, 2.55000997, -37.0025864)
							Part0.Transparency = 1
							Part0.Size = Vector3.new(0.0999998227, 0.099999927, 0.0999999121)
							Part0.BottomSurface = Enum.SurfaceType.Smooth
							Part0.CanCollide = false
							Part0.Material = Enum.Material.SmoothPlastic
							Part0.TopSurface = Enum.SurfaceType.Smooth
							ParticleEmitter1.Name = "Vigor"
							ParticleEmitter1.Parent = Part0
							ParticleEmitter1.Speed = NumberRange.new(0, 0)
							ParticleEmitter1.Rotation = NumberRange.new(37, 999)
							ParticleEmitter1.Color = ColorSequence.new(Color3.new(0.117647, 0, 0.352941),Color3.new(0.117647, 0, 0.352941))
							ParticleEmitter1.Texture = "rbxassetid://48315270"
							ParticleEmitter1.Size = NumberSequence.new(0.99999964237213,0)
							ParticleEmitter1.Drag = 50
							ParticleEmitter1.EmissionDirection = Enum.NormalId.Left
							ParticleEmitter1.Lifetime = NumberRange.new(1, 1)
							ParticleEmitter1.Rate = 8000
							ParticleEmitter1.RotSpeed = NumberRange.new(400, 400)
							ParticleEmitter2.Name = "Void"
							ParticleEmitter2.Parent = Part0
							ParticleEmitter2.Speed = NumberRange.new(0, 0)
							ParticleEmitter2.Rotation = NumberRange.new(37, 999)
							ParticleEmitter2.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
							ParticleEmitter2.Texture = "rbxassetid://48315270"
							ParticleEmitter2.ZOffset = 1
							ParticleEmitter2.Size = NumberSequence.new(0.50000011920929,0)
							ParticleEmitter2.Drag = 50
							ParticleEmitter2.EmissionDirection = Enum.NormalId.Left
							ParticleEmitter2.Lifetime = NumberRange.new(1, 1)
							ParticleEmitter2.Rate = 8000
							ParticleEmitter2.RotSpeed = NumberRange.new(-400, -400)
							local b2p2 = Instance.new("BodyPosition",Part0)
							b2p2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
							b2p2.Position =v:WaitForChild("Torso").CFrame * CFrame.new(0,0,0).p

							spawn(function()
								Part0.CFrame =v:WaitForChild("Torso").CFrame * CFrame.Angles(0,math.rad(math.random(-180,180)),0)

								wait(0.1)
								b2p2.Position = Part0.CFrame * CFrame.new(0,math.random(5,20),math.random(5,20)).p



								wait(1)
								b2p2.D = 800
								for i = 1,5 do
									wait(0.1)
									b2p2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0).p

								end
								playor.Character.Humanoid.Health = playor.Character.Humanoid.Health + 2
								ParticleEmitter1.Enabled = false
								ParticleEmitter2.Enabled = false
								wait(1)
								Part0:Destroy()

							end)

						end
					end)
					v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 5	
				end
				v:FindFirstChildOfClass("Humanoid").Health = v:FindFirstChildOfClass("Humanoid").Health -math.random( 6,8)

				local joe2 = Instance.new("BodyVelocity",v:WaitForChild("Torso"))
				joe2.maxForce = Vector3.new(40000,40000,40000)
				joe2.velocity = playor.Character.HumanoidRootPart.CFrame.lookVector*45
				joe2.Name = "speedy"
				spawn(function()
					swait(5)
					joe2:Destroy()
				end)	
			end
		end
	end)
	for i = 1,4 do
		swait()
		Part0.CFrame = Part0.CFrame * CFrame.new(0,1.6,0)

	end

	spawn(function()
		for i = 1,10 do
			swait()
			Part0.CFrame = Part0.CFrame * CFrame.new(0,-0.1,0)

		end
	end)


	local Part0 = Instance.new("Part")
	local SpecialMesh1 = Instance.new("SpecialMesh")
	Part0.Parent = game.Workspace
	Part0.CFrame = CFrame.new(-30.1782074, 3.37420082, 54.3409119, 0.99992156, 0.0120442174, -0.0013348785, -0.0121160643, 0.995586276, -0.0929782987, 0.000209138176, 0.0929871351, 0.995668948)
	Part0.Orientation = Vector3.new(5.32999992, -0.0799999982, -0.699999988)
	Part0.Position = Vector3.new(-30.1782074, 3.37420082, 54.3409119)
	Part0.Rotation = Vector3.new(5.32999992, -0.0799999982, -0.689999998)
	Part0.Velocity = Vector3.new(0.0590489842, 48.6100769, 0.116325878)
	Part0.Size = Vector3.new(1.88918805, 6.59438324, 1.72332072)
	Part0.BackSurface = Enum.SurfaceType.Weld
	Part0.BottomSurface = Enum.SurfaceType.Weld
	Part0.FrontSurface = Enum.SurfaceType.Weld
	Part0.LeftSurface = Enum.SurfaceType.Weld
	Part0.Material = Enum.Material.Slate
	Part0.RightSurface = Enum.SurfaceType.Weld
	Part0.RotVelocity = Vector3.new(-0.255170107, -0.00217773998, 0.312504321)
	Part0.TopSurface = Enum.SurfaceType.Weld
	Part0.FormFactor = Enum.FormFactor.Symmetric
	Part0.formFactor = Enum.FormFactor.Symmetric
	SpecialMesh1.Parent = Part0
	SpecialMesh1.MeshId = "http://www.roblox.com/asset/?id=15881174"
	SpecialMesh1.Scale = Vector3.new(1.66693044, 2.19812751, 1.31472826)
	SpecialMesh1.TextureId = "http://www.roblox.com/asset/?id=15881163"
	SpecialMesh1.MeshType = Enum.MeshType.FileMesh

	Part0.Anchored = true
	Part0.CanCollide = false
	Part0.Massless = true
	Part0.CFrame = Part1.CFrame * CFrame.new(0,1,-20) 
	game:GetService("Debris"):AddItem(Part0, 4)
	spawn(function()
		swait(3)
		for i, v in pairs(FindNearestHead(Part0.CFrame.p, 5)) do
			if v:FindFirstChild("Head") then
				if OVERDRIVE == true then
					spawn(function()
						for i = 1,math.random(1,2) do
							local Part0 = Instance.new("Part")
							local ParticleEmitter1 = Instance.new("ParticleEmitter")
							local ParticleEmitter2 = Instance.new("ParticleEmitter")
							Part0.Name = "ORB O_OO_O__O"
							Part0.Parent = game.Workspace
							Part0.CFrame = CFrame.new(119.075157, 2.55000997, -37.0025864, 1, 0, 0, 0, 1, 0, 0, 0, 1)
							Part0.Position = Vector3.new(119.075157, 2.55000997, -37.0025864)
							Part0.Transparency = 1
							Part0.Size = Vector3.new(0.0999998227, 0.099999927, 0.0999999121)
							Part0.BottomSurface = Enum.SurfaceType.Smooth
							Part0.CanCollide = false
							Part0.Material = Enum.Material.SmoothPlastic
							Part0.TopSurface = Enum.SurfaceType.Smooth
							ParticleEmitter1.Name = "Vigor"
							ParticleEmitter1.Parent = Part0
							ParticleEmitter1.Speed = NumberRange.new(0, 0)
							ParticleEmitter1.Rotation = NumberRange.new(37, 999)
							ParticleEmitter1.Color = ColorSequence.new(Color3.new(0.117647, 0, 0.352941),Color3.new(0.117647, 0, 0.352941))
							ParticleEmitter1.Texture = "rbxassetid://48315270"
							ParticleEmitter1.Size = NumberSequence.new(0.99999964237213,0)
							ParticleEmitter1.Drag = 50
							ParticleEmitter1.EmissionDirection = Enum.NormalId.Left
							ParticleEmitter1.Lifetime = NumberRange.new(1, 1)
							ParticleEmitter1.Rate = 8000
							ParticleEmitter1.RotSpeed = NumberRange.new(400, 400)
							ParticleEmitter2.Name = "Void"
							ParticleEmitter2.Parent = Part0
							ParticleEmitter2.Speed = NumberRange.new(0, 0)
							ParticleEmitter2.Rotation = NumberRange.new(37, 999)
							ParticleEmitter2.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
							ParticleEmitter2.Texture = "rbxassetid://48315270"
							ParticleEmitter2.ZOffset = 1
							ParticleEmitter2.Size = NumberSequence.new(0.50000011920929,0)
							ParticleEmitter2.Drag = 50
							ParticleEmitter2.EmissionDirection = Enum.NormalId.Left
							ParticleEmitter2.Lifetime = NumberRange.new(1, 1)
							ParticleEmitter2.Rate = 8000
							ParticleEmitter2.RotSpeed = NumberRange.new(-400, -400)
							local b2p2 = Instance.new("BodyPosition",Part0)
							b2p2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
							b2p2.Position =v:WaitForChild("Torso").CFrame * CFrame.new(0,0,0).p

							spawn(function()
								Part0.CFrame =v:WaitForChild("Torso").CFrame * CFrame.Angles(0,math.rad(math.random(-180,180)),0)

								wait(0.1)
								b2p2.Position = Part0.CFrame * CFrame.new(0,math.random(5,20),math.random(5,20)).p



								wait(1)
								b2p2.D = 800
								for i = 1,5 do
									wait(0.1)
									b2p2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0).p

								end
								playor.Character.Humanoid.Health = playor.Character.Humanoid.Health + 2
								ParticleEmitter1.Enabled = false
								ParticleEmitter2.Enabled = false
								wait(1)
								Part0:Destroy()

							end)

						end
					end)
					v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 8	
				end
				v:FindFirstChildOfClass("Humanoid").Health = v:FindFirstChildOfClass("Humanoid").Health -math.random( 6,8)

				local joe2 = Instance.new("BodyVelocity",v:WaitForChild("Torso"))
				joe2.maxForce = Vector3.new(40000,40000,40000)
				joe2.velocity = playor.Character.HumanoidRootPart.CFrame.lookVector*45
				joe2.Name = "speedy"
				spawn(function()
					swait(5)
					joe2:Destroy()
				end)	
			end
		end
	end)
	for i = 1,4 do
		swait()
		Part0.CFrame = Part0.CFrame * CFrame.new(0,1.6,0)

	end

	spawn(function()
		for i = 1,10 do
			swait()
			Part0.CFrame = Part0.CFrame * CFrame.new(0,-0.1,0)

		end
	end)


	local Part0 = Instance.new("Part")
	local SpecialMesh1 = Instance.new("SpecialMesh")
	Part0.Parent = game.Workspace
	Part0.CFrame = CFrame.new(-30.1782074, 3.37420082, 54.3409119, 0.99992156, 0.0120442174, -0.0013348785, -0.0121160643, 0.995586276, -0.0929782987, 0.000209138176, 0.0929871351, 0.995668948)
	Part0.Orientation = Vector3.new(5.32999992, -0.0799999982, -0.699999988)
	Part0.Position = Vector3.new(-30.1782074, 3.37420082, 54.3409119)
	Part0.Rotation = Vector3.new(5.32999992, -0.0799999982, -0.689999998)
	Part0.Velocity = Vector3.new(0.0590489842, 48.6100769, 0.116325878)
	Part0.Size = Vector3.new(1.88918805, 6.59438324, 1.72332072)
	Part0.BackSurface = Enum.SurfaceType.Weld
	Part0.BottomSurface = Enum.SurfaceType.Weld
	Part0.FrontSurface = Enum.SurfaceType.Weld
	Part0.LeftSurface = Enum.SurfaceType.Weld
	Part0.Material = Enum.Material.Slate
	Part0.RightSurface = Enum.SurfaceType.Weld
	Part0.RotVelocity = Vector3.new(-0.255170107, -0.00217773998, 0.312504321)
	Part0.TopSurface = Enum.SurfaceType.Weld
	Part0.FormFactor = Enum.FormFactor.Symmetric
	Part0.formFactor = Enum.FormFactor.Symmetric
	SpecialMesh1.Parent = Part0
	SpecialMesh1.MeshId = "http://www.roblox.com/asset/?id=15881174"
	SpecialMesh1.Scale = Vector3.new(1.66693044, 2.19812751, 1.31472826)
	SpecialMesh1.TextureId = "http://www.roblox.com/asset/?id=15881163"
	SpecialMesh1.MeshType = Enum.MeshType.FileMesh
	Part0.Anchored = true
	Part0.CanCollide = false
	Part0.Massless = true
	Part0.CFrame = Part1.CFrame * CFrame.new(0,2.5,-24) 
	spawn(function()
		swait(3)
		for i, v in pairs(FindNearestHead(Part0.CFrame.p, 5)) do
			if v:FindFirstChild("Head") then
				if OVERDRIVE == true then
					spawn(function()
						for i = 1,math.random(1,2) do
							local Part0 = Instance.new("Part")
							local ParticleEmitter1 = Instance.new("ParticleEmitter")
							local ParticleEmitter2 = Instance.new("ParticleEmitter")
							Part0.Name = "ORB O_OO_O__O"
							Part0.Parent = game.Workspace
							Part0.CFrame = CFrame.new(119.075157, 2.55000997, -37.0025864, 1, 0, 0, 0, 1, 0, 0, 0, 1)
							Part0.Position = Vector3.new(119.075157, 2.55000997, -37.0025864)
							Part0.Transparency = 1
							Part0.Size = Vector3.new(0.0999998227, 0.099999927, 0.0999999121)
							Part0.BottomSurface = Enum.SurfaceType.Smooth
							Part0.CanCollide = false
							Part0.Material = Enum.Material.SmoothPlastic
							Part0.TopSurface = Enum.SurfaceType.Smooth
							ParticleEmitter1.Name = "Vigor"
							ParticleEmitter1.Parent = Part0
							ParticleEmitter1.Speed = NumberRange.new(0, 0)
							ParticleEmitter1.Rotation = NumberRange.new(37, 999)
							ParticleEmitter1.Color = ColorSequence.new(Color3.new(0.117647, 0, 0.352941),Color3.new(0.117647, 0, 0.352941))
							ParticleEmitter1.Texture = "rbxassetid://48315270"
							ParticleEmitter1.Size = NumberSequence.new(0.99999964237213,0)
							ParticleEmitter1.Drag = 50
							ParticleEmitter1.EmissionDirection = Enum.NormalId.Left
							ParticleEmitter1.Lifetime = NumberRange.new(1, 1)
							ParticleEmitter1.Rate = 8000
							ParticleEmitter1.RotSpeed = NumberRange.new(400, 400)
							ParticleEmitter2.Name = "Void"
							ParticleEmitter2.Parent = Part0
							ParticleEmitter2.Speed = NumberRange.new(0, 0)
							ParticleEmitter2.Rotation = NumberRange.new(37, 999)
							ParticleEmitter2.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
							ParticleEmitter2.Texture = "rbxassetid://48315270"
							ParticleEmitter2.ZOffset = 1
							ParticleEmitter2.Size = NumberSequence.new(0.50000011920929,0)
							ParticleEmitter2.Drag = 50
							ParticleEmitter2.EmissionDirection = Enum.NormalId.Left
							ParticleEmitter2.Lifetime = NumberRange.new(1, 1)
							ParticleEmitter2.Rate = 8000
							ParticleEmitter2.RotSpeed = NumberRange.new(-400, -400)
							local b2p2 = Instance.new("BodyPosition",Part0)
							b2p2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
							b2p2.Position =v:WaitForChild("Torso").CFrame * CFrame.new(0,0,0).p

							spawn(function()
								Part0.CFrame =v:WaitForChild("Torso").CFrame * CFrame.Angles(0,math.rad(math.random(-180,180)),0)

								wait(0.1)
								b2p2.Position = Part0.CFrame * CFrame.new(0,math.random(5,20),math.random(5,20)).p



								wait(1)
								b2p2.D = 800
								for i = 1,5 do
									wait(0.1)
									b2p2.Position = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0).p

								end
								playor.Character.Humanoid.Health = playor.Character.Humanoid.Health + 2
								ParticleEmitter1.Enabled = false
								ParticleEmitter2.Enabled = false
								wait(1)
								Part0:Destroy()

							end)

						end
					end)
					v:FindFirstChildOfClass("Humanoid").Health =  v:FindFirstChildOfClass("Humanoid").Health - 8	
				end
				v:FindFirstChildOfClass("Humanoid").Health = v:FindFirstChildOfClass("Humanoid").Health -math.random( 6,8)

				local joe2 = Instance.new("BodyVelocity",v:WaitForChild("Torso"))
				joe2.maxForce = Vector3.new(40000,40000,40000)
				joe2.velocity = playor.Character.HumanoidRootPart.CFrame.lookVector*45
				joe2.Name = "speedy"
				spawn(function()
					swait(5)
					joe2:Destroy()
				end)	
			end
		end
	end)
	swagminton2:play()
	for i = 1,4 do
		swait()
		Part0.CFrame = Part0.CFrame * CFrame.new(0,1.6,0)

	end
	spawn(function()
		for i = 1,10 do
			swait()
			Part0.CFrame = Part0.CFrame * CFrame.new(0,-0.1,0)

		end
	end)
	game:GetService("Debris"):AddItem(Part0, 4)

end
Mouse.KeyDown:connect(function(k)
	if k == "g" and attack == false then
		attack = true
		for i = 0,1,0.1 do

			swait(1)
			ls.C0=ls.C0:Lerp(cf(-0.813439786, 0.477959991, -0.138591513, 0.536936045, -0.275151014, -0.797490716, 0.107530743, 0.959927797, -0.258796632, 0.836741745, 0.0532024205, 0.54500699),i) 

			rs.C0=rs.C0:Lerp(cf(0.946573973, 0.491777062, 0.0683324933, 0.430870414, -0.115021244, 0.895053446, -0.302199781, 0.916184604, 0.26321286, -0.850309312, -0.383895636, 0.359997451),i)

			lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0, 0.087155737, -0.99619472, 0, 0.99619472, 0.087155737, 1, 0, 0),i) 

			rh.C0=rh.C0:Lerp(cf(1, -1, 0, 0, -0.087155737, 0.99619472, 0, 0.99619472, 0.087155737, -1, 0, 0),i) 

			rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.707106769, -0.707106769, 0, 0, 0, 1, -0.707106769, 0.707106769, 0),i)

			ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.750034988, 0.64253515, -0.156831652, 0.243210152, 0.48844558, 0.838015258, 0.615058064, 0.590397775, -0.522622347),i) 


		end	

		local	Part0 = Instance.new("Part")
		local	SurfaceGui1 = Instance.new("SurfaceGui")
		local	TextLabel2 = Instance.new("TextLabel")
		Part0.Parent = game.Workspace
		Part0.CFrame = CFrame.new(21.726532, 0.152379349, -7.85142517, 1, -6.68149738e-22, -3.82137093e-15, -3.82137093e-15, 4.37113883e-08, -1, -6.68149738e-22, 1, 4.37113883e-08)
		Part0.Orientation = Vector3.new(90, 0, 0)
		Part0.Position = Vector3.new(21.726532, 0.152379349, -7.85142517)
		Part0.Rotation = Vector3.new(90, 0, 0)
		Part0.Color = Color3.new(0.972549, 0.972549, 0.972549)
		Part0.Size = Vector3.new(1.494, 0.767, 0.14)
		Part0.CanCollide = false
		Part0.Massless = true
		Part0.BottomSurface = Enum.SurfaceType.Smooth
		Part0.BrickColor = BrickColor.new("Institutional white")
		Part0.TopSurface = Enum.SurfaceType.Smooth
		Part0.brickColor = BrickColor.new("Institutional white")
		SurfaceGui1.Parent = Part0
		SurfaceGui1.CanvasSize = Vector2.new(200, 100)
		TextLabel2.Name = "SIGN"
		TextLabel2.Parent = SurfaceGui1
		TextLabel2.Size = UDim2.new(1, 0, 1, 0)
		TextLabel2.BackgroundColor = BrickColor.new("Institutional white")
		TextLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
		TextLabel2.BackgroundTransparency = 1
		TextLabel2.Font = Enum.Font.SourceSansBold
		TextLabel2.FontSize = Enum.FontSize.Size48
		joerandom = math.random(1,12)
		if joerandom == 1 then
			TextLabel2.Text = "You mald well."
		elseif joerandom == 2 then
			TextLabel2.Text = ([[
You mald'd well 
The last time we met
]])
		elseif joerandom == 3 then
			TextLabel2.Text = ([[
Literal trash tbh...
]])
		elseif joerandom == 4 then
			TextLabel2.Text = ([[
Clown down.
]])

		elseif joerandom == 5 then
			TextLabel2.Text = ([[
Tbh? Ez
]])
		elseif joerandom == 6 then
			TextLabel2.Text = ([[
Well fough
t.
]])
		elseif joerandom == 7 then
			TextLabel2.Text = ([[
You mald... poorly
]])
		elseif joerandom == 8 then
			TextLabel2.Text = ([[
Simply a difference 
in Skill!
]])
		elseif joerandom == 9 then
			TextLabel2.Text = ([[
Skill issue!
]])
		elseif joerandom == 10 then
			TextLabel2.Text = ([[
Tough mald.
]])
		elseif joerandom == 11 then
			TextLabel2.Text = ([[
The mald is strong in this one.
]])
		elseif joerandom == 12 then
			TextLabel2.Text = ([[
Never should???ve mald here!
]])
		end

		TextLabel2.TextColor = BrickColor.new("Really black")
		TextLabel2.TextColor3 = Color3.new(0, 0, 0)
		TextLabel2.TextScaled = true
		TextLabel2.TextSize = 25
		TextLabel2.TextStrokeTransparency = 0
		TextLabel2.TextWrap = true
		TextLabel2.TextWrapped = true
		local weld123456 = Instance.new("Weld",Part0)
		weld123456.Part0 = playor.Character["Left Arm"]
		weld123456.Part1 = Part0
		weld123456.C0 = CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(90),math.rad(90),0)

		for i = 0,0.8,0.1 do

			swait(1)
			ls.C0=ls.C0:Lerp(cf(-1, 0.5, 0, -0.150383741, 0.0868240967, -0.98480773, 0.859447002, 0.503797948, -0.086824134, 0.488605589, -0.859447002, -0.150383726),i) 

			rs.C0=rs.C0:Lerp(cf(1, 0.5, 0, 0.258819044, -0.25, 0.933012664, 0, 0.965925813, 0.258819044, -0.965925813, -0.0669872984, 0.25),i) 

			lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0, 0.087155737, -0.99619472, 0, 0.99619472, 0.087155737, 1, 0, 0),i) 

			rh.C0=rh.C0:Lerp(cf(1, -1, 0, 0, -0.087155737, 0.99619472, 0, 0.99619472, 0.087155737, -1, 0, 0),i) 

			rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.984807611, 0.173648313, 0, 0, 0, 1, 0.173648313, 0.984807611, 0),i) 

			ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.984807789, 0.173648149, 0, 0, 0, 1, 0.173648149, 0.984807789, 0),i) 




		end	

		spawn(function()
			swait(3)

			Part0.CanCollide = true
			weld123456:Destroy()
			Part0.CFrame = playor.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-2)
			local joe2 = Instance.new("BodyVelocity",Part0)
			joe2.maxForce = Vector3.new(40000,40000,40000)
			joe2.velocity = playor.Character.HumanoidRootPart.CFrame.lookVector*45
			joe2.Name = "speedy"
			spawn(function()
				swait(3)

				local TAUNTRANDOM = math.random(1,2)
				if TAUNTRANDOM == 1 then
					SERIOUSLYSOEROUSL = Instance.new("Sound",Part0)
					SERIOUSLYSOEROUSL.Volume = 1
					SERIOUSLYSOEROUSL.PlaybackSpeed = 1
					local fl = Instance.new("FlangeSoundEffect",SERIOUSLYSOEROUSL)
					SERIOUSLYSOEROUSL.SoundId = "rbxassetid://159882609"
					SERIOUSLYSOEROUSL:Play()
					game:GetService("Debris"):AddItem(SERIOUSLYSOEROUSL, 5)	
				elseif TAUNTRANDOM == 2 then
					SERIOUSLYSOEROUSL = Instance.new("Sound",Part0)
					SERIOUSLYSOEROUSL.Volume = 1
					SERIOUSLYSOEROUSL.PlaybackSpeed = 1
					local fl = Instance.new("FlangeSoundEffect",SERIOUSLYSOEROUSL)
					SERIOUSLYSOEROUSL.SoundId = "rbxassetid://159882612"
					SERIOUSLYSOEROUSL:Play()
					game:GetService("Debris"):AddItem(SERIOUSLYSOEROUSL, 3)

				end
				joe2:Destroy()
				swait(75)
				Part0.Anchored = true
				swait(1000)
				Part0:Destroy()
			end)
			if OVERDRIVE == true then
				local alr2 = false
				OVERDRIVE = false
				Part0.Touched:connect(function(hit)
					local h = hit.Parent:FindFirstChild("Humanoid")
					local t = hit.Parent:FindFirstChild("Torso")
					if h ~= nil and alr2 == false and hit.Parent ~= playor.Character then

						alr2 = true
						h.Health = h.Health - 50
						local Sound3210 = Instance.new("Sound")
						Sound3210.Name = "How"
						Sound3210.Parent = t
						Sound3210.SoundId = "rbxassetid://5373980712"
						Sound3210.Volume = 3
						Sound3210:Play()
						spawn(function()
							wait(1)
							Sound3210:destroy()
						end)
					end
				end)
			end
		end)
		for i = 0,0.8,0.1 do

			swait(1)
			ls.C0=ls.C0:Lerp(cf(-1.67021954, 0.765173137, -0.161334977, 0.764917314, 0.59443903, -0.248080239, -0.0754791424, -0.299768895, -0.951021314, -0.639690936, 0.746177554, -0.184430689),i) 

			rs.C0=rs.C0:Lerp(cf(1, 0.5, 0, -0.133559853, -0.227352053, 0.9646101, -0.339422107, 0.924958408, 0.171010062, -0.931103766, -0.3045699, -0.200705647),i) 

			lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0, 0.087155737, -0.99619472, 0, 0.99619472, 0.087155737, 1, 0, 0),i) 

			rh.C0=rh.C0:Lerp(cf(1, -1, 0, 0, -0.087155737, 0.99619472, 0, 0.99619472, 0.087155737, -1, 0, 0),i)  

			rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.642787576, -0.766044378, 0, 0, 0, 1, -0.766044378, 0.642787576, 0),i)  

			ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.819151938, 0.57357657, -1.04308128e-07, 0, 1.49011612e-07, 1, 0.57357657, 0.819151938, -1.78813934e-07),i) 





		end	
		attack = false
	end
	if(ValidInputKey[k])then
		InputAge = InputAge + 1
		Input = Input..k
    --[[if(Input_Time <= 0)then
        Input_Time = Input_MaxTime
    else
        Input_Time = Input_Time + Input_Addition
    end]]
		Input_Time = Input_MaxTime
		if(Input_Time > Input_MaxTime)then
			Input_Time = Input_MaxTime
		end
		local newKP = Label(inputF,k:upper(),UDim2.new(.03,0,1,0),UDim2.new(.03*(#InputFrameTable+1),0,0,0),0,C3.N(1,1,1),24,true)
		table.insert(InputFrameTable, newKP)


		for stroke,v in next, Keystrokes do
			if(Input == stroke)then
				local Usable = v.Conditions()
				if(Usable)then
					Input_Time = 0
					Input = ""
					for i, p in pairs(InputFrameTable) do
						if(p:IsA'TextLabel')then
							TweenTransCol(p,C3.N(0,1,0),i)
						end
					end
					InputFrameTable = {}
					v.Callback()
				end
				break
			end
		end

		if(#Input >= Max_Input)then
			for i, p in pairs(InputFrameTable) do
				if(p:IsA'TextLabel')then
					TweenTransCol(p,C3.N(1,0,0),i)
				end
			end
			Input_Time = 0
			InputFrameTable = {}
			Input = ""
		end
	end
end)
--COOLDOWNS THAT DONT EVEN WORK DXXDXDXDXDXD
local Cooldowns = {ASDASDQ=0,ASDC=0,SSADQ=0,ASDSDQ=0,SSQ=0,SWQ=0,WWQ=0,ADQ=0,SDQ=0,SAX=0,AADQ=0,ASDQ=0,DDSC=0}
coroutine.wrap(function()
	while true do
		if(Input_Time > 0)then
			Input_Time = Input_Time - Input_Lose
		elseif(Input_Time <= 0)then
			for i, p in pairs(InputFrameTable) do
				if(p:IsA'TextLabel')then
					TweenTransCol(p,C3.N(1,0,0), i)
				end
			end
			InputFrameTable = {}
			Input = ""
		elseif Input_Time > Input_MaxTime then
			Input_Time = Input_MaxTime
		end
		swait()
	end
end)()



Keystrokes['sdq'] = {
	Name = "SDQ",
	Conditions = function()
		if(Cooldowns.SDQ and time()-Cooldowns.SDQ < .5)then
			return false
		end
		Cooldowns['SDQ']=0.25
		return not attack
	end,
	Callback = function()
		sdq()
	end
}



Keystrokes['wadq'] = {
	Name = "WADQ",
	Conditions = function()
		return not wadqattack 
	end,
	Callback = function()
		wadq()
	end
}




Keystrokes['adq'] = {
	Name = "ADQ",
	Conditions = function()
		return not wadqattack  and wadqsummoned == true
	end,
	Callback = function()
		adqlaunched = true
	end
}




Keystrokes['aaq'] = {
	Name = "AAQ",
	Conditions = function()
		return not attack and wadqattack == false   and wadqsummoned == true
	end,
	Callback = function()
		aaqlaunched = true
	end
}


Keystrokes['swq'] = {
	Name = "SWQ",
	Conditions = function()
		if(Cooldowns.SWQ and time()-Cooldowns.SWQ < .5)then
			return false
		end
		Cooldowns['SWQ']=0.25
		return not attack and wadqattack == false   and wadqsummoned == true and swqcooldown == false
	end,
	Callback = function()
		swqlaunched = true
	end
}
Keystrokes['adadadq'] = {
	Name = "ADADADQ",
	Conditions = function()
		if(Cooldowns.ADADADQ and time()-Cooldowns.ADADADQ < .5)then
			return false
		end
		Cooldowns['ADADADQ']=0.25
		return not attack and OVERDRIVE == false
	end,
	Callback = function()
		adadadq()
	end
}


Keystrokes['asdsdq'] = {
	Name = "ASDSDQ",
	Conditions = function()
		if(Cooldowns.ASDSDQ and time()-Cooldowns.ASDSDQ < .5)then
			return false
		end
		Cooldowns['ASDSDQ']=0.25
		return not attack and wadqattack == false   and wadqsummoned == true and asdsdqcooldown == false
	end,
	Callback = function()
		asdsdqlaunched = true
	end
}
Keystrokes['asddsq'] = {
	Name = "ASDSDQ",
	Conditions = function()
		if(Cooldowns.ASDSDQ and time()-Cooldowns.ASDSDQ < .5)then
			return false
		end
		Cooldowns['ASDSDQ']=0.25
		return not attack and wadqattack == false   and wadqsummoned == true and asdsdqcooldown == false
	end,
	Callback = function()
		asdsdqlaunched = true
	end
}


Keystrokes['ssq'] = {
	Name = "SSQ",
	Conditions = function()
		if(Cooldowns.SSQ and time()-Cooldowns.SSQ < .5)then
			return false
		end
		Cooldowns['SSQ']=0.25
		return not attack and wadqattack == false   and wadqsummoned == true and ssqcooldown == false
	end,
	Callback = function()
		ssqlaunched = true
	end
}



Keystrokes['wwq'] = {
	Name = "WWQ",
	Conditions = function()
		return not attack and wadqattack == false   and wadqsummoned == true and wwqcooldown == false
	end,
	Callback = function()
		wwqlaunched = true
	end
}





Keystrokes['ddq'] = {
	Name = "DDQ",
	Conditions = function()
		if(Cooldowns.SWQ and time()-Cooldowns.SWQ < .5)then
			return false
		end
		Cooldowns['SWQ']=0.25
		return not attack and wadqattack == false and ddqcooldown == false  and wadqsummoned == true
	end,
	Callback = function()
		ddqlaunched = true
	end
}




Keystrokes['asq'] = {
	Name = "ASQ",
	Conditions = function()
		return not attack and wadqattack == false and asqcooldown == false  and wadqsummoned == true
	end,
	Callback = function()
		asqlaunched = true
	end
}




Keystrokes['ddsc'] = {
	Name = "DDSC",
	Conditions = function()
		if(Cooldowns.DDSC and time()-Cooldowns.DDSC < .5)then
			return false
		end
		Cooldowns['DDSC']=0.25
		return not attack
	end,
	Callback = function()
		ddsc()
	end
}



Keystrokes['asdc'] = {
	Name = "ASDC",
	Conditions = function()
		if(Cooldowns.ASDC and time()-Cooldowns.ASDC < .5)then
			return false
		end
		Cooldowns['ASDC']=0.25
		return not attack
	end,
	Callback = function()
		asdc()
	end
}




Keystrokes['ssadq'] = {
	Name = "SSADQ",
	Conditions = function()
		if(Cooldowns.SSADQ and time()-Cooldowns.SSADQ < .5)then
			return false
		end
		Cooldowns['SSADQ']=0.25
		return not attack
	end,
	Callback = function()
		ssadq()
	end
}



Keystrokes['sax'] = {
	Name = "SAX",
	Conditions = function()
		if(Cooldowns.SAX and time()-Cooldowns.SAX < .5)then
			return false
		end
		Cooldowns['SAX']=0.25
		return not attack
	end,
	Callback = function()
		sax()
	end
}



Keystrokes['asdasdq'] = {
	Name = "ASDASDQ",
	Conditions = function()
		if(Cooldowns.ASDASDQ and time()-Cooldowns.ASDASDQ < .5)then
			return false
		end
		Cooldowns['ASDQ']=0.25
		return not attack or attack == false and OVERDRIVE == true
	end,
	Callback = function()
		asdasdq()
	end
}
Keystrokes['asdsadq'] = {
	Name = "ASDASDQ",
	Conditions = function()
		if(Cooldowns.ASDASDQ and time()-Cooldowns.ASDASDQ < .5)then
			return false
		end
		Cooldowns['ASDQ']=0.25
		return not attack or attack == false and OVERDRIVE == true
	end,
	Callback = function()
		asdasdq()
	end
}

Keystrokes['asdq'] = {
	Name = "ASDQ",
	Conditions = function()
		if(Cooldowns.ASDQ and time()-Cooldowns.ASDQ < .5)then
			return false
		end
		Cooldowns['ASDQ']=0.25
		return not attack
	end,
	Callback = function()
		asdq()
	end
}
Keystrokes['adadwq'] = {
	Name = "ADADWQ",
	Conditions = function()
		if(Cooldowns.ADADWQ and time()-Cooldowns.ADADWQ < .5)then
			return false
		end
		Cooldowns['ADADWQ']=0.25
		return not attack
	end,
	Callback = function()
		adadwq()
	end
}
Keystrokes['aadq'] = {
	Name = "AADQ",
	Conditions = function()
		if(Cooldowns.AADQ and time()-Cooldowns.AADQ < .5)then
			return false
		end
		Cooldowns['AADQ']=0.25
		return not attack
	end,
	Callback = function()
		aadq()
	end
}

local MALDINCREASE = 1
local sine = 0
while true do
	swait()
	if OVERDRIVE == true then
		MALDINCREASE = 321321321
	elseif OVERDRIVE == false then
		MALDINCREASE = 1

	end
	sine = sine + 0.01
	torvel = (playor.Character.HumanoidRootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
	if attack == false then
		if torvel > 4    then
			footsteps:Resume()
			Anim = "Walk"
		elseif   1 < root.Velocity.y  then
			Anim = "Jump"


		elseif  torvel < 4  then

			footsteps:Stop()
			Anim = "Idle"




			ls.C0=ls.C0:Lerp(cf(-1.07576704, 0.518287957, -0.295244306, 0.783125758, 0.399306417, -0.476726711, -0.314704597, 0.915675163, 0.249999985, 0.53635335, -0.0457533747, 0.842752457),0.3) 

			rs.C0=rs.C0:Lerp(cf(1, 0.5, 0, 0.284013212, -0.120239586, 0.951251209, -0.171010062, 0.969846249, 0.173648179, -0.943446875, -0.211991921, 0.254886985),0.3) 

			lh.C0=lh.C0:Lerp(cf(-1, -1, 0, 0, 0.087155737, -0.99619472, 0, 0.99619472, 0.087155737, 1, 0, 0),0.3)  

			rh.C0=rh.C0:Lerp(cf(1, -1, 0, 0, -0.087155737, 0.99619472, 0, 0.99619472, 0.087155737, -1, 0, 0),0.3)  

			rj.C0=rj.C0:Lerp(cf(0, 0, 0, -0.939692616, -0.342020124, 0, 0, 0, 1, -0.342020124, 0.939692616, 0),0.3)  

			ne.C0=ne.C0:Lerp(cf(0, 1, 0, -0.939552367, 0.340418458, -0.0368335433, -0.00759608997, 0.086823903, 0.99619472, 0.342321098, 0.936256886, -0.0789897442),0.3) 



			ls.C0=ls.C0:Lerp(ls.C0 * cf(0,0+0.05*math.sin(sine/0.1),0),.1) 
			rs.C0=rs.C0:Lerp(rs.C0 * cf(0,0+0.05*math.sin(sine/0.1),0),.1) 
			ne.C0=ne.C0:Lerp(ne.C0 * cf(0,0,0+0.025*math.sin(sine/0.1)) * CFrame.Angles(math.rad(0+.3*math.cos(sine/1)),0,0),.1) 




		end
	end
end