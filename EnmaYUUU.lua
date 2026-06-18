
--Converted with ttyyuu12345's model to script plugin v4
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
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Tool0 = Instance.new("Tool")
Part1 = Instance.new("Part")
SpecialMesh2 = Instance.new("SpecialMesh")
Sound3 = Instance.new("Sound")
Sound4 = Instance.new("Sound")
Sound5 = Instance.new("Sound")
Sound6 = Instance.new("Sound")
Sound7 = Instance.new("Sound")
Sound8 = Instance.new("Sound")
Sound9 = Instance.new("Sound")
Sound10 = Instance.new("Sound")
Sound11 = Instance.new("Sound")
Sound12 = Instance.new("Sound")
Sound13 = Instance.new("Sound")
Sound14 = Instance.new("Sound")
Sound15 = Instance.new("Sound")
Sound16 = Instance.new("Sound")
Sound17 = Instance.new("Sound")
Sound18 = Instance.new("Sound")
Sound19 = Instance.new("Sound")
Sound20 = Instance.new("Sound")
Sound21 = Instance.new("Sound")
Trail22 = Instance.new("Trail")
Trail23 = Instance.new("Trail")
Script24 = Instance.new("Script")
Part25 = Instance.new("Part")
SpecialMesh26 = Instance.new("SpecialMesh")
Part27 = Instance.new("Part")
SpecialMesh28 = Instance.new("SpecialMesh")
Part29 = Instance.new("Part")
CylinderMesh30 = Instance.new("CylinderMesh")
Part31 = Instance.new("Part")
SpecialMesh32 = Instance.new("SpecialMesh")
Part33 = Instance.new("Part")
SpecialMesh34 = Instance.new("SpecialMesh")
Fire35 = Instance.new("Fire")
Part36 = Instance.new("Part")
BlockMesh37 = Instance.new("BlockMesh")
Part38 = Instance.new("Part")
SpecialMesh39 = Instance.new("SpecialMesh")
Part40 = Instance.new("Part")
SpecialMesh41 = Instance.new("SpecialMesh")
Part42 = Instance.new("Part")
SpecialMesh43 = Instance.new("SpecialMesh")
Part44 = Instance.new("Part")
SpecialMesh45 = Instance.new("SpecialMesh")
Part46 = Instance.new("Part")
SpecialMesh47 = Instance.new("SpecialMesh")
Part48 = Instance.new("Part")
SpecialMesh49 = Instance.new("SpecialMesh")
Part50 = Instance.new("Part")
BlockMesh51 = Instance.new("BlockMesh")
Part52 = Instance.new("Part")
SpecialMesh53 = Instance.new("SpecialMesh")
Part54 = Instance.new("Part")
SpecialMesh55 = Instance.new("SpecialMesh")
Part56 = Instance.new("Part")
SpecialMesh57 = Instance.new("SpecialMesh")
Part58 = Instance.new("Part")
SpecialMesh59 = Instance.new("SpecialMesh")
Part60 = Instance.new("Part")
SpecialMesh61 = Instance.new("SpecialMesh")
Part62 = Instance.new("Part")
SpecialMesh63 = Instance.new("SpecialMesh")
Part64 = Instance.new("Part")
SpecialMesh65 = Instance.new("SpecialMesh")
Part66 = Instance.new("Part")
BlockMesh67 = Instance.new("BlockMesh")
Part68 = Instance.new("Part")
CylinderMesh69 = Instance.new("CylinderMesh")
Part70 = Instance.new("Part")
BlockMesh71 = Instance.new("BlockMesh")
Part72 = Instance.new("Part")
SpecialMesh73 = Instance.new("SpecialMesh")
Part74 = Instance.new("Part")
CylinderMesh75 = Instance.new("CylinderMesh")
Part76 = Instance.new("Part")
SpecialMesh77 = Instance.new("SpecialMesh")
Part78 = Instance.new("Part")
SpecialMesh79 = Instance.new("SpecialMesh")
Part80 = Instance.new("Part")
SpecialMesh81 = Instance.new("SpecialMesh")
Part82 = Instance.new("Part")
Fire83 = Instance.new("Fire")
BlockMesh84 = Instance.new("BlockMesh")
Part85 = Instance.new("Part")
Fire86 = Instance.new("Fire")
BlockMesh87 = Instance.new("BlockMesh")
Part88 = Instance.new("Part")
BlockMesh89 = Instance.new("BlockMesh")
Part90 = Instance.new("Part")
BlockMesh91 = Instance.new("BlockMesh")
BodyGyro92 = Instance.new("BodyGyro")
Script93 = Instance.new("Script")
RemoteEvent94 = Instance.new("RemoteEvent")
RemoteEvent95 = Instance.new("RemoteEvent")
Part96 = Instance.new("Part")
SpecialMesh97 = Instance.new("SpecialMesh")
Part98 = Instance.new("Part")
SpecialMesh99 = Instance.new("SpecialMesh")
Part100 = Instance.new("Part")
BlockMesh101 = Instance.new("BlockMesh")
Part102 = Instance.new("Part")
BlockMesh103 = Instance.new("BlockMesh")
Part104 = Instance.new("Part")
SpecialMesh105 = Instance.new("SpecialMesh")
Part106 = Instance.new("Part")
SpecialMesh107 = Instance.new("SpecialMesh")
Tool0.Name = "EnmaU"
Tool0.Parent = mas
Tool0.Grip = CFrame.new(0, 0.75, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Tool0.GripForward = Vector3.new(1, -0, -0)
Tool0.GripPos = Vector3.new(0, 0.75, 0)
Tool0.GripRight = Vector3.new(0, 0, 1)
Tool0.TextureId = "rbxassetid://111740665136930"
Part1.Name = "Handle"
Part1.Parent = Tool0
Part1.CFrame = CFrame.new(-21.3203869, 2.20654559, -98.6572495, 0.162133202, 0.270191073, 0.949057281, -0.975975871, -0.0979529396, 0.194618508, 0.145547137, -0.957811058, 0.247818545)
Part1.Orientation = Vector3.new(-11.222000122070312, 75.36599731445312, -95.73100280761719)
Part1.Position = Vector3.new(-21.32038688659668, 2.20654559135437, -98.6572494506836)
Part1.Rotation = Vector3.new(-38.143001556396484, 71.63300323486328, -59.03300094604492)
Part1.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part1.Velocity = Vector3.new(0.0004761707969009876, 0.006729792337864637, 0.0001835189905250445)
Part1.Size = Vector3.new(2, 7, 2)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.BrickColor = BrickColor.new("Black")
Part1.RotVelocity = Vector3.new(1, 1, 1)
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.brickColor = BrickColor.new("Black")
Part1.FormFactor = Enum.FormFactor.Symmetric
Part1.formFactor = Enum.FormFactor.Symmetric
SpecialMesh2.Parent = Part1
SpecialMesh2.Scale = Vector3.new(0.07289999723434448, 0.38272497057914734, 0.07289999723434448)
Sound3.Name = "Crash"
Sound3.Parent = Part1
Sound3.SoundId = "http://www.roblox.com/asset/?id=10730819"
Sound3.Volume = 1
Sound4.Name = "CSlash"
Sound4.Parent = Part1
Sound4.Pitch = 0.25
Sound4.PlaybackSpeed = 0.25
Sound4.SoundId = "http://www.roblox.com/asset/?id=46153268"
Sound4.Volume = 1
Sound5.Name = "Slash"
Sound5.Parent = Part1
Sound5.Pitch = 0.6499999761581421
Sound5.PlaybackSpeed = 0.6499999761581421
Sound5.SoundId = "http://roblox.com/asset/?id=10209645"
Sound5.Volume = 1
Sound6.Name = "S2"
Sound6.Parent = Part1
Sound6.SoundId = "http://www.roblox.com/asset/?id=60619309"
Sound6.Volume = 1
Sound7.Name = "S4"
Sound7.Parent = Part1
Sound7.Pitch = 0.5
Sound7.PlaybackSpeed = 0.5
Sound7.SoundId = "http://www.roblox.com/asset/?id=60661796 "
Sound7.Volume = 1
Sound8.Name = "S3"
Sound8.Parent = Part1
Sound8.SoundId = "http://www.roblox.com/asset/?id=60619326"
Sound8.Volume = 1
Sound9.Name = "Screech"
Sound9.Parent = Part1
Sound9.Pitch = 1.2000000476837158
Sound9.PlaybackSpeed = 1.2000000476837158
Sound9.SoundId = "http://www.roblox.com/asset/?id=51322486"
Sound9.Volume = 1
Sound10.Name = "MetalClash"
Sound10.Parent = Part1
Sound10.Pitch = 0.30000001192092896
Sound10.PlaybackSpeed = 0.30000001192092896
Sound10.SoundId = "http://www.roblox.com/asset/?id=62339698 "
Sound10.Volume = 1
Sound11.Name = "Smack"
Sound11.Parent = Part1
Sound11.Pitch = 0.5
Sound11.PlaybackSpeed = 0.5
Sound11.SoundId = "http://www.roblox.com/asset/?id=46153268"
Sound11.Volume = 1
Sound12.Name = "QSlash"
Sound12.Parent = Part1
Sound12.Pitch = 0.4000000059604645
Sound12.PlaybackSpeed = 0.4000000059604645
Sound12.SoundId = "rbxasset://sounds/swordslash.wav"
Sound12.Volume = 1
Sound13.Name = "Slash2"
Sound13.Parent = Part1
Sound13.Pitch = 0.6000000238418579
Sound13.PlaybackSpeed = 0.6000000238418579
Sound13.SoundId = "rbxasset://sounds/swordlunge.wav"
Sound13.Volume = 1
Sound14.Name = "BaneSlash1"
Sound14.Parent = Part1
Sound14.Pitch = 0.26499998569488525
Sound14.PlaybackSpeed = 0.26499998569488525
Sound14.SoundId = "http://www.roblox.com/asset/?id=28144425"
Sound14.Volume = 1
Sound15.Name = "Ominent"
Sound15.Parent = Part1
Sound15.Pitch = 0.5
Sound15.PlaybackSpeed = 0.5
Sound15.SoundId = "http://www.roblox.com/asset/?id=28257433"
Sound15.Volume = 1
Sound16.Name = "RoarSound"
Sound16.Parent = Part1
Sound16.Pitch = 0
Sound16.PlaybackSpeed = 0
Sound16.SoundId = "http://www.roblox.com/asset/?id=63719813 "
Sound16.Volume = 1
Sound17.Name = "NFE"
Sound17.Parent = Part1
Sound17.Pitch = 0.30000001192092896
Sound17.PlaybackSpeed = 0.30000001192092896
Sound17.SoundId = "http://www.roblox.com/asset/?id=2697431"
Sound17.Volume = 1
Sound18.Name = "GETB"
Sound18.Parent = Part1
Sound18.Pitch = 0.5
Sound18.PlaybackSpeed = 0.5
Sound18.SoundId = "http://www.roblox.com/asset/?id=55634401"
Sound18.Volume = 1
Sound19.Name = "GETBE1"
Sound19.Parent = Part1
Sound19.Pitch = 0.4000000059604645
Sound19.PlaybackSpeed = 0.4000000059604645
Sound19.SoundId = "http://www.roblox.com/asset/?id=2233908"
Sound19.Volume = 1
Sound20.Name = "GF"
Sound20.Parent = Part1
Sound20.Pitch = 1.5
Sound20.PlaybackSpeed = 1.5
Sound20.SoundId = "http://www.roblox.com/asset/?id=48618802 "
Sound20.Volume = 1
Sound21.Name = "IK"
Sound21.Parent = Part1
Sound21.Pitch = 0.699999988079071
Sound21.PlaybackSpeed = 0.699999988079071
Sound21.SoundId = "http://www.roblox.com/asset/?id=69935389"
Sound21.Volume = 1
local attachment = Instance.new("Attachment",Part1)
attachment.Position = Vector3.new(-0.025, -3.33, -0.008)
attachment.Name = "TA"
local attachment2 = Instance.new("Attachment",Part1)
attachment2.Position = Vector3.new(-0.003, -6.116, -0.017)
attachment2.Name = "TA2"
Trail0 = Instance.new("Trail")
Trail1 = Instance.new("Trail")
Trail0.Name = "NewTrail2"
Trail0.Parent = Part1
Trail0.Attachment0 = attachment
Trail0.Attachment1 = attachment2
Trail0.Color = ColorSequence.new(Color3.new(0.239216, 0.0823529, 0.521569),Color3.new(0.239216, 0.0823529, 0.521569))
Trail0.Texture = "http://www.roblox.com/asset/?id=2443461141"
Trail0.Transparency = NumberSequence.new(0,0)
Trail0.Lifetime = 0.15000000596046448
Trail0.WidthScale = NumberSequence.new(0,1,1)
local attachment0 = Instance.new("Attachment",Part1)
attachment0.Position = Vector3.new(-0.012, -3.172, -0.008)
attachment0.Name = "TA0"
local attachment1 = Instance.new("Attachment",Part1)
attachment1.Position = Vector3.new(-0.003, -6.309, -0.017)
attachment1.Name = "TA1"
Trail1.Name = "NewTrail"
Trail1.Parent = Part1
Trail1.Attachment0 = attachment0
Trail1.Attachment1 = attachment1
Trail1.Color = ColorSequence.new(Color3.new(0.384314, 0.145098, 0.819608),Color3.new(0.384314, 0.145098, 0.819608))
Trail1.Texture = "http://www.roblox.com/asset/?id=6091329339"
Trail1.Transparency = NumberSequence.new(0,0)
Trail1.Lifetime = 0.10000000149011612
Trail1.WidthScale = NumberSequence.new(0,1,1)
Trail0.Enabled = false 
Trail1.Enabled = false
Script24.Name = "Weld_"
Script24.Parent = Tool0
table.insert(cors,sandbox(Script24,function()
	--turdulator, 3rd Diety of darkness
	--Enma/Hades

	--Why light realm beings use this as a mere maritime tool is beyond me.

	--Weld Script

	Tool=script.Parent;


	player=Tool.Parent.Parent

	Handle=Tool.Handle

	for _,v in pairs(Tool:children()) do
		if v.className=="Part" then
			for __,vv in pairs(v:children()) do
				if string.match(vv.className,"Mesh")=="Mesh" then
					--vv.Scale=vv.Scale*1.35
				end
			end
		end
	end
	Weld=function()
		for _,v in pairs(Handle:children()) do
			if v.className=="Weld" then
				v:Remove()
			end
		end
		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle2"]
		w.Parent=Handle
		w.C0=CFrame.new(0,4.5/5*1.35*1.35,0)
		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle3"]
		w.Parent=Handle
		w.C0=CFrame.new(0,0,0)
		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle4"]
		w.Parent=Handle
		w.C0=CFrame.new(0,-1.5/5*1.35*1.35,0)
		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle5"]
		w.Parent=Handle
		w.C0=CFrame.new(0,-4.5/5*1.35*1.35,0)
		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle6"]
		w.Parent=Handle
		w.C0=CFrame.new(0,4.5/5*1.35*1.35,0)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle7"]
		w.Parent=Handle
		w.C0=CFrame.new(.5/5*1.35*1.35,-3.75/5*1.35*1.35,0)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle8"]
		w.Parent=Handle
		w.C0=CFrame.new(2/5*1.35*1.35,-3.75/5*1.35*1.35,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi,math.pi/2)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle9"]
		w.Parent=Handle
		w.C0=CFrame.new(2/5*1.35*1.35,-2.25/5*1.35*1.35,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,math.pi/2)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle10"]
		w.Parent=Handle
		w.C0=CFrame.new(3.75/5*1.35*1.35,-2.25/5*1.35*1.35,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi,math.pi/2)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle11"]
		w.Parent=Handle
		w.C0=CFrame.new(3.75/5*1.35*1.35,-2.25/5*1.35*1.35+1.5/5*1.35*1.35,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,-math.pi/2)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle12"]
		w.Parent=Handle
		w.C0=CFrame.new(3.75/5*1.35*1.35,-1.5/5*1.35*1.35,0)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle13"]
		w.Parent=Handle
		w.C0=CFrame.new(-2/5*1.35*1.35,-3.75/5*1.35*1.35,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi,-math.pi/2)

		--DERP

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle14"]
		w.Parent=Handle
		w.C0=CFrame.new(-.5/5*1.35*1.35,-3.75/5*1.35*1.35,0)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle15"]
		w.Parent=Handle
		w.C0=CFrame.new(-2/5*1.35*1.35,-2.25/5*1.35*1.35,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,-math.pi/2)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle16"]
		w.Parent=Handle
		w.C0=CFrame.new(-3.75/5*1.35*1.35,-2.25/5*1.35*1.35,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi,-math.pi/2)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle17"]
		w.Parent=Handle
		w.C0=CFrame.new(-3.75/5*1.35*1.35,-2.25/5*1.35*1.35+1.5/5*1.35*1.35,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,math.pi/2)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle18"]
		w.Parent=Handle
		w.C0=CFrame.new(-3.75/5*1.35*1.35,-1.5/5*1.35*1.35,0)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle19"]
		w.Parent=Handle
		w.C0=CFrame.new(0,-4.5/5*1.35*1.35,0)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle20"]
		w.Parent=Handle
		w.C0=CFrame.new(0,-3.5/5*1.35*1.35,0)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle21"]
		w.Parent=Handle
		w.C0=CFrame.new(0,-3.5/5*1.35*1.35,0)


		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle22"]
		w.Parent=Handle
		w.C0=CFrame.new(0,-9/5*1.35*1.35,0)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle23"]
		w.Parent=Handle
		w.C0=CFrame.new(0,-11/5*1.35*1.35,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle24"]
		w.Parent=Handle
		w.C0=CFrame.new(0,-9/5*1.35*1.35,0)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle25"]
		w.Parent=Handle
		w.C0=CFrame.new(0,-14/5*1.35*1.35,0)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle26"]
		w.Parent=Handle
		w.C0=CFrame.new(0,-11/5*1.35*1.35,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle27"]
		w.Parent=Handle
		w.C0=CFrame.new(.5/5*1.35*1.35,-9/5*1.35*1.35,0)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle28"]
		w.Parent=Handle
		w.C0=CFrame.new(-.5/5*1.35*1.35,-9/5*1.35*1.35,0)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle29"]
		w.Parent=Handle
		w.C0=CFrame.new(0,-9/5*1.35*1.35,0)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle30"]
		w.Parent=Handle
		w.C0=CFrame.new(0,-14/5*1.35*1.35,0)


		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle31"]
		w.Parent=Handle
		w.C0=CFrame.new(0,-14/5*1.35*1.35,0)
		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle32"]
		w.Parent=Handle
		w.C0=CFrame.new(0,-14/5*1.35*1.35,0)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle33"]
		w.Parent=Handle
		w.C0=CFrame.new(.085,-5.85,0)*CFrame.fromEulerAnglesXYZ(math.pi,math.pi/2,0)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle34"]
		w.Parent=Handle
		w.C0=CFrame.new(2,-6.425,0)*CFrame.fromEulerAnglesXYZ(math.pi,-math.pi/2,0)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle35"]
		w.Parent=Handle
		w.C0=CFrame.new(1,-3.2,0)*CFrame.fromEulerAnglesXYZ(math.pi,-math.pi/2,0)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle36"]
		w.Parent=Handle
		w.C0=CFrame.new(1,-3.2,0)*CFrame.fromEulerAnglesXYZ(math.pi,-math.pi/2,0)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle37"]
		w.Parent=Handle
		w.C0=CFrame.new(2.15,-5.35,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,-math.pi/2)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle38"]
		w.Parent=Handle
		w.C0=CFrame.new(1.775,-1.7,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,-math.pi/2)

		w=Instance.new("Weld")
		w.Part0=Handle
		w.Part1=Tool["Handle39"]
		w.Parent=Handle
		w.C0=CFrame.new(1.775,-4,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,-math.pi/2)

	end
	Tool.AncestryChanged:connect(Weld)
	Weld()
end))
Part25.Name = "Handle5"
Part25.Parent = Tool0
Part25.CFrame = CFrame.new(-21.763567, 2.36721277, -97.0861969, 0.162133202, 0.270191073, 0.949057281, -0.975975871, -0.0979529396, 0.194618508, 0.145547137, -0.957811058, 0.247818545)
Part25.Orientation = Vector3.new(-11.222000122070312, 75.36599731445312, -95.73100280761719)
Part25.Position = Vector3.new(-21.763566970825195, 2.3672127723693848, -97.08619689941406)
Part25.Rotation = Vector3.new(-38.143001556396484, 71.63300323486328, -59.03300094604492)
Part25.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part25.Velocity = Vector3.new(-0.0000630159629508853, 0.006423882208764553, 0.00006270372250583023)
Part25.Size = Vector3.new(1, 1, 1)
Part25.BottomSurface = Enum.SurfaceType.Smooth
Part25.BrickColor = BrickColor.new("Black")
Part25.CanCollide = false
Part25.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part25.TopSurface = Enum.SurfaceType.Smooth
Part25.brickColor = BrickColor.new("Black")
Part25.FormFactor = Enum.FormFactor.Symmetric
Part25.formFactor = Enum.FormFactor.Symmetric
SpecialMesh26.Parent = Part25
SpecialMesh26.MeshId = "http://www.roblox.com/asset/?id=1033714"
SpecialMesh26.Scale = Vector3.new(0.20047499239444733, -0.7290000319480896, 0.20047499239444733)
SpecialMesh26.MeshType = Enum.MeshType.FileMesh
Part27.Name = "Handle3"
Part27.Parent = Tool0
Part27.CFrame = CFrame.new(-21.3203869, 2.20654559, -98.6572495, 0.162133202, 0.270191073, 0.949057281, -0.975975871, -0.0979529396, 0.194618508, 0.145547137, -0.957811058, 0.247818545)
Part27.Orientation = Vector3.new(-11.222000122070312, 75.36599731445312, -95.73100280761719)
Part27.Position = Vector3.new(-21.32038688659668, 2.20654559135437, -98.6572494506836)
Part27.Rotation = Vector3.new(-38.143001556396484, 71.63300323486328, -59.03300094604492)
Part27.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part27.Velocity = Vector3.new(0.0004761707969009876, 0.006729792337864637, 0.0001835189905250445)
Part27.Size = Vector3.new(1, 1, 1)
Part27.BottomSurface = Enum.SurfaceType.Smooth
Part27.BrickColor = BrickColor.new("Black")
Part27.CanCollide = false
Part27.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part27.TopSurface = Enum.SurfaceType.Smooth
Part27.brickColor = BrickColor.new("Black")
Part27.FormFactor = Enum.FormFactor.Symmetric
Part27.formFactor = Enum.FormFactor.Symmetric
SpecialMesh28.Parent = Part27
SpecialMesh28.MeshId = "http://www.roblox.com/asset/?id=1033714"
SpecialMesh28.Scale = Vector3.new(0.20047499239444733, 3.6449999809265137, 0.20047499239444733)
SpecialMesh28.MeshType = Enum.MeshType.FileMesh
Part29.Name = "Handle4"
Part29.Parent = Tool0
Part29.CFrame = CFrame.new(-21.4681129, 2.26010132, -98.1335678, 0.162133202, 0.270191073, 0.949057281, -0.975975871, -0.0979529396, 0.194618508, 0.145547137, -0.957811058, 0.247818545)
Part29.Orientation = Vector3.new(-11.222000122070312, 75.36599731445312, -95.73100280761719)
Part29.Position = Vector3.new(-21.46811294555664, 2.260101318359375, -98.1335678100586)
Part29.Rotation = Vector3.new(-38.143001556396484, 71.63300323486328, -59.03300094604492)
Part29.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part29.Velocity = Vector3.new(0.0002964427985716611, 0.006627822760492563, 0.00014324745279736817)
Part29.Size = Vector3.new(1, 7, 1)
Part29.BottomSurface = Enum.SurfaceType.Smooth
Part29.BrickColor = BrickColor.new("Really black")
Part29.CanCollide = false
Part29.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part29.TopSurface = Enum.SurfaceType.Smooth
Part29.brickColor = BrickColor.new("Really black")
Part29.FormFactor = Enum.FormFactor.Symmetric
Part29.formFactor = Enum.FormFactor.Symmetric
CylinderMesh30.Parent = Part29
CylinderMesh30.Scale = Vector3.new(0.6196500062942505, 0.01822499930858612, 0.6196500062942505)
Part31.Name = "Handle2"
Part31.Parent = Tool0
Part31.CFrame = CFrame.new(-20.8772068, 2.04587841, -100.228302, 0.162133202, 0.270191073, 0.949057281, -0.975975871, -0.0979529396, 0.194618508, 0.145547137, -0.957811058, 0.247818545)
Part31.Orientation = Vector3.new(-11.222000122070312, 75.36599731445312, -95.73100280761719)
Part31.Position = Vector3.new(-20.877206802368164, 2.0458784103393555, -100.22830200195312)
Part31.Rotation = Vector3.new(-38.143001556396484, 71.63300323486328, -59.03300094604492)
Part31.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part31.Velocity = Vector3.new(0.0010153575567528605, 0.007035702466964722, 0.000304334273096174)
Part31.Size = Vector3.new(1, 2, 1)
Part31.BottomSurface = Enum.SurfaceType.Smooth
Part31.BrickColor = BrickColor.new("Black")
Part31.CanCollide = false
Part31.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part31.TopSurface = Enum.SurfaceType.Smooth
Part31.brickColor = BrickColor.new("Black")
Part31.FormFactor = Enum.FormFactor.Custom
Part31.formFactor = Enum.FormFactor.Custom
SpecialMesh32.Parent = Part31
SpecialMesh32.MeshId = "http://www.roblox.com/asset/?id=3270017"
SpecialMesh32.Scale = Vector3.new(0.6378750205039978, 0.6378750205039978, 1.0935001373291016)
SpecialMesh32.MeshType = Enum.MeshType.FileMesh
Part33.Name = "Handle6"
Part33.Parent = Tool0
Part33.CFrame = CFrame.new(-20.8772068, 2.04587841, -100.228302, 0.162133202, 0.270191073, 0.949057281, -0.975975871, -0.0979529396, 0.194618508, 0.145547137, -0.957811058, 0.247818545)
Part33.Orientation = Vector3.new(-11.222000122070312, 75.36599731445312, -95.73100280761719)
Part33.Position = Vector3.new(-20.877206802368164, 2.0458784103393555, -100.22830200195312)
Part33.Rotation = Vector3.new(-38.143001556396484, 71.63300323486328, -59.03300094604492)
Part33.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part33.Velocity = Vector3.new(0.0010153575567528605, 0.007035702466964722, 0.000304334273096174)
Part33.Size = Vector3.new(1, 1, 1)
Part33.BottomSurface = Enum.SurfaceType.Smooth
Part33.BrickColor = BrickColor.new("Royal purple")
Part33.CanCollide = false
Part33.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part33.TopSurface = Enum.SurfaceType.Smooth
Part33.brickColor = BrickColor.new("Royal purple")
Part33.FormFactor = Enum.FormFactor.Symmetric
Part33.formFactor = Enum.FormFactor.Symmetric
SpecialMesh34.Parent = Part33
SpecialMesh34.MeshId = "http://www.roblox.com/Asset/?id=9756362"
SpecialMesh34.Scale = Vector3.new(0.1822500079870224, 0.3645000159740448, 0.1822500079870224)
SpecialMesh34.MeshType = Enum.MeshType.FileMesh
Fire35.Parent = Part33
Fire35.Color = Color3.new(0.4, 0, 0.4)
Fire35.Enabled = false
Fire35.Size = 15
Fire35.Heat = -25
Fire35.SecondaryColor = Color3.new(0.4, 0, 0.8)
Fire35.size = 15
Part36.Name = "Handle7"
Part36.Parent = Tool0
Part36.CFrame = CFrame.new(-21.6601562, 2.16256332, -97.3215179, 0.162133202, 0.270191073, 0.949057281, -0.975975871, -0.0979529396, 0.194618508, 0.145547137, -0.957811058, 0.247818545)
Part36.Orientation = Vector3.new(-11.222000122070312, 75.36599731445312, -95.73100280761719)
Part36.Position = Vector3.new(-21.66015625, 2.1625633239746094, -97.32151794433594)
Part36.Rotation = Vector3.new(-38.143001556396484, 71.63300323486328, -59.03300094604492)
Part36.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part36.Velocity = Vector3.new(-0.000009347742889076471, 0.006464147474616766, 0.00005127086478751153)
Part36.Size = Vector3.new(1, 2, 1)
Part36.BottomSurface = Enum.SurfaceType.Smooth
Part36.BrickColor = BrickColor.new("Black")
Part36.CanCollide = false
Part36.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part36.TopSurface = Enum.SurfaceType.Smooth
Part36.brickColor = BrickColor.new("Black")
Part36.FormFactor = Enum.FormFactor.Symmetric
Part36.formFactor = Enum.FormFactor.Symmetric
BlockMesh37.Parent = Part36
BlockMesh37.Scale = Vector3.new(0.3645000159740448, 0.2733750343322754, 0.2733750343322754)
Part38.Name = "Handle8"
Part38.Parent = Tool0
Part38.CFrame = CFrame.new(-21.5715084, 1.62894869, -97.2419357, 0.949057281, 0.162133187, 0.270191103, 0.194618464, -0.975975871, -0.0979528502, 0.247818589, 0.145547032, -0.957811058)
Part38.Orientation = Vector3.new(5.620999813079834, 164.2469940185547, 168.72300720214844)
Part38.Position = Vector3.new(-21.571508407592773, 1.62894868850708, -97.24193572998047)
Part38.Rotation = Vector3.new(174.16099548339844, 15.675999641418457, -9.694999694824219)
Part38.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part38.Velocity = Vector3.new(-0.00011794338934123516, 0.0064319828525185585, -0.000043433246901258826)
Part38.Size = Vector3.new(1, 2, 2)
Part38.BottomSurface = Enum.SurfaceType.Smooth
Part38.BrickColor = BrickColor.new("Black")
Part38.CanCollide = false
Part38.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part38.TopSurface = Enum.SurfaceType.Smooth
Part38.brickColor = BrickColor.new("Black")
Part38.FormFactor = Enum.FormFactor.Symmetric
Part38.formFactor = Enum.FormFactor.Symmetric
SpecialMesh39.Parent = Part38
SpecialMesh39.Scale = Vector3.new(0.2733750343322754, 0.3645000159740448, 0.2733750343322754)
SpecialMesh39.MeshType = Enum.MeshType.Wedge
Part40.Name = "Handle9"
Part40.Parent = Tool0
Part40.CFrame = CFrame.new(-21.4237823, 1.57539284, -97.7656174, 0.949057281, -0.162133247, -0.270191103, 0.194618553, 0.975975871, 0.0979529321, 0.247818574, -0.145547152, 0.957811058)
Part40.Orientation = Vector3.new(-5.620999813079834, -15.753000259399414, 11.277000427246094)
Part40.Position = Vector3.new(-21.423782348632812, 1.5753928422927856, -97.76561737060547)
Part40.Rotation = Vector3.new(-5.839000225067139, -15.675999641418457, 9.694999694824219)
Part40.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part40.Velocity = Vector3.new(0.00006178457988426089, 0.006533952429890633, -0.000003161738277412951)
Part40.Size = Vector3.new(1, 2, 2)
Part40.BottomSurface = Enum.SurfaceType.Smooth
Part40.BrickColor = BrickColor.new("Black")
Part40.CanCollide = false
Part40.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part40.TopSurface = Enum.SurfaceType.Smooth
Part40.brickColor = BrickColor.new("Black")
Part40.FormFactor = Enum.FormFactor.Symmetric
Part40.formFactor = Enum.FormFactor.Symmetric
SpecialMesh41.Parent = Part40
SpecialMesh41.Scale = Vector3.new(0.2733750343322754, 0.3645000159740448, 0.2733750343322754)
SpecialMesh41.MeshType = Enum.MeshType.Wedge
Part42.Name = "Handle10"
Part42.Parent = Tool0
Part42.CFrame = CFrame.new(-21.3203621, 0.952842236, -97.6727829, 0.949057281, 0.162133187, 0.270191103, 0.194618464, -0.975975871, -0.0979528502, 0.247818589, 0.145547032, -0.957811058)
Part42.Orientation = Vector3.new(5.620999813079834, 164.2469940185547, 168.72300720214844)
Part42.Position = Vector3.new(-21.320362091064453, 0.9528422355651855, -97.67278289794922)
Part42.Rotation = Vector3.new(174.16099548339844, 15.675999641418457, -9.694999694824219)
Part42.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part42.Velocity = Vector3.new(-0.00006490619853138924, 0.006496429909020662, -0.00011365073441993445)
Part42.Size = Vector3.new(1, 2, 2)
Part42.BottomSurface = Enum.SurfaceType.Smooth
Part42.BrickColor = BrickColor.new("Black")
Part42.CanCollide = false
Part42.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part42.TopSurface = Enum.SurfaceType.Smooth
Part42.brickColor = BrickColor.new("Black")
Part42.FormFactor = Enum.FormFactor.Symmetric
Part42.formFactor = Enum.FormFactor.Symmetric
SpecialMesh43.Parent = Part42
SpecialMesh43.Scale = Vector3.new(0.2733750343322754, 0.2733750343322754, 0.2733750343322754)
SpecialMesh43.MeshType = Enum.MeshType.Wedge
Part44.Name = "Handle11"
Part44.Parent = Tool0
Part44.CFrame = CFrame.new(-21.1726341, 0.899286389, -98.1964645, -0.949057281, 0.162133157, -0.270191103, -0.194618464, -0.975975871, 0.0979529321, -0.247818589, 0.145547122, 0.957811058)
Part44.Orientation = Vector3.new(-5.620999813079834, -15.753000259399414, -168.72300720214844)
Part44.Position = Vector3.new(-21.17263412475586, 0.8992863893508911, -98.19646453857422)
Part44.Rotation = Vector3.new(-5.839000225067139, -15.675999641418457, -170.30499267578125)
Part44.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part44.Velocity = Vector3.new(0.00011482177069410682, 0.006598399020731449, -0.00007337854185607284)
Part44.Size = Vector3.new(1, 2, 2)
Part44.BottomSurface = Enum.SurfaceType.Smooth
Part44.BrickColor = BrickColor.new("Black")
Part44.CanCollide = false
Part44.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part44.TopSurface = Enum.SurfaceType.Smooth
Part44.brickColor = BrickColor.new("Black")
Part44.FormFactor = Enum.FormFactor.Symmetric
Part44.formFactor = Enum.FormFactor.Symmetric
SpecialMesh45.Parent = Part44
SpecialMesh45.Scale = Vector3.new(0.2733750343322754, 0.2733750343322754, 0.2733750343322754)
SpecialMesh45.MeshType = Enum.MeshType.Wedge
Part46.Name = "Handle12"
Part46.Parent = Tool0
Part46.CFrame = CFrame.new(-21.2464981, 0.926064253, -97.9346237, 0.162133202, 0.270191073, 0.949057281, -0.975975871, -0.0979529396, 0.194618508, 0.145547137, -0.957811058, 0.247818545)
Part46.Orientation = Vector3.new(-11.222000122070312, 75.36599731445312, -95.73100280761719)
Part46.Position = Vector3.new(-21.246498107910156, 0.9260642528533936, -97.93462371826172)
Part46.Rotation = Vector3.new(-38.143001556396484, 71.63300323486328, -59.03300094604492)
Part46.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part46.Velocity = Vector3.new(0.000024957756977528334, 0.006547414697706699, -0.00009351463813800365)
Part46.Size = Vector3.new(1, 1, 1)
Part46.BottomSurface = Enum.SurfaceType.Smooth
Part46.BrickColor = BrickColor.new("Royal purple")
Part46.CanCollide = false
Part46.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part46.TopSurface = Enum.SurfaceType.Smooth
Part46.brickColor = BrickColor.new("Royal purple")
Part46.FormFactor = Enum.FormFactor.Symmetric
Part46.formFactor = Enum.FormFactor.Symmetric
SpecialMesh47.Parent = Part46
SpecialMesh47.MeshId = "http://www.roblox.com/Asset/?id=9756362"
SpecialMesh47.Scale = Vector3.new(0.3645000159740448, 0.3645000159740448, 0.3645000159740448)
SpecialMesh47.MeshType = Enum.MeshType.FileMesh
Part48.Name = "Handle13"
Part48.Parent = Tool0
Part48.CFrame = CFrame.new(-21.8078995, 3.05192137, -97.4541473, -0.949057281, -0.162133276, 0.270191103, -0.194618553, 0.975975871, -0.0979528502, -0.247818574, -0.145547062, -0.957811058)
Part48.Orientation = Vector3.new(5.620999813079834, 164.2469940185547, -11.277000427246094)
Part48.Position = Vector3.new(-21.807899475097656, 3.0519213676452637, -97.45414733886719)
Part48.Rotation = Vector3.new(174.16099548339844, 15.675999641418457, 170.30499267578125)
Part48.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part48.Velocity = Vector3.new(0.00017164222663268447, 0.006517753005027771, 0.00020911225874442607)
Part48.Size = Vector3.new(1, 2, 2)
Part48.BottomSurface = Enum.SurfaceType.Smooth
Part48.BrickColor = BrickColor.new("Black")
Part48.CanCollide = false
Part48.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part48.TopSurface = Enum.SurfaceType.Smooth
Part48.brickColor = BrickColor.new("Black")
Part48.FormFactor = Enum.FormFactor.Symmetric
Part48.formFactor = Enum.FormFactor.Symmetric
SpecialMesh49.Parent = Part48
SpecialMesh49.Scale = Vector3.new(0.2733750343322754, 0.3645000159740448, 0.2733750343322754)
SpecialMesh49.MeshType = Enum.MeshType.Wedge
Part50.Name = "Handle14"
Part50.Parent = Tool0
Part50.CFrame = CFrame.new(-21.7192535, 2.51830673, -97.3745651, 0.162133202, 0.270191073, 0.949057281, -0.975975871, -0.0979529396, 0.194618508, 0.145547137, -0.957811058, 0.247818545)
Part50.Orientation = Vector3.new(-11.222000122070312, 75.36599731445312, -95.73100280761719)
Part50.Position = Vector3.new(-21.719253540039062, 2.5183067321777344, -97.37456512451172)
Part50.Rotation = Vector3.new(-38.143001556396484, 71.63300323486328, -59.03300094604492)
Part50.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part50.Velocity = Vector3.new(0.00006304663838818669, 0.006485588848590851, 0.0001144074703915976)
Part50.Size = Vector3.new(1, 2, 1)
Part50.BottomSurface = Enum.SurfaceType.Smooth
Part50.BrickColor = BrickColor.new("Black")
Part50.CanCollide = false
Part50.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part50.TopSurface = Enum.SurfaceType.Smooth
Part50.brickColor = BrickColor.new("Black")
Part50.FormFactor = Enum.FormFactor.Symmetric
Part50.formFactor = Enum.FormFactor.Symmetric
BlockMesh51.Parent = Part50
BlockMesh51.Scale = Vector3.new(0.3645000159740448, 0.2733750343322754, 0.2733750343322754)
Part52.Name = "Handle15"
Part52.Parent = Tool0
Part52.CFrame = CFrame.new(-21.6601715, 2.99836564, -97.977829, -0.949057281, 0.162133157, -0.270191103, -0.194618464, -0.975975871, 0.0979529321, -0.247818589, 0.145547122, 0.957811058)
Part52.Orientation = Vector3.new(-5.620999813079834, -15.753000259399414, -168.72300720214844)
Part52.Position = Vector3.new(-21.660171508789062, 2.998365640640259, -97.97782897949219)
Part52.Rotation = Vector3.new(-5.839000225067139, -15.675999641418457, -170.30499267578125)
Part52.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part52.Velocity = Vector3.new(0.00035137025406584144, 0.006619722116738558, 0.0002493844658602029)
Part52.Size = Vector3.new(1, 2, 2)
Part52.BottomSurface = Enum.SurfaceType.Smooth
Part52.BrickColor = BrickColor.new("Black")
Part52.CanCollide = false
Part52.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part52.TopSurface = Enum.SurfaceType.Smooth
Part52.brickColor = BrickColor.new("Black")
Part52.FormFactor = Enum.FormFactor.Symmetric
Part52.formFactor = Enum.FormFactor.Symmetric
SpecialMesh53.Parent = Part52
SpecialMesh53.Scale = Vector3.new(0.2733750343322754, 0.3645000159740448, 0.2733750343322754)
SpecialMesh53.MeshType = Enum.MeshType.Wedge
Part54.Name = "Handle16"
Part54.Parent = Tool0
Part54.CFrame = CFrame.new(-21.7635937, 3.62091637, -98.0706711, -0.949057281, -0.162133276, 0.270191103, -0.194618553, 0.975975871, -0.0979528502, -0.247818574, -0.145547062, -0.957811058)
Part54.Orientation = Vector3.new(5.620999813079834, 164.2469940185547, -11.277000427246094)
Part54.Position = Vector3.new(-21.763593673706055, 3.6209163665771484, -98.07067108154297)
Part54.Rotation = Vector3.new(174.16099548339844, 15.675999641418457, 170.30499267578125)
Part54.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part54.Velocity = Vector3.new(0.0004780638264492154, 0.006657246965914965, 0.0003598727926146239)
Part54.Size = Vector3.new(1, 2, 2)
Part54.BottomSurface = Enum.SurfaceType.Smooth
Part54.BrickColor = BrickColor.new("Black")
Part54.CanCollide = false
Part54.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part54.TopSurface = Enum.SurfaceType.Smooth
Part54.brickColor = BrickColor.new("Black")
Part54.FormFactor = Enum.FormFactor.Symmetric
Part54.formFactor = Enum.FormFactor.Symmetric
SpecialMesh55.Parent = Part54
SpecialMesh55.Scale = Vector3.new(0.2733750343322754, 0.2733750343322754, 0.2733750343322754)
SpecialMesh55.MeshType = Enum.MeshType.Wedge
Part56.Name = "Handle17"
Part56.Parent = Tool0
Part56.CFrame = CFrame.new(-21.6158657, 3.5673604, -98.5943527, 0.949057281, -0.162133247, -0.270191103, 0.194618553, 0.975975871, 0.0979529321, 0.247818574, -0.145547152, 0.957811058)
Part56.Orientation = Vector3.new(-5.620999813079834, -15.753000259399414, 11.277000427246094)
Part56.Position = Vector3.new(-21.61586570739746, 3.5673604011535645, -98.59435272216797)
Part56.Rotation = Vector3.new(-5.839000225067139, -15.675999641418457, 9.694999694824219)
Part56.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part56.Velocity = Vector3.new(0.0006577917956747115, 0.0067592160776257515, 0.00040014495607465506)
Part56.Size = Vector3.new(1, 2, 2)
Part56.BottomSurface = Enum.SurfaceType.Smooth
Part56.BrickColor = BrickColor.new("Black")
Part56.CanCollide = false
Part56.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part56.TopSurface = Enum.SurfaceType.Smooth
Part56.brickColor = BrickColor.new("Black")
Part56.FormFactor = Enum.FormFactor.Symmetric
Part56.formFactor = Enum.FormFactor.Symmetric
SpecialMesh57.Parent = Part56
SpecialMesh57.Scale = Vector3.new(0.2733750343322754, 0.2733750343322754, 0.2733750343322754)
SpecialMesh57.MeshType = Enum.MeshType.Wedge
Part58.Name = "Handle18"
Part58.Parent = Tool0
Part58.CFrame = CFrame.new(-21.6897297, 3.59413838, -98.3325119, 0.162133202, 0.270191073, 0.949057281, -0.975975871, -0.0979529396, 0.194618508, 0.145547137, -0.957811058, 0.247818545)
Part58.Orientation = Vector3.new(-11.222000122070312, 75.36599731445312, -95.73100280761719)
Part58.Position = Vector3.new(-21.689729690551758, 3.5941383838653564, -98.33251190185547)
Part58.Rotation = Vector3.new(-38.143001556396484, 71.63300323486328, -59.03300094604492)
Part58.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part58.Velocity = Vector3.new(0.000567927781958133, 0.006708231288939714, 0.0003800088888965547)
Part58.Size = Vector3.new(1, 1, 1)
Part58.BottomSurface = Enum.SurfaceType.Smooth
Part58.BrickColor = BrickColor.new("Royal purple")
Part58.CanCollide = false
Part58.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part58.TopSurface = Enum.SurfaceType.Smooth
Part58.brickColor = BrickColor.new("Royal purple")
Part58.FormFactor = Enum.FormFactor.Symmetric
Part58.formFactor = Enum.FormFactor.Symmetric
SpecialMesh59.Parent = Part58
SpecialMesh59.MeshId = "http://www.roblox.com/Asset/?id=9756362"
SpecialMesh59.Scale = Vector3.new(0.3645000159740448, 0.3645000159740448, 0.3645000159740448)
SpecialMesh59.MeshType = Enum.MeshType.FileMesh
Part60.Name = "Handle19"
Part60.Parent = Tool0
Part60.CFrame = CFrame.new(-21.763567, 2.36721277, -97.0861969, 0.162133202, 0.270191073, 0.949057281, -0.975975871, -0.0979529396, 0.194618508, 0.145547137, -0.957811058, 0.247818545)
Part60.Orientation = Vector3.new(-11.222000122070312, 75.36599731445312, -95.73100280761719)
Part60.Position = Vector3.new(-21.763566970825195, 2.3672127723693848, -97.08619689941406)
Part60.Rotation = Vector3.new(-38.143001556396484, 71.63300323486328, -59.03300094604492)
Part60.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part60.Velocity = Vector3.new(-0.0000630159629508853, 0.006423882208764553, 0.00006270372250583023)
Part60.Size = Vector3.new(1, 1, 1)
Part60.BottomSurface = Enum.SurfaceType.Smooth
Part60.BrickColor = BrickColor.new("Royal purple")
Part60.CanCollide = false
Part60.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part60.TopSurface = Enum.SurfaceType.Smooth
Part60.brickColor = BrickColor.new("Royal purple")
Part60.FormFactor = Enum.FormFactor.Symmetric
Part60.formFactor = Enum.FormFactor.Symmetric
SpecialMesh61.Parent = Part60
SpecialMesh61.MeshId = "http://www.roblox.com/Asset/?id=9756362"
SpecialMesh61.Scale = Vector3.new(0.2733750343322754, 0.5467500686645508, 0.2733750343322754)
SpecialMesh61.MeshType = Enum.MeshType.FileMesh
Part62.Name = "Handle20"
Part62.Parent = Tool0
Part62.CFrame = CFrame.new(-21.6650829, 2.33150911, -97.4353256, 0.162133202, 0.270191073, 0.949057281, -0.975975871, -0.0979529396, 0.194618508, 0.145547137, -0.957811058, 0.247818545)
Part62.Orientation = Vector3.new(-11.222000122070312, 75.36599731445312, -95.73100280761719)
Part62.Position = Vector3.new(-21.665082931518555, 2.3315091133117676, -97.4353256225586)
Part62.Rotation = Vector3.new(-38.143001556396484, 71.63300323486328, -59.03300094604492)
Part62.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part62.Velocity = Vector3.new(0.000056805467465892434, 0.006491863634437323, 0.00008955143857747316)
Part62.Size = Vector3.new(3, 3, 3)
Part62.BottomSurface = Enum.SurfaceType.Smooth
Part62.BrickColor = BrickColor.new("Royal purple")
Part62.CanCollide = false
Part62.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part62.TopSurface = Enum.SurfaceType.Smooth
Part62.brickColor = BrickColor.new("Royal purple")
Part62.FormFactor = Enum.FormFactor.Symmetric
Part62.formFactor = Enum.FormFactor.Symmetric
SpecialMesh63.Parent = Part62
SpecialMesh63.MeshId = "http://www.roblox.com/Asset/?id=9756362"
SpecialMesh63.Scale = Vector3.new(0.9112499952316284, 0.3645000159740448, 0.3645000159740448)
SpecialMesh63.MeshType = Enum.MeshType.FileMesh
Part64.Name = "Handle21"
Part64.Parent = Tool0
Part64.CFrame = CFrame.new(-21.6650829, 2.33150911, -97.4353256, 0.162133202, 0.270191073, 0.949057281, -0.975975871, -0.0979529396, 0.194618508, 0.145547137, -0.957811058, 0.247818545)
Part64.Orientation = Vector3.new(-11.222000122070312, 75.36599731445312, -95.73100280761719)
Part64.Position = Vector3.new(-21.665082931518555, 2.3315091133117676, -97.4353256225586)
Part64.Rotation = Vector3.new(-38.143001556396484, 71.63300323486328, -59.03300094604492)
Part64.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part64.Velocity = Vector3.new(0.000056805467465892434, 0.006491863634437323, 0.00008955143857747316)
Part64.Size = Vector3.new(1, 1, 1)
Part64.BottomSurface = Enum.SurfaceType.Smooth
Part64.BrickColor = BrickColor.new("Royal purple")
Part64.CanCollide = false
Part64.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part64.TopSurface = Enum.SurfaceType.Smooth
Part64.brickColor = BrickColor.new("Royal purple")
Part64.FormFactor = Enum.FormFactor.Symmetric
Part64.formFactor = Enum.FormFactor.Symmetric
SpecialMesh65.Parent = Part64
SpecialMesh65.MeshId = "http://www.roblox.com/Asset/?id=9756362"
SpecialMesh65.Scale = Vector3.new(0.3645000159740448, 0.9112499952316284, 0.3645000159740448)
SpecialMesh65.MeshType = Enum.MeshType.FileMesh
Part66.Name = "Handle22"
Part66.Parent = Tool0
Part66.CFrame = CFrame.new(-22.206749, 2.52788019, -95.515152, 0.162133202, 0.270191073, 0.949057281, -0.975975871, -0.0979529396, 0.194618508, 0.145547137, -0.957811058, 0.247818545)
Part66.Orientation = Vector3.new(-11.222000122070312, 75.36599731445312, -95.73100280761719)
Part66.Position = Vector3.new(-22.206748962402344, 2.5278801918029785, -95.51515197753906)
Part66.Rotation = Vector3.new(-38.143001556396484, 71.63300323486328, -59.03300094604492)
Part66.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part66.Velocity = Vector3.new(-0.0006021999288350344, 0.006117974407970905, -0.00005811218579765409)
Part66.Size = Vector3.new(1, 2, 1)
Part66.BottomSurface = Enum.SurfaceType.Smooth
Part66.BrickColor = BrickColor.new("Black")
Part66.CanCollide = false
Part66.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part66.TopSurface = Enum.SurfaceType.Smooth
Part66.brickColor = BrickColor.new("Black")
Part66.FormFactor = Enum.FormFactor.Symmetric
Part66.formFactor = Enum.FormFactor.Symmetric
BlockMesh67.Parent = Part66
BlockMesh67.Scale = Vector3.new(1.0935001373291016, 1.8224999904632568, 0.0911250039935112)
Part68.Name = "Handle23"
Part68.Parent = Tool0
Part68.CFrame = CFrame.new(-22.403717, 2.59928799, -94.8169098, 0.162133202, 0.949057281, -0.270191103, -0.975975871, 0.194618508, 0.0979529321, 0.145547137, 0.247818589, 0.957811058)
Part68.Orientation = Vector3.new(-5.620999813079834, -15.753000259399414, -78.7229995727539)
Part68.Position = Vector3.new(-22.403717041015625, 2.599287986755371, -94.81690979003906)
Part68.Rotation = Vector3.new(-5.839000225067139, -15.675999641418457, -80.30500030517578)
Part68.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part68.Velocity = Vector3.new(-0.000841837259940803, 0.005982015281915665, -0.00011180753062944859)
Part68.Size = Vector3.new(1, 2, 1)
Part68.BottomSurface = Enum.SurfaceType.Smooth
Part68.BrickColor = BrickColor.new("Black")
Part68.CanCollide = false
Part68.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part68.TopSurface = Enum.SurfaceType.Smooth
Part68.brickColor = BrickColor.new("Black")
Part68.FormFactor = Enum.FormFactor.Symmetric
Part68.formFactor = Enum.FormFactor.Symmetric
CylinderMesh69.Parent = Part68
CylinderMesh69.Offset = Vector3.new(0, 0, 1.100000023841858)
CylinderMesh69.Scale = Vector3.new(1.093999981880188, 0.04800000041723251, 1.093999981880188)
Part70.Name = "Handle24"
Part70.Parent = Tool0
Part70.CFrame = CFrame.new(-22.206749, 2.52788019, -95.515152, 0.162133202, 0.270191073, 0.949057281, -0.975975871, -0.0979529396, 0.194618508, 0.145547137, -0.957811058, 0.247818545)
Part70.Orientation = Vector3.new(-11.222000122070312, 75.36599731445312, -95.73100280761719)
Part70.Position = Vector3.new(-22.206748962402344, 2.5278801918029785, -95.51515197753906)
Part70.Rotation = Vector3.new(-38.143001556396484, 71.63300323486328, -59.03300094604492)
Part70.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part70.Velocity = Vector3.new(-0.0006021999288350344, 0.006117974407970905, -0.00005811218579765409)
Part70.Size = Vector3.new(1, 2, 1)
Part70.BottomSurface = Enum.SurfaceType.Smooth
Part70.BrickColor = BrickColor.new("Royal purple")
Part70.CanCollide = false
Part70.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part70.TopSurface = Enum.SurfaceType.Smooth
Part70.brickColor = BrickColor.new("Royal purple")
Part70.FormFactor = Enum.FormFactor.Symmetric
Part70.formFactor = Enum.FormFactor.Symmetric
BlockMesh71.Parent = Part70
BlockMesh71.Offset = Vector3.new(0, 0.30000001192092896, 0)
BlockMesh71.Scale = Vector3.new(2.1500000953674316, 1.850000023841858, 0.07289999723434448)
Part72.Name = "Handle25"
Part72.Parent = Tool0
Part72.CFrame = CFrame.new(-22.699173, 2.70639944, -93.7695389, 0.162133202, 0.270191073, 0.949057281, -0.975975871, -0.0979529396, 0.194618508, 0.145547137, -0.957811058, 0.247818545)
Part72.Orientation = Vector3.new(-11.222000122070312, 75.36599731445312, -95.73100280761719)
Part72.Position = Vector3.new(-22.699172973632812, 2.706399440765381, -93.76953887939453)
Part72.Rotation = Vector3.new(-38.143001556396484, 71.63300323486328, -59.03300094604492)
Part72.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part72.Velocity = Vector3.new(-0.001201295992359519, 0.005778075195848942, -0.00019235197396483272)
Part72.Size = Vector3.new(1, 2, 1)
Part72.BottomSurface = Enum.SurfaceType.Smooth
Part72.BrickColor = BrickColor.new("Royal purple")
Part72.CanCollide = false
Part72.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part72.TopSurface = Enum.SurfaceType.Smooth
Part72.brickColor = BrickColor.new("Royal purple")
Part72.FormFactor = Enum.FormFactor.Symmetric
Part72.formFactor = Enum.FormFactor.Symmetric
SpecialMesh73.Name = "RingMesh"
SpecialMesh73.Parent = Part72
SpecialMesh73.MeshId = "http://www.roblox.com/asset/?id=3270017"
SpecialMesh73.Scale = Vector3.new(1.0935001373291016, 1.0935001373291016, 1.0935001373291016)
SpecialMesh73.MeshType = Enum.MeshType.FileMesh
Part74.Name = "Handle26"
Part74.Parent = Tool0
Part74.CFrame = CFrame.new(-22.403717, 2.59928799, -94.8169098, 0.162133202, 0.949057281, -0.270191103, -0.975975871, 0.194618508, 0.0979529321, 0.145547137, 0.247818589, 0.957811058)
Part74.Orientation = Vector3.new(-5.620999813079834, -15.753000259399414, -78.7229995727539)
Part74.Position = Vector3.new(-22.403717041015625, 2.599287986755371, -94.81690979003906)
Part74.Rotation = Vector3.new(-5.839000225067139, -15.675999641418457, -80.30500030517578)
Part74.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part74.Velocity = Vector3.new(-0.000841837259940803, 0.005982015281915665, -0.00011180753062944859)
Part74.Size = Vector3.new(1, 2, 1)
Part74.BottomSurface = Enum.SurfaceType.Smooth
Part74.BrickColor = BrickColor.new("Royal purple")
Part74.CanCollide = false
Part74.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part74.TopSurface = Enum.SurfaceType.Smooth
Part74.brickColor = BrickColor.new("Royal purple")
Part74.FormFactor = Enum.FormFactor.Symmetric
Part74.formFactor = Enum.FormFactor.Symmetric
CylinderMesh75.Parent = Part74
CylinderMesh75.Offset = Vector3.new(0, 0, 0.75)
CylinderMesh75.Scale = Vector3.new(2.187000274658203, 0.04374000057578087, 2.187000274658203)
Part76.Name = "Handle27"
Part76.Parent = Tool0
Part76.CFrame = CFrame.new(-22.1772003, 2.35000849, -95.4886246, 0.162133202, 0.270191073, 0.949057281, -0.975975871, -0.0979529396, 0.194618508, 0.145547137, -0.957811058, 0.247818545)
Part76.Orientation = Vector3.new(-11.222000122070312, 75.36599731445312, -95.73100280761719)
Part76.Position = Vector3.new(-22.177200317382812, 2.350008487701416, -95.4886245727539)
Part76.Rotation = Vector3.new(-38.143001556396484, 71.63300323486328, -59.03300094604492)
Part76.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part76.Velocity = Vector3.new(-0.000638398458249867, 0.006107253022491932, -0.00008968047040980309)
Part76.Size = Vector3.new(1, 1, 1)
Part76.BottomSurface = Enum.SurfaceType.Smooth
Part76.BrickColor = BrickColor.new("Royal purple")
Part76.CanCollide = false
Part76.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part76.TopSurface = Enum.SurfaceType.Smooth
Part76.brickColor = BrickColor.new("Royal purple")
Part76.FormFactor = Enum.FormFactor.Symmetric
Part76.formFactor = Enum.FormFactor.Symmetric
SpecialMesh77.Parent = Part76
SpecialMesh77.MeshId = "http://www.roblox.com/Asset/?id=9756362"
SpecialMesh77.Scale = Vector3.new(0.1822500079870224, 2.551500082015991, 0.1822500079870224)
SpecialMesh77.MeshType = Enum.MeshType.FileMesh
Part78.Name = "Handle28"
Part78.Parent = Tool0
Part78.CFrame = CFrame.new(-22.2362976, 2.7057519, -95.5416794, 0.162133202, 0.270191073, 0.949057281, -0.975975871, -0.0979529396, 0.194618508, 0.145547137, -0.957811058, 0.247818545)
Part78.Orientation = Vector3.new(-11.222000122070312, 75.36599731445312, -95.73100280761719)
Part78.Position = Vector3.new(-22.236297607421875, 2.705751895904541, -95.54167938232422)
Part78.Rotation = Vector3.new(-38.143001556396484, 71.63300323486328, -59.03300094604492)
Part78.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part78.Velocity = Vector3.new(-0.0005660013994202018, 0.006128695793449879, -0.000026543901185505092)
Part78.Size = Vector3.new(1, 1, 1)
Part78.BottomSurface = Enum.SurfaceType.Smooth
Part78.BrickColor = BrickColor.new("Royal purple")
Part78.CanCollide = false
Part78.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part78.TopSurface = Enum.SurfaceType.Smooth
Part78.brickColor = BrickColor.new("Royal purple")
Part78.FormFactor = Enum.FormFactor.Symmetric
Part78.formFactor = Enum.FormFactor.Symmetric
SpecialMesh79.Parent = Part78
SpecialMesh79.MeshId = "http://www.roblox.com/Asset/?id=9756362"
SpecialMesh79.Scale = Vector3.new(0.1822500079870224, 2.551500082015991, 0.1822500079870224)
SpecialMesh79.MeshType = Enum.MeshType.FileMesh
Part80.Name = "Handle29"
Part80.Parent = Tool0
Part80.CFrame = CFrame.new(-22.206749, 2.52788019, -95.515152, 0.162133202, 0.270191073, 0.949057281, -0.975975871, -0.0979529396, 0.194618508, 0.145547137, -0.957811058, 0.247818545)
Part80.Orientation = Vector3.new(-11.222000122070312, 75.36599731445312, -95.73100280761719)
Part80.Position = Vector3.new(-22.206748962402344, 2.5278801918029785, -95.51515197753906)
Part80.Rotation = Vector3.new(-38.143001556396484, 71.63300323486328, -59.03300094604492)
Part80.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part80.Velocity = Vector3.new(-0.0006021999288350344, 0.006117974407970905, -0.00005811218579765409)
Part80.Size = Vector3.new(1, 1, 1)
Part80.BottomSurface = Enum.SurfaceType.Smooth
Part80.BrickColor = BrickColor.new("Royal purple")
Part80.CanCollide = false
Part80.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part80.TopSurface = Enum.SurfaceType.Smooth
Part80.brickColor = BrickColor.new("Royal purple")
Part80.FormFactor = Enum.FormFactor.Symmetric
Part80.formFactor = Enum.FormFactor.Symmetric
SpecialMesh81.Parent = Part80
SpecialMesh81.MeshId = "http://www.roblox.com/Asset/?id=9756362"
SpecialMesh81.Scale = Vector3.new(0.1822500079870224, 2.551500082015991, 0.29159998893737793)
SpecialMesh81.MeshType = Enum.MeshType.FileMesh
Part82.Name = "Handle30"
Part82.Parent = Tool0
Part82.CFrame = CFrame.new(-22.699173, 2.70639944, -93.7695389, 0.162133202, 0.270191073, 0.949057281, -0.975975871, -0.0979529396, 0.194618508, 0.145547137, -0.957811058, 0.247818545)
Part82.Orientation = Vector3.new(-11.222000122070312, 75.36599731445312, -95.73100280761719)
Part82.Position = Vector3.new(-22.699172973632812, 2.706399440765381, -93.76953887939453)
Part82.Rotation = Vector3.new(-38.143001556396484, 71.63300323486328, -59.03300094604492)
Part82.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part82.Velocity = Vector3.new(-0.001201295992359519, 0.005778075195848942, -0.00019235197396483272)
Part82.Size = Vector3.new(1, 2, 1)
Part82.BottomSurface = Enum.SurfaceType.Smooth
Part82.BrickColor = BrickColor.new("Royal purple")
Part82.CanCollide = false
Part82.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part82.TopSurface = Enum.SurfaceType.Smooth
Part82.brickColor = BrickColor.new("Royal purple")
Part82.FormFactor = Enum.FormFactor.Symmetric
Part82.formFactor = Enum.FormFactor.Symmetric
Fire83.Parent = Part82
Fire83.Color = Color3.new(0.4, 0, 1)
Fire83.Enabled = false
Fire83.Size = 9
Fire83.Heat = 15
Fire83.SecondaryColor = Color3.new(0.8, 0, 0)
Fire83.size = 9
BlockMesh84.Parent = Part82
BlockMesh84.Scale = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582)
Part85.Name = "Handle31"
Part85.Parent = Tool0
Part85.CFrame = CFrame.new(-22.699173, 2.70639944, -93.7695389, 0.162133202, 0.270191073, 0.949057281, -0.975975871, -0.0979529396, 0.194618508, 0.145547137, -0.957811058, 0.247818545)
Part85.Orientation = Vector3.new(-11.222000122070312, 75.36599731445312, -95.73100280761719)
Part85.Position = Vector3.new(-22.699172973632812, 2.706399440765381, -93.76953887939453)
Part85.Rotation = Vector3.new(-38.143001556396484, 71.63300323486328, -59.03300094604492)
Part85.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part85.Velocity = Vector3.new(-0.001201295992359519, 0.005778075195848942, -0.00019235197396483272)
Part85.Size = Vector3.new(1, 2, 1)
Part85.BottomSurface = Enum.SurfaceType.Smooth
Part85.BrickColor = BrickColor.new("Royal purple")
Part85.CanCollide = false
Part85.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part85.TopSurface = Enum.SurfaceType.Smooth
Part85.brickColor = BrickColor.new("Royal purple")
Part85.FormFactor = Enum.FormFactor.Symmetric
Part85.formFactor = Enum.FormFactor.Symmetric
Fire86.Parent = Part85
Fire86.Color = Color3.new(0.4, 0, 0.4)
Fire86.Enabled = false
Fire86.Size = 9
Fire86.Heat = 15
Fire86.SecondaryColor = Color3.new(0.2, 0.2, 1)
Fire86.size = 9
BlockMesh87.Parent = Part85
BlockMesh87.Scale = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582)
Part88.Name = "Handle32"
Part88.Parent = Tool0
Part88.CFrame = CFrame.new(-22.699173, 2.70639944, -93.7695389, 0.162133202, 0.270191073, 0.949057281, -0.975975871, -0.0979529396, 0.194618508, 0.145547137, -0.957811058, 0.247818545)
Part88.Orientation = Vector3.new(-11.222000122070312, 75.36599731445312, -95.73100280761719)
Part88.Position = Vector3.new(-22.699172973632812, 2.706399440765381, -93.76953887939453)
Part88.Rotation = Vector3.new(-38.143001556396484, 71.63300323486328, -59.03300094604492)
Part88.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part88.Velocity = Vector3.new(-0.001201295992359519, 0.005778075195848942, -0.00019235197396483272)
Part88.Size = Vector3.new(1, 1, 1)
Part88.BottomSurface = Enum.SurfaceType.Smooth
Part88.BrickColor = BrickColor.new("Royal purple")
Part88.CanCollide = false
Part88.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part88.TopSurface = Enum.SurfaceType.Smooth
Part88.brickColor = BrickColor.new("Royal purple")
Part88.FormFactor = Enum.FormFactor.Symmetric
Part88.formFactor = Enum.FormFactor.Symmetric
BlockMesh89.Parent = Part88
BlockMesh89.Scale = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582)
Part90.Name = "Handle39"
Part90.Parent = Tool0
Part90.CFrame = CFrame.new(-22.1133652, 0.866000175, -94.5676575, -0.949057281, 0.162133157, -0.270191103, -0.194618464, -0.975975871, 0.0979529321, -0.247818589, 0.145547122, 0.957811058)
Part90.Orientation = Vector3.new(-5.620999813079834, -15.753000259399414, -168.72300720214844)
Part90.Position = Vector3.new(-22.113365173339844, 0.8660001754760742, -94.56765747070312)
Part90.Rotation = Vector3.new(-5.839000225067139, -15.675999641418457, -170.30499267578125)
Part90.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part90.Velocity = Vector3.new(-0.0011912622721865773, 0.005879369098693132, -0.0004185629659332335)
Part90.Size = Vector3.new(1, 2, 2)
Part90.BottomSurface = Enum.SurfaceType.Smooth
Part90.BrickColor = BrickColor.new("Royal purple")
Part90.CanCollide = false
Part90.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part90.TopSurface = Enum.SurfaceType.Smooth
Part90.brickColor = BrickColor.new("Royal purple")
Part90.FormFactor = Enum.FormFactor.Symmetric
Part90.formFactor = Enum.FormFactor.Symmetric
BlockMesh91.Parent = Part90
BlockMesh91.Offset = Vector3.new(0, 0.10499999672174454, 1.8250000476837158)
BlockMesh91.Scale = Vector3.new(0.08500000089406967, 0.48500001430511475, 0.17399999499320984)
BodyGyro92.Name = "EnmaGyro"
BodyGyro92.Parent = Tool0
BodyGyro92.MaxTorque = Vector3.new(0, math.huge, 0)
BodyGyro92.P = 14999
BodyGyro92.maxTorque = Vector3.new(0, math.huge, 0)
BodyGyro92.D = 749
Script93.Parent = Tool0
table.insert(cors,sandbox(Script93,function()
	local attack = false
	local started = false
	local equipped = false
	local ani = false
	local Tool = script.Parent
	local Handle = Tool.Handle
	local event = Tool:FindFirstChild("????")
	local event2 = Tool:FindFirstChild("??")
	local trail = Handle.NewTrail
	local trail2 = Handle.NewTrail2
	local owner = nil
	local char = nil
	local hum = nil
	local rt = nil
	local inair = false
	local holdingz = false
	local holdingx = false
	local holdingc = false
	local holdingq = false
	local holdinge = false
	local gyro = Tool:FindFirstChild("EnmaGyro")
	local heatlvl = 1
	local heat = 0
	local dragonsummoned = false
	local dragonattack = false
	local dragontype = ""
	local dragonpos = nil
	local blazblue = false
	local zDead = nil
	local jin = 0
	--animation stuff
	local anim = "idle"
	local frame = 1
	local sine = tick()*60
	--function stuff
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
	local rs = game:GetService("RunService")
	local debris = game:GetService("Debris")
	local tweens = game:GetService("TweenService")
	local color = Color3.new
	local udim2 = UDim2.new

	--Cooldown Stuff
	local grenadecooldown = false
	local strikercooldown = false
	local tyrantcooldown = false
	local starcooldown = false
	local vortexcooldown = false
	local shadecooldown = false
	local rumeigacooldown = false
	local koronecooldown = false
	local hakureicooldown = false
	local kirisamecooldown = false
	local hazamacooldown = false
	local goudacooldown = false
	local fangcooldown = false
	local zerocooldown = false
	local fatalcooldown = false
	local sazcooldown = false
	local nightmarecooldown = false
	local blazbluecooldown = false
	local overdrivecooldown = false
	local strikercount = 0

	--functions. I hate reusing stuff from premade scripts.
	function raycast(pos, dir, ran, ignore)
		return workspace:FindPartOnRay(Ray.new(pos, dir.unit * ran), ignore)
	end

	function sound(id, volume, pitch, parent, tpos, looped, debree, dtime)
		local sound = new("Sound")
		sound.SoundId = "rbxassetid://"..id
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

	function sound2(id, volume, pitch, parent, tpos)
		local sound = new("Sound")
		sound.SoundId = "rbxassetid://"..id
		sound.Volume = volume
		sound.Pitch = pitch
		sound.Parent = parent
		sound.Name = "CSUFSound"
		sound.TimePosition = tpos or 0
		sound.PlayOnRemove = true
		task.wait(0.005)
		sound:Destroy()
	end

	function sound1(id, volume, pitch, parent, tpos, looped)
		local sound = new("Sound")
		sound.SoundId = "rbxasset://sounds/"..id
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
		debris:AddItem(sound,11.5)
	end

	function sound3(id, volume, pitch, parent, tpos)
		local sound = new("Sound")
		sound.SoundId = "rbxasset://sounds/"..id
		sound.Volume = volume
		sound.Pitch = pitch
		sound.Parent = parent
		sound.Name = "CSUFSound"
		sound.TimePosition = tpos or 0
		sound.PlayOnRemove = true
		sound:Destroy()
	end

	--CREATOR EXCLUSIVE.
	function voice(id, volume, pitch, parent, tpos, looped)
		local sound = new("Sound")
		sound.SoundId = "rbxasset://voices/"..id
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
		debris:AddItem(sound,11.5)
	end
	function voice2(id, volume, pitch, parent, tpos)
		local sound = new("Sound")
		sound.SoundId = "rbxasset://voices/"..id
		sound.Volume = volume
		sound.Pitch = pitch
		sound.Parent = parent
		sound.Name = "CSUFSound"
		sound.TimePosition = tpos or 0
		sound.PlayOnRemove = true
		sound:Destroy()
	end

	function super(type)
		if type == 1 then
			sound(102583155523200,2.5,1.1,rt,0,false)
		elseif type == 2 then
			sound(6892632909,2.5,1.1,rt,0,false)
		else
			sound(153092315,2.5,1.1,rt,0,false)
		end
		spawn(function()
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
			sphere.CFrame = rt.CFrame
			local tween = tweens:Create(sphere, TweenInfo.new(1.5), {Size = vect3(45,45,45), Transparency = 1})
			tween:Play()
			tween.Completed:Connect(function() sphere:Destroy() end)
		end)
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
		if owner.UserId == 50203523 then
			if huma.Parent:IsA("Model") and huma.Parent.Name ~= "ninjakaiden1" then
				if huma.MaxHealth >= 1000000 then
					huma.MaxHealth = 100
					huma.Health = 100
				end
			end
		end
		if not blazblue then
			huma:TakeDamage(damage)
		else
			huma:TakeDamage(damage * 1.45)
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
					if vdistance <= hitarea and vhum.Health > 0 then
						damage(vhum, dmg, hitsfx, hitvol, hitpitch, vtorso, hitpos, effect)
						if move == true then
							if type2 == "grenade" then
								if vtorso:FindFirstChild("GrenadeHitBy") then vtorso:FindFirstChild("GrenadeHitBy"):Destroy() end
								local bpos = new("BodyPosition")
								bpos.Name = "GrenadeHitBy"
								bpos.Parent = vtorso
								bpos.MaxForce = vect3(39999,39999,39999)
								bpos.D = 1000
								bpos.Position = rt.CFrame * cframe(0,0,-50).Position
								debris:AddItem(bpos,0.1)
							elseif type2 == "grenade2" then
								vtorso.Velocity = rt.CFrame.lookVector*60
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "striker" then
								if vtorso:FindFirstChild("StrikerHitBy") then vtorso:FindFirstChild("StrikerHitBy"):Destroy() end
								local bpos = new("BodyPosition")
								bpos.Name = "StrikerHitBy"
								bpos.Parent = vtorso
								bpos.MaxForce = vect3(39999,39999,39999)
								bpos.D = 1500
								bpos.Position = rt.CFrame * cframe(0,55,-17.5).Position
								debris:AddItem(bpos,0.1)
							elseif type2 == "striker2" then
								vtorso.Velocity = rt.CFrame.lookVector*25 + rt.CFrame.upVector * -60
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "tyrant" then
								local bpos = new("BodyPosition")
								bpos.Parent = vtorso
								bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
								bpos.D = 2250
								bpos.Position = rt.CFrame * cframe(0,35,-85).Position
								debris:AddItem(bpos,0.15)
							elseif type2 == "tyrant2" then
								vtorso.Velocity = rt.CFrame.lookVector*45 + rt.CFrame.upVector * 10
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "tyrant3" then
								vtorso.Velocity = rt.CFrame.lookVector*100
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "redstar" then
								vtorso.Velocity = rt.CFrame.lookVector * 25 + rt.CFrame.upVector * 75
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "vortex" then
								if vtorso:FindFirstChild("VortexGHitBy") then vtorso:FindFirstChild("VortexGHitBy"):Destroy() end
								local bpos = new("BodyPosition")
								bpos.Name = "VortexGHitBy"
								bpos.Parent = vtorso
								bpos.MaxForce = vect3(39999,39999,39999)
								bpos.D = 1750
								bpos.Position = rt.CFrame * cframe(0,0,-50).Position
								debris:AddItem(bpos,0.1)
							elseif type2 == "vortex2" then
								if vtorso:FindFirstChild("VortexGHitBy") then vtorso:FindFirstChild("VortexGHitBy"):Destroy() end
								vtorso.Velocity = rt.CFrame.lookVector * 50 + rt.CFrame.upVector * 115
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "vortex3" then
								if vtorso:FindFirstChild("VortexGHitBy") then vtorso:FindFirstChild("VortexGHitBy"):Destroy() end
								vtorso.Velocity = rt.CFrame.lookVector * 45
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "shade" then
								vtorso.Velocity = rt.CFrame.upVector * 150
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "shade2" then
								vtorso.Velocity = rt.CFrame.upVector * 450
								vhum.PlatformStand = true
								spawn(function() 
									wait(10)
									vhum.PlatformStand = false
								end)
							elseif type2 == "rumeiga" then
								vtorso.Velocity = rt.CFrame.lookVector * 40
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "rumeiga2" then
								vtorso.Velocity = rt.CFrame.lookVector * 55 + rt.CFrame.upVector * 45
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "rumeiga1" then
								vtorso.Velocity = rt.CFrame.lookVector * 70 + rt.CFrame.upVector * 75
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "korone" then
								vtorso.Velocity = rt.CFrame.lookVector * 2.5 + rt.CFrame.upVector * 30
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "hakurei" then
								vtorso.Velocity = rt.CFrame.lookVector * 45
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "kirisame" then
								vtorso.Velocity = rt.CFrame.upVector * 45
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "kirisame1" then
								vtorso.Velocity = rt.CFrame.upVector * 25
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "kirisame2" then
								vtorso.Velocity = rt.CFrame.upVector * 10
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "hazama" then
								vtorso.Velocity = rt.CFrame.lookVector * 10 + rt.CFrame.upVector * 15
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "hazama2" then
								vtorso.Velocity = rt.CFrame.lookVector * 15
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "hazama3" then
								vtorso.Velocity = rt.CFrame.lookVector * 25 + rt.CFrame.upVector * -4.5
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "hazama0" then
								vtorso.Velocity = rt.CFrame.lookVector * 30 + rt.CFrame.upVector * 45
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "hazama1" then
								vtorso.Velocity = rt.CFrame.lookVector * 45 + rt.CFrame.upVector * -15
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "gouda" then
								vtorso.Velocity = rt.CFrame.lookVector * 10 + rt.CFrame.upVector * 125
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "fang" then
								if vtorso:FindFirstChild("FangHitBy") then vtorso:FindFirstChild("FangHitBy"):Destroy() end
								local bpos = new("BodyPosition")
								bpos.Name = "FangHitBy"
								bpos.Parent = vtorso
								bpos.MaxForce = vect3(39999,39999,39999)
								bpos.D = 1750
								bpos.Position = rt.CFrame * cframe(0,0,-50).Position
								debris:AddItem(bpos,0.1)
							elseif type2 == "fang2" then
								if vtorso:FindFirstChild("FangHitBy") then vtorso:FindFirstChild("FangHitBy"):Destroy() end
								vtorso.Velocity = rt.CFrame.lookVector * 20
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "fang3" then
								if vtorso:FindFirstChild("FangHitBy") then vtorso:FindFirstChild("FangHitBy"):Destroy() end
								vtorso.Velocity = rt.CFrame.lookVector * 30 + rt.CFrame.upVector * 75
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "wing" then
								if vtorso:FindFirstChild("WingHitBy") then vtorso:FindFirstChild("WingHitBy"):Destroy() end
								local bpos = new("BodyPosition")
								bpos.Parent = vtorso
								bpos.Name = "WingHitBy"
								bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
								bpos.D = 2250
								bpos.Position = rt.CFrame * cframe(0,75,-90).Position
								debris:AddItem(bpos,0.15)
							elseif type2 == "wing2" then
								if vtorso:FindFirstChild("WingHitBy") then vtorso:FindFirstChild("WingHitBy"):Destroy() end
								local bpos = new("BodyPosition")
								bpos.Parent = vtorso
								bpos.Name = "WingHitBy"
								bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
								bpos.D = 2500
								bpos.Position = rt.CFrame * cframe(0,0,-45).Position
								debris:AddItem(bpos,0.225)
							elseif type2 == "wing1" then
								if vtorso:FindFirstChild("WingHitBy") then vtorso:FindFirstChild("WingHitBy"):Destroy() end
								vtorso.Velocity = rt.CFrame.lookVector * 6.66 + rt.CFrame.upVector * 100
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "fatal" then
								if vtorso:FindFirstChild("VortexGHitBy") then vtorso:FindFirstChild("VortexGHitBy"):Destroy() end
								vtorso.Velocity = rt.CFrame.lookVector * 60
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							elseif type2 == "overdrive" then
								vtorso.Velocity = rt.CFrame.upVector * 150
								vhum.PlatformStand = true
								spawn(function() 
									wait(5)
									vhum.PlatformStand = false
								end)
							else
								local vel = new("BodyVelocity")
								vel.Parent = vtorso
								vel.MaxForce = vect3(math.huge,math.huge,math.huge)
								vel.Velocity = rt.CFrame.lookVector * 5
								debris:AddItem(vel,0.5)
							end
						end
						if typa == "burn" then
							sound(96730847431500,1.5,1,vtorso,0,false)
							hiteffect("burn",vtorso)
						elseif typa == "slash" then
							sound(7441099080,2,1,vtorso,0,false)
							hiteffect("blood",vtorso)
						elseif typa == "slash2" then
							if random(0,6) <= 2 then
								sound(7441099080,2,1,vtorso,0,false)
								hiteffect("blood",vtorso)
							end
						elseif typa == "slash1" then
							if random(0,12) == 0 then
								sound(7441099080,2,1,vtorso,0,false)
								hiteffect("blood",vtorso)
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
		Weld.Part0 = rt
		Weld.Part1 = Part
		Weld.C0 = Weld.C0 * cframe(0,0,-4)
		Part.Touched:Connect(function(persona)
			if persona:IsA("BasePart") or persona:IsA("MeshPart") then
				if persona.Parent ~= nil and not persona.Parent:IsDescendantOf(char) then
					if persona.Parent:FindFirstChildOfClass("Humanoid") and persona.Parent ~= char and hashit == false then
						local humi = persona.Parent:FindFirstChildOfClass("Humanoid")
						local torsou = persona.Parent:FindFirstChild("Torso") or persona.Parent:FindFirstChild("UpperTorso") or persona.Parent:FindFirstChild("HumanoidRootPart")
						if torsou then
							hashit = true
							magnitudedamage(damage, effect, hitpos, hitarea, hitsfx, hitvol, hitpitch, part, move, typa, type2)
						end
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
					local blc = {"Bright red","Really red","Crimson","Dusty Rose"}
					blood.Parent = script
					blood.Name = "Blood"
					blood.BrickColor = bc(blc[random(#blc)])
					blood.Material = "Glass"
					blood.CanCollide = false
					blood.Locked = true
					blood.Shape = Enum.PartType.Ball
					blood.Size = vect3(random(5)/10,0.45,0.45)
					blood.CFrame = hitpart.CFrame * cframe(random(-1,1),random(-1,1),random(-1,1))
					blood.Velocity = vect3(random(-30,30),random(-30,30),random(-30,30))
					debris:AddItem(blood,5)
				end
			end)
		end
		if effect == "burn" then
			local hum = hitpart.Parent:FindFirstChildOfClass("Humanoid")
			local fire = new("Fire")
			fire.Parent = hitpart
			fire.Size = 15
			fire.Heat = 30
			fire.Color = color(0.0784314, 0.0784314, 0.0784314)
			fire.SecondaryColor = color(0.384314, 0.145098, 0.819608)
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
					if not blazblue then
						hum:TakeDamage(1)
					else
						hum:TakeDamage(1.45)
					end
					wait(1)
				end
			end)
			spawn(function()
				wait(11.5)
				fire.Enabled = false
				burning = false
				firesound:Destroy()
				wait(2.5)
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
			local tween = tweens:Create(sphere, TweenInfo.new(0.3), {Size = vect3(7.5,7.5,7.5), Transparency = 1})
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
			sound2(2814354338,3,1,hitpart,0)
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
	end

	function chatter(target,message)
		if target == nil then return end
		local head = target:FindFirstChild("Head")
		local chattext = coroutine.wrap(function()
			if char:FindFirstChild("enmayuchat") then
				char:FindFirstChild("enmayuchat"):Destroy()
			end
			local chatg = new("BillboardGui")
			local chatl = new("TextLabel")
			chatg.Parent = target
			chatg.LightInfluence = 1
			chatg.Size = udim2(9, 0, 3, 0)
			chatg.Active = true
			chatg.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			chatg.Adornee = head
			chatg.AlwaysOnTop = true
			chatg.StudsOffset = vect3(0, 2.5, 0)
			chatg.Name = "enmayuchat"
			chatl.Parent = chatg
			chatl.Size = udim2(1, 0, 1, 0)
			chatl.Active = true
			chatl.Name = "chatlabel"
			chatl.BackgroundColor = bc("Really black")
			chatl.BackgroundColor3 = color(0,0,0)
			chatl.BackgroundTransparency = 1
			chatl.BorderColor = bc("Really black")
			chatl.BorderColor3 = color(0, 0, 0)
			chatl.BorderSizePixel = 0
			chatl.Font = Enum.Font.Creepster
			chatl.FontSize = Enum.FontSize.Size36
			chatl.Text = ""
			chatl.TextColor = bc("Really black")
			chatl.TextColor3 = color(0,0,0)
			chatl.TextSize = 35
			chatl.TextStrokeColor3 = color(0.384314, 0.145098, 0.819608)
			chatl.TextStrokeTransparency = 0
			chatl.TextScaled = true
			chatl.TextWrap = true
			chatl.TextWrapped = true
			for i = 1,string.len(message),1 do
				chatl.Text = string.sub(message,1,i)
				wait(0.025)
			end
			wait(1)
			for i = 1,5 do
				wait(0.01)
				chatl.TextStrokeTransparency = chatl.TextStrokeTransparency + .25
				chatl.TextTransparency = chatl.TextTransparency + .25
			end
			chatg:Destroy()
		end)
		chattext()
	end

	function ragdoll(victim)
		for i,v in pairs(victim:GetDescendants()) do
			if v:IsA("Motor6D") then
				local socket = new("BallSocketConstraint")
				local a1 = new("Attachment")
				local a2 = new("Attachment")
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

	function death()
		attack = true
		equipped = false
		ani = false
		if char.Torso:findFirstChild("RWBY") then
			char.Torso:findFirstChild("RWBY"):destroy()
		end
		if char.Torso:findFirstChild("JNPR") then
			char.Torso:findFirstChild("JNPR"):destroy()
		end
		if char.Torso:findFirstChild("RAGNA THE BLOODEDGE") then
			char.Torso:findFirstChild("RAGNA THE BLOODEDGE"):destroy()
		end
		if char.Torso:findFirstChild("HARUKA AMAMI") then
			char.Torso:findFirstChild("HARUKA AMAMI"):destroy()
		end
		if char.Torso:findFirstChild("JIN YAGAMI") then
			char.Torso:findFirstChild("JIN YAGAMI"):destroy()
		end
		if char:FindFirstChild("HumanoidRootPart") then
			if char.HumanoidRootPart:findFirstChild("SUGARIE SAFFRON") then
				char.HumanoidRootPart:findFirstChild("SUGARIE SAFFRON"):destroy()
			end
		end
		ragdoll(char)
		local rand = random(0,3)
		if rand == 0 then
			chatter(char,"Wasn't good enough...")
		elseif rand == 1 then
			chatter(char,"How could this happen?")
		elseif rand == 2 then
			chatter(char,"Lost to a weakling like you...")
		elseif rand == 3 then
			chatter(char,"Is this the end?")
		end
	end

	Tool.Unequipped:Connect(function()
		equipped = false
		ani = false
		zDead:Disconnect()
		if char.Torso:findFirstChild("RWBY") then
			char.Torso:findFirstChild("RWBY"):destroy()
		end
		if char.Torso:findFirstChild("JNPR") then
			char.Torso:findFirstChild("JNPR"):destroy()
		end
		if char.Torso:findFirstChild("RAGNA THE BLOODEDGE") then
			char.Torso:findFirstChild("RAGNA THE BLOODEDGE"):destroy()
		end
		if char.Torso:findFirstChild("HARUKA AMAMI") then
			char.Torso:findFirstChild("HARUKA AMAMI"):destroy()
		end
		if char.Torso:findFirstChild("JIN YAGAMI") then
			char.Torso:findFirstChild("JIN YAGAMI"):destroy()
		end
		if char:FindFirstChild("HumanoidRootPart") then
			if char.HumanoidRootPart:findFirstChild("SUGARIE SAFFRON") then
				char.HumanoidRootPart:findFirstChild("SUGARIE SAFFRON"):destroy()
			end
		end
	end)

	Tool.Equipped:Connect(function()
		equipped = true
		ani = true
		started = true
		owner = game:GetService("Players"):GetPlayerFromCharacter(Tool.Parent)
		char = owner.Character
		hum = char:FindFirstChildOfClass("Humanoid")
		hum.WalkSpeed = 16
		rt = char:FindFirstChild("HumanoidRootPart")
		hum.BreakJointsOnDeath = false
		zDead=hum.Died:connect(death)
		local lhw = new("Weld")
		local lsw = new("Weld")
		local nkw = new("Weld")
		local rhw = new("Weld")
		local rsw = new("Weld")
		local rjw = new("Weld")
		lhw.Name = "JIN YAGAMI"
		lhw.Parent = char.Torso
		lhw.C0 = cframe(-0.5, -2, 0, 1, -0, 0, 0, 1, 0, -0, 0, 1)
		lhw.Part0 = char.Torso
		lhw.Part1 = char["Left Leg"]
		lsw.Name = "JNPR"
		lsw.Parent = char.Torso
		lsw.C0 = cframe(-1.5, 0, 0, 1, -0, 0, 0, 1, 0, -0, 0, 1)
		lsw.Part0 = char.Torso
		lsw.Part1 = char["Left Arm"]
		nkw.Name = "RAGNA THE BLOODEDGE"
		nkw.Parent = char.Torso
		nkw.C0 = cframe(0, 1.5, 0, 1, -0, 0, 0, 1, 0, -0, 0, 1)
		nkw.Part0 = char.Torso
		nkw.Part1 = char.Head
		rhw.Name = "HARUKA AMAMI"
		rhw.Parent = char.Torso
		rhw.C0 = cframe(0.5, -2, 0, 1, -0, 0, 0, 1, 0, -0, 0, 1)
		rhw.Part0 = char.Torso
		rhw.Part1 = char["Right Leg"]
		rsw.Name = "RWBY"
		rsw.Parent = char.Torso
		rsw.C0 = cframe(1.5, 0, 0, 1, 0, 0, 0, 1, -0, 0, 0, 1)
		rsw.Part0 = char.Torso
		rsw.Part1 = char["Right Arm"]
		rjw.Name = "SUGARIE SAFFRON"
		rjw.Parent = rt
		rjw.Part0 = rt
		rjw.Part1 = char.Torso
		anim = "idle"
		spawn(function()
			while rs.Stepped:Wait() and ani do
				sine = tick()*60
				if ani then
					if anim == "idle" then
						rjw.C0 = rjw.C0:Lerp(cframe(0 ,0+ 0.05 * sin(sine / 64), 0) * angles(rad(0), rad(-45), rad(-0)), 0.1)
						nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5+ 0.05 * sin(sine / 64), -0.125) * angles(rad(-10- 5 * sin(sine / 64)), rad(45), rad(0)), 0.1)
						rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05) * angles(rad(-10), rad(-10), rad(20- 2.5 * sin(sine / 64))), 0.1)
						lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45+ 5 * sin(sine / 64))), 0.1)
						rhw.C0 = rhw.C0:Lerp(cframe(0.65,-2- 0.05 * sin(sine / 64),0) *  angles(rad(-5), rad(5), rad(7.5)), 0.1)
						lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-2- 0.05 * sin(sine / 64),0.125) *  angles(rad(0), rad(30), rad(-10)), 0.1)
					elseif anim == "walk" then
						rjw.C0 = rjw.C0:Lerp(cframe(0 ,0 + 0.15 * sin(sine/8.88), 0) * angles(rad(20), rad(0), rad(-0)), 0.3)
						nkw.C0 = nkw.C0:Lerp(cframe(0, 1.4, -0.45) * angles(rad(-30), rad(0), rad(0)), 0.3)
						rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 0, 0 + 0.25 - (0.5 * sin(sine/8.88))) * angles(rad(-20 + 25 * sin(sine/8.88)), rad(0), rad(-0)), 0.3)
						lsw.C0 = lsw.C0:Lerp(cframe(-1.25, -0.15, 0) * angles(rad(-15 + 5 * sin(sine/8.88)), rad(0), rad(20)), 0.3)
						rhw.C0 = rhw.C0:Lerp(cframe(0.5,-2 - 0.35 * sin(sine/8.88),0 + 0.3 - (0.75 * sin(sine/8.88))) *  angles(rad(0 + 45 * sin(sine/8.88)), rad(0), rad(0)) *  angles(rad(-20), rad(0), rad(0)), 0.3)
						lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-2 + 0.1 - (0.15 * sin(sine/8.88)),0 + 0.3 + (0.75 * sin(sine/8.88))) *  angles(rad(0 - 45 * sin(sine/8.88)), rad(0), rad(0)) *  angles(rad(-20), rad(0), rad(0)), 0.3)
					elseif anim == "jump" then
						rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-30), rad(0), rad(-0)), 0.3)
						nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(0), rad(0)), 0.3)
						rsw.C0 = rsw.C0:Lerp(cframe(1 , 0.15, -0.75) * angles(rad(60), rad(25), rad(-30)), 0.3)
						lsw.C0 = lsw.C0:Lerp(cframe(-0.75, 0.45, -0.75) * angles(rad(75), rad(0), rad(75)), 0.3)
						rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,-0.5) *  angles(rad(-15), rad(0), rad(0)), 0.3)
						lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.25,-0.45) *  angles(rad(-30), rad(0), rad(0)), 0.3)
					elseif anim == "fall" then	
						rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(10), rad(0), rad(-0)), 0.3)
						nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(0), rad(0)), 0.3)
						rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 1, -0.25) * angles(rad(150), rad(0), rad(-0)), 0.3)
						lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 1, -0.25) * angles(rad(150), rad(0), rad(0)), 0.3)
						rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,0.15) *  angles(rad(-35), rad(0), rad(0)), 0.3)
						lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.75,-0.15) *  angles(rad(-15), rad(0), rad(0)), 0.3)
					elseif anim == "sit" then	
						rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.3)
						nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
						rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 0, 0.25) * angles(rad(-30), rad(0), rad(-0)), 0.3)
						lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.5, -0.5) * angles(rad(90), rad(0), rad(0)), 0.3)
						rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1,-1) *  angles(rad(90), rad(0), rad(0)), 0.3)
						lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1,-1) *  angles(rad(90), rad(0), rad(0)), 0.3)
					elseif anim == "taunt" then	
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(15), rad(15), rad(-0)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.1) * angles(rad(15), rad(-15), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0, 0.15) * angles(rad(-20), rad(-10), rad(0)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.25, 1.5, -0.75) * angles(rad(90), rad(-90), rad(0)) *  angles(rad(60), rad(0), rad(0)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-2,0) *  angles(rad(-15), rad(5), rad(7.5)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-2,0.125) *  angles(rad(-10), rad(30), rad(-10)), 0.1)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.15, 0) * angles(rad(-20), rad(30), rad(-0)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.35) * angles(rad(-25), rad(-30), rad(0)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0, -0.25) * angles(rad(20), rad(-10), rad(10)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.75, 0.25) * angles(rad(90), rad(-90), rad(0)) *  angles(rad(-120), rad(0), rad(0)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(1,-1.65,-0.5) *  angles(rad(20), rad(-15), rad(25)), 0.5)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.35,-2,-0.25) *  angles(rad(20), rad(30), rad(-0)) *  angles(rad(-15), rad(-35), rad(0)), 0.5)
						end
					elseif anim == "punch" then	
						rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(20), rad(-0)), 0.5)
						nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(-0), rad(-20), rad(0)), 0.5)
						rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, -0.5) * angles(rad(50), rad(10), rad(0)), 0.5)
						lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.5)
						rhw.C0 = rhw.C0:Lerp(cframe(0.65,-2,0) *  angles(rad(-5), rad(5), rad(7.5)), 0.5)
						lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-2,0.125) *  angles(rad(0), rad(30), rad(-10)), 0.5)
					elseif anim == "kick" then	
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(10), rad(0), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(-0), rad(0), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 0.5, -0.5) * angles(rad(0), rad(-60), rad(0)) *  angles(rad(0), rad(90), rad(60)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 1, -0.5) * angles(rad(150), rad(0), rad(0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-2,0) *  angles(rad(-20), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-2,0.5) *  angles(rad(0), rad(75), rad(-20)), 0.3)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(30), rad(-20), rad(-0)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(-0), rad(20), rad(0)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 0.5, -0.5) * angles(rad(0), rad(-60), rad(30)) *  angles(rad(0), rad(90), rad(60)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 1, -0.5) * angles(rad(150), rad(-180), rad(60)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,0.25) *  angles(rad(-35), rad(0), rad(20)), 0.5)
							lhw.C0 = lhw.C0:Lerp(cframe(-1.5,-0.25,-1.75) *  angles(rad(100), rad(0), rad(-20)), 0.5)
						end
					elseif anim == "slash" then	
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(0), rad(-0)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(-75), rad(0)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.75, -0.25) * angles(rad(-30), rad(-10), rad(60))*  angles(rad(60), rad(0), rad(30)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-2,0) *  angles(rad(-5), rad(5), rad(7.5)), 0.5)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-2,0.125) *  angles(rad(0), rad(30), rad(-10)), 0.5)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(60), rad(-0)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(-75), rad(0)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.75, -0.25) * angles(rad(-30), rad(-10), rad(60))*  angles(rad(60), rad(0), rad(30)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-2,0) *  angles(rad(-5), rad(5), rad(7.5)), 0.5)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-2,0.125) *  angles(rad(0), rad(30), rad(-10)), 0.5)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(150), rad(-0)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(-75), rad(0)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.75, -0.25) * angles(rad(-30), rad(-10), rad(60))*  angles(rad(60), rad(0), rad(30)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-2,0) *  angles(rad(-5), rad(5), rad(7.5)), 0.5)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-2,0.125) *  angles(rad(0), rad(30), rad(-10)), 0.5)
						end
					elseif anim == "drive" then	
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(7.5), rad(-0), rad(-0)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(10), rad(0), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.25) * angles(rad(-30), rad(-10), rad(20)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.75, 1.5, 0.5) * angles(rad(210), rad(20), rad(60)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-2,0.25) *  angles(rad(-45), rad(5), rad(7.5)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-2,0.25) *  angles(rad(-15), rad(30), rad(-10)), 0.1)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.5, -0.5) * angles(rad(0), rad(45), rad(-0)) * angles(rad(-30), rad(0), rad(-0)), 0.275)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-20), rad(-25), rad(0)), 0.275)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.5, 0.05) * angles(rad(30), rad(-10), rad(60)), 0.275)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, -0.15) * angles(rad(15), rad(-20), rad(-45)), 0.275)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.25,0) *  angles(rad(-45), rad(5), rad(7.5)), 0.275)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-1.5,-0.125) *  angles(rad(0), rad(30), rad(-10)), 0.275)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.5, -0.5) * angles(rad(0), rad(25), rad(-0)) * angles(rad(-15), rad(0), rad(-0)), 0.275)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-20), rad(-25), rad(0)), 0.275)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.5, 0.05) * angles(rad(30), rad(-10), rad(60)), 0.275)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.8, 0.5, -0.75) * angles(rad(75), rad(-20), rad(75)) * angles(rad(0), rad(-45), rad(-0)), 0.275)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.25,0) *  angles(rad(-45), rad(5), rad(7.5)), 0.275)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-1.5,-0.125) *  angles(rad(0), rad(30), rad(-10)), 0.275)
						end
					elseif anim == "apunch" then	
						rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-30), rad(-45), rad(-0)), 0.3)
						nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(30), rad(0)), 0.3)
						rsw.C0 = rsw.C0:Lerp(cframe(1.5, 0.3, -0.75) * angles(rad(60), rad(25), rad(30)), 0.3)
						lsw.C0 = lsw.C0:Lerp(cframe(-2, 0.5, -1) * angles(rad(90), rad(0), rad(-30)) * angles(rad(0), rad(-90), rad(15)) * angles(rad(-15), rad(0), rad(-0)), 0.3)
						rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,-0.5) *  angles(rad(-15), rad(0), rad(0)), 0.3)
						lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.25,-0.45) *  angles(rad(-30), rad(0), rad(0)), 0.3)
					elseif anim == "akick" then	
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-30), rad(-90), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(60), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1 , 0.15, -0.75) * angles(rad(60), rad(25), rad(-30)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.75, 0.45, -0.75) * angles(rad(75), rad(0), rad(75)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,-0.5) *  angles(rad(-15), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.5,-0) *  angles(rad(-30), rad(0), rad(0)), 0.3)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(30), rad(-90), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(60), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 0.5, -0.5) * angles(rad(0), rad(-60), rad(0)) *  angles(rad(0), rad(90), rad(60)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 1, -0.5) * angles(rad(150), rad(0), rad(0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(1,-1.5,-0.5) *  angles(rad(-15), rad(0), rad(45)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-1.5,-2,-0) *  angles(rad(-15), rad(0), rad(-30)), 0.3)
						end
					elseif anim == "aslash" then	
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-30), rad(-60), rad(0)) * angles(rad(30), rad(-0), rad(0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(50), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.75, -0.25) * angles(rad(-30), rad(-10), rad(60))*  angles(rad(60), rad(0), rad(30)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,-0.5) *  angles(rad(-15), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.25,-0.45) *  angles(rad(-30), rad(0), rad(0)), 0.3)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(30), rad(75), rad(0)) * angles(rad(-30), rad(-0), rad(0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(-50), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.75, -0.25) * angles(rad(-60), rad(-30), rad(60))*  angles(rad(90), rad(0), rad(30)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,-0.5) *  angles(rad(-15), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.25,-0.45) *  angles(rad(-30), rad(0), rad(0)), 0.3)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(15), rad(115), rad(0)) * angles(rad(-30), rad(-0), rad(0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(-50), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1,0.15, -0.75) * angles(rad(-60), rad(-45), rad(60))*  angles(rad(150), rad(0), rad(0)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,-0.5) *  angles(rad(-15), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.25,-0.45) *  angles(rad(-30), rad(0), rad(0)), 0.3)
						end
					elseif anim == "adrive" then	
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-30), rad(-75), rad(0)) * angles(rad(30), rad(-0), rad(0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(75), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.75, -0.25) * angles(rad(-30), rad(-10), rad(60))*  angles(rad(60), rad(0), rad(30)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,-0.5) *  angles(rad(-15), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.25,-0.45) *  angles(rad(-30), rad(0), rad(0)), 0.3)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-10), rad(90), rad(0)) * angles(rad(-20), rad(-0), rad(0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(-90), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.75, -0.25) * angles(rad(-30), rad(-10), rad(35))*  angles(rad(60), rad(0), rad(30)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.25, -0.25) * angles(rad(75), rad(20), rad(-15)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.25,-1.75,-0.25) *  angles(rad(-30), rad(0), rad(-20)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-1,-1.15,-1) *  angles(rad(15), rad(-45), rad(-45)), 0.3)
						end
					elseif anim == "charge" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-10), rad(-0), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-20), rad(0), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(0.5,1.5, -1.25) * angles(rad(160), rad(-10), rad(-45)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.5, 1.65, -1) * angles(rad(150), rad(20), rad(65)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.625,-2,-0.25) *  angles(rad(5), rad(5), rad(7.5)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.625,-2,-0.125) *  angles(rad(10), rad(30), rad(-10)), 0.3)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(15), rad(-0), rad(-0)), 0.45)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.125) * angles(rad(20), rad(0), rad(0)), 0.45)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05)  * angles(rad(130), rad(-25), rad(75)), 0.45)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0, 0) * angles(rad(115), rad(20), rad(-60)), 0.45)
							rhw.C0 = rhw.C0:Lerp(cframe(0.625,-2,0.125) *  angles(rad(-15), rad(5), rad(7.5)), 0.45)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.625,-2,0.25) *  angles(rad(-10), rad(30), rad(-10)), 0.45)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(-0), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(0), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05) * angles(rad(-10), rad(-10), rad(20)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-2,0) *  angles(rad(-5), rad(5), rad(7.5)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-2,0.125) *  angles(rad(0), rad(30), rad(-10)), 0.3)
						end
					elseif anim == "grab" then	
						rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(15), rad(-0)), 0.3)
						nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0) * angles(rad(-0), rad(-15), rad(0)), 0.3)
						rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05) * angles(rad(-10), rad(-10), rad(20)), 0.3)
						lsw.C0 = lsw.C0:Lerp(cframe(-0.5, 0.5, -1.5) * angles(rad(90), rad(-15), rad(25)), 0.3)
						rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,-0.25) *  angles(rad(0), rad(-5), rad(15)), 0.3)
						lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-2,-0.25) *  angles(rad(5), rad(30), rad(-5)), 0.3)
					elseif anim == "graba" then	
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(25), rad(-15), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.125) * angles(rad(35), rad(15), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05) * angles(rad(-10), rad(-10), rad(20)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.75, 0, -1.25) * angles(rad(60), rad(-15), rad(0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,-0.5) *  angles(rad(-25), rad(15), rad(15)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-2,-0) *  angles(rad(-30), rad(30), rad(-5)), 0.3)
						else
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, -0.45) * angles(rad(-20), rad(-0), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.45) * angles(rad(-30), rad(0), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05) * angles(rad(-10), rad(-10), rad(20)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.75, 0.5, -1.25) * angles(rad(115), rad(15), rad(30)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,-0.5) *  angles(rad(20), rad(15), rad(15)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-2,-0.25) *  angles(rad(25), rad(30), rad(-5)), 0.3)
						end
					elseif anim == "agrab" then	
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-30), rad(0), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(0), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1 , 0.3, -0.75) * angles(rad(75), rad(25), rad(-30)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1, 0.3, -0.75) * angles(rad(75), rad(0), rad(30)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,-0.5) *  angles(rad(-15), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.25,-0.45) *  angles(rad(-30), rad(0), rad(0)), 0.3)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(-45), rad(-0)), 0.15)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.0) * angles(rad(-0), rad(45), rad(0)), 0.15)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.45, 0.05) * angles(rad(-10), rad(-10), rad(45)), 0.15)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.5, -1) * angles(rad(0), rad(-45), rad(-90)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,-0.5) *  angles(rad(-15), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.25,-0.45) *  angles(rad(-30), rad(0), rad(0)), 0.3)
						end
					elseif anim == "aiko" then
						rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(-45), rad(-0)), 0.1)
						nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(45), rad(0)), 0.1)
						rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05) * angles(rad(-10), rad(-10), rad(20)), 0.1)
						lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.1)
						rhw.C0 = rhw.C0:Lerp(cframe(0.65,-2,0) *  angles(rad(-5), rad(5), rad(7.5)), 0.1)
						lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-2,0.125) *  angles(rad(0), rad(30), rad(-10)), 0.1)
					elseif anim == "yui" then
						rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.15, 0) * angles(rad(0), rad(105), rad(-10)), 0.25)
						nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(-75), rad(0)), 0.25)
						rsw.C0 = rsw.C0:Lerp(cframe(1.5,0.15, 0.75) * angles(rad(-10), rad(-75), rad(-10)) * angles(rad(60), rad(-10), rad(10)), 0.25)
						lsw.C0 = lsw.C0:Lerp(cframe(-1.3, 0.5, -0.5) * angles(rad(90), rad(-20), rad(20)), 0.25)
						rhw.C0 = rhw.C0:Lerp(cframe(1,-1.75,-0.25) *  angles(rad(-0), rad(-40), rad(15)), 0.25)
						lhw.C0 = lhw.C0:Lerp(cframe(-0.6,-2,-0.25) *  angles(rad(-10), rad(15), rad(10)), 0.25)
					elseif anim == "ayui" then	
						rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(15), rad(-0), rad(-0)), 0.45)
						nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.125) * angles(rad(20), rad(0), rad(0)), 0.45)
						rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05)  * angles(rad(130), rad(-25), rad(75)), 0.45)
						lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0, 0) * angles(rad(115), rad(20), rad(-60)), 0.45)
						rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,0.15) *  angles(rad(-35), rad(0), rad(0)), 0.3)
						lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.75,-0.15) *  angles(rad(-15), rad(0), rad(0)), 0.3)
					elseif anim == "grenade" then
						rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, -0.5) * angles(rad(0), rad(75), rad(-10)), 0.5)
						nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(-0), rad(-75), rad(0)), 0.5)
						rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.45) * angles(rad(90), rad(-55), rad(75)) * angles(rad(30), rad(20), rad(-0)), 0.5)
						lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0, -0.15) * angles(rad(15), rad(75), rad(45)) * angles(rad(30), rad(0), rad(-0)), 0.5)
						rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1.75,-0.25) *  angles(rad(10), rad(-35), rad(15)), 0.3)
						lhw.C0 = lhw.C0:Lerp(cframe(-0.65,-2,-0.45) *  angles(rad(0), rad(10), rad(-5)), 0.3)
					elseif anim == "striker" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1.15, 0) * angles(rad(0), rad(60), rad(-30)) * angles(rad(-45), rad(0), rad(-0)), 0.15)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(-0), rad(0), rad(0)), 0.15)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5,0.75, -0.75) * angles(rad(-10), rad(-10), rad(60)) * angles(rad(90), rad(0), rad(-0)), 0.15)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.5, -0.15) * angles(rad(15), rad(20), rad(-90)) * angles(rad(60), rad(0), rad(-0)), 0.15)
							rhw.C0 = rhw.C0:Lerp(cframe(0.25, -1.75, 0.5) *  angles(rad(0), rad(-60), rad(-20)) * angles(rad(-20), rad(0), rad(-0)), 0.15)
							lhw.C0 = lhw.C0:Lerp(cframe(0, -0.5, -1) *  angles(rad(-25), rad(-60), rad(-60)), 0.15)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1.5, -0.5) * angles(rad(0), rad(75), rad(-10)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(-0), rad(-75), rad(0)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0, 0.25) * angles(rad(90), rad(-55), rad(75)) * angles(rad(-30), rad(45), rad(-0)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0, -0.15) * angles(rad(15), rad(75), rad(45)) * angles(rad(30), rad(0), rad(-0)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-0.65,-0.5) *  angles(rad(0), rad(-20), rad(-10)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.15,0) *  angles(rad(-75), rad(0), rad(0)), 0.3)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-30), rad(-180), rad(0)), 0.2)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(75), rad(0)), 0.2)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0, 0.45) * angles(rad(60), rad(-30), rad(20)), 0.2)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.45, 1.75, 0.25) * angles(rad(150), rad(0), rad(0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5, -1.25, 0) *  angles(rad(-60), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.6,0) *  angles(rad(0), rad(75), rad(-15)), 0.3)
						elseif frame == 4 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-0), rad(-180), rad(0)) * angles(rad(60), rad(-45), rad(-0)), 0.2)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(45), rad(0)), 0.2)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0, 0.45) * angles(rad(60), rad(-60), rad(45)), 0.2)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.25, 1, -0.5) * angles(rad(105), rad(-30), rad(15)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75, -1.25, 0.75) *  angles(rad(-75), rad(0), rad(30)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5, -1.5, 0.25) *  angles(rad(-60), rad(0), rad(0)), 0.3)
						elseif frame == 5 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-60), rad(0), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(0), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1 , 0.15, -0.75) * angles(rad(60), rad(25), rad(-30)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.75, 0.45, -0.75) * angles(rad(75), rad(0), rad(75)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,-0.5) *  angles(rad(-15), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.25,-0.45) *  angles(rad(-30), rad(0), rad(0)), 0.3)
						end
					elseif anim == "strikerk" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-45), rad(90), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(0), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 1, 0) * angles(rad(0), rad(-30), rad(90)) * angles(rad(75), rad(60), rad(0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.5, -0.5) * angles(rad(90), rad(-30), rad(0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-1.75,-0.25) *  angles(rad(-45), rad(-20), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-1.5,-0.75) *  angles(rad(45), rad(0), rad(-30)), 0.3)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-20), rad(180), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(15), rad(0), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.25 , 1.5, -1) * angles(rad(0), rad(-30), rad(90)) * angles(rad(75), rad(-45), rad(0)) * angles(rad(90), rad(0), rad(-0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 1, 0.5) * angles(rad(90), rad(-90), rad(0)) * angles(rad(-150), rad(0), rad(-0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,0.25) *  angles(rad(-45), rad(-0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-0,-1.5) *  angles(rad(135), rad(0), rad(-0)), 0.3)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-20), rad(270), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.15) * angles(rad(-15), rad(30), rad(20)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75,1, -0.75) * angles(rad(0), rad(-30), rad(90)) * angles(rad(75), rad(-45), rad(0)) * angles(rad(30), rad(15), rad(-30)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.75, 0.5, 0.25) * angles(rad(90), rad(-90), rad(0)) * angles(rad(-60), rad(120), rad(-0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0,-1.75,0.25) *  angles(rad(-45), rad(35), rad(-30)) * angles(rad(30), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,1.75,-1.25) *  angles(rad(180), rad(0), rad(30)), 0.3)
						elseif frame == 4 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(10), rad(315), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(45), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75,1, -0.75) * angles(rad(0), rad(-30), rad(90)) * angles(rad(75), rad(-45), rad(0)) * angles(rad(30), rad(15), rad(-30)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.25, 1.5, -0.25) * angles(rad(90), rad(-90), rad(0)) * angles(rad(-60), rad(120), rad(-0)) * angles(rad(90), rad(0), rad(75)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.25,0.45) *  angles(rad(-75), rad(-20), rad(-10)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.45,-2,0.15) *  angles(rad(-25), rad(0), rad(10)), 0.3)
						end
					elseif anim == "tyrant" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1.15, 0) * angles(rad(-10), rad(-60), rad(30)) * angles(rad(-25), rad(0), rad(-0)), 0.15)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(-20), rad(30), rad(0)), 0.15)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75,0.25, -0.75) * angles(rad(-10), rad(-10), rad(60)) * angles(rad(90), rad(-25), rad(-0)), 0.15)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.65, 1.15, -0.3) * angles(rad(15), rad(-60), rad(-90)) * angles(rad(45), rad(0), rad(-0)), 0.15)
							rhw.C0 = rhw.C0:Lerp(cframe(-0.25,-0.6,-1.15) *  angles(rad(-45), rad(75), rad(30)) *  angles(rad(0), rad(0), rad(20)), 0.15)
							lhw.C0 = lhw.C0:Lerp(cframe(0, -2, 0.5) *  angles(rad(-30), rad(60), rad(30)) *  angles(rad(0), rad(60), rad(0)), 0.15)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-15), rad(15), rad(0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-15), rad(0), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 1, 0) * angles(rad(15), rad(0), rad(90)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.5, -0.25) * angles(rad(90), rad(-30), rad(0)) * angles(rad(-60), rad(-30), rad(-0)) * angles(rad(-15), rad(0), rad(-30)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.45,-0.5) *  angles(rad(-35), rad(-15), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.85,-2,-0.25) *  angles(rad(0), rad(30), rad(-20)), 0.3)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, -0.5) * angles(rad(0), rad(105), rad(-10)) * angles(rad(10), rad(0), rad(-0)), 0.45)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.45, -0.25) * angles(rad(0), rad(-45), rad(0)) * angles(rad(0), rad(0), rad(20)), 0.45)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.45) * angles(rad(90), rad(-55), rad(75)) * angles(rad(60), rad(20), rad(-0)), 0.45)
							lsw.C0 = lsw.C0:Lerp(cframe(-2, 0, -0.15) * angles(rad(15), rad(75), rad(45)) * angles(rad(60), rad(-30), rad(-0)), 0.45)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,-0.25) *  angles(rad(-30), rad(-25), rad(-15)), 0.45)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.65,-0.25,-1.5) *  angles(rad(120), rad(10), rad(-5)), 0.45)
						end
					elseif anim == "redstar" then
						rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1, -0.5) * angles(rad(0), rad(105), rad(-10)), 0.5)
						nkw.C0 = nkw.C0:Lerp(cframe(0.15, 1.5, -0.15) * angles(rad(-0), rad(-105), rad(0)) * angles(rad(-20), rad(-0), rad(-0)), 0.5)
						rsw.C0 = rsw.C0:Lerp(cframe(1.75,0.75, 0.45) * angles(rad(90), rad(-55), rad(75)) * angles(rad(45), rad(15), rad(15)), 0.5)
						lsw.C0 = lsw.C0:Lerp(cframe(-1.5, -0.25, -0) * angles(rad(15), rad(75), rad(45)) * angles(rad(30), rad(-10), rad(-0)), 0.5)
						rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1,-0.45) *  angles(rad(10), rad(-45), rad(15)), 0.5)
						lhw.C0 = lhw.C0:Lerp(cframe(-1.25,-1.25,-0.3) *  angles(rad(0), rad(10), rad(-45)), 0.5)
					elseif anim == "vortex" then	
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1.75, 0) * angles(rad(-55), rad(-20), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.3) * angles(rad(20), rad(30), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.25, 1, -1) * angles(rad(0), rad(20), rad(-0)) * angles(rad(150), rad(0), rad(-0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(0.15, 1, -0.5) * angles(rad(0), rad(20), rad(0)) * angles(rad(120), rad(-90), rad(-15)) * angles(rad(90), rad(0), rad(-0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.25,0) *  angles(rad(-60), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5, -2, 0.75) *  angles(rad(-30), rad(-30), rad(0)), 0.3)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(-1.5,-1.25, -0) * angles(rad(0), rad(-90), rad(-10)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-20), rad(-30), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(0.75, 0.5, -1) * angles(rad(90), rad(45), rad(-0)) * angles(rad(45), rad(0), rad(-45)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1, 0, -1) * angles(rad(90), rad(0), rad(60)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-0.75,-0.25) *  angles(rad(10), rad(-45), rad(15)) * angles(rad(-30), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-1,-1.25,0.45) *  angles(rad(0), rad(10), rad(-60)) * angles(rad(-60), rad(0), rad(0)), 0.3)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1.5, -0) * angles(rad(0), rad(-60), rad(10)), 1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(-0), rad(45), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.55 , 1, 0.25) * angles(rad(0), rad(0), rad(105)) * angles(rad(-30), rad(0), rad(0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.25, 0.25) * angles(rad(0), rad(30), rad(-30)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-0.65,-0.5) *  angles(rad(0), rad(-20), rad(-10)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.15,0) *  angles(rad(-75), rad(0), rad(0)), 0.3)
						end
					elseif anim == "shade" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.45, 0) * angles(rad(0), rad(-135), rad(-0)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-25), rad(25), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05) * angles(rad(-10), rad(-10), rad(20)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-1, 0.75, -0.75) * angles(rad(90), rad(0), rad(75)) *  angles(rad(45), rad(0), rad(0)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.45,-1.5,-0.35) *  angles(rad(-25), rad(5), rad(0)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-1.5,-0.125) *  angles(rad(0), rad(35), rad(-30)), 0.1)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1.5, -0) * angles(rad(0), rad(30), rad(0)), 1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.5) * angles(rad(-30), rad(-15), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.15, 0.5, -0.75) * angles(rad(0), rad(90), rad(90)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.75, 0.5, -1) * angles(rad(90), rad(0), rad(60)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.15,0) *  angles(rad(-75), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-0.65,-0.5) *  angles(rad(-0), rad(20), rad(-0)), 0.3)
						end
					elseif anim == "summon" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.45, 0) * angles(rad(0), rad(-135), rad(-0)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-25), rad(25), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05) * angles(rad(-10), rad(-10), rad(20)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 1.75, -0.25) * angles(rad(90), rad(0), rad(75)) *  angles(rad(90), rad(-30), rad(0)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.45,-1.5,-0.35) *  angles(rad(-25), rad(5), rad(0)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-1.5,-0.125) *  angles(rad(0), rad(35), rad(-30)), 0.1)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1, -0.5) * angles(rad(0), rad(105), rad(-10)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0.15, 1.5, -0.15) * angles(rad(-0), rad(-105), rad(0)) * angles(rad(-20), rad(-0), rad(-0)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75,0.75, 0.45) * angles(rad(90), rad(-55), rad(75)) * angles(rad(45), rad(15), rad(15)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, -0.25, -0) * angles(rad(15), rad(75), rad(45)) * angles(rad(30), rad(-10), rad(-0)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1,-0.45) *  angles(rad(10), rad(-45), rad(15)), 0.5)
							lhw.C0 = lhw.C0:Lerp(cframe(-1.25,-1.25,-0.3) *  angles(rad(0), rad(10), rad(-45)), 0.5)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.3, 0) * angles(rad(0), rad(-45), rad(-0)), 0.15)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.0) * angles(rad(-0), rad(45), rad(0)), 0.15)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.45, 0.05) * angles(rad(-10), rad(-10), rad(45)), 0.15)
							lsw.C0 = lsw.C0:Lerp(cframe(-1, 0.5, -1) * angles(rad(0), rad(-135), rad(-90)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1.75,-0.25) *  angles(rad(10), rad(-35), rad(15)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.65,-1.75,-0.45) *  angles(rad(0), rad(10), rad(-5)), 0.3)
						elseif frame == 4 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, 0) * angles(rad(0), rad(-45), rad(-0)), 0.15)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.0) * angles(rad(-0), rad(45), rad(0)), 0.15)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.45, 0.05) * angles(rad(-10), rad(-10), rad(45)), 0.15)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.5, -1) * angles(rad(0), rad(-45), rad(-90)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1.75,-0.25) *  angles(rad(10), rad(-35), rad(15)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.65,-1.75,-0.45) *  angles(rad(0), rad(10), rad(-5)), 0.3)
						end
					elseif anim == "fang" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, 0) * angles(rad(0), rad(60), rad(10)), 0.15)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(-0), rad(0), rad(0)), 0.15)
							rsw.C0 = rsw.C0:Lerp(cframe(2 , 1, -0.5) * angles(rad(90), rad(30), rad(45)), 0.15)
							lsw.C0 = lsw.C0:Lerp(cframe(-2, 0.5, 0.5) * angles(rad(90), rad(0), rad(-105)) * angles(rad(-20), rad(0), rad(-0)), 0.15)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-2,0) *  angles(rad(0), rad(-60), rad(0)) * angles(rad(-10), rad(0), rad(-0)), 0.15)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-1.65,0.75) *  angles(rad(0), rad(-52.5), rad(0)) * angles(rad(-20), rad(0), rad(-0)), 0.5)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(-45), rad(-0)) * angles(rad(-10), rad(0), rad(20)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(45), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5, 0.5, 0.25) * angles(rad(0), rad(90), rad(90)) * angles(rad(-50), rad(-15), rad(-15)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 1, -1) * angles(rad(0), rad(-45), rad(-105)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(-0.25,-1.75,-0.75) *  angles(rad(-15), rad(45), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(0.25, -1.75, 1) *  angles(rad(-45), rad(0), rad(30)) *  angles(rad(0), rad(30), rad(0)), 0.3)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-15), rad(15), rad(0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-15), rad(0), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.15 , 1.5, 0) * angles(rad(15), rad(0), rad(90)) * angles(rad(0), rad(0), rad(75)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.5, -0.25) * angles(rad(90), rad(-30), rad(0)) * angles(rad(-60), rad(-30), rad(-0)) * angles(rad(-15), rad(0), rad(-30)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.45,-0.5) *  angles(rad(-35), rad(-15), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.85,-2,-0.25) *  angles(rad(0), rad(30), rad(-20)), 0.3)
						elseif frame == 4 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, 0) * angles(rad(15), rad(115), rad(0)) * angles(rad(-30), rad(-0), rad(0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.35, -0.45) * angles(rad(-30), rad(-50), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1,0.15, -0.75) * angles(rad(-60), rad(-45), rad(60))*  angles(rad(150), rad(0), rad(0)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-1.875,-0.75) *  angles(rad(35), rad(-15), rad(-5)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-1.3,-1) *  angles(rad(30), rad(30), rad(-10)), 0.3)
						elseif frame == 5 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.3, 0) * angles(rad(0), rad(110), rad(7.5)) * angles(rad(-15), rad(0), rad(-0)), 0.15)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(-15), rad(0)), 0.15)
							rsw.C0 = rsw.C0:Lerp(cframe(1.25, 0.5, -0.75) * angles(rad(0), rad(45), rad(90)) * angles(rad(60), rad(0), rad(-0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0, 0) * angles(rad(135), rad(0), rad(0)), 0.15)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1.65,-0.25) *  angles(rad(-20), rad(10), rad(20)), 0.15)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.5,-0.75) *  angles(rad(10), rad(0), rad(-10)), 0.15)
						elseif frame == 6 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.15, 0) * angles(rad(0), rad(45), rad(-10)), 0.25)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(-30), rad(0)), 0.25)
							rsw.C0 = rsw.C0:Lerp(cframe(1.25, 0.5, -0.75) * angles(rad(0), rad(45), rad(90)) * angles(rad(60), rad(-30), rad(-0)), 0.25)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.35, 0.45, -0.5) * angles(rad(135), rad(-75), rad(30)), 0.25)
							rhw.C0 = rhw.C0:Lerp(cframe(1,-1.75,-0.45) *  angles(rad(0), rad(0), rad(30)), 0.25)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-2,-0.75) *  angles(rad(0), rad(0), rad(-10)), 0.25)
						elseif frame == 7 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.15, 0) * angles(rad(0), rad(-45), rad(10)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(30), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.75, 0.25) * angles(rad(-10), rad(30), rad(105)) * angles(rad(-30), rad(-30), rad(15)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.45, 1.75, -1.25) * angles(rad(150), rad(-75), rad(0)) * angles(rad(-30), rad(0), rad(-0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(-0.25,-1.75,-0.75) *  angles(rad(10), rad(45), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(0.25, -1.75, 1) *  angles(rad(-45), rad(0), rad(30)) *  angles(rad(20), rad(30), rad(-15)), 0.3)
						end
					elseif anim == "zero" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1.5, -0) * angles(rad(-60), rad(-0), rad(-0)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.5) * angles(rad(-30), rad(-15), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.5, 0.05) * angles(rad(-10), rad(-10), rad(60)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-60)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,0.25,-0.75) *  angles(rad(45), rad(-0), rad(0)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.5,-0.25) *  angles(rad(-45), rad(0), rad(-0)), 0.1)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.5, 0) * angles(rad(-30), rad(-0), rad(-0)), 0.2)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(-0), rad(0), rad(0)), 0.2)
							rsw.C0 = rsw.C0:Lerp(cframe(0.5 , 0.5, -1.5) * angles(rad(90), rad(0), rad(-30)), 0.2)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.5, 0.25, -1.25) * angles(rad(60), rad(0), rad(30)), 0.2)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1,-1) *  angles(rad(30), rad(-30), rad(0)), 0.2)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1,-1) *  angles(rad(30), rad(0), rad(0)), 0.2)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0+(25*jin)), rad(0), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.25) * angles(rad(30), rad(0), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(0.45, 0.5, -1) * angles(rad(135), rad(0), rad(-0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.25, 0.15, -1.5) * angles(rad(90), rad(-45), rad(45)) *  angles(rad(60), rad(0), rad(-15)) *  angles(rad(0), rad(-10), rad(0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.15,0.75) *  angles(rad(-90), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.15,0.75) *  angles(rad(-90), rad(0), rad(0)), 0.3)
						elseif frame == 4 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.45, 0) * angles(rad(-15), rad(45), rad(0)), 0.125)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-15), rad(-30), rad(0)), 0.125)
							rsw.C0 = rsw.C0:Lerp(cframe(1.25 , 1, -1) * angles(rad(15), rad(0), rad(90)) * angles(rad(105), rad(0), rad(-30)), 0.125)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.5, 1) * angles(rad(90), rad(-30), rad(0)) * angles(rad(-60), rad(-30), rad(-0)) * angles(rad(-15), rad(0), rad(-30)), 0.125)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.3,-0.15) *  angles(rad(-60), rad(-15), rad(0)), 0.125)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.85,-1.75,-0.25) *  angles(rad(0), rad(30), rad(-20)), 0.125)
						elseif frame == 5 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(-45), rad(-0)) * angles(rad(-10), rad(0), rad(20)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(45), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5, 0.5, 0.25) * angles(rad(0), rad(90), rad(90)) * angles(rad(-50), rad(-35), rad(-15)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 1, -1) * angles(rad(0), rad(-45), rad(-105)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(-0.5, -2, -1) *  angles(rad(-15), rad(45), rad(4)) * angles(rad(30), rad(30), rad(-0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.25, -2.15, 0.75) *  angles(rad(0), rad(150), rad(0)), 0.3)
						elseif frame == 6 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1, 0) * angles(rad(0), rad(-45), rad(15)) * angles(rad(-30), rad(0), rad(20)), 0.125)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(45), rad(0)), 0.125)
							rsw.C0 = rsw.C0:Lerp(cframe(2, 0.25, -0.45) * angles(rad(0), rad(90), rad(90)) * angles(rad(-50), rad(-45), rad(-45)) * angles(rad(-30), rad(0), rad(-0)), 0.125)
							lsw.C0 = lsw.C0:Lerp(cframe(-1, 1, -1) * angles(rad(0), rad(-45), rad(-105)) * angles(rad(60), rad(0), rad(-0)), 0.125)
							rhw.C0 = rhw.C0:Lerp(cframe(0,-1,-1) *  angles(rad(15), rad(45), rad(-15)) * angles(rad(-20), rad(0), rad(-0)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.25, -2, 0.25) *  angles(rad(-30), rad(30), rad(-0)) * angles(rad(0), rad(0), rad(30)), 0.1)
						elseif frame == 7 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1, -0.5) * angles(rad(0), rad(105), rad(-10)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0.15, 1.5, -0.15) * angles(rad(-0), rad(-105), rad(0)) * angles(rad(-20), rad(-0), rad(-0)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.45) * angles(rad(90), rad(-55), rad(75)) * angles(rad(30), rad(20), rad(-0)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, -0.25, -0) * angles(rad(15), rad(75), rad(45)) * angles(rad(30), rad(-10), rad(-0)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1,-0.45) *  angles(rad(10), rad(-45), rad(15)), 0.5)
							lhw.C0 = lhw.C0:Lerp(cframe(-1.25,-1.25,-0.3) *  angles(rad(0), rad(10), rad(-45)), 0.5)
						elseif frame == 8 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, -0.5) * angles(rad(0), rad(90), rad(-10)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(-0.25, 1.5, 0) * angles(rad(-0), rad(-75), rad(0)) * angles(rad(30), rad(0), rad(-0)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,1.5, 0.45) * angles(rad(90), rad(-55), rad(75)) * angles(rad(30), rad(20), rad(-0)) * angles(rad(150), rad(15), rad(-0)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0, -0.15) * angles(rad(15), rad(75), rad(45)) * angles(rad(30), rad(-30), rad(-0)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1.75,-0.25) *  angles(rad(10), rad(-35), rad(15)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.65,-2,-0.45) *  angles(rad(0), rad(10), rad(-5)), 0.3)
						end
					elseif anim == "fatal" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.15, 0) * angles(rad(0), rad(-135), rad(-0)) * angles(rad(-15), rad(-0), rad(10)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(-0.25, 1.5, -0.3) * angles(rad(-0), rad(45), rad(0)) * angles(rad(-30), rad(0), rad(-0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 0, -0.5) * angles(rad(0), rad(30), rad(-0)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.75, 0, -0.75) * angles(rad(0), rad(-45), rad(0)) * angles(rad(90), rad(-60), rad(-0)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(-0.5,-1.75,-0.75) *  angles(rad(20), rad(45), rad(-10)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(0.25,-2,-0.25) *  angles(rad(20), rad(45), rad(25)), 0.1)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, -0.5) * angles(rad(0), rad(-105), rad(-0)) * angles(rad(15), rad(-0), rad(10)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(-0, 1.5, -0.3) * angles(rad(-0), rad(15), rad(0)) * angles(rad(-30), rad(0), rad(-0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 0.3, 0.25) * angles(rad(0), rad(-30), rad(30)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 1.5, -0.75) * angles(rad(180), rad(15), rad(0)) * angles(rad(-15), rad(20), rad(-20)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,0) *  angles(rad(-5), rad(0), rad(15)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-1,-1.75,-0.25) *  angles(rad(-10), rad(15), rad(-20)), 0.3)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, 0) * angles(rad(-35), rad(-0), rad(-0)), 0.2)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-30), rad(0), rad(0)), 0.2)
							rsw.C0 = rsw.C0:Lerp(cframe(0.75, 0.75, -1) * angles(rad(90), rad(90), rad(-30)) * angles(rad(60), rad(0), rad(-0)), 0.2)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.25, 0.5, -0.75) * angles(rad(90), rad(-90), rad(30)) * angles(rad(45), rad(0), rad(15)), 0.2)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1.35,-1) *  angles(rad(35), rad(-30), rad(10)), 0.2)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.5,-0.75) *  angles(rad(15), rad(0), rad(0)), 0.2)
						elseif frame == 4 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.75, 1.5) * angles(rad(45), rad(-0), rad(-0)), 0.115)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.125) * angles(rad(30), rad(0), rad(0)), 0.115)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05)  * angles(rad(130), rad(-25), rad(75)), 0.115)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0, 0) * angles(rad(115), rad(20), rad(-60)), 0.115)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1.65,0.125) *  angles(rad(-45), rad(5), rad(15)), 0.115)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.625,-1.75,0.125) *  angles(rad(-45), rad(30), rad(-10)), 0.115)
						elseif frame == 5 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.3, 0) * angles(rad(0), rad(-45), rad(-0)) * angles(rad(-0), rad(0), rad(15)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.15) * angles(rad(0), rad(45), rad(-10)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5, 1, 0.25) * angles(rad(90), rad(90), rad(-0)) * angles(rad(-75), rad(0), rad(75)) * angles(rad(-30), rad(-30), rad(-30)) * angles(rad(-30), rad(0), rad(-0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.75, 0.5, -0.75) * angles(rad(0), rad(-45), rad(0)) * angles(rad(0), rad(0), rad(-75)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,0.25) *  angles(rad(0), rad(50), rad(0)) * angles(rad(-15), rad(-15), rad(-10)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-1.15,-1.5,-0.45) *  angles(rad(10), rad(45), rad(-15)) * angles(rad(10), rad(0), rad(-10)), 0.3)
						elseif frame == 6 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, -0.5) * angles(rad(0), rad(90), rad(-10)), 1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(-0), rad(-75), rad(0)), 1)
							rsw.C0 = rsw.C0:Lerp(cframe(2,0.25, 0.15) * angles(rad(90), rad(-55), rad(75)) * angles(rad(65), rad(20), rad(-10)), 1)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0, -0.15) * angles(rad(15), rad(75), rad(45)) * angles(rad(30), rad(0), rad(-0)), 1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1.75,-0.25) *  angles(rad(10), rad(-35), rad(15)), 1)
							lhw.C0 = lhw.C0:Lerp(cframe(-1,-1.85,-0.45) *  angles(rad(0), rad(10), rad(-25)), 1)
						elseif frame == 7 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.75, 0.45) * angles(rad(45), rad(-0), rad(-0)), 0.115)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.125) * angles(rad(30), rad(0), rad(0)), 0.115)
							rsw.C0 = rsw.C0:Lerp(cframe(1.25 ,0, 0.5)  * angles(rad(130), rad(-25), rad(150)), 0.115)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0, 0.45) * angles(rad(115), rad(20), rad(-120)), 0.115)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1.65,0.125) *  angles(rad(-45), rad(5), rad(15)), 0.115)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.625,-1.75,0.125) *  angles(rad(-45), rad(30), rad(-10)), 0.115)
						elseif frame == 8 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.5, -0) * angles(rad(-60), rad(-0), rad(-0)), 1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0) * angles(rad(-30), rad(-15), rad(0)), 1)
							rsw.C0 = rsw.C0:Lerp(cframe(0.45,1.5, -1.15) * angles(rad(150), rad(90), rad(0)) * angles(rad(30), rad(0), rad(-0)), 1)
							lsw.C0 = lsw.C0:Lerp(cframe(-0,1.25, -1.6) * angles(rad(150), rad(-90), rad(-0)) * angles(rad(45), rad(0), rad(-0)), 1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-0.75,-1.25) *  angles(rad(45), rad(-0), rad(0)), 1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.75,-0.75) *  angles(rad(15), rad(0), rad(-0)), 1)
						elseif frame == 9 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(-45), rad(-15)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(45), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.5, 0.25) * angles(rad(0), rad(0), rad(90)) * angles(rad(-30), rad(0), rad(0)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-2, 0.3, 0) * angles(rad(0), rad(0), rad(-60)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,0) *  angles(rad(-5), rad(5), rad(15)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-2,0.125) *  angles(rad(0), rad(30), rad(-10)), 0.1)
						elseif frame == 10 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(-45), rad(-20)) * angles(rad(0), rad(-45+(45*jin)), rad(0)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0.25, 1.5, -0.125) * angles(rad(-10), rad(-0), rad(-20)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.5, 0.25) * angles(rad(0), rad(0), rad(90)) * angles(rad(-30), rad(0), rad(0)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-2, 0.3, 0) * angles(rad(0), rad(0), rad(-60)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(1,-2,-0.15) *  angles(rad(5), rad(5), rad(30)), 0.5)
							lhw.C0 = lhw.C0:Lerp(cframe(-1,-2,-0.15) *  angles(rad(5), rad(5), rad(-30)), 0.5)
						end
					elseif anim == "saz" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, -0.5) * angles(rad(0), rad(-105), rad(-0)) * angles(rad(15), rad(-0), rad(10)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0.15, 1.5, -0) * angles(rad(-0), rad(90), rad(0)) * angles(rad(30), rad(0), rad(-0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 0.3, 0.25) * angles(rad(0), rad(-30), rad(30)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 2, -0.75) * angles(rad(180), rad(15), rad(0)) * angles(rad(-0), rad(-30), rad(15)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,-0.25) *  angles(rad(-5), rad(0), rad(15)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-1,-1.75,-0.25) *  angles(rad(-10), rad(15), rad(-20)), 0.3)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(10), rad(0), rad(-0)), 0.15)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.25) * angles(rad(30), rad(0), rad(0)), 0.15)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 0, 0.5) * angles(rad(-45), rad(0), rad(-0)), 0.15)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0, 0.5) * angles(rad(-45), rad(0), rad(0)), 0.15)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,0.15) *  angles(rad(-35), rad(0), rad(0)), 0.15)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.75,-0.15) *  angles(rad(-15), rad(0), rad(0)), 0.15)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-10), rad(90), rad(-0)) * angles(rad(10), rad(0), rad(0)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(10), rad(-30), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(2, 1, 0) * angles(rad(0), rad(0), rad(75)) * angles(rad(-0), rad(30), rad(0)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.25, 0.75, -0.5) * angles(rad(90), rad(-90), rad(0))* angles(rad(-0), rad(0), rad(-30)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.675,-1.45,0.2) *  angles(rad(-60), rad(-30), rad(0)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.45,-1.75,-0.15) *  angles(rad(-30), rad(30), rad(0))* angles(rad(10), rad(0), rad(15)), 0.1)
						elseif frame == 4 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, 0) * angles(rad(0), rad(-45), rad(-0)) * angles(rad(-20), rad(0), rad(20)), 0.75)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-20), rad(45), rad(0)), 0.75)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.45, 0.05) * angles(rad(-10), rad(-10), rad(45)), 0.75)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.75, 0.75, -1) * angles(rad(90), rad(-0), rad(-30)) * angles(rad(-0), rad(-60), rad(0)), 0.75)
							rhw.C0 = rhw.C0:Lerp(cframe(0.45,-1.75,-0.25) *  angles(rad(10), rad(-35), rad(-15)), 0.75)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.45,0.15) *  angles(rad(0), rad(45), rad(-5)) * angles(rad(-45), rad(0), rad(0)), 0.75)
						end
					elseif anim == "overdrive" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, 0) * angles(rad(0), rad(-105), rad(-0)), 0.05)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-25), rad(60), rad(0)) * angles(rad(-0), rad(0), rad(5)), 0.05)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,-0.15, 0.25) * angles(rad(-10), rad(-25), rad(10)), 0.05)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.75, 1.75, -0) * angles(rad(90), rad(0), rad(75)) *  angles(rad(90), rad(-105), rad(15)), 0.05)
							rhw.C0 = rhw.C0:Lerp(cframe(1,-1.75,-0.5) *  angles(rad(0), rad(15), rad(0)) *  angles(rad(0), rad(0), rad(25)), 0.05)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-1.75,-0.15) *  angles(rad(0), rad(60), rad(0)), 0.05)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(10), rad(-0), rad(-0)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.15) * angles(rad(30), rad(0), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.25, 1.75, -0.25) * angles(rad(170), rad(0), rad(-10)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.25, 1.75, -0.25) * angles(rad(170), rad(0), rad(10)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-2,0) *  angles(rad(-15), rad(5), rad(7.5)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-2,0.125) *  angles(rad(-10), rad(30), rad(-10)), 0.1)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.45, 0) * angles(rad(20), rad(-0), rad(-0)), 0.75)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.15) * angles(rad(40), rad(0), rad(0)), 0.75)
							rsw.C0 = rsw.C0:Lerp(cframe(1.45 ,-0.15, 0.25)  * angles(rad(130), rad(-25), rad(30)), 0.75)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.75, -0.45, 0.15) * angles(rad(115), rad(30), rad(-15)) *  angles(rad(30), rad(0), rad(-15)), 0.75)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-1.65,-0.125) *  angles(rad(-25), rad(5), rad(7.5)), 0.75)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-1.75,-0.125) *  angles(rad(-20), rad(30), rad(-10)), 0.75)
						end
					elseif anim == "nightmare" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(-60), rad(-0)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-20), rad(60), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.25, 0.5) * angles(rad(-10), rad(0), rad(10)) * angles(rad(-25), rad(0), rad(20)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.25, 0.25, -0.75) * angles(rad(105), rad(35), rad(0)) * angles(rad(-30), rad(0), rad(45)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,0) *  angles(rad(-5), rad(-15), rad(7.5)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-2,-0.125) *  angles(rad(10), rad(60), rad(-10)), 0.1)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(45), rad(-0)), 0.75)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.125) * angles(rad(0), rad(-45), rad(0)) * angles(rad(20), rad(0), rad(-0)), 0.75)
							rsw.C0 = rsw.C0:Lerp(cframe(2 ,1.75, 0.15) * angles(rad(90), rad(0), rad(45)) * angles(rad(105), rad(0), rad(-15)), 0.75)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.75)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,-0.25) *  angles(rad(-0), rad(-45), rad(0)) * angles(rad(0), rad(0), rad(-0)), 0.75)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-2,0.125) *  angles(rad(0), rad(60), rad(-10)), 0.75)	
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1.5, -0) * angles(rad(0), rad(-30), rad(0)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-30), rad(15- 30 * sin(sine / 12.5)), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05) * angles(rad(-10), rad(-10), rad(20)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.75, 0.75, -0.75) * angles(rad(90), rad(0), rad(75)) *  angles(rad(45- 5 * sin(sine / 12.5)), rad(0), rad(0)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.625,-1,0.15) *  angles(rad(-75), rad(0), rad(0)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-0.65,-0.5) *  angles(rad(-0), rad(20), rad(-0)), 0.1)
						elseif frame == 4 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(-15), rad(-0)), 0.45)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-20), rad(15), rad(0)), 0.45)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.25, -0.5) * angles(rad(-10), rad(0), rad(10)) * angles(rad(45), rad(0), rad(-20)), 0.45)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.75, 0.25, -0.15) * angles(rad(105), rad(35), rad(0)) * angles(rad(-75), rad(0), rad(-45)) * angles(rad(0), rad(0), rad(-30)), 0.45)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,0) *  angles(rad(-5), rad(-15), rad(7.5)), 0.45)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-2,-0.125) *  angles(rad(10), rad(60), rad(-10)), 0.45)
						end
					elseif anim == "nightmarea" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, 0) * angles(rad(-15), rad(30), rad(-0)), 0.2)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-30), rad(0), rad(0)), 0.2)
							rsw.C0 = rsw.C0:Lerp(cframe(0.25, 0.75, -1) * angles(rad(90), rad(90), rad(-30)) * angles(rad(45), rad(30), rad(-0)), 0.2)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.25, 0.5, -0.75) * angles(rad(90), rad(-90), rad(30)) * angles(rad(30), rad(0), rad(15)), 0.2)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1.35,-1) *  angles(rad(15), rad(-30), rad(10)), 0.2)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.5,-0.75) *  angles(rad(0), rad(0), rad(0)), 0.2)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-15), rad(-60), rad(-0)) * angles(rad(-0), rad(0), rad(-10)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(0), rad(30), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.85, 0.35, -0.45) * angles(rad(0), rad(55), rad(35)) * angles(rad(-15), rad(-15), rad(0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.15, -0.15, -1) * angles(rad(90), rad(0), rad(60)) * angles(rad(-20), rad(25), rad(35)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(1.15,-2,-0.15) *  angles(rad(0), rad(52.5), rad(0)) * angles(rad(-30), rad(0), rad(10)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-2,-0.45) *  angles(rad(10), rad(25), rad(-15)), 0.3)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.25, -0.5) * angles(rad(0), rad(55), rad(0)) * angles(rad(-15), rad(0), rad(0)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0) * angles(rad(-0), rad(-55), rad(0)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(0.75,0.75, -1.25) * angles(rad(90), rad(90), rad(0)) * angles(rad(15), rad(-0), rad(-0)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-2.15, 0.25, 0.5) * angles(rad(15), rad(20), rad(-45)) * angles(rad(-20), rad(-20), rad(-15)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,-0.45) *  angles(rad(15), rad(-45), rad(10)), 0.5)
							lhw.C0 = lhw.C0:Lerp(cframe(-1,-2,-0.3) *  angles(rad(-20), rad(-35), rad(-20)) * angles(rad(0), rad(-0), rad(-10)), 0.5)
						elseif frame == 4 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.15, 0) * angles(rad(0), rad(75), rad(0)) * angles(rad(20), rad(0), rad(-10)), 0.45)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(-0), rad(-75), rad(0)), 0.45)
							rsw.C0 = rsw.C0:Lerp(cframe(1.15, 1, -1.5) * angles(rad(0), rad(90), rad(90)) * angles(rad(0), rad(-45), rad(30)) * angles(rad(30), rad(30), rad(-30)) *  angles(rad(-0), rad(-15), rad(-0)), 0.45)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.75, 0, 0.5) * angles(rad(15), rad(0), rad(-20)) *  angles(rad(-55), rad(0), rad(-0)), 0.45)
							rhw.C0 = rhw.C0:Lerp(cframe(1.25,-1.75,0.25) *  angles(rad(15), rad(-60), rad(45)), 0.45)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-2.15,0.15) *  angles(rad(-10), rad(45), rad(-15)) *  angles(rad(-10), rad(-7.5), rad(-0)), 0.45)
						elseif frame == 5 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.5, 0) * angles(rad(-10), rad(-25), rad(10)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(30), rad(10)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 , 0, 0.15) * angles(rad(0), rad(0), rad(60)) * angles(rad(-30), rad(-10), rad(-15)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0, 0.5) * angles(rad(0), rad(-15), rad(-30)) * angles(rad(-45), rad(0), rad(0)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1.85,0.75) *  angles(rad(0), rad(30), rad(0)) *  angles(rad(-20), rad(0), rad(-5)), 0.5)
							lhw.C0 = lhw.C0:Lerp(cframe(-1,-1.25,-0.75) *  angles(rad(0), rad(30), rad(-10)) *  angles(rad(20), rad(0), rad(2.5)), 0.5)
						elseif frame == 6 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.3, 0) * angles(rad(0), rad(-45), rad(-0)) * angles(rad(-0), rad(0), rad(15)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.15) * angles(rad(0), rad(45), rad(-10)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75, 0.25, -0.5) * angles(rad(90), rad(-90), rad(-0)) * angles(rad(45), rad(0), rad(10)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.25, 0.25, -1.25) * angles(rad(0), rad(-45), rad(0)) * angles(rad(80), rad(0), rad(0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,0.25) *  angles(rad(0), rad(50), rad(0)) * angles(rad(-15), rad(-15), rad(-10)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-1.15,-1.5,-0.45) *  angles(rad(10), rad(45), rad(-15)) * angles(rad(10), rad(0), rad(-10)), 0.3)
						elseif frame == 7 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0, 0) * angles(rad(0), rad(115), rad(0)) * angles(rad(20), rad(0), rad(10)), 0.45)
							nkw.C0 = nkw.C0:Lerp(cframe(-0.25, 1.5, -0.25) * angles(rad(-0), rad(-60), rad(30)), 0.45)
							rsw.C0 = rsw.C0:Lerp(cframe(2.25, 0.5, -0.5) * angles(rad(0), rad(0), rad(90)) * angles(rad(60), rad(0), rad(-15)), 0.45)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.75, 0.25, 0.25) * angles(rad(15), rad(0), rad(-45)) *  angles(rad(-30), rad(-10), rad(-0)), 0.45)
							rhw.C0 = rhw.C0:Lerp(cframe(1,-2.25,0) *  angles(rad(0), rad(-15), rad(0)) *  angles(rad(-20), rad(0), rad(20)), 0.45)
							lhw.C0 = lhw.C0:Lerp(cframe(-1.15,-2,0.15) *  angles(rad(0), rad(60), rad(-20)) *  angles(rad(10), rad(0), rad(0)), 0.45)
						elseif frame == 8 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-15), rad(-75), rad(-0)) * angles(rad(-0), rad(0), rad(-10)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0) * angles(rad(0), rad(60), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.85, 0.35, -0.45) * angles(rad(0), rad(55), rad(35)) * angles(rad(-15), rad(-15), rad(0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.15, -0.15, -1) * angles(rad(90), rad(0), rad(60)) * angles(rad(-20), rad(25), rad(35)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(1.15,-2,-0.15) *  angles(rad(0), rad(52.5), rad(0)) * angles(rad(-30), rad(0), rad(10)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-2,-0.45) *  angles(rad(10), rad(25), rad(-15)), 0.3)
						elseif frame == 9 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(0+(30*jin)), rad(-0)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0.25, 1.5, -0.125) * angles(rad(-10), rad(-0), rad(-20)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.5, 0.25) * angles(rad(0), rad(0), rad(90)) * angles(rad(-30), rad(0), rad(0)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-2, 0.3, 0) * angles(rad(0), rad(0), rad(-60)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(1,-2,-0.15) *  angles(rad(5), rad(5), rad(30)), 0.5)
							lhw.C0 = lhw.C0:Lerp(cframe(-1,-2,-0.15) *  angles(rad(5), rad(5), rad(-30)), 0.5)
						end
					elseif anim == "nightmaref" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1, -0.5) * angles(rad(0), rad(105), rad(-10)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0.15, 1.5, -0.15) * angles(rad(-0), rad(-105), rad(0)) * angles(rad(-20), rad(-0), rad(-0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 0, 0) * angles(rad(0), rad(-20), rad(20)) * angles(rad(30), rad(0), rad(0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, -0.25, -0) * angles(rad(15), rad(75), rad(45)) * angles(rad(30), rad(-10), rad(-0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1,-0.45) *  angles(rad(10), rad(-45), rad(15)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-1.25,-1.25,-0.3) *  angles(rad(0), rad(10), rad(-45)), 0.3)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0, 0) * angles(rad(-10), rad(180), rad(-0)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.25) * angles(rad(20), rad(-45), rad(0)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 1.15, 0) * angles(rad(0), rad(0), rad(135)) * angles(rad(15), rad(-20), rad(-0)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.15, 0) * angles(rad(0), rad(180), rad(90)) * angles(rad(0), rad(0), rad(-30)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1.75,-0.25) *  angles(rad(-30), rad(-75), rad(-15)), 0.5)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.65,-0.25,-1.5) *  angles(rad(120), rad(-40), rad(-5)), 0.5)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-0), rad(-180), rad(30)) * angles(rad(60), rad(45), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(45), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.25 , 1.15, -0.45) * angles(rad(0), rad(0), rad(135)) * angles(rad(75), rad(-20), rad(-0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.15, 0) * angles(rad(0), rad(180), rad(90)) * angles(rad(0), rad(0), rad(-30)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(1, -1.25, 0.75) *  angles(rad(-75), rad(0), rad(30)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75, -1.5, 0.25) *  angles(rad(-45), rad(0), rad(-30)), 0.3)
						end
					elseif anim == "blazblue" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-15), rad(0), rad(-0)), 0.15)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.45, -0.25) * angles(rad(-35), rad(0), rad(0)), 0.15)
							rsw.C0 = rsw.C0:Lerp(cframe(0.45, 0.3, -1) * angles(rad(90), rad(0), rad(-60)) * angles(rad(-15), rad(30), rad(-30)), 0.15)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.5, 0.15, -0.6) * angles(rad(0), rad(-90), rad(0)) * angles(rad(60), rad(0), rad(-0)), 0.15)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-2,-0.5) *  angles(rad(15), rad(-25), rad(10)), 0.15)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-2,-0.5) *  angles(rad(15), rad(45), rad(0)) * angles(rad(0), rad(0), rad(-20)), 0.15)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.45, 0) * angles(rad(20), rad(-0), rad(-0)), 0.75)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.15) * angles(rad(25), rad(0), rad(0)), 0.75)
							rsw.C0 = rsw.C0:Lerp(cframe(1.45 ,-0.15, 0.25)  * angles(rad(130), rad(-25), rad(30)) * angles(rad(-30), rad(-15), rad(-0)), 0.75)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.75, 0, 0.15) * angles(rad(115), rad(30), rad(-15)) *  angles(rad(-20), rad(30), rad(-15)), 0.75)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-1.65,-0.125) *  angles(rad(-25), rad(-15), rad(7.5)), 0.75)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-1.75,-0.125) *  angles(rad(-20), rad(30), rad(-10)), 0.75)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-10), rad(-0), rad(-0)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(0), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05) * angles(rad(-10), rad(-10), rad(20)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-2,-0.3) *  angles(rad(5), rad(5), rad(7.5)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-2,-0.25) *  angles(rad(10), rad(30), rad(-10)), 0.1)
						elseif frame == 4 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1.5, -0) * angles(rad(-10), rad(-0), rad(0)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-30), rad(15- 30 * sin(sine / 12.5)), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05) * angles(rad(-10), rad(-10), rad(20)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.75, 0.75, -0.75) * angles(rad(90), rad(0), rad(75)) *  angles(rad(45- 5 * sin(sine / 12.5)), rad(0), rad(0)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.625,-1,0.15) *  angles(rad(-65), rad(0), rad(0)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-0.65,-0.5) *  angles(rad(10), rad(20), rad(-0)), 0.1)
						end
					elseif anim == "blazbluea" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.3, 0) * angles(rad(0), rad(110), rad(7.5)) * angles(rad(-15), rad(0), rad(-0)), 0.15)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(-75), rad(0)), 0.15)
							rsw.C0 = rsw.C0:Lerp(cframe(1.25, 0.5, -0.75) * angles(rad(0), rad(45), rad(90)) * angles(rad(60), rad(0), rad(-0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0, 0) * angles(rad(135), rad(0), rad(0)), 0.15)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1.65,-0.25) *  angles(rad(-20), rad(10), rad(20)), 0.15)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.5,-0.75) *  angles(rad(10), rad(0), rad(-10)), 0.15)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.3, 0) * angles(rad(0), rad(110), rad(7.5)) * angles(rad(-15), rad(0), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(-60), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(0.75, 0, -0.75) * angles(rad(0), rad(45), rad(90)) * angles(rad(60), rad(180), rad(-0)) * angles(rad(-30), rad(0), rad(-0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.75, -0.75) * angles(rad(135), rad(-60), rad(60)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(1,-1.65,-0.45) *  angles(rad(-20), rad(10), rad(20)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-1.5,-0.45) *  angles(rad(10), rad(0), rad(-10)), 0.3)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(45), rad(-0)), 0.5)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(-75), rad(0)), 0.5)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.15, -0) * angles(rad(-30), rad(-10), rad(60))*  angles(rad(15), rad(0), rad(30)) * angles(rad(0), rad(180), rad(-10)), 0.5)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-45)), 0.5)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-2,0) *  angles(rad(-5), rad(5), rad(7.5)), 0.5)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-2,0.125) *  angles(rad(0), rad(30), rad(-10)), 0.5)
						elseif frame == 4 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.45, 0) * angles(rad(-30), rad(45), rad(0)), 0.125)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-15), rad(-30), rad(0)), 0.125)
							rsw.C0 = rsw.C0:Lerp(cframe(1.25 , 1, -1) * angles(rad(15), rad(0), rad(90)) * angles(rad(105), rad(0), rad(-30)), 0.125)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 0.5, 1) * angles(rad(90), rad(-30), rad(0)) * angles(rad(-60), rad(-30), rad(-0)) * angles(rad(-15), rad(0), rad(-30)), 0.125)
							rhw.C0 = rhw.C0:Lerp(cframe(0.75,-1.15,-0.75) *  angles(rad(15), rad(-15), rad(0)) * angles(rad(0), rad(0), rad(30)), 0.125)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.85,-1.75,-0.25) *  angles(rad(0), rad(30), rad(-20)), 0.125)
						elseif frame == 5 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(0), rad(-45), rad(-0)) * angles(rad(-10), rad(0), rad(20)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(45), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5, 0.5, 0.25) * angles(rad(0), rad(90), rad(90)) * angles(rad(-50), rad(-35), rad(-15)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 1, -1) * angles(rad(0), rad(-45), rad(-105))* angles(rad(60), rad(0), rad(-0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(-0.5, -2, -1) *  angles(rad(-15), rad(45), rad(4)) * angles(rad(30), rad(30), rad(-0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.25, -2.15, 0.75) *  angles(rad(0), rad(150), rad(0)), 0.3)
						elseif frame == 6 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.15, 0) * angles(rad(0), rad(-15), rad(10)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(30), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.75, -0.25) * angles(rad(-10), rad(30), rad(105)) * angles(rad(-30), rad(-30), rad(-30)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 1, -0) * angles(rad(0), rad(-45), rad(-105))* angles(rad(30), rad(0), rad(-0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.45, -2, 0.5) *  angles(rad(-45), rad(0), rad(30)) *  angles(rad(20), rad(-15), rad(-15)) * angles(rad(0), rad(20), rad(-15)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-1.75,-0.5) *  angles(rad(10), rad(15), rad(0)) * angles(rad(0), rad(0), rad(-15)), 0.3)
						elseif frame == 7 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.15, 0) * angles(rad(0), rad(30), rad(10)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.125) * angles(rad(-10), rad(-30), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5, 0.75, -0.75) * angles(rad(0), rad(45), rad(105))* angles(rad(30), rad(0), rad(-30)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 1, -0) * angles(rad(0), rad(-45), rad(-105))* angles(rad(30), rad(0), rad(-0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.25,-2,0.5) *  angles(rad(0), rad(-30), rad(0)) *  angles(rad(-30), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-1.75,-0.75) *  angles(rad(10), rad(-30), rad(0)) *  angles(rad(0), rad(0), rad(-5)), 0.3)
						elseif frame == 8 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.5, 0) * angles(rad(30), rad(0), rad(-0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.25) * angles(rad(45), rad(0), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(0.75, 3, -0.75) * angles(rad(135), rad(0), rad(-0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(0, 2.75, -1.35) * angles(rad(90), rad(-45), rad(45)) *  angles(rad(60), rad(0), rad(-15)) *  angles(rad(0), rad(-10), rad(0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-1.75,0) *  angles(rad(-35), rad(5), rad(7.5)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-1.75,0.125) *  angles(rad(-30), rad(30), rad(-10)), 0.3)
						end
					elseif anim == "overture" then
						if frame == 1 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-0.45, 0) * angles(rad(30), rad(-0), rad(-0)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, 0.15) * angles(rad(25), rad(0), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.45 ,-0.15, 0.25)  * angles(rad(130), rad(-25), rad(30)) * angles(rad(-15), rad(-15), rad(-0)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.75, 0, 0.15) * angles(rad(115), rad(30), rad(-15)) *  angles(rad(-5), rad(30), rad(-15)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.65,-1.85,-0.125) *  angles(rad(-35), rad(-15), rad(7.5)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.7,-1.9,-0.125) *  angles(rad(-30), rad(30), rad(-10)), 0.1)
						elseif frame == 2 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1.15, -0) * angles(rad(-45), rad(-0), rad(-0)), 0.25)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.5) * angles(rad(-30), rad(-0), rad(0)), 0.25)
							rsw.C0 = rsw.C0:Lerp(cframe(1.75 ,0.5, 0.05) * angles(rad(-10), rad(-10), rad(60)) * angles(rad(0), rad(-60), rad(-30)) * angles(rad(30), rad(0), rad(-0)), 0.25)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.6, 0.25, 0.15) * angles(rad(15), rad(20), rad(-60)) * angles(rad(0), rad(60), rad(30)) * angles(rad(30), rad(0), rad(-0)), 0.25)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-1,-0.45) *  angles(rad(-15), rad(-0), rad(0)), 0.25)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.75,-1.5,-0) *  angles(rad(-45), rad(0), rad(20)), 0.25)
						elseif frame == 3 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,0, 0) * angles(rad(-45), rad(0), rad(-0)) * angles(rad(0), rad(-0+(20*jin)), rad(0)), 0.3)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.45, 0.45) * angles(rad(75), rad(0), rad(0)), 0.3)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 , 1, 0) * angles(rad(180), rad(0), rad(-0)), 0.3)
							lsw.C0 = lsw.C0:Lerp(cframe(-1.5, 1, 0) * angles(rad(180), rad(0), rad(0)), 0.3)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-2,0) *  angles(rad(0), rad(0), rad(0)), 0.3)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.5,-2,0) *  angles(rad(0), rad(0), rad(0)), 0.3)
						elseif frame == 4 then
							rjw.C0 = rjw.C0:Lerp(cframe(0 ,-1.5, -0) * angles(rad(-15), rad(-0), rad(0)), 0.1)
							nkw.C0 = nkw.C0:Lerp(cframe(0, 1.5, -0.25) * angles(rad(-30), rad(15- 30 * sin(sine / 12.5)), rad(0)), 0.1)
							rsw.C0 = rsw.C0:Lerp(cframe(1.5 ,0.15, 0.05) * angles(rad(-10), rad(-10), rad(20)), 0.1)
							lsw.C0 = lsw.C0:Lerp(cframe(-0.75, 0.75, -0.75) * angles(rad(90), rad(0), rad(75)) *  angles(rad(45- 5 * sin(sine / 12.5)), rad(0), rad(0)), 0.1)
							rhw.C0 = rhw.C0:Lerp(cframe(0.5,-0.5,-0.75) *  angles(rad(20), rad(0), rad(-0)), 0.1)
							lhw.C0 = lhw.C0:Lerp(cframe(-0.625,-1,0.15) *  angles(rad(-75), rad(0), rad(0)), 0.1)
						end
					end
				end
				local tv = (rt.Velocity * vect3(1, 0, 1)).magnitude
				local tvv = rt.Velocity.y
				local hf = raycast(rt.Position, (cframe(rt.Position, rt.Position + vect3(0, -1, 0))).lookVector, 4+hum.HipHeight, char)
				if hf then
					inair = false
					if tv < 1 and hf ~= nil and hum.Sit == false then
						if not attack then
							anim = "idle"
						end
					elseif tv > 1 and hf ~= nil and hum.Sit == false then
						if not attack then
							anim = "walk"
						end
					elseif hf ~= nil and hum.Sit == true then
						if not attack then
							anim = "sit"
						end
					end
				else
					inair = true
					if tvv > 0 then
						if not attack then
							anim = "jump"
						end
					else
						if not attack then
							anim = "fall"
						end
					end
				end
			end
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
			spellcd.Texture = "http://www.roblox.com/asset/?id=2753963498"
			spellcd.Face = Enum.NormalId.Top
			spellcd.Transparency = 1
			spellcl.Parent = spellc
			spellcl.Brightness = 1.75
			spellcl.Range = 15
			spellcl.Color = color(0.478431, 0.133333, 1)
			local tween = tweens:Create(spellcd, TweenInfo.new(1), {Transparency = 0})
			tween:Play()
			local angle = 0
			while started do
				wait()
				if heatlvl == 1 then
					spellcd.Texture = "http://www.roblox.com/asset/?id=733810688"
				elseif heatlvl == 2 then
					spellcd.Texture = "http://www.roblox.com/asset/?id=2829906887"
				elseif heatlvl == 3 then
					spellcd.Texture = "http://www.roblox.com/asset/?id=4697684244"
				else
					spellcd.Texture = "http://www.roblox.com/asset/?id=733810688"
				end
				angle = angle + 15
				if equipped then
					spellc.CFrame = rt.CFrame * cframe(0, -3, 0) * angles(0, rad(angle), 0)
				else
					if spellcd.Transparency < 1 then
						if spellc ~= nil then
							spellcd.Transparency = spellcd.Transparency + 0.05
						end
					else
						spellc:Destroy()
						started = false
						break							
					end
				end
			end
		end)
	end)

	event.OnServerEvent:connect(function(plr, move, pos, pos2)
		if plr == owner then
			if not equipped then return end
			if attack then return end
			if attack == true then return end
			local ogws = hum.WalkSpeed
			local ogjp = hum.JumpPower
			local ogjh = hum.JumpHeight
			if owner.UserId ~= 50203523 then
				if move == "grenade" then
					if grenadecooldown then return end
				elseif move == "striker" then
					if strikercooldown then return end
				elseif move == "tyrant" then
					if tyrantcooldown then return end
				elseif move == "vortex" then
					if vortexcooldown then return end
				elseif move == "redstar" then
					if starcooldown then return end
				elseif move == "shade" then
					if shadecooldown then return end
				elseif move == "rumeiga" then
					if rumeigacooldown then return end
				elseif move == "korone" then
					if koronecooldown then return end
				elseif move == "hakurei" then
					if hakureicooldown then return end
				elseif move == "kirisame" then
					if kirisamecooldown then return end
				elseif move == "hazama" then
					if hazamacooldown then return end
				elseif move == "gouda" then
					if goudacooldown then return end
				elseif move == "fang" then
					if fangcooldown then return end
				elseif move == "zero" then
					if zerocooldown then return end
				elseif move == "fatal" then
					if fatalcooldown then return end
				elseif move == "saz" then
					if sazcooldown then return end
				elseif move == "nightmare" then
					if nightmarecooldown then return end
				elseif move == "blazblue" then
					if blazbluecooldown then return end
				elseif move == "overdrive" then
					if overdrivecooldown then return end
				end
			end
			if pos ~= nil and move ~= "relocate" then
				rt.CFrame = cframe(pos2.Position, vect3(pos.p.x,pos2.Position.y,pos.p.z)) * CFrame.fromEulerAnglesXYZ(0,math.pi,0)
			end
			if move == "taunt" then
				attack = true
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "taunt"
				frame = 1
				task.wait(0.25)
				sound(7122602098,1,0.95,char["Left Arm"],0,false)
				local lines = {
					"Outta my way already.",
					"Hmph, how weak.",
					"Pathetic.", 
					"Stay outta my way.",
					"I strongly suggest you back off.",
					"Get outta here."
				}
				local randomquote = random(0,8)
				local gender = "Male"
				if char:FindFirstChild("Gender") then
					gender = char:FindFirstChild("Gender").Value
				else
					gender = "Male"
				end
				if owner.UserId == 50203523 then
					if gender == "Male" then
						if randomquote == 0 then
							voice("yuki/yuki_195-100.wav",3,1.05,char.Head,0,false)
						elseif randomquote == 1 then
							voice("yuki/yuki_195-101.wav",3,1.05,char.Head,0,false)
						elseif randomquote == 2 then
							voice("yuki/yuki_195-102.wav",3,1.05,char.Head,0,false)
						elseif randomquote == 3 then
							voice("yuki/yuki_195-110.wav",3,1.05,char.Head,0,false)
						elseif randomquote == 4 then
							voice("yuki/yuki_195-111.wav",3,1.05,char.Head,0,false)
						elseif randomquote == 5 then
							voice("yuki/yuki_195-112.wav",3,1.05,char.Head,0,false)
						elseif randomquote == 6 then
							voice("yuki/yuki_195-120.wav",3,1.05,char.Head,0,false)
						elseif randomquote == 7 then
							voice("yuki/yuki_195-121.wav",3,1.05,char.Head,0,false)
						else
							voice("yuki/yuki_195-122.wav",3,1.05,char.Head,0,false)
						end
					else
						if randomquote == 0 then
							voice("yuki/yuki_195-100.wav",3,1.6,char.Head,0,false)
						elseif randomquote == 1 then
							voice("yuki/yuki_195-101.wav",3,1.6,char.Head,0,false)
						elseif randomquote == 2 then
							voice("yuki/yuki_195-102.wav",3,1.6,char.Head,0,false)
						elseif randomquote == 3 then
							voice("yuki/yuki_195-110.wav",3,1.6,char.Head,0,false)
						elseif randomquote == 4 then
							voice("yuki/yuki_195-111.wav",3,1.6,char.Head,0,false)
						elseif randomquote == 5 then
							voice("yuki/yuki_195-112.wav",3,1.6,char.Head,0,false)
						elseif randomquote == 6 then
							voice("yuki/yuki_195-120.wav",3,1.6,char.Head,0,false)
						elseif randomquote == 7 then
							voice("yuki/yuki_195-121.wav",3,1.6,char.Head,0,false)
						else
							voice("yuki/yuki_195-122.wav",3,1.6,char.Head,0,false)
						end
					end
				end
				chatter(char,lines[random(1,#lines)])
				frame = 2
				task.wait(1.5)
				attack = false 
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "punch" then
				if not inair then
					attack = true
					hum.WalkSpeed = 0
					hum.JumpPower = 0
					hum.JumpHeight = 0
					anim = "punch"
					frame = 1
					sound(7122602098,1,1.5,Handle,0,false)
					Tool.Grip = cframe(0, 0.25, 0, -4.37113883e-08, -0.707106769, -0.707106769, 0, 0.707106769, -0.707106769, 1, -3.09086197e-08, -3.09086197e-08)
					magnitudedamage(5,"sphere", 0, 4.5, 8595980577, 1.5, 1, rt,true,"normal","normal")
					task.wait(0.2)
					Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					attack = false
					hum.WalkSpeed = ogws
					hum.JumpPower = ogjp
					hum.JumpHeight = ogjh
				else
					attack = true
					anim = "apunch"
					frame = 1
					sound(7122602098,1,1.5,Handle,0,false)
					partdamage(5,"sphere", 0, 5, 8278630896, 1.15, 1, rt,true,"normal","normal",0.15)
					task.wait(0.15)
					attack = false
				end
			elseif move == "kick" then
				if not inair then
					attack = true
					hum.WalkSpeed = 0
					hum.JumpPower = 0
					hum.JumpHeight = 0
					anim = "kick"
					frame = 1
					task.wait(0.1)
					frame = 2
					sound(7122602098,1,1.15,char["Left Leg"],0,false)
					magnitudedamage(7,"sphere", 0, 5, 46153268, 1.3, 1.5, rt,true,"normal","normal")
					task.wait(0.15)
					frame = 1
					attack = false
					hum.WalkSpeed = ogws
					hum.JumpPower = ogjp
					hum.JumpHeight = ogjh
				else
					attack = true
					anim = "akick"
					frame = 1
					task.wait(0.1)
					frame = 2
					sound(7122602098,1,1.15,char["Left Leg"],0,false)
					partdamage(7,"sphere", 0, 5, 46153268, 1.3, 1.5, rt,true,"normal","normal",0.15)
					task.wait(0.15)
					frame = 1
					attack = false
				end
			elseif move == "slash" then
				if not inair then
					attack = true
					hum.WalkSpeed = 0
					hum.JumpPower = 0
					hum.JumpHeight = 0
					anim = "slash"
					frame = 1
					task.wait(0.025)
					frame = 2
					sound(7122602098,1,0.65,Handle,0,false)
					trail.Enabled = true
					trail2.Enabled = true				
					task.wait(0.025)
					frame = 3
					magnitudedamage(9,"sphere", 0, 7.5, 107083556408593, 1.25, 1, rt,true,"slash2","normal")
					task.wait(0.15)
					frame = 1
					attack = false
					trail.Enabled = false
					trail2.Enabled = false	
					hum.WalkSpeed = ogws
					hum.JumpPower = ogjp
					hum.JumpHeight = ogjh
				else
					attack = true
					anim = "aslash"
					frame = 1
					task.wait(0.045)
					frame = 2
					sound(7122602098,1,0.65,Handle,0,false)
					trail.Enabled = true
					trail2.Enabled = true	
					task.wait(0.045)
					frame = 3
					partdamage(10,"sphere", 0, 5, 107083556408593, 1.2, 1, rt,true,"slash2","normal",0.15)
					task.wait(0.15)
					frame = 1
					attack = false
					trail.Enabled = false
					trail2.Enabled = false	
				end
			elseif move == "drive" then
				if not inair then
					attack = true
					hum.WalkSpeed = 0
					hum.JumpPower = 0
					hum.JumpHeight = 0
					anim = "drive"
					frame = 1
					task.wait(0.2)
					frame = 3
					sound(7122602098,1,0.65,char["Left Arm"],0,false)
					task.wait(0.03)
					frame = 2
					magnitudedamage(10,"sphere", 0, 3.45, 46153268, 1.15, 0.75, rt,true,"normal","normal")
					task.wait(0.25)
					frame = 1
					attack = false
					hum.WalkSpeed = ogws
					hum.JumpPower = ogjp
					hum.JumpHeight = ogjh
				else
					attack = true
					anim = "adrive"
					frame = 1
					task.wait(0.1)
					frame = 2
					sound(7122602098,1,0.65,Handle,0,false)
					partdamage(11,"sphere", 0, 5, 46153268, 1.15, 0.75, rt,true,"normal","normal",0.15)
					task.wait(0.25)
					frame = 1
					attack = false
				end
			elseif move == "grab" then
				--This move is not present in the original EnmaU (Berzerker), but it's present in Enma2 (Ravager), so I added it here.
				if not inair then
					attack = true
					hum.WalkSpeed = 0
					hum.JumpPower = 0
					hum.JumpHeight = 0
					anim = "grab"
					frame = 1
					local grabbed = false
					local gv = nil
					local gvhum = nil
					local gvhead = nil
					local gvtorso = nil
					local function checkgrab()
						for i,v in pairs(workspace:GetDescendants()) do
							if v:FindFirstChildOfClass("Humanoid") and v ~= char and not grabbed then
								local vhum = v:FindFirstChildOfClass("Humanoid")
								local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
								local vhead = v:FindFirstChild("Head")
								if vtorso then
									local vdistance = (rt.Position - vtorso.Position).magnitude
									if vdistance <= 5 and vhum.Health > 0 then
										sound(46153268,1.15,2,vtorso,0,false)
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
					wait(0.025)
					if not grabbed then
						sound(444895479,1,1,char["Right Arm"],0,false)
						wait(0.425)
					else
						local grabpart = new("Part")
						grabpart.Parent = gv
						grabpart.Transparency = 1
						grabpart.CanCollide = false
						grabpart.CFrame = rt.CFrame * cframe(0,0,-2.5) * angles(0,rad(180),0)
						grabpart.Anchored = true
						grabpart.CFrame = rt.CFrame * cframe(0,0,-2.5) * angles(0,rad(180),0)
						rt.Anchored = true
						local weld = new("Weld")
						weld.Parent = grabpart
						weld.Part0 = grabpart
						weld.Part1 = gvtorso
						weld.C0 = weld.C0 * cframe(0.15, 0, 0)
						frame = 1
						wait(0.5)
						anim = "graba"
						frame = 1
						wait(0.15)
						local chance = random(0,10)
						frame = 2
						debris:AddItem(weld,0.01)
						wait(0.001)
						grabpart:Destroy()
						gvhum.PlatformStand = true
						coroutine.wrap(function()
							wait(3)
							gvhum.PlatformStand = false
						end)()
						damage(gvhum, 18, 46153268, 1.15, 0.5, gvhead, 0.1, "sphere")
						gvtorso.Velocity = rt.CFrame.lookVector*45
						wait(0.25)
						frame = 1
						rt.Anchored = false
						wait(0.15)
						anim = "grab"
						wait(0.05)
					end
					hum.WalkSpeed = ogws
					hum.JumpPower = ogjp
					hum.JumpHeight = ogjh
					attack = false
				else
					attack = true
					anim = "agrab"
					frame = 1
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
					Weld.Part0 = rt
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
										sound(46153268,1.15,2,torsou,0,false)
										hiteffect("grab",torsou)
										grabbed = true
										gv = persona.Parent
										gvhum = humi
										gvhead = headu
										gvtorso = torsou
										weld = new("Weld")
										weld.Parent = rt
										weld.Part0 = rt
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
					vel.Parent = rt
					vel.Velocity = rt.CFrame.LookVector * 25 + rt.CFrame.upVector * 75
					vel.Name  =  "SmallMover"
					debris:AddItem(vel,.1)
					wait(0.135)
					if not grabbed then
						sound(444895479,1,1,char["Right Arm"],0,false)
						frame = 1
						wait(0.425)
					else
						Part:Destroy()
						weld.C0 = cframe(0.25, 0, -2.5) * angles(0,rad(-180),0)
						anim = "agrab"
						frame = 1
						wait(0.1)
						frame = 2
						rt.Anchored = true			
						weld.C0 = cframe(-0.15, 0.25, -5) * angles(rad(-90),rad(-180),0)	
						for i = 1 , 25 do
							wait()
							rt.CFrame = rt.CFrame * angles(0,rad(45),0)
						end
						debris:AddItem(weld,0.01)
						wait(0.01)
						sound(10209850,1.5,0.25,rt,0.175,false)
						gvhum.PlatformStand = true
						spawn(function()
							wait(3)
							gvhum.PlatformStand = false
						end)
						gvtorso.Velocity = rt.CFrame.LookVector*115
						spawn(function()
							local hitfloor
							repeat 
								wait()
								hitfloor = raycast(gvtorso.Position, vect3(0, -1, 0), 2+gvhum.HipHeight, gv)
							until hitfloor or gvhum:GetState() == Enum.HumanoidStateType.Landed
							damage(gvhum, 14, 8255306220, 6.75, 1, gvhead, 0, "sphere")
						end)
						wait(0.5)
						rt.Anchored = false
					end
					attack = false
				end
			elseif move == "charge" then
				if heat >= 300 or heatlvl == 3 then return end
				attack = true
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "charge"
				frame = 1
				local lines = {
					"MENDOKUSAI!!", --untranslated line from Order-Sol, don't know what it means
					"UURAAAAAHHHHHHHH!!!",
					"YOU FREAKING ASKED FOR IT!"
				}
				chatter(char,lines[random(1,#lines)])
				local randomquote = random(0,2)
				local gender = "Male"
				if char:FindFirstChild("Gender") then
					gender = char:FindFirstChild("Gender").Value
				else
					gender = "Male"
				end
				if owner.UserId == 50203523 then
					if gender == "Male" then
						if randomquote == 0 then
							voice("yuki/yuki_1500-100.wav",3,1.1,char.Head,0,false)
						elseif randomquote == 1 then
							voice("yuki/yuki_1500-110.wav",3,1.1,char.Head,0,false)
						else
							voice("yuki/yuki_1500-120.wav",3,1.1,char.Head,0,false)
						end
					else
						if randomquote == 0 then
							voice("yuki/yuki_1500-100.wav",3,1.6,char.Head,0,false)
						elseif randomquote == 1 then
							voice("yuki/yuki_1500-110.wav",3,1.6,char.Head,0,false)
						else
							voice("yuki/yuki_1500-120.wav",3,1.6,char.Head,0,false)
						end
					end
				end
				gyro.MaxTorque = vect3(0,0,0)
				local reached2nd = false
				local reached3rd = false
				local charging = true
				task.wait(0.25)
				frame = 2
				local function wave()
					local wp = new("Part")
					local wm = new("SpecialMesh")
					wp.Name = "WavePart"
					wp.Parent = char
					wp.Transparency = 0.1
					wp.Size = vect3(0.001,0.001,0.001)
					wp.Anchored = true
					wp.BottomSurface = Enum.SurfaceType.Smooth
					wp.BrickColor = bc("Really black")
					wp.CanCollide = false
					wp.TopSurface = Enum.SurfaceType.Smooth
					wm.Parent = wp
					wm.MeshId = "rbxassetid://20329976"
					wm.Scale = vect3(3.5, 7.5, 3.5)
					wm.MeshType = Enum.MeshType.FileMesh
					local wp2 = new("Part")
					local wm2 = new("SpecialMesh")
					wp2.Name = "WavePart"
					wp2.Parent = wp
					wp2.Transparency = 0.025
					wp2.Size = vect3(0.001,0.001,0.001)
					wp2.Anchored = true
					wp2.BottomSurface = Enum.SurfaceType.Smooth
					wp2.BrickColor = bc("Dark indigo")
					wp2.CanCollide = false
					wp2.TopSurface = Enum.SurfaceType.Smooth
					wm2.Parent = wp2
					wm2.MeshId = "rbxassetid://20329976"
					wm2.Scale = vect3(3, 6, 3)
					wm2.MeshType = Enum.MeshType.FileMesh
					wp.Material = "Neon"
					wp2.Material = "Neon"
					wp.CFrame = rt.CFrame * cframe(0,-1.5,-0.45)
					wp2.CFrame = rt.CFrame * cframe(0,-1.5,-0.45)
					sound2(2760979, 1.5, 0.375, wp, 0,false)
					sound2(2693351, 1.25, 0.85, wp, 0,false)
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
				end
				local dustpart = new("Part")
				local dust = new("ParticleEmitter")
				dustpart.Name = "Dust"
				dustpart.Parent = script
				dustpart.Transparency = 1
				dustpart.Locked = true
				dustpart.Size = vect3(1, 1, 1)
				dustpart.CanCollide = false
				dust.Parent = dustpart
				dust.Speed = NumberRange.new(20, 20)
				dust.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0.333333, 0, 0.498039))
				dust.Texture = "rbxassetid://292289455"
				dust.Transparency = NumberSequence.new(0.6875,1)
				dust.Size = NumberSequence.new(3,3)
				dust.Lifetime = NumberRange.new(2.5, 3.2)
				dust.Rate = 500
				dust.RotSpeed = NumberRange.new(15, 15)
				dust.Speed = NumberRange.new(20, 20)
				dust.SpreadAngle = vect2(15, 15)
				dust.VelocitySpread = 15
				dust.EmissionDirection = "Top"
				local dustweld = new("Weld")
				dustweld.Part0 = dustpart
				dustweld.Part1 = rt
				dustweld.Parent = dustpart
				dustweld.C0 = dustweld.C0 * cframe(0, 2.5, 0)
				spawn(function()
					while charging do
						wait()
						if heat >= 100 and heat < 200 then
							if not reached2nd then wave() end
							reached2nd = true
						elseif heat >= 300 then
							if not reached3rd then wave() end
							reached3rd = true
						end
					end
				end)
				spawn(function()
					while charging do
						sound(83066231638545, 1.25, 1.2, rt, 0.425,false)
						wait(0.15)
					end
				end)
				local pow = 1
				repeat
					if heat < 300 then
						heat = heat + pow * 0.175
					end
					if heat > 300 then
						heat = 300
					end
					if heat >= 0 and heat < 100 then
						heatlvl = 1
					elseif heat >= 100 and heat < 200 then
						heatlvl = 2
					elseif heat >= 300 then
						heatlvl = 3
					end
					pow = pow + 1
					wait(0.015)
				until not holdinge
				charging = false
				frame = 3
				dust.Enabled = false
				debris:AddItem(dustpart,2)
				task.wait(0.1)
				gyro.MaxTorque = vect3(0,math.huge,0)
				attack = false
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "grenade" then
				grenadecooldown = true
				spawn(function()
					task.wait(2.5)
					grenadecooldown = false
				end)
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "grenade"
				frame = 1
				Tool.Grip = cframe(0, 0.25, 0, -4.37113883e-08, -0.707106769, -0.707106769, 0, 0.707106769, -0.707106769, 1, -3.09086197e-08, -3.09086197e-08)
				local lines = {
					"SHUT UP!",
					"BURN!",
					"Out of my way!",
				}
				chatter(char,lines[random(1,#lines)])
				local randomquote = random(0,2)
				local gender = "Male"
				if char:FindFirstChild("Gender") then
					gender = char:FindFirstChild("Gender").Value
				else
					gender = "Male"
				end
				if owner.UserId == 50203523 then
					if gender == "Male" then
						if randomquote == 0 then
							voice("yuki/yuki_1000-100.wav",3,1.1,char.Head,0,false)
						elseif randomquote == 1 then
							voice("yuki/yuki_1000-110.wav",3,1.1,char.Head,0,false)
						else
							voice("yuki/yuki_1000-120.wav",3,1.1,char.Head,0,false)
						end
					else
						if randomquote == 0 then
							voice("yuki/yuki_1000-100.wav",3,1.6,char.Head,0,false)
						elseif randomquote == 1 then
							voice("yuki/yuki_1000-110.wav",3,1.6,char.Head,0,false)
						else
							voice("yuki/yuki_1000-120.wav",3,1.6,char.Head,0,false)
						end
					end
				end
				task.wait(0.1)
				if heatlvl == 1 or holdinge then
					local exp = new("Part")
					exp.Parent = char
					exp.Transparency = 1
					exp.Size = vect3(0.001,0.001,0.001)
					exp.Locked = true
					exp.CanCollide = false
					exp.Anchored = true
					exp.CFrame =  rt.CFrame * cframe(0,-0.25,-4.5)
					local boom = new("Explosion")
					boom.Parent = workspace
					boom.Position = exp.Position
					boom.BlastRadius = 10
					boom.BlastPressure = 0
					sound2(6892631834,1.15,1,exp,0)
					debris:AddItem(exp,3)
					magnitudedamage(11,"sphere", 0, 4.5, 46153268, 1.15, 0.75, rt,true,"burn","grenade")
				elseif heatlvl == 2 then
					if heat > 100 then
						heat = heat - 100
					end
					heatlvl = 1
					local exp = new("Part")
					exp.Parent = char
					exp.Transparency = 1
					exp.Size = vect3(0.001,0.001,0.001)
					exp.Locked = true
					exp.CanCollide = false
					exp.Anchored = true
					exp.CFrame =  rt.CFrame * cframe(0,-0.25,-4.5)
					local boom = new("Explosion")
					boom.Parent = workspace
					boom.Position = exp.Position
					boom.BlastRadius = 15
					boom.BlastPressure = 0
					sound2(6892631834,1.15,1,exp,0)
					debris:AddItem(exp,3)
					magnitudedamage(15,"sphere", 0, 4.5, 46153268, 1.15, 0.75, rt,true,"burn","grenade2")
				elseif heatlvl == 3 then
					if heat > 100 then
						heat = heat - 200
					end
					heatlvl = 1
					spawn(function() 
						local pos = rt.CFrame
						local direction = pos.lookVector
						for i = 1,3 do
							local posit = pos+(direction*i*8)
							local exp = new("Part")
							exp.Parent = char
							exp.Transparency = 1
							exp.Size = vect3(0.001,0.001,0.001)
							exp.Locked = true
							exp.CanCollide = false
							exp.Anchored = true
							exp.CFrame =  cframe(posit.x,posit.y-0.25,posit.z-2.5)
							local boom = new("Explosion")
							boom.Parent = workspace
							boom.Position = exp.Position
							boom.BlastRadius = 25
							boom.BlastPressure = 0
							sound2(6892631834,1.15,1,exp,0)
							debris:AddItem(exp,3)
							magnitudedamage(15,"sphere", 0, 4.5 * i, 46153268, 1.15, 0.75, exp,true,"burn","grenade2")
							wait(0.225)
						end
					end)
					magnitudedamage(10,"sphere", 0, 4.5, 46153268, 1.15, 0.75, rt,true,"burn","grenade")
				end
				task.wait(0.45)
				anim = "aiko"
				Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
				task.wait(0.075)
				if holdinge then
					if heat >= 300 then 
						attack = false
						gyro.MaxTorque = vect3(0,math.huge,0)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh 
						return 
					end
					local pe = new("ParticleEmitter")
					local pe0 = new("ParticleEmitter")
					local pe1 = new("ParticleEmitter")
					pe.Parent = char.Torso
					pe.Speed = NumberRange.new(15, 15)
					pe.Orientation = Enum.ParticleOrientation.VelocityParallel
					pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe.LightEmission = 1
					pe.LightInfluence = 1
					pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
					pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
					pe.Drag = 7
					pe.Lifetime = NumberRange.new(0, 1.5)
					pe.Rate = 500
					pe.SpreadAngle = vect2(360, 360)
					pe.VelocitySpread = 360
					pe0.Parent = char.Torso
					pe0.Speed = NumberRange.new(0, 20)
					pe0.Rotation = NumberRange.new(-360, 360)
					pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
					pe0.LightEmission = 1
					pe0.LightInfluence = 1
					pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
					pe0.Transparency = NumberSequence.new(1,0,1)
					pe0.Size = NumberSequence.new(0.5624997615814209,0)
					pe0.Shape = Enum.ParticleEmitterShape.Sphere
					pe0.Acceleration = vect3(0, -15, 0)
					pe0.Drag = 10
					pe0.Lifetime = NumberRange.new(0, 1.5)
					pe0.Rate = 1000
					pe0.RotSpeed = NumberRange.new(100, 100)
					pe1.Parent = char.Torso
					pe1.Speed = NumberRange.new(15, 15)
					pe1.Rotation = NumberRange.new(0, 360)
					pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe1.LightEmission = 1
					pe1.LightInfluence = 1
					pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
					pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe1.Size = NumberSequence.new(0.30000001192092896,0)
					pe1.Drag = 10
					pe1.Lifetime = NumberRange.new(0, 1.5)
					pe1.Rate = 10000
					pe1.RotSpeed = NumberRange.new(50, 50)
					pe1.SpreadAngle = vect2(360, 360)
					pe1.VelocitySpread = 360
					local sphere = new("Part")
					sphere.Parent = char
					sphere.Name = "YuiEffect"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0.5
					sphere.BrickColor = bc("Cool yellow")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
					tween:Play()
					debris:AddItem(sphere,2)
					sound(1613998698,1.5,1,rt,0.3,false)
					if not inair then
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "yui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					else
						rt.Anchored = true
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "ayui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						rt.Anchored = false
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "striker" then
				--STORUM VIPAAA
				if strikercount < 4 then
					strikercount = strikercount + 1
				else
					strikercooldown = true
					spawn(function()
						task.wait(15)
						strikercooldown = false
					end)
				end
				coroutine.resume(coroutine.create(function()
					while strikercount > 0 do
						task.wait(7.5)
						strikercount = strikercount - 1
						if strikercount < 0 then
							strikercount = 0
						end
					end
				end))
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "striker"
				frame = 1
				local lines = {
					"Shadow Striker!",
					"GO IN HELL!!",
					"Get out of my sight!"
				}
				chatter(char,lines[random(1,#lines)])
				local randomquote = random(0,2)
				local gender = "Male"
				if char:FindFirstChild("Gender") then
					gender = char:FindFirstChild("Gender").Value
				else
					gender = "Male"
				end
				if owner.UserId == 50203523 then
					if gender == "Male" then
						if randomquote == 0 then
							voice("yuki/yuki_1200-100.wav",3,1.1,char.Head,0,false)
						elseif randomquote == 1 then
							voice("yuki/yuki_1200-110.wav",3,1.1,char.Head,0,false)
						else
							voice("yuki/yuki_1200-120.wav",3,1.1,char.Head,0,false)
						end
					else
						if randomquote == 0 then
							voice("yuki/yuki_1200-100.wav",3,1.6,char.Head,0,false)
						elseif randomquote == 1 then
							voice("yuki/yuki_1200-110.wav",3,1.6,char.Head,0,false)
						else
							voice("yuki/yuki_1200-120.wav",3,1.6,char.Head,0,false)
						end
					end
				end
				task.wait(0.068)
				frame = 2
				task.wait(0.068)
				frame = 3
				local bpos = new("BodyPosition")
				bpos.Parent = rt
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 1499
				bpos.Position = rt.CFrame * cframe(0,75,-25).Position
				sound(2692477,1.5,0.35,char["Left Arm"],0,false)
				spawn(function()
					wait(0.15)
					sound(28257433,1.5,0.55,char["Left Arm"],0,false)
					sound(28144425,1.5,0.275,char["Left Arm"],0,false)
				end)
				local jumppart = new("Part")
				local jumpmesh = new("SpecialMesh")
				jumppart.Parent = script
				jumppart.Transparency = 0
				jumppart.Size = vect3(1, 1, 1)
				jumppart.Anchored = true
				jumppart.BottomSurface = Enum.SurfaceType.Smooth
				jumppart.BrickColor = bc("Dark indigo")
				jumppart.CanCollide = false
				jumppart.TopSurface = Enum.SurfaceType.Smooth
				jumpmesh.Parent = jumppart
				jumpmesh.MeshId = "rbxassetid://20329976"
				jumpmesh.Scale = vect3(3, 3, 3)
				jumpmesh.MeshType = Enum.MeshType.FileMesh
				jumppart.CFrame = rt.CFrame * cframe(0,-1.5,0)
				local tween = tweens:Create(jumppart,TweenInfo.new(1.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
				tween:Play()
				local tweenM = tweens:Create(jumpmesh,TweenInfo.new(1.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(30,0.025,30),Offset = vect3(0,-1.5,-1)})
				tweenM:Play()
				tween.Completed:Connect(function() jumppart:Destroy()end)
				spawn(function()
					for i = 1,10 do
						wait(0.05)
						local randomcolor = random(0,3)
						local firepart = new("Part")
						firepart.Parent = script
						firepart.Size = vect3(8.5,8.5,8.5)
						firepart.BottomSurface = Enum.SurfaceType.Smooth
						firepart.Anchored = true
						firepart.CanCollide = false
						firepart.CanTouch = false
						if randomcolor == 0 then
							firepart.BrickColor = bc("Really black")
						elseif randomcolor == 1 then
							firepart.BrickColor = bc("Dark indigo")
						elseif randomcolor == 2 then
							firepart.BrickColor = bc("Royal purple")
						elseif randomcolor == 3 then
							firepart.BrickColor = bc("Black")
						end
						firepart.Material = Enum.Material.Neon
						firepart.TopSurface = Enum.SurfaceType.Smooth
						firepart.CFrame = char["Left Arm"].CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
						local fire = new("Fire")
						fire.Parent = firepart
						fire.Size = 10
						fire.Heat = 25
						if randomcolor == 0 then
							fire.Color = Color3.fromRGB(17, 17, 17)
							fire.SecondaryColor = Color3.fromRGB(45, 45, 45)
						elseif randomcolor == 1 then
							fire.Color = Color3.fromRGB(61, 23, 132)
							fire.SecondaryColor = Color3.fromRGB(111, 22, 189)
						elseif randomcolor == 2 then
							fire.Color = Color3.fromRGB(98, 37, 209)
							fire.SecondaryColor = Color3.fromRGB(151, 24, 255)
						elseif randomcolor == 3 then
							fire.Color = Color3.fromRGB(27, 42, 53)
							fire.SecondaryColor = Color3.fromRGB(55, 64, 79)
						end
						local smoke = new("Smoke")
						smoke.Parent = firepart
						smoke.Color = fire.Color
						smoke.Opacity = 0.5
						smoke.RiseVelocity = 10
						smoke.Size = 5
						spawn(function()
							for i = 1,25 do
								wait()
								firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
								firepart.Transparency = firepart.Transparency + 0.05
								firepart.Size = firepart.Size - vect3(0.5,0.5,0.5)
							end
						end)
						spawn(function()
							wait(0.5)
							fire.Enabled = false
							smoke.Enabled = false
							debris:AddItem(firepart,2)
						end)	
					end
				end)
				if heatlvl == 1 or holdinge then
					spawn(function()
						for i = 1,4 do
							magnitudedamage(2.5, "sphere", 0, 10, 2801263, 1.25, 0.9, rt,true,"normal","striker")
							wait(0.15)
						end
					end)
					task.wait(0.45)
					frame = 4
					task.wait(0.073)
					frame = 5
					task.wait(0.073)
					bpos:Destroy()
				elseif heatlvl == 2 then
					if heat > 100 then
						heat = heat - 100
					end
					heatlvl = 1
					spawn(function()
						for i = 1,10 do
							magnitudedamage(3.5, "sphere", 0, 10, 2801263, 1.25, 0.9, rt,true,"normal","striker")
							wait(0.06)
						end
					end)
					task.wait(0.45)
					frame = 4
					task.wait(0.1)
					frame = 5
					task.wait(0.1)
					bpos:Destroy()
				elseif heatlvl == 3 then
					if heat > 100 then
						heat = heat - 200
					end
					heatlvl = 1
					spawn(function()
						for i = 1,10 do
							magnitudedamage(3.5, "sphere", 0, 10, 2801263, 1.25, 0.9, rt,true,"normal","striker")
							wait(0.06)
						end
					end)
					task.wait(0.45)
					frame = 4
					task.wait(0.1)
					frame = 5
					task.wait(0.1)
					bpos:Destroy()
					anim = "strikerk"
					frame = 1
					local bpos2 = new("BodyPosition")
					bpos2.Parent = rt
					bpos2.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos2.D = 2000
					bpos2.Position = rt.CFrame * cframe(0,25,0).Position
					local fire = new("Fire")
					fire.Parent = char["Left Leg"]
					fire.Size = 6
					fire.Heat = 10
					fire.Color = color(0.0784314, 0.0784314, 0.0784314)
					fire.SecondaryColor = color(0.384314, 0.145098, 0.819608)
					sound(1273117535,4.5,1,char["Left Leg"],0,false)
					task.wait(0.1)
					frame = 2
					task.wait(0.1)
					frame = 3
					task.wait(0.1)
					sound(7122602098,1,1,char["Left Leg"],0,false)
					magnitudedamage(11.5, "sphere", 0.05, 10, 46153268, 1.5, 0.5, rt,true,"normal","striker2")
					frame = 4
					task.wait(0.1)
					fire.Enabled = false
					debris:AddItem(fire,3)
					bpos2:Destroy()
					task.wait(0.25)
				end
				if holdinge then
					if heat >= 300 then 
						attack = false
						gyro.MaxTorque = vect3(0,math.huge,0)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh 
						return 
					end
					local pe = new("ParticleEmitter")
					local pe0 = new("ParticleEmitter")
					local pe1 = new("ParticleEmitter")
					pe.Parent = char.Torso
					pe.Speed = NumberRange.new(15, 15)
					pe.Orientation = Enum.ParticleOrientation.VelocityParallel
					pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe.LightEmission = 1
					pe.LightInfluence = 1
					pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
					pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
					pe.Drag = 7
					pe.Lifetime = NumberRange.new(0, 1.5)
					pe.Rate = 500
					pe.SpreadAngle = vect2(360, 360)
					pe.VelocitySpread = 360
					pe0.Parent = char.Torso
					pe0.Speed = NumberRange.new(0, 20)
					pe0.Rotation = NumberRange.new(-360, 360)
					pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
					pe0.LightEmission = 1
					pe0.LightInfluence = 1
					pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
					pe0.Transparency = NumberSequence.new(1,0,1)
					pe0.Size = NumberSequence.new(0.5624997615814209,0)
					pe0.Shape = Enum.ParticleEmitterShape.Sphere
					pe0.Acceleration = vect3(0, -15, 0)
					pe0.Drag = 10
					pe0.Lifetime = NumberRange.new(0, 1.5)
					pe0.Rate = 1000
					pe0.RotSpeed = NumberRange.new(100, 100)
					pe1.Parent = char.Torso
					pe1.Speed = NumberRange.new(15, 15)
					pe1.Rotation = NumberRange.new(0, 360)
					pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe1.LightEmission = 1
					pe1.LightInfluence = 1
					pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
					pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe1.Size = NumberSequence.new(0.30000001192092896,0)
					pe1.Drag = 10
					pe1.Lifetime = NumberRange.new(0, 1.5)
					pe1.Rate = 10000
					pe1.RotSpeed = NumberRange.new(50, 50)
					pe1.SpreadAngle = vect2(360, 360)
					pe1.VelocitySpread = 360
					local sphere = new("Part")
					sphere.Parent = char
					sphere.Name = "YuiEffect"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0.5
					sphere.BrickColor = bc("Cool yellow")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
					tween:Play()
					debris:AddItem(sphere,2)
					sound(1613998698,1.5,1,rt,0.3,false)
					if not inair then
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "yui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					else
						rt.Anchored = true
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "ayui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						rt.Anchored = false
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "tyrant" then
				tyrantcooldown = true
				spawn(function()
					task.wait(1.5)
					tyrantcooldown = false
				end)
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "tyrant"
				frame = 1
				chatter(char,"Tyrant Revolver!")
				local randomquote = random(0,2)
				local gender = "Male"
				if char:FindFirstChild("Gender") then
					gender = char:FindFirstChild("Gender").Value
				else
					gender = "Male"
				end
				if owner.UserId == 50203523 then
					if gender == "Male" then
						if randomquote == 0 then
							sound1("banditrevolver.wav",3,1.1,char.Head,0,false)
						elseif randomquote == 1 then
							sound1("tyrantrevolver.wav",3,1.1,char.Head,0,false)
						else
							sound1("bandit.wav",3,1.1,char.Head,0,false)
						end
					else
						if randomquote == 0 then
							sound1("banditrevolver.wav",3,1.6,char.Head,0,false)
						elseif randomquote == 1 then
							sound1("tyrantrevolver.wav",3,1.6,char.Head,0,false)
						else
							sound1("bandit.wav",3,1.6,char.Head,0,false)
						end
					end
				end
				task.wait(0.175)
				frame = 2
				local bpos = new("BodyPosition")
				bpos.Parent = rt
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 2500
				bpos.Position = rt.CFrame * cframe(0,30,-75).Position
				sound(7122602098,1,0.85,Handle,0,false)
				magnitudedamage(6.5, "sphere", 0.05, 10, 46153268, 1.25, 0.65, rt,true,"normal","tyrant")
				task.wait(0.2)
				bpos:Destroy()
				task.wait(0.15)
				if heatlvl == 1 or holdinge then
					anim = "aslash"
					frame = 1
					local bpos = new("BodyPosition")
					bpos.Parent = rt
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.D = 2500
					bpos.Position = rt.CFrame * cframe(0,15,-75).Position
					task.wait(0.045)
					frame = 2
					sound(7122602098,1,0.65,Handle,0,false)
					trail.Enabled = true
					trail2.Enabled = true	
					task.wait(0.045)
					frame = 3
					partdamage(10,"sphere", 0, 10, 107083556408593, 1.2, 1, rt,true,"slash2","tyrant2",0.165,"tyrant")
					task.wait(0.175)
					trail.Enabled = false
					trail2.Enabled = false	
					bpos:Destroy()
					frame = 1
				elseif heatlvl == 2 then
					if heat > 100 then
						heat = heat - 100
					end
					heatlvl = 1
					anim = "aslash"
					frame = 1
					local bpos = new("BodyPosition")
					bpos.Parent = rt
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.D = 2500
					bpos.Position = rt.CFrame * cframe(0,15,-75).Position
					task.wait(0.045)
					frame = 2
					sound(7122602098,1,0.65,Handle,0,false)
					trail.Enabled = true
					trail2.Enabled = true	
					task.wait(0.045)
					frame = 3
					partdamage(10,"sphere", 0, 5, 107083556408593, 1.2, 1, rt,true,"slash2","tyrant",0.15,"tyrant")
					task.wait(0.1)
					bpos:Destroy()
					trail.Enabled = false
					trail2.Enabled = false	
					anim = "strikerk"
					frame = 1
					local bpos2 = new("BodyPosition")
					bpos2.Parent = rt
					bpos2.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos2.D = 2000
					bpos2.Position = rt.CFrame * cframe(0,7.5,-30).Position
					local fire = new("Fire")
					fire.Parent = char["Left Leg"]
					fire.Size = 6
					fire.Heat = 10
					fire.Color = color(0.0784314, 0.0784314, 0.0784314)
					fire.SecondaryColor = color(0.384314, 0.145098, 0.819608)
					sound(1273117535,4.5,1,char["Left Leg"],0,false)
					task.wait(0.1)
					frame = 2
					task.wait(0.1)
					frame = 3
					task.wait(0.1)
					sound(7122602098,1,1,char["Left Leg"],0,false)
					magnitudedamage(11.5, "sphere", 0.05, 10, 46153268, 1.5, 0.5, rt,true,"normal","striker2")
					frame = 4
					task.wait(0.15)
					fire.Enabled = false
					debris:AddItem(fire,3)
					bpos2:Destroy()
				elseif heatlvl == 3 then
					if heat > 100 then
						heat = heat - 200
					end
					heatlvl = 1
					anim = "aslash"
					frame = 1
					local bpos = new("BodyPosition")
					bpos.Parent = rt
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.D = 2500
					bpos.Position = rt.CFrame * cframe(0,15,-75).Position
					task.wait(0.045)
					frame = 2
					sound(7122602098,1,0.65,Handle,0,false)
					trail.Enabled = true
					trail2.Enabled = true	
					task.wait(0.045)
					frame = 3
					partdamage(10,"sphere", 0, 5, 107083556408593, 1.2, 1, rt,true,"slash2","tyrant",0.15,"tyrant")
					task.wait(0.1)
					trail.Enabled = false
					trail2.Enabled = false	
					bpos:Destroy()
					anim = "strikerk"
					frame = 4
					task.wait(0.1)
					local bpos2 = new("BodyPosition")
					bpos2.Parent = rt
					bpos2.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos2.D = 2000
					bpos2.Position = rt.CFrame * cframe(0,7.5,-35).Position
					anim = "adrive"
					frame = 1
					task.wait(0.15)
					anim = "tyrant"
					sound(7122602098,1,1,Handle,0,false)
					frame = 3
					Tool.Grip = cframe(-0.25, 0.25, 0, -4.37113883e-08, -0.965925872, -0.258818954, 0, 0.258818954, -0.965925872, 1, -4.22219593e-08, -1.1313336e-08)
					magnitudedamage(11.5, "boom", 0.05, 10, 46153268, 1.5, 0.5, rt,true,"burn","tyrant3")
					task.wait(0.15)
					bpos2:Destroy()
					Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					frame = 1
				end
				if holdinge then
					if heat >= 300 then 
						attack = false
						gyro.MaxTorque = vect3(0,math.huge,0)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh 
						return 
					end
					local pe = new("ParticleEmitter")
					local pe0 = new("ParticleEmitter")
					local pe1 = new("ParticleEmitter")
					pe.Parent = char.Torso
					pe.Speed = NumberRange.new(15, 15)
					pe.Orientation = Enum.ParticleOrientation.VelocityParallel
					pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe.LightEmission = 1
					pe.LightInfluence = 1
					pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
					pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
					pe.Drag = 7
					pe.Lifetime = NumberRange.new(0, 1.5)
					pe.Rate = 500
					pe.SpreadAngle = vect2(360, 360)
					pe.VelocitySpread = 360
					pe0.Parent = char.Torso
					pe0.Speed = NumberRange.new(0, 20)
					pe0.Rotation = NumberRange.new(-360, 360)
					pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
					pe0.LightEmission = 1
					pe0.LightInfluence = 1
					pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
					pe0.Transparency = NumberSequence.new(1,0,1)
					pe0.Size = NumberSequence.new(0.5624997615814209,0)
					pe0.Shape = Enum.ParticleEmitterShape.Sphere
					pe0.Acceleration = vect3(0, -15, 0)
					pe0.Drag = 10
					pe0.Lifetime = NumberRange.new(0, 1.5)
					pe0.Rate = 1000
					pe0.RotSpeed = NumberRange.new(100, 100)
					pe1.Parent = char.Torso
					pe1.Speed = NumberRange.new(15, 15)
					pe1.Rotation = NumberRange.new(0, 360)
					pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe1.LightEmission = 1
					pe1.LightInfluence = 1
					pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
					pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe1.Size = NumberSequence.new(0.30000001192092896,0)
					pe1.Drag = 10
					pe1.Lifetime = NumberRange.new(0, 1.5)
					pe1.Rate = 10000
					pe1.RotSpeed = NumberRange.new(50, 50)
					pe1.SpreadAngle = vect2(360, 360)
					pe1.VelocitySpread = 360
					local sphere = new("Part")
					sphere.Parent = char
					sphere.Name = "YuiEffect"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0.5
					sphere.BrickColor = bc("Cool yellow")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
					tween:Play()
					debris:AddItem(sphere,2)
					sound(1613998698,1.5,1,rt,0.3,false)
					if not inair then
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "yui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					else
						rt.Anchored = true
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "ayui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						rt.Anchored = false
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "vortex" then
				--GUN BLADE!! (basically what I hear when Order-Sol performs Gun Blaze)
				vortexcooldown = true
				spawn(function()
					task.wait(2.5)
					vortexcooldown = false
				end)
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "tyrant"
				frame = 1
				local lines = {
					"Vortex Eclipse!",
					"Go!",
					"DASHING VORTEX!!",
				}
				chatter(char,lines[random(1,#lines)])
				local randomquote = random(0,2)
				local gender = "Male"
				if char:FindFirstChild("Gender") then
					gender = char:FindFirstChild("Gender").Value
				else
					gender = "Male"
				end
				if owner.UserId == 50203523 then
					if gender == "Male" then
						if randomquote == 0 then
							voice("yuki/yuki_1100-100.wav",3,1.1,char.Head,0,false)
						elseif randomquote == 1 then
							voice("yuki/yuki_1100-110.wav",3,1.1,char.Head,0,false)
						else
							voice("yuki/yuki_1100-120.wav",3,1.1,char.Head,0,false)
						end
					else
						if randomquote == 0 then
							voice("yuki/yuki_1100-100.wav",3,1.6,char.Head,0,false)
						elseif randomquote == 1 then
							voice("yuki/yuki_1100-110.wav",3,1.6,char.Head,0,false)
						else
							voice("yuki/yuki_1100-120.wav",3,1.6,char.Head,0,false)
						end
					end
				end
				task.wait(0.15)
				sound(2697294,1.5,0.4,rt,0,false)
				sound(2693351,1.25,0.4,rt,0,false)
				local dash = new("Part")
				local dashw = new("Weld")
				local dashp = new("ParticleEmitter")
				dash.Name = "Dust Devil"
				dash.Parent = rt
				dash.CanCollide = false
				dash.CanTouch = false
				dash.Transparency = 1
				dash.Size = vect3(0.001,0.001,0.001)
				dashw.Parent = dash
				dashw.C0 = dashw.C0 * cframe(0, 2.5, 2.5)
				dashw.Part0 = dash
				dashw.Part1 = rt
				dashp.Name = "Debris"
				dashp.Parent = dash
				dashp.Speed = NumberRange.new(22, 22)
				dashp.Rotation = NumberRange.new(1, 360)
				dashp.Color = ColorSequence.new(color(0, 0, 0),color(0.447059, 0.231373, 0.705882))
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
				anim = "vortex"
				frame = 1
				Tool.Grip = cframe(-0.25, -1, 0, -4.37113883e-08, -0.965925872, -0.258818954, 0, 0.258818954, -0.965925872, 1, -4.22219593e-08, -1.1313336e-08)
				local bpos = new("BodyPosition")
				bpos.Parent = rt
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 1750
				bpos.Position = rt.CFrame * cframe(0,0,-75).Position
				local attacking = true
				spawn(function()
					while attacking do 
						magnitudedamage(5, "sphere", 0, 11.5, 2691586, 1.25, 1.05, rt,true,"normal","vortex")
						wait(0.1)
					end
				end)
				task.wait(0.5)
				dashp.Enabled = false
				debris:AddItem(dash,2)
				attacking = false
				bpos.D = 2250
				frame = 2
				Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
				spawn(function()
					task.wait(0.15)
					if heatlvl == 1 or holdinge then
						local fpw = new("Part")
						local fpwm = new("SpecialMesh")
						local fp = new("Part")
						local fpm = new("SpecialMesh")
						local fp2 = new("Part")
						local fpm2 = new("SpecialMesh")
						local fpw2 = new("Part")
						local fpwm2 = new("SpecialMesh")
						fpw2.Parent = script
						fpw2.Transparency = 0.05
						fpw2.Size = vect3(1, 1, 1)
						fpw2.Anchored = true
						fpw2.BottomSurface = Enum.SurfaceType.Smooth
						fpw2.BrickColor = bc("Dark indigo")
						fpw2.CanCollide = false
						fpw2.TopSurface = Enum.SurfaceType.Smooth
						fpwm2.Parent = fpw2
						fpwm2.MeshId = "rbxassetid://20329976"
						fpwm2.Scale = vect3(3, 3, 3)
						fpwm2.MeshType = Enum.MeshType.FileMesh
						fpw.Name = "FirePillarWave"
						fpw.Parent = fpw2
						fpw.Transparency = 0.25
						fpw.Size = vect3(1, 1, 1)
						fpw.Anchored = true
						fpw.BottomSurface = Enum.SurfaceType.Smooth
						fpw.BrickColor = bc("Really black")
						fpw.CanCollide = false
						fpw.TopSurface = Enum.SurfaceType.Smooth
						fpwm.Parent = fpw
						fpwm.MeshId = "rbxassetid://20329976"
						fpwm.Scale = vect3(3.5, 3.5, 3.5)
						fpwm.MeshType = Enum.MeshType.FileMesh
						fp.Name = "FirePillar"
						fp.Parent = fpw2
						fp.Transparency = 0.25
						fp.Size = vect3(2.5, 5, 2.5)
						fp.Anchored = true
						fp.BottomSurface = Enum.SurfaceType.Smooth
						fp.BrickColor = bc("Really black")
						fp.CanCollide = false
						fp.TopSurface = Enum.SurfaceType.Smooth
						fpm.Parent = fp
						fpm.MeshType = Enum.MeshType.Sphere
						fp2.Name = "GUN BLADE!!"
						fp2.Parent = fpw2
						fp2.Transparency = 0.05
						fp2.Size = vect3(2, 2.5, 2)
						fp2.Anchored = true
						fp2.BottomSurface = Enum.SurfaceType.Smooth
						fp2.BrickColor = bc("Dark indigo")
						fp2.CanCollide = false
						fp2.TopSurface = Enum.SurfaceType.Smooth
						fpm2.Parent = fp2
						fpm2.MeshType = Enum.MeshType.Sphere
						fpw.Material = "Neon"
						fpw2.Material = "Neon"
						fp.Material = "Neon"
						fp2.Material = "Neon"
						fpw2.CFrame = rt.CFrame * cframe(0,-1.5,-5)
						fpw.CFrame = rt.CFrame * cframe(0,-1.5,-5)
						fp.CFrame = rt.CFrame * cframe(0,-1.5,-5)
						fp2.CFrame = rt.CFrame * cframe(0,-1.5,-5)
						magnitudedamage(7.5,"sphere", 0, 10, 2248511, 1.5, 1, fp,true,"burn","vortex2")
						sound(48618802,1.15,1.5,fp,0,false)
						local tween = tweens:Create(fpw2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
						tween:Play()
						local tweenM = tweens:Create(fpwm2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.05,15),Offset = vect3(0,-1.5,-1)})
						tweenM:Play()
						local tween1 = tweens:Create(fpw,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
						tween1:Play()
						local tweenM1 = tweens:Create(fpwm,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.025,17.5),Offset = vect3(0,-1.5,-1)})
						tweenM1:Play()
						local tween2 = tweens:Create(fp,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = fp.CFrame * angles(0,rad(180),0),Size = vect3(3,45,3),Transparency = 1})
						tween2:Play()
						local tween3 = tweens:Create(fp2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = fp.CFrame * angles(0,rad(180),0),Size = vect3(2.75,35,2.75),Transparency = 1})
						tween3:Play()
						tween.Completed:Connect(function() fpw2:Destroy()end)
						tween1.Completed:Connect(function() fpw:Destroy() end)
						tween2.Completed:Connect(function() fp:Destroy()end)
						tween3.Completed:Connect(function() fp2:Destroy() end)
					elseif heatlvl == 2 then
						if heat > 100 then
							heat = heat - 100
						end
						heatlvl = 1
						local pos = rt.CFrame
						local direction = pos.lookVector
						for i=1, 2 do
							local posit = pos+(direction*i*8)
							local fpw = new("Part")
							local fpwm = new("SpecialMesh")
							local fp = new("Part")
							local fpm = new("SpecialMesh")
							local fp2 = new("Part")
							local fpm2 = new("SpecialMesh")
							local fpw2 = new("Part")
							local fpwm2 = new("SpecialMesh")
							fpw2.Parent = script
							fpw2.Transparency = 0.05
							fpw2.Size = vect3(1, 1, 1)
							fpw2.Anchored = true
							fpw2.BottomSurface = Enum.SurfaceType.Smooth
							fpw2.BrickColor = bc("Dark indigo")
							fpw2.CanCollide = false
							fpw2.TopSurface = Enum.SurfaceType.Smooth
							fpwm2.Parent = fpw2
							fpwm2.MeshId = "rbxassetid://20329976"
							fpwm2.Scale = vect3(3, 3, 3)
							fpwm2.MeshType = Enum.MeshType.FileMesh
							fpw.Name = "FirePillarWave"
							fpw.Parent = fpw2
							fpw.Transparency = 0.25
							fpw.Size = vect3(1, 1, 1)
							fpw.Anchored = true
							fpw.BottomSurface = Enum.SurfaceType.Smooth
							fpw.BrickColor = bc("Really black")
							fpw.CanCollide = false
							fpw.TopSurface = Enum.SurfaceType.Smooth
							fpwm.Parent = fpw
							fpwm.MeshId = "rbxassetid://20329976"
							fpwm.Scale = vect3(3.5, 3.5, 3.5)
							fpwm.MeshType = Enum.MeshType.FileMesh
							fp.Name = "FirePillar"
							fp.Parent = fpw2
							fp.Transparency = 0.25
							fp.Size = vect3(2.5, 5, 2.5)
							fp.Anchored = true
							fp.BottomSurface = Enum.SurfaceType.Smooth
							fp.BrickColor = bc("Really black")
							fp.CanCollide = false
							fp.TopSurface = Enum.SurfaceType.Smooth
							fpm.Parent = fp
							fpm.MeshType = Enum.MeshType.Sphere
							fp2.Name = "GUN BLADE!!"
							fp2.Parent = fpw2
							fp2.Transparency = 0.05
							fp2.Size = vect3(2, 2.5, 2)
							fp2.Anchored = true
							fp2.BottomSurface = Enum.SurfaceType.Smooth
							fp2.BrickColor = bc("Dark indigo")
							fp2.CanCollide = false
							fp2.TopSurface = Enum.SurfaceType.Smooth
							fpm2.Parent = fp2
							fpm2.MeshType = Enum.MeshType.Sphere
							fpw.Material = "Neon"
							fpw2.Material = "Neon"
							fp.Material = "Neon"
							fp2.Material = "Neon"
							fpw2.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							fpw.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							fp.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							fp2.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							if i == 2 then
								magnitudedamage(7.5,"sphere", 0, 10, 2248511, 1.5, 1, fp,true,"burn","vortex2")
							else
								magnitudedamage(7.5,"sphere", 0, 10, 2248511, 1.5, 1, fp,true,"normal","vortex3")
							end
							sound(48618802,1.15,1.5,fp,0,false)
							local tween = tweens:Create(fpw2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
							tween:Play()
							local tweenM = tweens:Create(fpwm2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.05,15),Offset = vect3(0,-1.5,-1)})
							tweenM:Play()
							local tween1 = tweens:Create(fpw,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
							tween1:Play()
							local tweenM1 = tweens:Create(fpwm,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.025,17.5),Offset = vect3(0,-1.5,-1)})
							tweenM1:Play()
							local tween2 = tweens:Create(fp,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = fp.CFrame * angles(0,rad(180),0),Size = vect3(3,45,3),Transparency = 1})
							tween2:Play()
							local tween3 = tweens:Create(fp2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = fp.CFrame * angles(0,rad(180),0),Size = vect3(2.75,35,2.75),Transparency = 1})
							tween3:Play()
							tween.Completed:Connect(function() fpw2:Destroy()end)
							tween1.Completed:Connect(function() fpw:Destroy() end)
							tween2.Completed:Connect(function() fp:Destroy()end)
							tween3.Completed:Connect(function() fp2:Destroy() end)
							wait(.225)
						end
					elseif heatlvl == 3 then
						if heat > 100 then
							heat = heat - 200
						end
						heatlvl = 1
						local pos = rt.CFrame
						local direction = pos.lookVector
						for i=1, 3 do
							local posit = pos+(direction*i*8)
							local fpw = new("Part")
							local fpwm = new("SpecialMesh")
							local fp = new("Part")
							local fpm = new("SpecialMesh")
							local fp2 = new("Part")
							local fpm2 = new("SpecialMesh")
							local fpw2 = new("Part")
							local fpwm2 = new("SpecialMesh")
							fpw2.Parent = script
							fpw2.Transparency = 0.05
							fpw2.Size = vect3(1, 1, 1)
							fpw2.Anchored = true
							fpw2.BottomSurface = Enum.SurfaceType.Smooth
							fpw2.BrickColor = bc("Dark indigo")
							fpw2.CanCollide = false
							fpw2.TopSurface = Enum.SurfaceType.Smooth
							fpwm2.Parent = fpw2
							fpwm2.MeshId = "rbxassetid://20329976"
							fpwm2.Scale = vect3(3, 3, 3)
							fpwm2.MeshType = Enum.MeshType.FileMesh
							fpw.Name = "FirePillarWave"
							fpw.Parent = fpw2
							fpw.Transparency = 0.25
							fpw.Size = vect3(1, 1, 1)
							fpw.Anchored = true
							fpw.BottomSurface = Enum.SurfaceType.Smooth
							fpw.BrickColor = bc("Really black")
							fpw.CanCollide = false
							fpw.TopSurface = Enum.SurfaceType.Smooth
							fpwm.Parent = fpw
							fpwm.MeshId = "rbxassetid://20329976"
							fpwm.Scale = vect3(3.5, 3.5, 3.5)
							fpwm.MeshType = Enum.MeshType.FileMesh
							fp.Name = "FirePillar"
							fp.Parent = fpw2
							fp.Transparency = 0.25
							fp.Size = vect3(2.5, 5, 2.5)
							fp.Anchored = true
							fp.BottomSurface = Enum.SurfaceType.Smooth
							fp.BrickColor = bc("Really black")
							fp.CanCollide = false
							fp.TopSurface = Enum.SurfaceType.Smooth
							fpm.Parent = fp
							fpm.MeshType = Enum.MeshType.Sphere
							fp2.Name = "GUN BLADE!!"
							fp2.Parent = fpw2
							fp2.Transparency = 0.05
							fp2.Size = vect3(2, 2.5, 2)
							fp2.Anchored = true
							fp2.BottomSurface = Enum.SurfaceType.Smooth
							fp2.BrickColor = bc("Dark indigo")
							fp2.CanCollide = false
							fp2.TopSurface = Enum.SurfaceType.Smooth
							fpm2.Parent = fp2
							fpm2.MeshType = Enum.MeshType.Sphere
							fpw.Material = "Neon"
							fpw2.Material = "Neon"
							fp.Material = "Neon"
							fp2.Material = "Neon"
							fpw2.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							fpw.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							fp.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							fp2.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
							if i == 3 then
								magnitudedamage(7.5,"sphere", 0, 10, 2248511, 1.5, 1, fp,true,"burn","vortex2")
							else
								magnitudedamage(7.5,"sphere", 0, 10, 2248511, 1.5, 1, fp,true,"normal","vortex3")
							end
							sound(48618802,1.15,1.5,fp,0,false)
							local tween = tweens:Create(fpw2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
							tween:Play()
							local tweenM = tweens:Create(fpwm2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.05,15),Offset = vect3(0,-1.5,-1)})
							tweenM:Play()
							local tween1 = tweens:Create(fpw,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
							tween1:Play()
							local tweenM1 = tweens:Create(fpwm,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.025,17.5),Offset = vect3(0,-1.5,-1)})
							tweenM1:Play()
							local tween2 = tweens:Create(fp,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = fp.CFrame * angles(0,rad(180),0),Size = vect3(3,45,3),Transparency = 1})
							tween2:Play()
							local tween3 = tweens:Create(fp2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = fp.CFrame * angles(0,rad(180),0),Size = vect3(2.75,35,2.75),Transparency = 1})
							tween3:Play()
							tween.Completed:Connect(function() fpw2:Destroy()end)
							tween1.Completed:Connect(function() fpw:Destroy() end)
							tween2.Completed:Connect(function() fp:Destroy()end)
							tween3.Completed:Connect(function() fp2:Destroy() end)
							wait(.175)
						end
					end
				end)
				task.wait(0.15)
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5) * angles(0,rad(180),0)
				frame = 3
				task.wait(0.325)
				bpos:Destroy()
				if holdinge then
					if heat >= 300 then 
						attack = false
						gyro.MaxTorque = vect3(0,math.huge,0)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh 
						return 
					end
					local pe = new("ParticleEmitter")
					local pe0 = new("ParticleEmitter")
					local pe1 = new("ParticleEmitter")
					pe.Parent = char.Torso
					pe.Speed = NumberRange.new(15, 15)
					pe.Orientation = Enum.ParticleOrientation.VelocityParallel
					pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe.LightEmission = 1
					pe.LightInfluence = 1
					pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
					pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
					pe.Drag = 7
					pe.Lifetime = NumberRange.new(0, 1.5)
					pe.Rate = 500
					pe.SpreadAngle = vect2(360, 360)
					pe.VelocitySpread = 360
					pe0.Parent = char.Torso
					pe0.Speed = NumberRange.new(0, 20)
					pe0.Rotation = NumberRange.new(-360, 360)
					pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
					pe0.LightEmission = 1
					pe0.LightInfluence = 1
					pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
					pe0.Transparency = NumberSequence.new(1,0,1)
					pe0.Size = NumberSequence.new(0.5624997615814209,0)
					pe0.Shape = Enum.ParticleEmitterShape.Sphere
					pe0.Acceleration = vect3(0, -15, 0)
					pe0.Drag = 10
					pe0.Lifetime = NumberRange.new(0, 1.5)
					pe0.Rate = 1000
					pe0.RotSpeed = NumberRange.new(100, 100)
					pe1.Parent = char.Torso
					pe1.Speed = NumberRange.new(15, 15)
					pe1.Rotation = NumberRange.new(0, 360)
					pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe1.LightEmission = 1
					pe1.LightInfluence = 1
					pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
					pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe1.Size = NumberSequence.new(0.30000001192092896,0)
					pe1.Drag = 10
					pe1.Lifetime = NumberRange.new(0, 1.5)
					pe1.Rate = 10000
					pe1.RotSpeed = NumberRange.new(50, 50)
					pe1.SpreadAngle = vect2(360, 360)
					pe1.VelocitySpread = 360
					local sphere = new("Part")
					sphere.Parent = char
					sphere.Name = "YuiEffect"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0.5
					sphere.BrickColor = bc("Cool yellow")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
					tween:Play()
					debris:AddItem(sphere,2)
					sound(1613998698,1.5,1,rt,0.3,false)
					if not inair then
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "yui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					else
						rt.Anchored = true
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "ayui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						rt.Anchored = false
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "redstar" then
				attack = true
				starcooldown = true
				spawn(function()
					task.wait(2.5)
					starcooldown = false
				end)
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "redstar"
				frame = 1
				local lines = {
					"Star Spike!",
					"Crush!",
					--*insert funny Star Glitcher joke*
					"Shatter!"
				}
				chatter(char,lines[random(1,#lines)])
				local randomquote = random(0,2)
				local gender = "Male"
				if char:FindFirstChild("Gender") then
					gender = char:FindFirstChild("Gender").Value
				else
					gender = "Male"
				end
				if owner.UserId == 50203523 then
					if gender == "Male" then
						if randomquote == 0 then
							voice("yuki/yuki_1300-2.wav",3,1.1,char.Head,0,false)
						elseif randomquote == 1 then
							voice("yuki/yuki_1300-12.wav",3,1.1,char.Head,0,false)
						else
							voice("yuki/yuki_1300-22.wav",3,1.1,char.Head,0,false)
						end
					else
						if randomquote == 0 then
							voice("yuki/yuki_1300-2.wav",3,1.6,char.Head,0,false)
						elseif randomquote == 1 then
							voice("yuki/yuki_1300-12.wav",3,1.6,char.Head,0,false)
						else
							voice("yuki/yuki_1300-22.wav",3,1.6,char.Head,0,false)
						end
					end
				end
				sound(10209908,1,1,Handle,0,false)
				if heatlvl == 1 or holdinge then
					local spikec = new("Part")
					local spikecm = new("SpecialMesh")
					spikec.Name = "SpikeCircle"
					spikec.Parent = char
					spikec.Size = vect3(0.001,0.001,0.001)
					spikec.BrickColor = bc("Really black")
					spikec.BottomSurface = Enum.SurfaceType.Smooth
					spikec.Locked = true
					spikec.TopSurface = Enum.SurfaceType.Smooth
					spikecm.Name = "Spell"
					spikecm.Parent = spikec
					spikecm.MeshId = "rbxassetid://4876346853"
					spikecm.MeshType = Enum.MeshType.FileMesh
					spikec.Anchored = true
					spikec.CanCollide = false
					spikec.CFrame = rt.CFrame * angles(0,rad(-90),0) * cframe(-5,-1.5,-0)
					local tweenM = tweens:Create(spikecm,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(7.5,5,7.5), Offset = vect3(-2.5,5.15,0)})
					tweenM:Play()
					local doingspike = true
					local doingring = true
					spawn(function()
						wait(2.5)
						local tween = tweens:Create(spikecm,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(0,0,0), Offset = vect3(-2.5,-1.5,0)})
						tween:Play()
						tween.Completed:Connect(function() doingring = false end)
					end)
					spawn(function()
						while doingspike do
							wait()
							if doingring then
								spikec.CFrame = spikec.CFrame * angles(0, rad(15), 0)
							else
								if spikec.Transparency < 1 then
									if spikec ~= nil then
										spikec.Transparency = spikec.Transparency + 0.05
									end
								else
									spikec:Destroy()
									doingspike = false
									break							
								end
							end
						end
					end)
					spawn(function()
						for i = 1, 9 do
							wait(0.01)
							spawn(function()
								local spike = new("Part")
								local spikem = new("SpecialMesh")
								spike.Name = "Spike"
								spike.Parent = script
								spike.BottomSurface = Enum.SurfaceType.Weld
								spike.TopSurface = Enum.SurfaceType.Smooth
								spike.Locked = true
								spike.CanCollide = false
								spike.Anchored = true
								spike.BrickColor = bc("Black")
								spikem.Parent = spike
								spikem.MeshId = "http://www.roblox.com/asset/?id=1033714"
								spikem.Scale = vect3(0.9, 4.8, 0.9)
								spikem.MeshType = Enum.MeshType.FileMesh
								spike.CFrame = rt.CFrame * cframe(0,-5,-5)
								spike.CFrame = spike.CFrame  * angles(rad(random(-8,8)),rad(random(-8,8)),rad(random(-8,8)))
								local tween = tweens:Create(spike,TweenInfo.new(0.25,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = spike.CFrame * cframe(0,7.5,0),Transparency = 0})
								local d = tweens:Create(spike,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = spike.CFrame * cframe(0,-15,-0),Transparency = 1})
								local meshtween = tweens:Create(spikem,TweenInfo.new(0.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(0.5, 25, 0.5),Offset = vect3(0, 0, 0)})
								local transparency = tweens:Create(spike,TweenInfo.new(0.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
								meshtween:Play()
								tween:Play()
								sound(8389443538,1.5,1,spike,0,false)
								local hitbox = new("Part")
								hitbox.Parent = script
								hitbox.Anchored = true
								hitbox.CanCollide = false
								hitbox.Size = vect3(5, 11, 5)
								hitbox.BottomSurface = Enum.SurfaceType.Smooth
								hitbox.TopSurface = Enum.SurfaceType.Smooth
								hitbox.CFrame = rt.CFrame * cframe(0,0,-3)
								hitbox.Transparency = 1
								magnitudedamage(1.15, "sphere", 0, 7.5, 96667969, 1.15, 1, hitbox,true,"slash2","redstar")
								debris:AddItem(hitbox,0.15)
								wait(2.5)
								transparency:Play()
								d:Play()
								transparency.Completed:Connect(function() wait(0.75) spike.Transparency=1 spikem:Destroy() spike:Destroy()end)
							end)
						end
					end)	
				elseif heatlvl == 2 then
					if heat > 100 then
						heat = heat - 100
					end
					heatlvl = 1
					local spellc = new("Part")
					local spellcm = new("BlockMesh")
					local spellcd = new("Decal")
					local spellcl = new("PointLight")
					spellc.Name = "Spike"
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
					spellcd.Texture = "http://www.roblox.com/asset/?id=11227764875"
					spellcd.Face = Enum.NormalId.Top
					spellcd.Transparency = 1
					spellcl.Parent = spellc
					spellcl.Brightness = 1.75
					spellcl.Range = 15
					spellcl.Color = color(0.478431, 0.133333, 1)
					spellc.CFrame = rt.CFrame * cframe(0, -3, -7.5)
					local tween = tweens:Create(spellcd, TweenInfo.new(1), {Transparency = 0})
					tween:Play()
					local doingspike = true
					local doingring = true
					spawn(function()
						while doingspike do
							wait()
							if doingring then
								spellc.CFrame = spellc.CFrame * angles(0, rad(15), 0)
							else
								if spellcd.Transparency < 1 then
									if spellc ~= nil then
										spellcd.Transparency = spellcd.Transparency + 0.05
									end
								else
									spellc:Destroy()
									doingspike = false
									break							
								end
							end
						end
					end)
					task.wait(0.45)
					local bspike = new("Part")
					local bspikem = new("SpecialMesh")
					bspike.Name = "explosion"
					bspike.Parent = char
					bspike.Size = vect3(0.001,0.001,0.001)
					bspike.Anchored = true
					bspike.BrickColor = bc("Black")
					bspike.CanCollide = false
					bspikem.Parent = bspike
					bspikem.MeshId = "http://www.roblox.com/asset/?id=1323306"
					bspike.CFrame = rt.CFrame * cframe(0,-2.5,-7.5)
					local tweenM = tweens:Create(bspikem,TweenInfo.new(0.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(10,20,10)})
					tweenM:Play()
					sound(632831227,1.5,0.75,bspike,0.15,false)
					spawn(function()
						task.wait(0.15)
						magnitudedamage(11.5, "sphere", 0, 7.5, 89343281, 3, 0.25, bspike,true,"slash","redstar")
						task.wait(2)
						doingring = false
						local tweenM = tweens:Create(bspikem,TweenInfo.new(0.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(0,0,0)})
						tweenM:Play()
						tweenM.Completed:Connect(function() bspike:Destroy()end)
					end)
				elseif heatlvl == 3 then
					if heat > 100 then
						heat = heat - 200
					end
					heatlvl = 1
					local spellc = new("Part")
					local spellcm = new("BlockMesh")
					local spellcd = new("Decal")
					local spellcl = new("PointLight")
					spellc.Name = "Spike"
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
					spellcd.Texture = "http://www.roblox.com/asset/?id=11227764875"
					spellcd.Face = Enum.NormalId.Top
					spellcd.Transparency = 1
					spellcl.Parent = spellc
					spellcl.Brightness = 1.75
					spellcl.Range = 15
					spellcl.Color = color(0.478431, 0.133333, 1)
					spellc.CFrame = rt.CFrame * cframe(0, -3, -12.5)
					local tween = tweens:Create(spellcd, TweenInfo.new(1), {Transparency = 0})
					tween:Play()
					local doingspike = true
					local doingring = true
					spawn(function()
						while doingspike do
							wait()
							if doingring then
								spellc.CFrame = spellc.CFrame * angles(0, rad(15), 0)
							else
								if spellcd.Transparency < 1 then
									if spellc ~= nil then
										spellcd.Transparency = spellcd.Transparency + 0.05
									end
								else
									spellc:Destroy()
									doingspike = false
									break							
								end
							end
						end
					end)
					task.wait(0.45)
					local bspike = new("Part")
					local bspikem = new("SpecialMesh")
					bspike.Name = "explosion"
					bspike.Parent = char
					bspike.Size = vect3(0.001,0.001,0.001)
					bspike.Anchored = true
					bspike.BrickColor = bc("Black")
					bspike.CanCollide = false
					bspikem.Parent = bspike
					bspikem.MeshId = "http://www.roblox.com/asset/?id=1323306"
					bspike.CFrame = rt.CFrame * cframe(0,-2.5,-12.5)
					local tweenM = tweens:Create(bspikem,TweenInfo.new(1.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(30,50,30)})
					tweenM:Play()
					sound(632831227,1.5,0.45,bspike,0.15,false)
					spawn(function()
						task.wait(0.25)
						magnitudedamage(19, "sphere", 0, 7.5, 89343281, 3, 0.25, bspike,true,"slash","redstar")
						task.wait(3.5)
						doingring = false
						local tweenM = tweens:Create(bspikem,TweenInfo.new(0.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(0,0,0)})
						tweenM:Play()
						tweenM.Completed:Connect(function() bspike:Destroy()end)
					end)
					task.wait(1)
				end
				task.wait(0.5)
				if holdinge then
					if heat >= 300 then 
						attack = false
						gyro.MaxTorque = vect3(0,math.huge,0)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh 
						return 
					end
					local pe = new("ParticleEmitter")
					local pe0 = new("ParticleEmitter")
					local pe1 = new("ParticleEmitter")
					pe.Parent = char.Torso
					pe.Speed = NumberRange.new(15, 15)
					pe.Orientation = Enum.ParticleOrientation.VelocityParallel
					pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe.LightEmission = 1
					pe.LightInfluence = 1
					pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
					pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
					pe.Drag = 7
					pe.Lifetime = NumberRange.new(0, 1.5)
					pe.Rate = 500
					pe.SpreadAngle = vect2(360, 360)
					pe.VelocitySpread = 360
					pe0.Parent = char.Torso
					pe0.Speed = NumberRange.new(0, 20)
					pe0.Rotation = NumberRange.new(-360, 360)
					pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
					pe0.LightEmission = 1
					pe0.LightInfluence = 1
					pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
					pe0.Transparency = NumberSequence.new(1,0,1)
					pe0.Size = NumberSequence.new(0.5624997615814209,0)
					pe0.Shape = Enum.ParticleEmitterShape.Sphere
					pe0.Acceleration = vect3(0, -15, 0)
					pe0.Drag = 10
					pe0.Lifetime = NumberRange.new(0, 1.5)
					pe0.Rate = 1000
					pe0.RotSpeed = NumberRange.new(100, 100)
					pe1.Parent = char.Torso
					pe1.Speed = NumberRange.new(15, 15)
					pe1.Rotation = NumberRange.new(0, 360)
					pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe1.LightEmission = 1
					pe1.LightInfluence = 1
					pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
					pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe1.Size = NumberSequence.new(0.30000001192092896,0)
					pe1.Drag = 10
					pe1.Lifetime = NumberRange.new(0, 1.5)
					pe1.Rate = 10000
					pe1.RotSpeed = NumberRange.new(50, 50)
					pe1.SpreadAngle = vect2(360, 360)
					pe1.VelocitySpread = 360
					local sphere = new("Part")
					sphere.Parent = char
					sphere.Name = "YuiEffect"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0.5
					sphere.BrickColor = bc("Cool yellow")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
					tween:Play()
					debris:AddItem(sphere,2)
					sound(1613998698,1.5,1,rt,0.3,false)
					if not inair then
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "yui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					else
						rt.Anchored = true
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "ayui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						rt.Anchored = false
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "shade" then
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				local doingshade = true
				local shadecounter = false
				spawn(function()
					wait(1.5)
					doingshade = false
				end)
				anim = "shade"
				frame = 1
				chatter(char,"Without a trace...")
				local gender = "Male"
				if char:FindFirstChild("Gender") then
					gender = char:FindFirstChild("Gender").Value
				else
					gender = "Male"
				end
				if owner.UserId == 50203523 then
					if gender == "Male" then
						voice("yuki/yuki_3000-10.wav",3,1.1,char.Head,0,false)
					else
						voice("yuki/yuki_3000-10.wav",3,1.6,char.Head,0,false)
					end
				end
				local baka = true
				spawn(function()
					local spellc = new("Part")
					local spellcm = new("BlockMesh")
					local spellcd = new("Decal")
					local spellcl = new("PointLight")
					spellc.Name = "ShadeCircle"
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
					spellcd.Parent = spellc
					spellcd.Texture = "http://www.roblox.com/asset/?id=72005006"
					spellcd.Face = Enum.NormalId.Top
					spellcd.Transparency = 1
					local spellcd2 = spellcd:Clone()
					spellcd2.Face = Enum.NormalId.Bottom
					spellcd2.Parent = spellc
					spellcl.Parent = spellc
					spellcl.Brightness = 1.75
					spellcl.Range = 15
					spellcl.Color = color(0.478431, 0.133333, 1)
					local tween = tweens:Create(spellcd, TweenInfo.new(1), {Transparency = 0})
					tween:Play()
					local tween = tweens:Create(spellcd2, TweenInfo.new(1), {Transparency = 0})
					tween:Play()
					local ring = new("Part")
					local ringm = new("SpecialMesh")
					ring.Name = "Handle"
					ring.Parent = spellc
					ring.Size = vect3(0.001, 0.001, 0.001)
					ring.Transparency = 1
					ring.Anchored = true
					ring.CanCollide = false
					ring.CanTouch = false
					ring.Locked = true
					ring.BrickColor = bc("Really black")
					ringm.Parent = ring
					ringm.MeshId = "http://www.roblox.com/asset/?id=3270017"
					local tween = tweens:Create(ring, TweenInfo.new(1), {Transparency = 0})
					tween:Play()
					local tween = tweens:Create(ringm, TweenInfo.new(1), {Scale=vect3(12.5,12.5,12.5)})
					tween:Play()
					local angle = 0
					while baka do
						wait()
						angle = angle + 15
						if doingshade then
							spellc.CFrame = rt.CFrame * cframe(0, 0, -1.5) * angles(rad(90), rad(angle), 0)
							ring.CFrame = rt.CFrame * cframe(0, 0, -1.5) * angles(0, 0, rad(90))
						else
							if spellcd.Transparency < 1 then
								if ring ~= nil then
									ring.Transparency = ring.Transparency + 0.15
								end
								if spellc ~= nil then
									spellcd.Transparency = spellcd.Transparency + 0.15
									spellcd2.Transparency = spellcd2.Transparency + 0.15
								end
							else
								spellc:Destroy()
								baka = false
								break							
							end
						end
					end
				end)
				local currenthp = hum.Health
				repeat
					task.wait()
					if hum.Health < currenthp then 
						if not shadecounter then 
							shadecounter = true 
							doingshade = false 
						end 
						hum.Health = currenthp
					end
					if blazblue then
						task.wait(0.1)
						if not shadecounter then 
							shadecounter = true 
							doingshade = false 
						end 
					end
				until not doingshade or shadecounter
				if shadecounter then
					trail.Enabled = true
					trail2.Enabled = true
					shadecooldown = true
					spawn(function()
						task.wait(15)
						shadecooldown = false
					end)
					sound(62339698,1.15,1,rt,0.05,false)
					if heatlvl == 1 or holdinge then
						magnitudedamage(25,"sphere", 0, 15, 62339698, 1.5, 0.75, rt,true,"normal","shade")
						chatter(char,"HA!")
						local gender = "Male"
						if char:FindFirstChild("Gender") then
							gender = char:FindFirstChild("Gender").Value
						else
							gender = "Male"
						end
						if owner.UserId == 50203523 then
							if gender == "Male" then
								voice("yuki/yuki_202-2.wav",3,1.1,char.Head,0,false)
							else
								voice("yuki/yuki_202-2.wav",3,1.6,char.Head,0,false)
							end
						end
						anim = "slash"
						frame = 2
						rt.CFrame = rt.CFrame * cframe(0,0,-45)
						task.wait(0.5)
					elseif heatlvl == 2 then
						if heat > 100 then
							heat = heat - 100
						end
						heatlvl = 1
						frame = 2
						rt.CFrame = rt.CFrame * cframe(0,0,-75)
						chatter(char,"Dark of all Nights!")
						local gender = "Male"
						if char:FindFirstChild("Gender") then
							gender = char:FindFirstChild("Gender").Value
						else
							gender = "Male"
						end
						if owner.UserId == 50203523 then
							if gender == "Male" then
								voice("yuki/yuki_202-22.wav",3,1.1,char.Head,0,false)
							else
								voice("yuki/yuki_202-22.wav",3,1.6,char.Head,0,false)
							end
						end
						task.wait(0.75)
						local exp = new("Part")
						exp.Parent = char
						exp.Transparency = 1
						exp.Size = vect3(0.001,0.001,0.001)
						exp.Locked = true
						exp.CanCollide = false
						exp.Anchored = true
						exp.CFrame =  rt.CFrame * cframe(0,0,75)
						local dw2 = new("Part")
						local dwm2 = new("SpecialMesh")
						local dp = new("Part")
						local dpm = new("SpecialMesh")
						local dp2 = new("Part")
						local dpm2 = new("SpecialMesh")
						local dw = new("Part")
						local dwm = new("SpecialMesh")
						dw.Parent = exp
						dw.Transparency = 0.05
						dw.Size = vect3(1, 1, 1)
						dw.Anchored = true
						dw.BottomSurface = Enum.SurfaceType.Smooth
						dw.BrickColor = bc("Dark indigo")
						dw.CanCollide = false
						dw.TopSurface = Enum.SurfaceType.Smooth
						dwm.Parent = dw
						dwm.MeshId = "rbxassetid://20329976"
						dwm.Scale = vect3(3, 3, 3)
						dwm.MeshType = Enum.MeshType.FileMesh
						dw2.Name = "Part1"
						dw2.Parent = dw
						dw2.Color = Color3.new(0.768627, 0.156863, 0.109804)
						dw2.Transparency = 0.25
						dw2.Size = vect3(1, 1, 1)
						dw2.Anchored = true
						dw2.BottomSurface = Enum.SurfaceType.Smooth
						dw2.BrickColor = bc("Really black")
						dw2.CanCollide = false
						dw2.TopSurface = Enum.SurfaceType.Smooth
						dwm2.Parent = dw2
						dwm2.MeshId = "rbxassetid://20329976"
						dwm2.Scale = vect3(3.5, 3.5, 3.5)
						dwm2.MeshType = Enum.MeshType.FileMesh
						dp.Name = "dp"
						dp.Parent = dw
						dp.Transparency = 0.25
						dp.Size = vect3(2.5, 5, 2.5)
						dp.Anchored = true
						dp.BottomSurface = Enum.SurfaceType.Smooth
						dp.BrickColor = bc("Really black")
						dp.CanCollide = false
						dp.TopSurface = Enum.SurfaceType.Smooth
						dpm.Parent = dp
						dpm.MeshType = Enum.MeshType.Sphere
						dp2.Name = "Part3"
						dp2.Parent = dw
						dp2.Transparency = 0.05
						dp2.Size = vect3(2, 2.5, 2)
						dp2.Anchored = true
						dp2.BottomSurface = Enum.SurfaceType.Smooth
						dp2.BrickColor = bc("Dark indigo")
						dp2.CanCollide = false
						dp2.TopSurface = Enum.SurfaceType.Smooth
						dpm2.Parent = dp2
						dpm2.MeshType = Enum.MeshType.Sphere
						dw2.Material = "Neon"
						dw.Material = "Neon"
						dp.Material = "Neon"
						dp2.Material = "Neon"
						dw.CFrame = exp.CFrame * cframe(0,-1.5,-0)
						dw2.CFrame = exp.CFrame * cframe(0,-1.5,0)
						dp.CFrame = exp.CFrame * cframe(0,-1.5,0)
						dp2.CFrame = exp.CFrame * cframe(0,-1.5,0)
						magnitudedamage(45,"boom", 0, 10, 8021447194, 1.5, 0.5, dp,true,"burn","shade")
						sound(48618802,1.5,0.75,dp,0,false)
						local tween = tweens:Create(dw,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
						tween:Play()
						local tweenM = tweens:Create(dwm,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.025,15),Offset = vect3(0,-1.5,-1)})
						tweenM:Play()
						local tween1 = tweens:Create(dw2,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
						tween1:Play()
						local tweenM1 = tweens:Create(dwm2,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.015,17.5),Offset = vect3(0,-1.5,-1)})
						tweenM1:Play()
						local tween2 = tweens:Create(dp,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = dp.CFrame * angles(0,rad(180),0),Size = vect3(7.5,60,7.5),Transparency = 1})
						tween2:Play()
						local tween3 = tweens:Create(dp2,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = dp.CFrame * angles(0,rad(180),0),Size = vect3(5,45,5),Transparency = 1})
						tween3:Play()
						tween.Completed:Connect(function() dw:Destroy()end)
						tween1.Completed:Connect(function() dw2:Destroy() end)
						tween2.Completed:Connect(function() dp:Destroy()end)
						tween3.Completed:Connect(function() dp2:Destroy() end)
						task.wait(0.75)
						debris:AddItem(exp,1.5)
					elseif heatlvl == 3 then
						if heat > 100 then
							heat = heat - 200
						end
						heatlvl = 1
						frame = 2
						rt.CFrame = rt.CFrame * cframe(0,0,-150)
						chatter(char,"Dark of all Nights,")
						local gender = "Male"
						if char:FindFirstChild("Gender") then
							gender = char:FindFirstChild("Gender").Value
						else
							gender = "Male"
						end
						if owner.UserId == 50203523 then
							if gender == "Male" then
								voice("yuki/yuki_3000-10.wav",3,1.1,char.Head,0,false)
							else
								voice("yuki/yuki_3000-10.wav",3,1.6,char.Head,0,false)
							end
						end
						task.wait(1.5)
						local gender = "Male"
						if char:FindFirstChild("Gender") then
							gender = char:FindFirstChild("Gender").Value
						else
							gender = "Male"
						end
						if owner.UserId == 50203523 then
							if gender == "Male" then
								voice("yuki/yuki_3000-11.wav",3,1.1,char.Head,0,false)
							else
								voice("yuki/yuki_3000-11.wav",3,1.6,char.Head,0,false)
							end
						end
						chatter(char,"Soul Shade!")
						local doingsoul = true
						local exp = new("Part")
						exp.Parent = script
						exp.Transparency = 1
						exp.Size = vect3(0.001,0.001,0.001)
						exp.Locked = true
						exp.CanCollide = false
						exp.Anchored = true
						exp.CFrame =  rt.CFrame * cframe(0,0,150)
						magnitudedamage(75,"sphere", 0, 15, 2248511, 1.25, 0.3, exp,true,"burn","shade2")
						local shade = new("Part")
						local shadem = new("SpecialMesh")
						shade.Name = "BeamEffect"
						shade.Parent = workspace.Terrain
						shade.CFrame = exp.CFrame * cframe(0,-2.5,0)
						shade.Size = vect3(1,1,1)
						shade.Anchored = true
						shade.BottomSurface = Enum.SurfaceType.Smooth
						shade.BrickColor = bc("Dark indigo")
						shade.Locked = true
						shade.TopSurface = Enum.SurfaceType.Smooth
						shade.CanCollide = false
						debris:AddItem(shade,10)
						sound2(6892640563, 1.25, 0.725, shade, 0,false)
						shadem.Parent = shade
						shadem.Scale = vect3(0, 10000, 1)
						shadem.MeshType = Enum.MeshType.FileMesh
						shadem.Scale = vect3(0, 10000, 0)
						tweens:Create(shadem,TweenInfo.new(2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Scale = vect3(20, 10000, 20)}):Play()
						tweens:Create(shade,TweenInfo.new(2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Transparency = 1}):Play()
						local wp = new("Part")
						local wm = new("SpecialMesh")
						wp.Name = "WavePart"
						wp.Parent = shade
						wp.Transparency = 0.1
						wp.Size = vect3(0.001,0.001,0.001)
						wp.Anchored = true
						wp.BottomSurface = Enum.SurfaceType.Smooth
						wp.BrickColor = bc("Really black")
						wp.CanCollide = false
						wp.TopSurface = Enum.SurfaceType.Smooth
						wm.Parent = wp
						wm.MeshId = "rbxassetid://20329976"
						wm.Scale = vect3(3.5, 7.5, 3.5)
						wm.MeshType = Enum.MeshType.FileMesh
						local wp2 = new("Part")
						local wm2 = new("SpecialMesh")
						wp2.Name = "WavePart"
						wp2.Parent = wp
						wp2.Transparency = 0.025
						wp2.Size = vect3(0.001,0.001,0.001)
						wp2.Anchored = true
						wp2.BottomSurface = Enum.SurfaceType.Smooth
						wp2.BrickColor = bc("Dark indigo")
						wp2.CanCollide = false
						wp2.TopSurface = Enum.SurfaceType.Smooth
						wm2.Parent = wp2
						wm2.MeshId = "rbxassetid://20329976"
						wm2.Scale = vect3(3, 6, 3)
						wm2.MeshType = Enum.MeshType.FileMesh
						wp.Material = "Neon"
						wp2.Material = "Neon"
						wp.CFrame = exp.CFrame * cframe(0,-1.5,-0.45)
						wp2.CFrame = exp.CFrame * cframe(0,-1.5,-0.45)
						sound2(2760979, 1.5, 0.375, wp, 0,false)
						sound2(2693351, 1.25, 0.85, wp, 0,false)
						local tween = tweens:Create(wp,TweenInfo.new(3.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
						tween:Play()
						local tweenM = tweens:Create(wm,TweenInfo.new(3.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.05,15),Offset = vect3(0,-1.5,-1)})
						tweenM:Play()
						local tween1 = tweens:Create(wp2,TweenInfo.new(3.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
						tween1:Play()
						local tweenM1 = tweens:Create(wm2,TweenInfo.new(3.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.025,17.5),Offset = vect3(0,-1.5,-1)})
						tweenM1:Play()
						tween.Completed:Connect(function() wp:Destroy()end)
						tween1.Completed:Connect(function() wp2:Destroy() end)
						local dp = new("Part")
						local dpm = new("SpecialMesh")
						local dp2 = new("Part")
						local dpm2 = new("SpecialMesh")
						dp.Name = "dp"
						dp.Parent = exp
						dp.Transparency = 0.25
						dp.Size = vect3(2.5, 5, 2.5)
						dp.Anchored = true
						dp.BottomSurface = Enum.SurfaceType.Smooth
						dp.BrickColor = bc("Really black")
						dp.CanCollide = false
						dp.TopSurface = Enum.SurfaceType.Smooth
						dpm.Parent = dp
						dpm.MeshType = Enum.MeshType.Sphere
						dp2.Name = "Part3"
						dp2.Parent = dp
						dp2.Transparency = 0.05
						dp2.Size = vect3(2, 2.5, 2)
						dp2.Anchored = true
						dp2.BottomSurface = Enum.SurfaceType.Smooth
						dp2.BrickColor = bc("Dark indigo")
						dp2.CanCollide = false
						dp2.TopSurface = Enum.SurfaceType.Smooth
						dpm2.Parent = dp2
						dpm2.MeshType = Enum.MeshType.Sphere
						dp.Material = "Neon"
						dp2.Material = "Neon"
						dp.CFrame = exp.CFrame * cframe(0,-1.5,0)
						dp2.CFrame = exp.CFrame * cframe(0,-1.5,0)
						magnitudedamage(45,"boom", 0, 10, 8021447194, 1.5, 0.5, dp,true,"burn","shade")
						sound(48618802,1.5,0.75,dp,0,false)
						local tween2 = tweens:Create(dp,TweenInfo.new(2.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = dp.CFrame * angles(0,rad(180),0),Size = vect3(7.5,75,7.5),Transparency = 1})
						tween2:Play()
						local tween3 = tweens:Create(dp2,TweenInfo.new(2.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = dp.CFrame * angles(0,rad(180),0),Size = vect3(5,60,5),Transparency = 1})
						tween3:Play()
						tween2.Completed:Connect(function() dp:Destroy()end)
						tween3.Completed:Connect(function() dp2:Destroy() end)
						debris:AddItem(exp,7.5)
						task.wait(4.5)
					end
					trail.Enabled = false
					trail2.Enabled = false
					if holdinge then
						if heat >= 300 then 
							attack = false
							gyro.MaxTorque = vect3(0,math.huge,0)
							hum.WalkSpeed = ogws
							hum.JumpPower = ogjp
							hum.JumpHeight = ogjh 
							return 
						end
						local pe = new("ParticleEmitter")
						local pe0 = new("ParticleEmitter")
						local pe1 = new("ParticleEmitter")
						pe.Parent = char.Torso
						pe.Speed = NumberRange.new(15, 15)
						pe.Orientation = Enum.ParticleOrientation.VelocityParallel
						pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
						pe.LightEmission = 1
						pe.LightInfluence = 1
						pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
						pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
						pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
						pe.Drag = 7
						pe.Lifetime = NumberRange.new(0, 1.5)
						pe.Rate = 500
						pe.SpreadAngle = vect2(360, 360)
						pe.VelocitySpread = 360
						pe0.Parent = char.Torso
						pe0.Speed = NumberRange.new(0, 20)
						pe0.Rotation = NumberRange.new(-360, 360)
						pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
						pe0.LightEmission = 1
						pe0.LightInfluence = 1
						pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
						pe0.Transparency = NumberSequence.new(1,0,1)
						pe0.Size = NumberSequence.new(0.5624997615814209,0)
						pe0.Shape = Enum.ParticleEmitterShape.Sphere
						pe0.Acceleration = vect3(0, -15, 0)
						pe0.Drag = 10
						pe0.Lifetime = NumberRange.new(0, 1.5)
						pe0.Rate = 1000
						pe0.RotSpeed = NumberRange.new(100, 100)
						pe1.Parent = char.Torso
						pe1.Speed = NumberRange.new(15, 15)
						pe1.Rotation = NumberRange.new(0, 360)
						pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
						pe1.LightEmission = 1
						pe1.LightInfluence = 1
						pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
						pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
						pe1.Size = NumberSequence.new(0.30000001192092896,0)
						pe1.Drag = 10
						pe1.Lifetime = NumberRange.new(0, 1.5)
						pe1.Rate = 10000
						pe1.RotSpeed = NumberRange.new(50, 50)
						pe1.SpreadAngle = vect2(360, 360)
						pe1.VelocitySpread = 360
						local sphere = new("Part")
						sphere.Parent = char
						sphere.Name = "YuiEffect"
						sphere.Shape = "Ball"
						sphere.Size = vect3(2.5,2.5,2.5)
						sphere.Transparency = 0.5
						sphere.BrickColor = bc("Cool yellow")
						sphere.Material = "Neon"
						sphere.CanCollide = false
						sphere.Anchored = true
						sphere.CFrame = rt.CFrame
						local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
						tween:Play()
						debris:AddItem(sphere,2)
						sound(1613998698,1.5,1,rt,0.3,false)
						if not inair then
							Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
							anim = "yui"
							if heat < 300 then
								heat = heat + 50
							end
							if heat > 300 then
								heat = 300
							end
							if heat >= 0 and heat < 100 then
								heatlvl = 1
							elseif heat >= 100 and heat < 200 then
								heatlvl = 2
							elseif heat >= 300 then
								heatlvl = 3
							end
							task.wait(0.45)
							pe0.Enabled = false
							pe1.Enabled = false
							pe.Enabled = false
							debris:AddItem(pe,1.5)
							debris:AddItem(pe0,1.5)
							debris:AddItem(pe1,1.5)
							Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
						else
							rt.Anchored = true
							Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
							anim = "ayui"
							if heat < 300 then
								heat = heat + 50
							end
							if heat > 300 then
								heat = 300
							end
							if heat >= 0 and heat < 100 then
								heatlvl = 1
							elseif heat >= 100 and heat < 200 then
								heatlvl = 2
							elseif heat >= 300 then
								heatlvl = 3
							end
							task.wait(0.45)
							pe0.Enabled = false
							pe1.Enabled = false
							pe.Enabled = false
							debris:AddItem(pe,1.5)
							debris:AddItem(pe0,1.5)
							debris:AddItem(pe1,1.5)
							rt.Anchored = false
							Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
						end
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "summon" then
				if dragonattack then return end
				if dragonsummoned then dragonsummoned = false return end
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				local lines = {
					"Go!",
					"Awaken!",
					"Ogawa-sama...",
				}
				chatter(char,lines[random(1,#lines)])
				sound(157487812,1.5,0.75,rt,0,false)
				local dragon = new("Part")
				local dragonh = new("SpecialMesh")
				dragon.Parent = workspace.Terrain
				dragon.Size = vect3(0.001,0.001,0.001)
				dragon.BrickColor = bc("Really black")
				dragon.CanCollide = true
				dragon.CanTouch = true
				dragon.Anchored = true
				dragon.Locked = true
				dragonh.Parent = dragon
				dragonh.MeshId = "http://www.roblox.com/asset/?id=24478215"
				dragonh.Scale = vect3(3, 2.5, 3)
				dragonsummoned = true
				dragon.CFrame = rt.CFrame * cframe(0,-2.5,-4.5)
				local dashp = new("ParticleEmitter")
				dashp.Name = "Debris"
				dashp.Parent = dragon
				dashp.Speed = NumberRange.new(22, 22)
				dashp.Rotation = NumberRange.new(1, 360)
				dashp.Color = ColorSequence.new(color(0, 0, 0),color(0.115, 0.115, 0.115))
				dashp.LightInfluence = 1
				dashp.Texture = "rbxassetid://12098538418"
				dashp.Transparency = NumberSequence.new(0.800000011920929,1)
				dashp.ZOffset = 3
				dashp.Size = NumberSequence.new(1.5,15)
				dashp.Drag = 0.10000000149011612
				dashp.EmissionDirection = Enum.NormalId.Back
				dashp.Lifetime = NumberRange.new(0.5, 0.5)
				dashp.Rate = 200
				dashp.RotSpeed = NumberRange.new(1, 360)
				dashp.SpreadAngle = vect2(-20, -20)
				dashp.VelocitySpread = -20
				spawn(function()
					spawn(function()
						for i = 1,5 do
							local firepart = new("Part")
							firepart.Parent = workspace.Terrain
							firepart.Size = vect3(7,6.5,6)
							firepart.BottomSurface = Enum.SurfaceType.Smooth
							firepart.Anchored = true
							firepart.CanCollide = false
							firepart.CanTouch = false
							firepart.BrickColor = bc("Really black")
							firepart.Locked = true
							firepart.TopSurface = Enum.SurfaceType.Smooth
							firepart.CFrame = dragon.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
							spawn(function()
								for i = 1,15 do
									task.wait()
									firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
									firepart.Transparency = firepart.Transparency + 0.15
									firepart.Size = firepart.Size - vect3(0.3,0.3,0.3)
								end
							end)
							spawn(function()
								task.wait(0.5)
								debris:AddItem(firepart,2)
							end)
							task.wait(0.05)
						end
					end)
					repeat
						if dragonattack == true then
							if dragontype == "relocate" then
								local direct = vect3(dragonpos.lookVector.x,0,dragonpos.lookVector.z)
								dragon.CFrame = cframe(dragon.Position,dragon.Position+direct*25)
							elseif dragontype == "rumeiga" then
								local rumei = new("Part")
								local rumeim = new("SpecialMesh")
								rumei.Name = "Rumeiga"
								rumei.Parent = workspace.Terrain
								rumei.Size = vect3(0.001,0.001,0.001)
								rumei.Anchored = true
								rumei.CanCollide = false
								rumei.Anchored = true
								rumei.BrickColor = bc("Really black")
								rumeim.Parent = rumei
								rumeim.MeshId = "rbxassetid://6980699164"
								rumeim.Scale = vect3(0.2, 0.2, 0.2)
								rumeim.MeshType = Enum.MeshType.FileMesh
								rumei.CFrame = dragon.CFrame * cframe(0,0,-4.5) * angles(rad(-90),0,rad(90))
								local dashi = new("ParticleEmitter")
								dashi.Name = "Debris"
								dashi.Parent = rumei
								dashi.Speed = NumberRange.new(22, 22)
								dashi.Rotation = NumberRange.new(1, 360)
								dashi.Color = ColorSequence.new(color(0, 0, 0),color(0.115, 0.115, 0.115))
								dashi.LightInfluence = 1
								dashi.Texture = "rbxassetid://12098538418"
								dashi.Transparency = NumberSequence.new(0.800000011920929,1)
								dashi.ZOffset = 3
								dashi.Size = NumberSequence.new(1.5,15)
								dashi.Drag = 0.10000000149011612
								dashi.EmissionDirection = Enum.NormalId.Left
								dashi.Lifetime = NumberRange.new(0.5, 0.5)
								dashi.Rate = 200
								dashi.RotSpeed = NumberRange.new(1, 360)
								dashi.SpreadAngle = vect2(-20, -20)
								dashi.VelocitySpread = -20
								dragon.Parent = nil
								sound(7127123554,1.5,1.1,rumei,0,false)
								if heatlvl == 1 or holdinge then
									for i = 1,15 do
										rumei.CFrame = rumei.CFrame * cframe(1.5,0,0)
										magnitudedamage(0.5,"sphere", 0, 7.5, 2920959, 1.25, 1.45, rumei,true,"normal","rumeiga")
										task.wait()
									end
								elseif heatlvl == 2 then
									if heat > 100 then
										heat = heat - 100
									end
									heatlvl = 1
									for i = 1,15 do
										rumei.CFrame = rumei.CFrame * cframe(2,0,1) * angles(0,rad(-5),0)
										magnitudedamage(1,"sphere", 0, 7.5, 2920959, 1.25, 1.45, rumei,true,"normal","rumeiga2")
										task.wait()
									end
								elseif heatlvl == 3 then
									if heat > 100 then
										heat = heat - 200
									end
									heatlvl = 1
									for i = 1,15 do
										rumei.CFrame = rumei.CFrame * cframe(2.5,0,1.25) * angles(0,rad(-10),0)
										magnitudedamage(2,"sphere", 0, 7.5, 2920959, 1.25, 1.45, rumei,true,"normal","rumeiga1")
										task.wait()
									end
								end
								dashi.Enabled = false
								local tween = tweens:Create(rumei, TweenInfo.new(0.5), {Transparency = 1})
								tween:Play()
								tween.Completed:Connect(function()
									rumei:Destroy()
									dragon.Transparency = 1
									dragon.Parent = workspace.Terrain
									dragonsummoned = false
								end)
							elseif dragontype == "korone" then
								dragon.Transparency = 1
								if heatlvl == 1 or holdinge then
									spawn(function()
										for i = 1,3 do
											local firepart = new("Part")
											firepart.Parent = workspace.Terrain
											firepart.Size = vect3(0.001,0.001,0.001)
											firepart.BottomSurface = Enum.SurfaceType.Smooth
											firepart.Anchored = true
											firepart.CanCollide = false
											firepart.CanTouch = false
											firepart.BrickColor = bc("Really black")
											firepart.Locked = true
											firepart.TopSurface = Enum.SurfaceType.Smooth
											firepart.CFrame = dragon.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
											sound2(3264793,1,1,firepart,0,false)
											magnitudedamage(2,"sphere", 0, 10, 2767090, 1.5, 1, firepart,true,"normal","korone")
											spawn(function()
												for i = 1,25 do
													task.wait()
													firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
													firepart.Transparency = firepart.Transparency + 0.05
													firepart.Size = firepart.Size + vect3(2.5,2.5,2.5)
												end
											end)
											local tween = tweens:Create(firepart, TweenInfo.new(0.45), {Transparency = 1})
											tween:Play()
											tween.Completed:Connect(function() firepart:Destroy() end)
											task.wait(0.125)
										end
									end)
									for i = 1,3 do
										local late = new("Part")
										local latem = new("SpecialMesh")
										local late1 = new("Part")
										local latem1 = new("SpecialMesh")
										local late2 = new("Part")
										local latem2 = new("SpecialMesh")
										late.Name = "Effect"
										late.Parent = workspace.Terrain
										late.Size = vect3(0.001,0.001,0.001)
										late.Anchored = true
										late.BottomSurface = Enum.SurfaceType.Smooth
										late.BrickColor = bc("Really black")
										late.CanCollide = false
										late.CanTouch = false
										late.TopSurface = Enum.SurfaceType.Smooth
										late.FormFactor = Enum.FormFactor.Custom
										latem.Parent = late
										latem.MeshId = "http://www.roblox.com/asset/?id=20329976"
										latem.Scale = vect3(11.64, 6.466, 9.138)
										latem.MeshType = Enum.MeshType.FileMesh
										late1.Name = "Effect"
										late1.Parent = workspace.Terrain
										late1.Size = vect3(0.001,0.001,0.001)
										late1.Anchored = true
										late1.BottomSurface = Enum.SurfaceType.Smooth
										late1.BrickColor = bc("Really black")
										late1.CanCollide = false
										late1.CanTouch = false
										late1.TopSurface = Enum.SurfaceType.Smooth
										late1.FormFactor = Enum.FormFactor.Custom
										latem1.Parent = late1
										latem1.MeshId = "http://www.roblox.com/asset/?id=20329976"
										latem1.Scale = vect3(17.01546859741211, 3.579, 13.386)
										latem1.MeshType = Enum.MeshType.FileMesh
										late2.Name = "Effect"
										late2.Parent = workspace.Terrain
										late2.Size = vect3(0.001,0.001,0.001)
										late2.CanTouch = false
										late2.Anchored = true
										late2.BottomSurface = Enum.SurfaceType.Smooth
										late2.BrickColor = bc("Really black")
										late2.CanCollide = false
										late2.TopSurface = Enum.SurfaceType.Smooth
										late2.FormFactor = Enum.FormFactor.Custom
										latem2.Parent = late2
										latem2.MeshId = "http://www.roblox.com/asset/?id=20329976"
										latem2.Scale = vect3(4.516, 9.501, 4.516)
										latem2.MeshType = Enum.MeshType.FileMesh
										late.CFrame = dragon.CFrame
										late1.CFrame = dragon.CFrame
										late2.CFrame = dragon.CFrame
										local tween = tweens:Create(late, TweenInfo.new(1), {Transparency = 1})
										tween:Play()
										local tween1 = tweens:Create(late1, TweenInfo.new(1), {Transparency = 1})
										tween1:Play()
										local tween2 = tweens:Create(late2, TweenInfo.new(1), {Transparency = 1})
										tween2:Play()
										tweens:Create(latem, TweenInfo.new(1), {Scale = vect3(35, 1, 35), Offset = vect3(0, -3.5, 0)}):Play()
										tweens:Create(latem1, TweenInfo.new(1), {Scale = vect3(45, 0.25, 45), Offset = vect3(0,-1,0)}):Play()
										tweens:Create(latem2, TweenInfo.new(1), {Scale = vect3(25, 1.25, 26), Offset = vect3(0,-5,0)}):Play()
										tween.Completed:Connect(function() late:Destroy() end)
										tween.Completed:Connect(function() late1:Destroy() end)
										tween.Completed:Connect(function() late2:Destroy() end)
										task.wait(0.125)
									end
								elseif heatlvl == 2 then
									if heat > 100 then
										heat = heat - 100
									end
									heatlvl = 1
									spawn(function()
										for i = 1,5 do
											local firepart = new("Part")
											firepart.Parent = workspace.Terrain
											firepart.Size = vect3(0.001,0.001,0.001)
											firepart.BottomSurface = Enum.SurfaceType.Smooth
											firepart.Anchored = true
											firepart.CanCollide = false
											firepart.CanTouch = false
											firepart.BrickColor = bc("Really black")
											firepart.Locked = true
											firepart.TopSurface = Enum.SurfaceType.Smooth
											firepart.CFrame = dragon.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
											sound2(3264793,1,1,firepart,0,false)
											magnitudedamage(2,"sphere", 0, 10, 2767090, 1.5, 1, dragon,true,"normal","korone")
											spawn(function()
												for i = 1,25 do
													task.wait()
													firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
													firepart.Transparency = firepart.Transparency + 0.05
													firepart.Size = firepart.Size + vect3(2.5,2.5,2.5)
												end
											end)
											local tween = tweens:Create(firepart, TweenInfo.new(0.45), {Transparency = 1})
											tween:Play()
											tween.Completed:Connect(function() firepart:Destroy() end)
											task.wait(0.075)
										end
									end)
									for i = 1,5 do
										local late = new("Part")
										local latem = new("SpecialMesh")
										local late1 = new("Part")
										local latem1 = new("SpecialMesh")
										local late2 = new("Part")
										local latem2 = new("SpecialMesh")
										late.Name = "Effect"
										late.Parent = workspace.Terrain
										late.Size = vect3(0.001,0.001,0.001)
										late.Anchored = true
										late.BottomSurface = Enum.SurfaceType.Smooth
										late.BrickColor = bc("Really black")
										late.CanCollide = false
										late.CanTouch = false
										late.TopSurface = Enum.SurfaceType.Smooth
										late.FormFactor = Enum.FormFactor.Custom
										latem.Parent = late
										latem.MeshId = "http://www.roblox.com/asset/?id=20329976"
										latem.Scale = vect3(11.64, 6.466, 9.138)
										latem.MeshType = Enum.MeshType.FileMesh
										late1.Name = "Effect"
										late1.Parent = workspace.Terrain
										late1.Size = vect3(0.001,0.001,0.001)
										late1.Anchored = true
										late1.BottomSurface = Enum.SurfaceType.Smooth
										late1.BrickColor = bc("Really black")
										late1.CanCollide = false
										late1.CanTouch = false
										late1.TopSurface = Enum.SurfaceType.Smooth
										late1.FormFactor = Enum.FormFactor.Custom
										latem1.Parent = late1
										latem1.MeshId = "http://www.roblox.com/asset/?id=20329976"
										latem1.Scale = vect3(17.01546859741211, 3.579, 13.386)
										latem1.MeshType = Enum.MeshType.FileMesh
										late2.Name = "Effect"
										late2.Parent = workspace.Terrain
										late2.Size = vect3(0.001,0.001,0.001)
										late2.CanTouch = false
										late2.Anchored = true
										late2.BottomSurface = Enum.SurfaceType.Smooth
										late2.BrickColor = bc("Really black")
										late2.CanCollide = false
										late2.TopSurface = Enum.SurfaceType.Smooth
										late2.FormFactor = Enum.FormFactor.Custom
										latem2.Parent = late2
										latem2.MeshId = "http://www.roblox.com/asset/?id=20329976"
										latem2.Scale = vect3(4.516, 9.501, 4.516)
										latem2.MeshType = Enum.MeshType.FileMesh
										late.CFrame = dragon.CFrame
										late1.CFrame = dragon.CFrame
										late2.CFrame = dragon.CFrame
										local tween = tweens:Create(late, TweenInfo.new(1), {Transparency = 1})
										tween:Play()
										local tween1 = tweens:Create(late1, TweenInfo.new(1), {Transparency = 1})
										tween1:Play()
										local tween2 = tweens:Create(late2, TweenInfo.new(1), {Transparency = 1})
										tween2:Play()
										tweens:Create(latem, TweenInfo.new(1), {Scale = vect3(35, 1, 35), Offset = vect3(0, -3.5, 0)}):Play()
										tweens:Create(latem1, TweenInfo.new(1), {Scale = vect3(45, 0.25, 45), Offset = vect3(0,-1,0)}):Play()
										tweens:Create(latem2, TweenInfo.new(1), {Scale = vect3(25, 1.25, 26), Offset = vect3(0,-5,0)}):Play()
										tween.Completed:Connect(function() late:Destroy() end)
										tween.Completed:Connect(function() late1:Destroy() end)
										tween.Completed:Connect(function() late2:Destroy() end)
										task.wait(0.075)
									end
								elseif heatlvl == 3 then
									if heat > 100 then
										heat = heat - 200
									end
									heatlvl = 1
									spawn(function()
										for i = 1,10 do
											local firepart = new("Part")
											firepart.Parent = workspace.Terrain
											firepart.Size = vect3(0.001,0.001,0.001)
											firepart.BottomSurface = Enum.SurfaceType.Smooth
											firepart.Anchored = true
											firepart.CanCollide = false
											firepart.CanTouch = false
											firepart.BrickColor = bc("Really black")
											firepart.Locked = true
											firepart.TopSurface = Enum.SurfaceType.Smooth
											firepart.CFrame = dragon.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
											sound2(3264793,1,1,firepart,0,false)
											magnitudedamage(4.5,"sphere", 0, 10, 2767090, 1.5, 1, dragon,true,"normal","korone")
											spawn(function()
												for i = 1,25 do
													task.wait()
													firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
													firepart.Transparency = firepart.Transparency + 0.05
													firepart.Size = firepart.Size + vect3(2.5,2.5,2.5)
												end
											end)
											local tween = tweens:Create(firepart, TweenInfo.new(0.45), {Transparency = 1})
											tween:Play()
											tween.Completed:Connect(function() firepart:Destroy() end)
											task.wait(0.05)
										end
									end)
									for i = 1,10 do
										local late = new("Part")
										local latem = new("SpecialMesh")
										local late1 = new("Part")
										local latem1 = new("SpecialMesh")
										local late2 = new("Part")
										local latem2 = new("SpecialMesh")
										late.Name = "Effect"
										late.Parent = workspace.Terrain
										late.Size = vect3(0.001,0.001,0.001)
										late.Anchored = true
										late.BottomSurface = Enum.SurfaceType.Smooth
										late.BrickColor = bc("Really black")
										late.CanCollide = false
										late.CanTouch = false
										late.TopSurface = Enum.SurfaceType.Smooth
										late.FormFactor = Enum.FormFactor.Custom
										latem.Parent = late
										latem.MeshId = "http://www.roblox.com/asset/?id=20329976"
										latem.Scale = vect3(11.64, 6.466, 9.138)
										latem.MeshType = Enum.MeshType.FileMesh
										late1.Name = "Effect"
										late1.Parent = workspace.Terrain
										late1.Size = vect3(0.001,0.001,0.001)
										late1.Anchored = true
										late1.BottomSurface = Enum.SurfaceType.Smooth
										late1.BrickColor = bc("Really black")
										late1.CanCollide = false
										late1.CanTouch = false
										late1.TopSurface = Enum.SurfaceType.Smooth
										late1.FormFactor = Enum.FormFactor.Custom
										latem1.Parent = late1
										latem1.MeshId = "http://www.roblox.com/asset/?id=20329976"
										latem1.Scale = vect3(17.01546859741211, 3.579, 13.386)
										latem1.MeshType = Enum.MeshType.FileMesh
										late2.Name = "Effect"
										late2.Parent = workspace.Terrain
										late2.Size = vect3(0.001,0.001,0.001)
										late2.CanTouch = false
										late2.Anchored = true
										late2.BottomSurface = Enum.SurfaceType.Smooth
										late2.BrickColor = bc("Really black")
										late2.CanCollide = false
										late2.TopSurface = Enum.SurfaceType.Smooth
										late2.FormFactor = Enum.FormFactor.Custom
										latem2.Parent = late2
										latem2.MeshId = "http://www.roblox.com/asset/?id=20329976"
										latem2.Scale = vect3(4.516, 9.501, 4.516)
										latem2.MeshType = Enum.MeshType.FileMesh
										late.CFrame = dragon.CFrame
										late1.CFrame = dragon.CFrame
										late2.CFrame = dragon.CFrame
										local tween = tweens:Create(late, TweenInfo.new(1), {Transparency = 1})
										tween:Play()
										local tween1 = tweens:Create(late1, TweenInfo.new(1), {Transparency = 1})
										tween1:Play()
										local tween2 = tweens:Create(late2, TweenInfo.new(1), {Transparency = 1})
										tween2:Play()
										tweens:Create(latem, TweenInfo.new(1), {Scale = vect3(35, 1, 35), Offset = vect3(0, -3.5, 0)}):Play()
										tweens:Create(latem1, TweenInfo.new(1), {Scale = vect3(45, 0.25, 45), Offset = vect3(0,-1,0)}):Play()
										tweens:Create(latem2, TweenInfo.new(1), {Scale = vect3(25, 1.25, 26), Offset = vect3(0,-5,0)}):Play()
										tween.Completed:Connect(function() late:Destroy() end)
										tween.Completed:Connect(function() late1:Destroy() end)
										tween.Completed:Connect(function() late2:Destroy() end)
										task.wait(0.05)
									end
								end
								dragon.Transparency = 1
								dragonsummoned = false
							elseif dragontype == "hakurei" then
								local doinghakurei = true
								spawn(function()
									if heatlvl == 1 or holdinge then
										while doinghakurei do
											task.wait()
											dragon.CFrame = dragon.CFrame  * cframe(0,0,-0.75)
										end
									elseif heatlvl == 2 then
										while doinghakurei do
											task.wait()
											dragon.CFrame = dragon.CFrame  * cframe(0,0,-1)
										end
									elseif heatlvl == 3 then
										while doinghakurei do
											task.wait()
											dragon.CFrame = dragon.CFrame  * cframe(0,0,-2.5)
										end
									end
								end)
								spawn(function()
									for i = 1,4 do
										local firepart = new("Part")
										firepart.Parent = workspace.Terrain
										firepart.Size = vect3(0.001,0.001,0.001)
										firepart.BottomSurface = Enum.SurfaceType.Smooth
										firepart.Anchored = true
										firepart.CanCollide = false
										firepart.CanTouch = false
										firepart.BrickColor = bc("Really black")
										firepart.Locked = true
										firepart.TopSurface = Enum.SurfaceType.Smooth
										firepart.CFrame = dragon.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
										sound2(3264793,1,1,firepart,0,false)
										spawn(function()
											for i = 1,25 do
												task.wait()
												firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
												firepart.Transparency = firepart.Transparency + 0.05
												firepart.Size = firepart.Size + vect3(0.6,0.6,0.6)
											end
										end)
										local tween = tweens:Create(firepart, TweenInfo.new(0.45), {Transparency = 1})
										tween:Play()
										tween.Completed:Connect(function() firepart:Destroy() end)
										task.wait(0.125)
									end
								end)
								dragon.Transparency = 1
								if heatlvl == 1 or holdinge then
									local haku = new("Part")
									local hakum = new("SpecialMesh")
									haku.Name = "HakureiSaw"
									haku.Parent = dragon
									haku.CFrame = dragon.CFrame * angles(0,rad(90),0)
									haku.Size = vect3(0.001,0.001,0.001)
									haku.Anchored = true
									haku.CanCollide = false
									haku.Locked = true
									haku.BrickColor = bc("Really black")
									hakum.Parent = haku
									hakum.MeshId = "rbxassetid://448330007"
									hakum.Scale = vect3(0.1, 0.1, 0.1)
									hakum.MeshType = Enum.MeshType.FileMesh
									local hakusaw = new("Sound")
									hakusaw.SoundId = "rbxassetid://5347824216"
									hakusaw.Volume = 1.5
									hakusaw.Looped = true
									hakusaw.Parent = haku
									hakusaw:Play()
									spawn(function()
										task.wait(1.5)
										doinghakurei = false
									end)
									local radu = 0
									while doinghakurei do
										radu = radu + 5
										haku.CFrame = dragon.CFrame * angles(0,rad(90),rad(-radu))
										magnitudedamage(1,"sphere", 0, 5, 132728561235970, 1.25, 1, haku,true,"slash2","hakurei")
										task.wait(0.025)
									end
									spawn(function()
										for i = 1,4 do
											local firepart = new("Part")
											firepart.Parent = workspace.Terrain
											firepart.Size = vect3(0.001,0.001,0.001)
											firepart.BottomSurface = Enum.SurfaceType.Smooth
											firepart.Anchored = true
											firepart.CanCollide = false
											firepart.CanTouch = false
											firepart.BrickColor = bc("Really black")
											firepart.Locked = true
											firepart.TopSurface = Enum.SurfaceType.Smooth
											firepart.CFrame = dragon.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
											spawn(function()
												for i = 1,25 do
													task.wait()
													firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
													firepart.Transparency = firepart.Transparency + 0.05
													firepart.Size = firepart.Size + vect3(0.6,0.6,0.6)
												end
											end)
											local tween = tweens:Create(firepart, TweenInfo.new(0.45), {Transparency = 1})
											tween:Play()
											tween.Completed:Connect(function() firepart:Destroy() end)
											task.wait(0.075)
										end
									end)
									haku:Destroy()
									task.wait(0.15)
									dragon.Transparency = 1
									dragonsummoned = false
								elseif heatlvl == 2 then
									if heat > 100 then
										heat = heat - 100
									end
									heatlvl = 1
									local haku = new("Part")
									local hakum = new("SpecialMesh")
									haku.Name = "HakureiSaw"
									haku.Parent = dragon
									haku.CFrame = dragon.CFrame * angles(0,rad(90),0)
									haku.Size = vect3(0.001,0.001,0.001)
									haku.Anchored = true
									haku.CanCollide = false
									haku.Locked = true
									haku.BrickColor = bc("Really black")
									hakum.Parent = haku
									hakum.MeshId = "rbxassetid://448330007"
									hakum.Scale = vect3(0.15, 0.15, 0.15)
									hakum.MeshType = Enum.MeshType.FileMesh
									local hakusaw = new("Sound")
									hakusaw.SoundId = "rbxassetid://5347824216"
									hakusaw.Volume = 1.5
									hakusaw.Looped = true
									hakusaw.Parent = haku
									hakusaw:Play()
									spawn(function()
										task.wait(2.5)
										doinghakurei = false
									end)
									local radu = 0
									while doinghakurei do
										radu = radu + 10
										haku.CFrame = dragon.CFrame * angles(0,rad(90),rad(-radu))
										magnitudedamage(2.5,"sphere", 0, 6.5, 132728561235970, 1.25, 1, haku,true,"slash2","hakurei")
										task.wait(0.025)
									end
									spawn(function()
										for i = 1,4 do
											local firepart = new("Part")
											firepart.Parent = workspace.Terrain
											firepart.Size = vect3(0.001,0.001,0.001)
											firepart.BottomSurface = Enum.SurfaceType.Smooth
											firepart.Anchored = true
											firepart.CanCollide = false
											firepart.CanTouch = false
											firepart.BrickColor = bc("Really black")
											firepart.Locked = true
											firepart.TopSurface = Enum.SurfaceType.Smooth
											firepart.CFrame = dragon.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
											spawn(function()
												for i = 1,25 do
													task.wait()
													firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
													firepart.Transparency = firepart.Transparency + 0.05
													firepart.Size = firepart.Size + vect3(0.6,0.6,0.6)
												end
											end)
											local tween = tweens:Create(firepart, TweenInfo.new(0.45), {Transparency = 1})
											tween:Play()
											tween.Completed:Connect(function() firepart:Destroy() end)
											task.wait(0.075)
										end
									end)
									haku:Destroy()
									task.wait(0.15)
									dragon.Transparency = 1
									dragonsummoned = false
								elseif heatlvl == 3 then
									if heat > 100 then
										heat = heat - 200
									end
									heatlvl = 1
									local haku = new("Part")
									local hakum = new("SpecialMesh")
									haku.Name = "HakureiSaw"
									haku.Parent = dragon
									haku.CFrame = dragon.CFrame * angles(0,rad(90),0)
									haku.Size = vect3(0.001,0.001,0.001)
									haku.Anchored = true
									haku.CanCollide = false
									haku.Locked = true
									haku.BrickColor = bc("Really black")
									hakum.Parent = haku
									hakum.MeshId = "rbxassetid://448330007"
									hakum.Scale = vect3(0.225, 0.225, 0.225)
									hakum.MeshType = Enum.MeshType.FileMesh
									local hakusaw = new("Sound")
									hakusaw.SoundId = "rbxassetid://5347824216"
									hakusaw.Volume = 1.5
									hakusaw.Looped = true
									hakusaw.Parent = haku
									hakusaw:Play()
									spawn(function()
										task.wait(4.5)
										doinghakurei = false
									end)
									local radu = 0
									while doinghakurei do
										radu = radu + 15
										haku.CFrame = dragon.CFrame * angles(0,rad(90),rad(-radu))
										magnitudedamage(1,"sphere", 0, 10, 132728561235970, 1.25, 1, haku,true,"slash2","hakurei")
										task.wait(0.025)
									end
									spawn(function()
										for i = 1,4 do
											local firepart = new("Part")
											firepart.Parent = workspace.Terrain
											firepart.Size = vect3(0.001,0.001,0.001)
											firepart.BottomSurface = Enum.SurfaceType.Smooth
											firepart.Anchored = true
											firepart.CanCollide = false
											firepart.CanTouch = false
											firepart.BrickColor = bc("Really black")
											firepart.Locked = true
											firepart.TopSurface = Enum.SurfaceType.Smooth
											firepart.CFrame = dragon.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
											spawn(function()
												for i = 1,25 do
													task.wait()
													firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
													firepart.Transparency = firepart.Transparency + 0.05
													firepart.Size = firepart.Size + vect3(0.6,0.6,0.6)
												end
											end)
											local tween = tweens:Create(firepart, TweenInfo.new(0.45), {Transparency = 1})
											tween:Play()
											tween.Completed:Connect(function() firepart:Destroy() end)
											task.wait(0.075)
										end
									end)
									haku:Destroy()
									task.wait(0.15)
									dragon.Transparency = 0
								end
							elseif dragontype == "kirisame" then
								--DORIEU SPECIAL!!! (a misheard Eddie/Zato-1 line)
								if heatlvl == 1 or holdinge then
									local kiri = new("Part")
									local kirim = new("SpecialMesh")
									kiri.Name = "KirisameDrill"
									kiri.Parent = workspace.Terrain
									kiri.CFrame = dragon.CFrame * cframe(0,-1.5,0) * angles(rad(90),0,0)
									kiri.Size = vect3(0.001,0.001,0.001)
									kiri.Anchored = true
									kiri.CanCollide = false
									kiri.Locked = true
									kiri.BrickColor = bc("Really black")
									kirim.Parent = kiri
									kirim.MeshId = "rbxassetid://15743050445"
									kirim.Scale = vect3(1.5,1.5,1.5)
									kirim.MeshType = Enum.MeshType.FileMesh
									local kiridrill = new("Sound")
									kiridrill.SoundId = "rbxassetid://7501385270"
									kiridrill.Volume = 1
									kiridrill.Looped = true
									kiridrill.Parent = kiri
									kiridrill:Play()
									local kirip = new("ParticleEmitter")
									kirip.Name = "Dust"
									kirip.Parent = kiri
									kirip.Speed = NumberRange.new(22, 22)
									kirip.Rotation = NumberRange.new(1, 180)
									kirip.Color = ColorSequence.new(color(0, 0, 0),color(0.447059, 0.231373, 0.705882))
									kirip.LightInfluence = 1
									kirip.Texture = "rbxassetid://12098538418"
									kirip.Transparency = NumberSequence.new(0.800000011920929,1)
									kirip.ZOffset = 3
									kirip.Size = NumberSequence.new(1.5,15)
									kirip.Drag = 0.10000000149011612
									kirip.EmissionDirection = Enum.NormalId.Back
									kirip.Lifetime = NumberRange.new(0.5, 0.5)
									kirip.LockedToPart = false
									kirip.Rate = 100
									kirip.RotSpeed = NumberRange.new(1, 180)
									kirip.SpreadAngle = vect2(-20, -20)
									kirip.VelocitySpread = -20
									dragon.Parent = nil
									local radu = 0
									for i = 1,25 do
										radu = radu + 5
										kiri.CFrame = kiri.CFrame * cframe(0,0,-0.75) * angles(0,0,rad(-radu))
										magnitudedamage(0.25,"sphere", 0, 6.66, 110267518415530, 1, 1, kiri,true,"slash2","kirisame")
										task.wait(0.025)
									end
									kirip.Enabled = false
									kiridrill:Destroy()
									kiri.Anchored = false
									dragon.Transparency = 1
									dragon.Parent = workspace.Terrain
									dragonsummoned = false
								elseif heatlvl == 2 then
									if heat > 100 then
										heat = heat - 100
									end
									heatlvl = 1
									local kiri = new("Part")
									local kirim = new("SpecialMesh")
									kiri.Name = "KirisameDrill"
									kiri.Parent = workspace.Terrain
									kiri.CFrame = dragon.CFrame * cframe(0,-1.5,0) * angles(rad(90),0,0)
									kiri.Size = vect3(0.001,0.001,0.001)
									kiri.Anchored = true
									kiri.CanCollide = false
									kiri.Locked = true
									kiri.BrickColor = bc("Really black")
									kirim.Parent = kiri
									kirim.MeshId = "rbxassetid://15743050445"
									kirim.Scale = vect3(3,3,3)
									kirim.MeshType = Enum.MeshType.FileMesh
									local kiridrill = new("Sound")
									kiridrill.SoundId = "rbxassetid://7501385270"
									kiridrill.Volume = 1
									kiridrill.Looped = true
									kiridrill.Parent = kiri
									kiridrill:Play()
									local kirip = new("ParticleEmitter")
									kirip.Name = "Dust"
									kirip.Parent = kiri
									kirip.Speed = NumberRange.new(22, 22)
									kirip.Rotation = NumberRange.new(1, 180)
									kirip.Color = ColorSequence.new(color(0, 0, 0),color(0.447059, 0.231373, 0.705882))
									kirip.LightInfluence = 1
									kirip.Texture = "rbxassetid://12098538418"
									kirip.Transparency = NumberSequence.new(0.800000011920929,1)
									kirip.ZOffset = 3
									kirip.Size = NumberSequence.new(1.5,15)
									kirip.Drag = 0.10000000149011612
									kirip.EmissionDirection = Enum.NormalId.Back
									kirip.Lifetime = NumberRange.new(0.5, 0.5)
									kirip.LockedToPart = false
									kirip.Rate = 100
									kirip.RotSpeed = NumberRange.new(1, 180)
									kirip.SpreadAngle = vect2(-20, -20)
									kirip.VelocitySpread = -20
									dragon.Parent = nil
									local radu = 0
									for i = 1,50 do
										radu = radu + 5
										kiri.CFrame = kiri.CFrame * cframe(0,0,-0.75) * angles(0,0,rad(-radu))
										magnitudedamage(0.415,"sphere", 0, 6.66, 110267518415530, 1, 1, kiri,true,"slash2","kirisame1")
										task.wait(0.025)
									end
									kirip.Enabled = false
									kiridrill:Destroy()
									kiri.Anchored = false
									dragon.Transparency = 1
									dragon.Parent = workspace.Terrain
									dragonsummoned = false
								elseif heatlvl == 3 then
									if heat > 100 then
										heat = heat - 200
									end
									heatlvl = 1
									local kiri = new("Part")
									local kirim = new("SpecialMesh")
									kiri.Name = "KirisameDrill"
									kiri.Parent = workspace.Terrain
									kiri.CFrame = dragon.CFrame * cframe(0,-1.5,0) * angles(rad(90),0,0)
									kiri.Size = vect3(0.001,0.001,0.001)
									kiri.Anchored = true
									kiri.CanCollide = false
									kiri.Locked = true
									kiri.BrickColor = bc("Really black")
									kirim.Parent = kiri
									kirim.MeshId = "rbxassetid://15743050445"
									kirim.Scale = vect3(4.5,4.5,4.5)
									kirim.MeshType = Enum.MeshType.FileMesh
									local kiridrill = new("Sound")
									kiridrill.SoundId = "rbxassetid://7501385270"
									kiridrill.Volume = 1
									kiridrill.Looped = true
									kiridrill.Parent = kiri
									kiridrill:Play()
									local kirip = new("ParticleEmitter")
									kirip.Name = "Dust"
									kirip.Parent = kiri
									kirip.Speed = NumberRange.new(22, 22)
									kirip.Rotation = NumberRange.new(1, 180)
									kirip.Color = ColorSequence.new(color(0, 0, 0),color(0.447059, 0.231373, 0.705882))
									kirip.LightInfluence = 1
									kirip.Texture = "rbxassetid://12098538418"
									kirip.Transparency = NumberSequence.new(0.800000011920929,1)
									kirip.ZOffset = 3
									kirip.Size = NumberSequence.new(1.5,15)
									kirip.Drag = 0.10000000149011612
									kirip.EmissionDirection = Enum.NormalId.Back
									kirip.Lifetime = NumberRange.new(0.5, 0.5)
									kirip.LockedToPart = false
									kirip.Rate = 100
									kirip.RotSpeed = NumberRange.new(1, 180)
									kirip.SpreadAngle = vect2(-20, -20)
									kirip.VelocitySpread = -20
									dragon.Parent = nil
									local radu = 0
									for i = 1,25 do
										radu = radu + 5
										kiri.CFrame = kiri.CFrame * cframe(0,0,-0.15) * angles(0,0,rad(-radu))
										magnitudedamage(0.5,"sphere", 0, 6.66, 110267518415530, 1, 1, kiri,true,"slash2","kirisame1")
										task.wait(0.025)
									end
									kiri.CFrame = kiri.CFrame angles(rad(90),0,0)
									radu = 0
									for i = 1,50 do
										radu = radu + 1
										kiri.CFrame = kiri.CFrame * angles(0,0,rad(-45))
										magnitudedamage(0.5,"sphere", 0, 6.66, 110267518415530, 1, 1, kiri,true,"slash2","kirisame2")
										task.wait(0.025)
									end
									kirip.Enabled = false
									kiridrill:Destroy()
									kiri.Anchored = false
									dragon.Transparency = 1
									dragon.Parent = workspace.Terrain
									dragonsummoned = false
								end
							elseif dragontype == "hazama" then
								spawn(function()
									for i = 1,2 do
										local firepart = new("Part")
										firepart.Parent = workspace.Terrain
										firepart.Size = vect3(0.001,0.001,0.001)
										firepart.BottomSurface = Enum.SurfaceType.Smooth
										firepart.Anchored = true
										firepart.CanCollide = false
										firepart.CanTouch = false
										firepart.BrickColor = bc("Really black")
										firepart.Locked = true
										firepart.TopSurface = Enum.SurfaceType.Smooth
										firepart.CFrame = dragon.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
										sound2(3264793,1,1,firepart,0,false)
										spawn(function()
											for i = 1,25 do
												task.wait()
												firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
												firepart.Transparency = firepart.Transparency + 0.05
												firepart.Size = firepart.Size + vect3(0.6,0.6,0.6)
											end
										end)
										local tween = tweens:Create(firepart, TweenInfo.new(0.45), {Transparency = 1})
										tween:Play()
										tween.Completed:Connect(function() firepart:Destroy() end)
										task.wait(0.125)
									end
								end)
								if heatlvl == 1 or holdinge then
									local haza = new("Part")
									local hazam = new("SpecialMesh")
									haza.Name = "HazamaShark"
									haza.Parent = workspace.Terrain
									haza.CFrame = dragon.CFrame * angles(rad(45),rad(180),0)
									haza.Size = vect3(0.001,0.001,0.001)
									haza.Anchored = true
									haza.CanCollide = false
									haza.Locked = true
									haza.BrickColor = bc("Really black")
									hazam.Parent = haza
									hazam.MeshId = "rbxassetid://430072846"
									hazam.Scale = vect3(0.075, 0.075, 0.075)
									hazam.MeshType = Enum.MeshType.FileMesh
									dragon.Parent = nil
									for i = 1,10 do
										haza.CFrame = haza.CFrame * cframe(0,-0,1) * angles(0,0,0)
										magnitudedamage(0.5,"sphere", 0, 6.5, 3020149185, 0, 1, haza,true,"slash1","hazama")
										task.wait()
									end
									haza.CFrame = haza.CFrame * angles(rad(45),0,0)
									for i = 1,10 do
										haza.CFrame = haza.CFrame * cframe(0,-0,1) * angles(0,0,0)
										magnitudedamage(0.5,"sphere", 0, 6.5, 3020149185, 0, 1, haza,true,"slash1","hazama2")
										task.wait()
									end
									haza.CFrame = haza.CFrame * angles(rad(45),0,0)
									for i = 1,25 do
										haza.CFrame = haza.CFrame * cframe(0,-0,1) * angles(0,0,0)
										magnitudedamage(0.5,"sphere", 0, 6.5, 3020149185, 0, 1, haza,true,"slash1","hazama3")
										task.wait()
									end
									local tween = tweens:Create(haza, TweenInfo.new(0.5), {Transparency = 1})
									tween:Play()
									tween.Completed:Connect(function() haza:Destroy() end)
									dragon.Transparency = 1
									dragon.Parent = workspace.Terrain
									dragonsummoned = false
								elseif heatlvl == 2 then
									if heat > 100 then
										heat = heat - 100
									end
									heatlvl = 1
									local haza = new("Part")
									local hazam = new("SpecialMesh")
									haza.Name = "HazamaShark"
									haza.Parent = workspace.Terrain
									haza.CFrame = dragon.CFrame * angles(rad(45),rad(180),0)
									haza.Size = vect3(0.001,0.001,0.001)
									haza.Anchored = true
									haza.CanCollide = false
									haza.Locked = true
									haza.BrickColor = bc("Really black")
									hazam.Parent = haza
									hazam.MeshId = "rbxassetid://430072846"
									hazam.Scale = vect3(0.075, 0.075, 0.075)
									hazam.MeshType = Enum.MeshType.FileMesh
									dragon.Parent = nil
									for i = 1,25 do
										haza.CFrame = haza.CFrame * cframe(0,-0,1) * angles(0,0,0)
										magnitudedamage(0.5,"sphere", 0, 6.5, 3020149185, 0, 1, haza,true,"slash1","hazama0")
										task.wait()
									end
									haza.CFrame = haza.CFrame * angles(rad(45),0,0)
									for i = 1,25 do
										haza.CFrame = haza.CFrame * cframe(0,-0,1) * angles(0,0,0)
										magnitudedamage(0.5,"sphere", 0, 6.5, 3020149185, 0, 1, haza,true,"slash1","hazama2")
										task.wait()
									end
									haza.CFrame = haza.CFrame * angles(rad(45),0,0)
									for i = 1,50 do
										haza.CFrame = haza.CFrame * cframe(0,-0,1) * angles(0,0,0)
										magnitudedamage(0.5,"sphere", 0, 6.5, 3020149185, 0, 1, haza,true,"slash1","hazama1")
										task.wait()
									end
									local tween = tweens:Create(haza, TweenInfo.new(0.5), {Transparency = 1})
									tween:Play()
									tween.Completed:Connect(function() haza:Destroy() end)
									dragon.Transparency = 1
									dragon.Parent = workspace.Terrain
									dragonsummoned = false
								elseif heatlvl == 3 then
									if heat > 100 then
										heat = heat - 200
									end
									heatlvl = 1
									local haza = new("Part")
									local hazam = new("SpecialMesh")
									haza.Name = "HazamaShark"
									haza.Parent = workspace.Terrain
									haza.CFrame = dragon.CFrame * angles(rad(45),rad(180),0)
									haza.Size = vect3(0.001,0.001,0.001)
									haza.Anchored = true
									haza.CanCollide = false
									haza.Locked = true
									haza.BrickColor = bc("Really black")
									hazam.Parent = haza
									hazam.MeshId = "rbxassetid://430072846"
									hazam.Scale = vect3(0.075, 0.075, 0.075)
									hazam.MeshType = Enum.MeshType.FileMesh
									dragon.Parent = nil
									for i = 1,50 do
										haza.CFrame = haza.CFrame * cframe(0,-0,1) * angles(0,0,0)
										magnitudedamage(1,"sphere", 0, 6.5, 3020149185, 0, 1, haza,true,"slash1","hazama0")
										task.wait()
									end
									haza.CFrame = haza.CFrame * angles(rad(45),0,0)
									for i = 1,50 do
										haza.CFrame = haza.CFrame * cframe(0,-0,1) * angles(0,0,0)
										magnitudedamage(1,"sphere", 0, 6.5, 3020149185, 0, 1, haza,true,"slash1","hazama2")
										task.wait()
									end
									haza.CFrame = haza.CFrame * angles(rad(45),0,0)
									for i = 1,75 do
										haza.CFrame = haza.CFrame * cframe(0,-0,1) * angles(0,0,0)
										magnitudedamage(0.5,"sphere", 0, 6.5, 3020149185, 0, 1, haza,true,"slash1","hazama1")
										task.wait()
									end
									local tween = tweens:Create(haza, TweenInfo.new(0.5), {Transparency = 1})
									tween:Play()
									tween.Completed:Connect(function() haza:Destroy() end)
									dragon.Transparency = 1
									dragon.Parent = workspace.Terrain
									dragonsummoned = false
								end
							elseif dragontype == "gouda" then
								dragon.Transparency = 1
								dragonsummoned = false
								local goudas = new("Part")
								local goudasm = new("SpecialMesh")
								goudas.Name = "explosion"
								goudas.Parent = char
								goudas.Size = vect3(0.001,0.001,0.001)
								goudas.Anchored = true
								goudas.BrickColor = bc("Black")
								goudas.CanCollide = false
								goudasm.Parent = goudas
								goudasm.MeshId = "rbxasset://fonts/sword.mesh"
								goudas.CFrame = dragon.CFrame * angles(rad(-90),0,0)
								local tweenM = tweens:Create(goudasm,TweenInfo.new(0.25,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(5,5,5),Offset = vect3(0,0,2.5)})
								tweenM:Play()
								sound(632919727,1.5,1,goudas,0.15,false)
								spawn(function()
									task.wait(0.1)
									magnitudedamage(10, "sphere", 0, 7.5, 89343281, 3, 0.25, goudas,true,"slash2","gouda")
									task.wait(2)
									local tweenM = tweens:Create(goudasm,TweenInfo.new(0.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(0,0,0),Offset = vect3(0,0,-4.5)})
									tweenM:Play()
									tweenM.Completed:Connect(function() goudas:Destroy()end)
								end)
							end
							dragontype = ""
							dragonattack = false
						end
						task.wait()
						if heatlvl == 1 or holdinge then
							dragon.CFrame = dragon.CFrame  * cframe(0,0,-0.5)
						elseif heatlvl == 2 then
							dragon.CFrame = dragon.CFrame  * cframe(0,0,-1)
						elseif heatlvl == 3 then
							dragon.CFrame = dragon.CFrame  * cframe(0,0,-2)
						end
					until dragonsummoned == false
					spawn(function()
						if dragon ~= nil then
							dashp.Enabled = false
							local tween = tweens:Create(dragon, TweenInfo.new(0.25), {Transparency = 1})
							tween:Play()
							for i = 1,5 do
								local randomcolor = random(0,3)
								local firepart = new("Part")
								firepart.Parent = workspace.Terrain
								firepart.Size = vect3(7,6.5,6)
								firepart.BottomSurface = Enum.SurfaceType.Smooth
								firepart.Anchored = true
								firepart.CanCollide = false
								firepart.CanTouch = false
								firepart.BrickColor = bc("Really black")
								firepart.Locked = true
								firepart.TopSurface = Enum.SurfaceType.Smooth
								firepart.CFrame = dragon.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
								spawn(function()
									for i = 1,15 do
										wait()
										firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
										firepart.Transparency = firepart.Transparency + 0.15
										firepart.Size = firepart.Size - vect3(0.3,0.3,0.3)
									end
								end)
								spawn(function()
									wait(0.5)
									debris:AddItem(firepart,2)
								end)
								task.wait(0.05)
							end
							task.wait(1)
							dragon:Destroy()
						end
					end)
				end)
			elseif move == "relocate" then
				if not dragonsummoned then return end
				dragonattack = true
				dragontype = "relocate"
				dragonpos = pos
			elseif move == "rumeiga" then
				if not dragonsummoned then return end
				rumeigacooldown = true
				spawn(function()
					task.wait(9)
					rumeigacooldown = false
				end)
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "summon"
				frame = 1
				chatter(char,"Rumeiga!")
				dragonattack = true
				dragontype = "rumeiga"
				task.wait(0.75)
				if holdinge then
					if heat >= 300 then 
						attack = false
						gyro.MaxTorque = vect3(0,math.huge,0)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh 
						return 
					end
					local pe = new("ParticleEmitter")
					local pe0 = new("ParticleEmitter")
					local pe1 = new("ParticleEmitter")
					pe.Parent = char.Torso
					pe.Speed = NumberRange.new(15, 15)
					pe.Orientation = Enum.ParticleOrientation.VelocityParallel
					pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe.LightEmission = 1
					pe.LightInfluence = 1
					pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
					pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
					pe.Drag = 7
					pe.Lifetime = NumberRange.new(0, 1.5)
					pe.Rate = 500
					pe.SpreadAngle = vect2(360, 360)
					pe.VelocitySpread = 360
					pe0.Parent = char.Torso
					pe0.Speed = NumberRange.new(0, 20)
					pe0.Rotation = NumberRange.new(-360, 360)
					pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
					pe0.LightEmission = 1
					pe0.LightInfluence = 1
					pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
					pe0.Transparency = NumberSequence.new(1,0,1)
					pe0.Size = NumberSequence.new(0.5624997615814209,0)
					pe0.Shape = Enum.ParticleEmitterShape.Sphere
					pe0.Acceleration = vect3(0, -15, 0)
					pe0.Drag = 10
					pe0.Lifetime = NumberRange.new(0, 1.5)
					pe0.Rate = 1000
					pe0.RotSpeed = NumberRange.new(100, 100)
					pe1.Parent = char.Torso
					pe1.Speed = NumberRange.new(15, 15)
					pe1.Rotation = NumberRange.new(0, 360)
					pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe1.LightEmission = 1
					pe1.LightInfluence = 1
					pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
					pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe1.Size = NumberSequence.new(0.30000001192092896,0)
					pe1.Drag = 10
					pe1.Lifetime = NumberRange.new(0, 1.5)
					pe1.Rate = 10000
					pe1.RotSpeed = NumberRange.new(50, 50)
					pe1.SpreadAngle = vect2(360, 360)
					pe1.VelocitySpread = 360
					local sphere = new("Part")
					sphere.Parent = char
					sphere.Name = "YuiEffect"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0.5
					sphere.BrickColor = bc("Cool yellow")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
					tween:Play()
					debris:AddItem(sphere,2)
					sound(1613998698,1.5,1,rt,0.3,false)
					if not inair then
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "yui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					else
						rt.Anchored = true
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "ayui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						rt.Anchored = false
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "korone" then			
				if not dragonsummoned then return end
				koronecooldown = true
				spawn(function()
					task.wait(7.5)
					koronecooldown = false
				end)
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "taunt"
				frame = 2
				chatter(char,"Korone!")
				dragonattack = true
				dragontype = "korone"	
				sound(7122602098,1,0.95,char["Left Arm"],0,false)
				task.wait(0.75)
				if holdinge then
					if heat >= 300 then 
						attack = false
						gyro.MaxTorque = vect3(0,math.huge,0)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh 
						return 
					end
					local pe = new("ParticleEmitter")
					local pe0 = new("ParticleEmitter")
					local pe1 = new("ParticleEmitter")
					pe.Parent = char.Torso
					pe.Speed = NumberRange.new(15, 15)
					pe.Orientation = Enum.ParticleOrientation.VelocityParallel
					pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe.LightEmission = 1
					pe.LightInfluence = 1
					pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
					pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
					pe.Drag = 7
					pe.Lifetime = NumberRange.new(0, 1.5)
					pe.Rate = 500
					pe.SpreadAngle = vect2(360, 360)
					pe.VelocitySpread = 360
					pe0.Parent = char.Torso
					pe0.Speed = NumberRange.new(0, 20)
					pe0.Rotation = NumberRange.new(-360, 360)
					pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
					pe0.LightEmission = 1
					pe0.LightInfluence = 1
					pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
					pe0.Transparency = NumberSequence.new(1,0,1)
					pe0.Size = NumberSequence.new(0.5624997615814209,0)
					pe0.Shape = Enum.ParticleEmitterShape.Sphere
					pe0.Acceleration = vect3(0, -15, 0)
					pe0.Drag = 10
					pe0.Lifetime = NumberRange.new(0, 1.5)
					pe0.Rate = 1000
					pe0.RotSpeed = NumberRange.new(100, 100)
					pe1.Parent = char.Torso
					pe1.Speed = NumberRange.new(15, 15)
					pe1.Rotation = NumberRange.new(0, 360)
					pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe1.LightEmission = 1
					pe1.LightInfluence = 1
					pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
					pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe1.Size = NumberSequence.new(0.30000001192092896,0)
					pe1.Drag = 10
					pe1.Lifetime = NumberRange.new(0, 1.5)
					pe1.Rate = 10000
					pe1.RotSpeed = NumberRange.new(50, 50)
					pe1.SpreadAngle = vect2(360, 360)
					pe1.VelocitySpread = 360
					local sphere = new("Part")
					sphere.Parent = char
					sphere.Name = "YuiEffect"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0.5
					sphere.BrickColor = bc("Cool yellow")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
					tween:Play()
					debris:AddItem(sphere,2)
					sound(1613998698,1.5,1,rt,0.3,false)
					if not inair then
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "yui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					else
						rt.Anchored = true
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "ayui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						rt.Anchored = false
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "hakurei" then			
				if not dragonsummoned then return end
				if heatlvl ~= 3 then
					hakureicooldown = true
					spawn(function()
						task.wait(9)
						hakureicooldown = false
					end)
				end
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "summon"
				frame = 3
				chatter(char,"Hakurei!")
				dragonattack = true
				dragontype = "hakurei"
				task.wait(0.75)
				if holdinge then
					if heat >= 300 then 
						attack = false
						gyro.MaxTorque = vect3(0,math.huge,0)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh 
						return 
					end
					local pe = new("ParticleEmitter")
					local pe0 = new("ParticleEmitter")
					local pe1 = new("ParticleEmitter")
					pe.Parent = char.Torso
					pe.Speed = NumberRange.new(15, 15)
					pe.Orientation = Enum.ParticleOrientation.VelocityParallel
					pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe.LightEmission = 1
					pe.LightInfluence = 1
					pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
					pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
					pe.Drag = 7
					pe.Lifetime = NumberRange.new(0, 1.5)
					pe.Rate = 500
					pe.SpreadAngle = vect2(360, 360)
					pe.VelocitySpread = 360
					pe0.Parent = char.Torso
					pe0.Speed = NumberRange.new(0, 20)
					pe0.Rotation = NumberRange.new(-360, 360)
					pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
					pe0.LightEmission = 1
					pe0.LightInfluence = 1
					pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
					pe0.Transparency = NumberSequence.new(1,0,1)
					pe0.Size = NumberSequence.new(0.5624997615814209,0)
					pe0.Shape = Enum.ParticleEmitterShape.Sphere
					pe0.Acceleration = vect3(0, -15, 0)
					pe0.Drag = 10
					pe0.Lifetime = NumberRange.new(0, 1.5)
					pe0.Rate = 1000
					pe0.RotSpeed = NumberRange.new(100, 100)
					pe1.Parent = char.Torso
					pe1.Speed = NumberRange.new(15, 15)
					pe1.Rotation = NumberRange.new(0, 360)
					pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe1.LightEmission = 1
					pe1.LightInfluence = 1
					pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
					pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe1.Size = NumberSequence.new(0.30000001192092896,0)
					pe1.Drag = 10
					pe1.Lifetime = NumberRange.new(0, 1.5)
					pe1.Rate = 10000
					pe1.RotSpeed = NumberRange.new(50, 50)
					pe1.SpreadAngle = vect2(360, 360)
					pe1.VelocitySpread = 360
					local sphere = new("Part")
					sphere.Parent = char
					sphere.Name = "YuiEffect"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0.5
					sphere.BrickColor = bc("Cool yellow")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
					tween:Play()
					debris:AddItem(sphere,2)
					sound(1613998698,1.5,1,rt,0.3,false)
					if not inair then
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "yui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					else
						rt.Anchored = true
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "ayui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						rt.Anchored = false
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "kirisame" then
				if not dragonsummoned then return end
				kirisamecooldown = true
				spawn(function()
					task.wait(8.5)
					kirisamecooldown = false
				end)
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "summon"
				frame = 2
				chatter(char,"Kirisame!")
				dragonattack = true
				dragontype = "kirisame"
				Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.866025448, -0.49999997, 0, 0.49999997, -0.866025448, 1, -3.78551732e-08, -2.18556924e-08)
				task.wait(0.75)
				Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
				if holdinge then
					if heat >= 300 then 
						attack = false
						gyro.MaxTorque = vect3(0,math.huge,0)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh 
						return 
					end
					local pe = new("ParticleEmitter")
					local pe0 = new("ParticleEmitter")
					local pe1 = new("ParticleEmitter")
					pe.Parent = char.Torso
					pe.Speed = NumberRange.new(15, 15)
					pe.Orientation = Enum.ParticleOrientation.VelocityParallel
					pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe.LightEmission = 1
					pe.LightInfluence = 1
					pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
					pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
					pe.Drag = 7
					pe.Lifetime = NumberRange.new(0, 1.5)
					pe.Rate = 500
					pe.SpreadAngle = vect2(360, 360)
					pe.VelocitySpread = 360
					pe0.Parent = char.Torso
					pe0.Speed = NumberRange.new(0, 20)
					pe0.Rotation = NumberRange.new(-360, 360)
					pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
					pe0.LightEmission = 1
					pe0.LightInfluence = 1
					pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
					pe0.Transparency = NumberSequence.new(1,0,1)
					pe0.Size = NumberSequence.new(0.5624997615814209,0)
					pe0.Shape = Enum.ParticleEmitterShape.Sphere
					pe0.Acceleration = vect3(0, -15, 0)
					pe0.Drag = 10
					pe0.Lifetime = NumberRange.new(0, 1.5)
					pe0.Rate = 1000
					pe0.RotSpeed = NumberRange.new(100, 100)
					pe1.Parent = char.Torso
					pe1.Speed = NumberRange.new(15, 15)
					pe1.Rotation = NumberRange.new(0, 360)
					pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe1.LightEmission = 1
					pe1.LightInfluence = 1
					pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
					pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe1.Size = NumberSequence.new(0.30000001192092896,0)
					pe1.Drag = 10
					pe1.Lifetime = NumberRange.new(0, 1.5)
					pe1.Rate = 10000
					pe1.RotSpeed = NumberRange.new(50, 50)
					pe1.SpreadAngle = vect2(360, 360)
					pe1.VelocitySpread = 360
					local sphere = new("Part")
					sphere.Parent = char
					sphere.Name = "YuiEffect"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0.5
					sphere.BrickColor = bc("Cool yellow")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
					tween:Play()
					debris:AddItem(sphere,2)
					sound(1613998698,1.5,1,rt,0.3,false)
					if not inair then
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "yui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					else
						rt.Anchored = true
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "ayui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						rt.Anchored = false
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "hazama" then
				if not dragonsummoned then return end
				hazamacooldown = true
				spawn(function()
					task.wait(8)
					hazamacooldown = false
				end)
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "summon"
				frame = 4
				chatter(char,"Hazama!")
				dragonattack = true
				dragontype = "hazama"
				task.wait(0.75)
				if holdinge then
					if heat >= 300 then 
						attack = false
						gyro.MaxTorque = vect3(0,math.huge,0)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh 
						return 
					end
					local pe = new("ParticleEmitter")
					local pe0 = new("ParticleEmitter")
					local pe1 = new("ParticleEmitter")
					pe.Parent = char.Torso
					pe.Speed = NumberRange.new(15, 15)
					pe.Orientation = Enum.ParticleOrientation.VelocityParallel
					pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe.LightEmission = 1
					pe.LightInfluence = 1
					pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
					pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
					pe.Drag = 7
					pe.Lifetime = NumberRange.new(0, 1.5)
					pe.Rate = 500
					pe.SpreadAngle = vect2(360, 360)
					pe.VelocitySpread = 360
					pe0.Parent = char.Torso
					pe0.Speed = NumberRange.new(0, 20)
					pe0.Rotation = NumberRange.new(-360, 360)
					pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
					pe0.LightEmission = 1
					pe0.LightInfluence = 1
					pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
					pe0.Transparency = NumberSequence.new(1,0,1)
					pe0.Size = NumberSequence.new(0.5624997615814209,0)
					pe0.Shape = Enum.ParticleEmitterShape.Sphere
					pe0.Acceleration = vect3(0, -15, 0)
					pe0.Drag = 10
					pe0.Lifetime = NumberRange.new(0, 1.5)
					pe0.Rate = 1000
					pe0.RotSpeed = NumberRange.new(100, 100)
					pe1.Parent = char.Torso
					pe1.Speed = NumberRange.new(15, 15)
					pe1.Rotation = NumberRange.new(0, 360)
					pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe1.LightEmission = 1
					pe1.LightInfluence = 1
					pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
					pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe1.Size = NumberSequence.new(0.30000001192092896,0)
					pe1.Drag = 10
					pe1.Lifetime = NumberRange.new(0, 1.5)
					pe1.Rate = 10000
					pe1.RotSpeed = NumberRange.new(50, 50)
					pe1.SpreadAngle = vect2(360, 360)
					pe1.VelocitySpread = 360
					local sphere = new("Part")
					sphere.Parent = char
					sphere.Name = "YuiEffect"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0.5
					sphere.BrickColor = bc("Cool yellow")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
					tween:Play()
					debris:AddItem(sphere,2)
					sound(1613998698,1.5,1,rt,0.3,false)
					if not inair then
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "yui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					else
						rt.Anchored = true
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "ayui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						rt.Anchored = false
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "gouda" then
				if not dragonsummoned then return end
				goudacooldown = true
				spawn(function()
					task.wait(9)
					goudacooldown = false
				end)
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "summon"
				frame = 1
				chatter(char,"Gouda-Yamato!")
				dragonattack = true
				dragontype = "gouda"
				task.wait(0.75)
				if holdinge then
					if heat >= 300 then 
						attack = false
						gyro.MaxTorque = vect3(0,math.huge,0)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh 
						return 
					end
					local pe = new("ParticleEmitter")
					local pe0 = new("ParticleEmitter")
					local pe1 = new("ParticleEmitter")
					pe.Parent = char.Torso
					pe.Speed = NumberRange.new(15, 15)
					pe.Orientation = Enum.ParticleOrientation.VelocityParallel
					pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe.LightEmission = 1
					pe.LightInfluence = 1
					pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
					pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
					pe.Drag = 7
					pe.Lifetime = NumberRange.new(0, 1.5)
					pe.Rate = 500
					pe.SpreadAngle = vect2(360, 360)
					pe.VelocitySpread = 360
					pe0.Parent = char.Torso
					pe0.Speed = NumberRange.new(0, 20)
					pe0.Rotation = NumberRange.new(-360, 360)
					pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
					pe0.LightEmission = 1
					pe0.LightInfluence = 1
					pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
					pe0.Transparency = NumberSequence.new(1,0,1)
					pe0.Size = NumberSequence.new(0.5624997615814209,0)
					pe0.Shape = Enum.ParticleEmitterShape.Sphere
					pe0.Acceleration = vect3(0, -15, 0)
					pe0.Drag = 10
					pe0.Lifetime = NumberRange.new(0, 1.5)
					pe0.Rate = 1000
					pe0.RotSpeed = NumberRange.new(100, 100)
					pe1.Parent = char.Torso
					pe1.Speed = NumberRange.new(15, 15)
					pe1.Rotation = NumberRange.new(0, 360)
					pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe1.LightEmission = 1
					pe1.LightInfluence = 1
					pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
					pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe1.Size = NumberSequence.new(0.30000001192092896,0)
					pe1.Drag = 10
					pe1.Lifetime = NumberRange.new(0, 1.5)
					pe1.Rate = 10000
					pe1.RotSpeed = NumberRange.new(50, 50)
					pe1.SpreadAngle = vect2(360, 360)
					pe1.VelocitySpread = 360
					local sphere = new("Part")
					sphere.Parent = char
					sphere.Name = "YuiEffect"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0.5
					sphere.BrickColor = bc("Cool yellow")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
					tween:Play()
					debris:AddItem(sphere,2)
					sound(1613998698,1.5,1,rt,0.3,false)
					if not inair then
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "yui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					else
						rt.Anchored = true
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "ayui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						rt.Anchored = false
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "fang" then
				--ROCKET!! (yet another misheard Order-Sol line)
				fangcooldown = true
				spawn(function()
					task.wait(8)
					fangcooldown = false
				end)
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "fang"
				frame = 1
				local lines = {
					"Shadow Fang!",
					"Damatirou!", --untranslated line from Order-Sol, don't know what it means
					"DOUKEI!!",  --untranslated line from Order-Sol, don't know what it means
				}
				chatter(char,lines[random(1,#lines)])
				local randomquote = random(0,2)
				local gender = "Male"
				if char:FindFirstChild("Gender") then
					gender = char:FindFirstChild("Gender").Value
				else
					gender = "Male"
				end
				if owner.UserId == 50203523 then
					if gender == "Male" then
						if randomquote == 0 then
							voice("yuki/yuki_1400-0.wav",3,1.1,char.Head,0,false)
						elseif randomquote == 1 then
							voice("yuki/yuki_1400-10.wav",3,1.1,char.Head,0,false)
						else
							voice("yuki/yuki_1400-20.wav",3,1.1,char.Head,0,false)
						end
					else
						if randomquote == 0 then
							voice("yuki/yuki_1400-0.wav",3,1.6,char.Head,0,false)
						elseif randomquote == 1 then
							voice("yuki/yuki_1400-10.wav",3,1.6,char.Head,0,false)
						else
							voice("yuki/yuki_1400-20.wav",3,1.6,char.Head,0,false)
						end
					end
				end
				local rocket = true
				task.wait(0.25)
				frame = 2
				local flames = new("ParticleEmitter")
				flames.Parent = char["Left Arm"]
				flames.Speed = NumberRange.new(10, 10)
				flames.Color = ColorSequence.new(color(0.184314, 0.239216, 1),color(0.096024, 0.0796296, 0.597222),color(0, 0, 0))
				flames.LightEmission = 0.5
				flames.LightInfluence = 1
				flames.Texture = "rbxassetid://341300088"
				flames.Transparency = NumberSequence.new(0.3,1)
				flames.Size = NumberSequence.new(1,0)
				flames.Acceleration = vect3(1, 1, 1)
				flames.Lifetime = NumberRange.new(1.5, 1.5)
				flames.Rate = 5000000000
				flames.SpreadAngle = vect2(5, 5)
				flames.VelocitySpread = 5
				sound(2691586,1.25,0.35,char["Left Arm"],0,false)
				spawn(function()
					wait(0.15)
					sound(28257433,1.25,0.5,char["Left Arm"],0,false)
					sound(28144425,1.25,0.25,char["Left Arm"],0,false)
				end)
				local bpos = new("BodyPosition")
				bpos.Parent = rt
				bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
				bpos.D = 1750
				bpos.Position = rt.CFrame * cframe(0,0,-55).Position
				spawn(function()
					while rocket do 
						magnitudedamage(5, "sphere", 0, 11.5, 386946017, 1.15, 1, rt,true,"normal","fang")
						task.wait(0.1)
					end
				end)
				task.wait(0.75)
				rocket = false
				flames.Enabled = false
				debris:AddItem(flames,2)
				if heatlvl == 1 or holdinge then
					bpos:Destroy()
				elseif heatlvl == 2 then
					if heat > 100 then
						heat = heat - 100
					end
					heatlvl = 1
					bpos:Destroy()
					local bpos2 = new("BodyPosition")
					bpos2.Parent = rt
					bpos2.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos2.D = 2500
					bpos2.Position = rt.CFrame * cframe(0,0,-45).Position
					frame = 3
					task.wait(0.1)
					sound(12222216,1,0.4,Handle,0.425,false)
					trail.Enabled = true
					trail2.Enabled = true	
					frame = 4
					magnitudedamage(7.5, "sphere", 0, 10, 5951832571, 1.5, 1, rt,true,"slash2","fang2")
					task.wait(0.125)
					bpos2:Destroy()
					trail.Enabled = false
					trail2.Enabled = false	
					task.wait(0.125)
				elseif heatlvl == 3 then
					if heat > 100 then
						heat = heat - 200
					end
					heatlvl = 1
					bpos:Destroy()
					local bpos2 = new("BodyPosition")
					bpos2.Parent = rt
					bpos2.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos2.D = 2750
					bpos2.Position = rt.CFrame * cframe(0,0,-45).Position
					frame = 3
					task.wait(0.1)
					sound(12222216,1,0.4,Handle,0.425,false)
					trail.Enabled = true
					trail2.Enabled = true	
					frame = 4
					magnitudedamage(10, "sphere", 0, 10, 5951832571, 1.5, 1, rt,true,"slash2","fang2")
					task.wait(0.2)
					trail.Enabled = false
					trail2.Enabled = false	
					local fire = new("Fire")
					fire.Parent = char["Left Arm"]
					fire.Size = 6
					fire.Heat = 10
					fire.Color = color(0.0784314, 0.0784314, 0.0784314)
					fire.SecondaryColor = color(0.384314, 0.145098, 0.819608)
					sound(1273117535,4.5,1,char["Left Arm"],0,false)
					frame = 5
					task.wait(0.125)
					frame = 6
					task.wait(0.125)
					sound(7122602098,1,0.65,char["Left Arm"],0,false)
					bpos2:Destroy()
					magnitudedamage(11.5, "boom", 0, 10, 46153268, 1.25, 0.65, rt,true,"burn","fang3")
					frame = 7
					local fpw = new("Part")
					local fpwm = new("SpecialMesh")
					local fp = new("Part")
					local fpm = new("SpecialMesh")
					local fp2 = new("Part")
					local fpm2 = new("SpecialMesh")
					local fpw2 = new("Part")
					local fpwm2 = new("SpecialMesh")
					fpw2.Parent = script
					fpw2.Transparency = 0.05
					fpw2.Size = vect3(1, 1, 1)
					fpw2.Anchored = true
					fpw2.BottomSurface = Enum.SurfaceType.Smooth
					fpw2.BrickColor = bc("Dark indigo")
					fpw2.CanCollide = false
					fpw2.TopSurface = Enum.SurfaceType.Smooth
					fpwm2.Parent = fpw2
					fpwm2.MeshId = "rbxassetid://20329976"
					fpwm2.Scale = vect3(3, 3, 3)
					fpwm2.MeshType = Enum.MeshType.FileMesh
					fpw.Name = "FirePillarWave"
					fpw.Parent = fpw2
					fpw.Transparency = 0.25
					fpw.Size = vect3(1, 1, 1)
					fpw.Anchored = true
					fpw.BottomSurface = Enum.SurfaceType.Smooth
					fpw.BrickColor = bc("Really black")
					fpw.CanCollide = false
					fpw.TopSurface = Enum.SurfaceType.Smooth
					fpwm.Parent = fpw
					fpwm.MeshId = "rbxassetid://20329976"
					fpwm.Scale = vect3(3.5, 3.5, 3.5)
					fpwm.MeshType = Enum.MeshType.FileMesh
					fp.Name = "FirePillar"
					fp.Parent = fpw2
					fp.Transparency = 0.25
					fp.Size = vect3(2.5, 5, 2.5)
					fp.Anchored = true
					fp.BottomSurface = Enum.SurfaceType.Smooth
					fp.BrickColor = bc("Really black")
					fp.CanCollide = false
					fp.TopSurface = Enum.SurfaceType.Smooth
					fpm.Parent = fp
					fpm.MeshType = Enum.MeshType.Sphere
					fp2.Name = "GUN BLADE!!"
					fp2.Parent = fpw2
					fp2.Transparency = 0.05
					fp2.Size = vect3(2, 2.5, 2)
					fp2.Anchored = true
					fp2.BottomSurface = Enum.SurfaceType.Smooth
					fp2.BrickColor = bc("Dark indigo")
					fp2.CanCollide = false
					fp2.TopSurface = Enum.SurfaceType.Smooth
					fpm2.Parent = fp2
					fpm2.MeshType = Enum.MeshType.Sphere
					fpw.Material = "Neon"
					fpw2.Material = "Neon"
					fp.Material = "Neon"
					fp2.Material = "Neon"
					fpw2.CFrame = rt.CFrame * cframe(0,-1.5,-7.5)
					fpw.CFrame = rt.CFrame * cframe(0,-1.5,-7.5)
					fp.CFrame = rt.CFrame * cframe(0,-1.5,-7.5) * angles(rad(-45),0,0)
					fp2.CFrame = rt.CFrame * cframe(0,-1.5,-7.5) * angles(rad(-45),0,0)
					sound(48618802,1.3,1.5,fp,0,false)
					local tween = tweens:Create(fpw2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
					tween:Play()
					local tweenM = tweens:Create(fpwm2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.05,15),Offset = vect3(0,-1.5,-1)})
					tweenM:Play()
					local tween1 = tweens:Create(fpw,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
					tween1:Play()
					local tweenM1 = tweens:Create(fpwm,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.025,17.5),Offset = vect3(0,-1.5,-1)})
					tweenM1:Play()
					local tween2 = tweens:Create(fp,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = fp.CFrame * angles(0,rad(180),0),Size = vect3(3,45,3),Transparency = 1})
					tween2:Play()
					local tween3 = tweens:Create(fp2,TweenInfo.new(1,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = fp.CFrame * angles(0,rad(180),0),Size = vect3(2.75,35,2.75),Transparency = 1})
					tween3:Play()
					tween.Completed:Connect(function() fpw2:Destroy()end)
					tween1.Completed:Connect(function() fpw:Destroy() end)
					tween2.Completed:Connect(function() fp:Destroy()end)
					tween3.Completed:Connect(function() fp2:Destroy() end)
					task.wait(0.25)
					fire.Enabled = false
					debris:AddItem(fire,2)
				end
				if holdinge then
					if heat >= 300 then 
						attack = false
						gyro.MaxTorque = vect3(0,math.huge,0)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh 
						return 
					end
					local pe = new("ParticleEmitter")
					local pe0 = new("ParticleEmitter")
					local pe1 = new("ParticleEmitter")
					pe.Parent = char.Torso
					pe.Speed = NumberRange.new(15, 15)
					pe.Orientation = Enum.ParticleOrientation.VelocityParallel
					pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe.LightEmission = 1
					pe.LightInfluence = 1
					pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
					pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
					pe.Drag = 7
					pe.Lifetime = NumberRange.new(0, 1.5)
					pe.Rate = 500
					pe.SpreadAngle = vect2(360, 360)
					pe.VelocitySpread = 360
					pe0.Parent = char.Torso
					pe0.Speed = NumberRange.new(0, 20)
					pe0.Rotation = NumberRange.new(-360, 360)
					pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
					pe0.LightEmission = 1
					pe0.LightInfluence = 1
					pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
					pe0.Transparency = NumberSequence.new(1,0,1)
					pe0.Size = NumberSequence.new(0.5624997615814209,0)
					pe0.Shape = Enum.ParticleEmitterShape.Sphere
					pe0.Acceleration = vect3(0, -15, 0)
					pe0.Drag = 10
					pe0.Lifetime = NumberRange.new(0, 1.5)
					pe0.Rate = 1000
					pe0.RotSpeed = NumberRange.new(100, 100)
					pe1.Parent = char.Torso
					pe1.Speed = NumberRange.new(15, 15)
					pe1.Rotation = NumberRange.new(0, 360)
					pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe1.LightEmission = 1
					pe1.LightInfluence = 1
					pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
					pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe1.Size = NumberSequence.new(0.30000001192092896,0)
					pe1.Drag = 10
					pe1.Lifetime = NumberRange.new(0, 1.5)
					pe1.Rate = 10000
					pe1.RotSpeed = NumberRange.new(50, 50)
					pe1.SpreadAngle = vect2(360, 360)
					pe1.VelocitySpread = 360
					local sphere = new("Part")
					sphere.Parent = char
					sphere.Name = "YuiEffect"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0.5
					sphere.BrickColor = bc("Cool yellow")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
					tween:Play()
					debris:AddItem(sphere,2)
					sound(1613998698,1.5,1,rt,0.3,false)
					if not inair then
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "yui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					else
						rt.Anchored = true
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "ayui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						rt.Anchored = false
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "zero" then
				zerocooldown = true
				spawn(function()
					task.wait(25)
					zerocooldown = false
				end)
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "zero"
				local doingzero = true
				super()
				if heatlvl == 1 or holdinge then
					frame = 1
					task.wait(1)
					frame = 2
					local gender = "Male"
					if char:FindFirstChild("Gender") then
						gender = char:FindFirstChild("Gender").Value
					else
						gender = "Male"
					end
					if owner.UserId == 50203523 then
						local gender = "Male"
						if char:FindFirstChild("Gender") then
							gender = char:FindFirstChild("Gender").Value
						else
							gender = "Male"
						end
						if owner.UserId == 50203523 then
							if gender == "Male" then
								voice("yuki/yuki_3000-30.wav",3,1.1,char.Head,0,false)
							else
								voice("yuki/yuki_3000-30.wav",3,1.6,char.Head,0,false)
							end
						end
					end
					chatter(char,"Zero Wing!")
					Tool.Grip = cframe(0, 0.75, 0, 0.49999997, -0, -0.866025448, 0, 1, -0, 0.866025448, 0, 0.49999997)
					task.wait(0.1)
					local bpos = new("BodyPosition")
					bpos.Parent = rt
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.D = 1750
					bpos.Position = rt.CFrame * cframe(0,45,-60).Position
					Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					frame = 3			
					sound(5989940988,1.25,1,Handle,0,false)
					trail.Enabled = true
					trail2.Enabled = true	
					spawn(function()
						while doingzero do
							jin = jin + 1
							task.wait()
						end
					end)
					spawn(function()
						while doingzero do
							magnitudedamage(0.5, "sphere", 0, 10, 107083556408593, 1.25, 1, rt,true,"slash1","wing")
							task.wait(0.015)						
						end
					end)
					task.wait(1.5)
					jin = 0
					doingzero = false
					trail.Enabled = false
					trail2.Enabled = false	
					bpos:Destroy()
				elseif heatlvl == 2 then
					if heat > 100 then
						heat = heat - 100
					end
					heatlvl = 1
					frame = 4
					task.wait(1)
					chatter(char,"Zero...")
					local gender = "Male"
					if char:FindFirstChild("Gender") then
						gender = char:FindFirstChild("Gender").Value
					else
						gender = "Male"
					end
					if owner.UserId == 50203523 then
						local gender = "Male"
						if char:FindFirstChild("Gender") then
							gender = char:FindFirstChild("Gender").Value
						else
							gender = "Male"
						end
						if owner.UserId == 50203523 then
							if gender == "Male" then
								voice("yuki/yuki_3000-31.wav",3,1.1,char.Head,0,false)
							else
								voice("yuki/yuki_3000-31.wav",3,1.6,char.Head,0,false)
							end
						end
					end
					local bpos = new("BodyPosition")
					bpos.Parent = rt
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.D = 1899
					bpos.Position = rt.CFrame * cframe(0,0,-30).Position
					magnitudedamage(10, "sphere", 0, 10, 386946017, 1.25, 0.8, rt,true,"normal","wing2")
					frame = 5
					task.wait(0.45)
					bpos:Destroy()
					super(1)
					frame = 1
					task.wait(1)
					frame = 2
					Tool.Grip = cframe(0, 0.75, 0, 0.49999997, -0, -0.866025448, 0, 1, -0, 0.866025448, 0, 0.49999997)
					task.wait(0.1)
					chatter(char,"Wing!")
					local gender = "Male"
					if char:FindFirstChild("Gender") then
						gender = char:FindFirstChild("Gender").Value
					else
						gender = "Male"
					end
					if owner.UserId == 50203523 then
						local gender = "Male"
						if char:FindFirstChild("Gender") then
							gender = char:FindFirstChild("Gender").Value
						else
							gender = "Male"
						end
						if owner.UserId == 50203523 then
							if gender == "Male" then
								voice("yuki/yuki_3000-32.wav",3,1.1,char.Head,0,false)
							else
								voice("yuki/yuki_3000-32.wav",3,1.6,char.Head,0,false)
							end
						end
					end
					Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					local bpos = new("BodyPosition")
					bpos.Parent = rt
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.D = 2000
					bpos.Position = rt.CFrame * cframe(0,60,-75).Position
					Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					frame = 3
					sound(5989940988,1.25,1,Handle,0,false)
					trail.Enabled = true
					trail2.Enabled = true	
					spawn(function()
						while doingzero do
							jin = jin + 1
							task.wait()
						end
					end)
					spawn(function()
						while doingzero do
							magnitudedamage(1, "sphere", 0, 10, 107083556408593, 1.25, 1, rt,true,"slash1","wing")
							task.wait(0.015)						
						end
					end)
					task.wait(2.5)
					trail.Enabled = false
					trail2.Enabled = false	
					doingzero = false
					bpos:Destroy()
				elseif heatlvl == 3 then
					if heat > 100 then
						heat = heat - 200
					end
					heatlvl = 1
					frame = 4
					task.wait(1)
					chatter(char,"Ze...")
					local gender = "Male"
					if char:FindFirstChild("Gender") then
						gender = char:FindFirstChild("Gender").Value
					else
						gender = "Male"
					end
					if owner.UserId == 50203523 then
						local gender = "Male"
						if char:FindFirstChild("Gender") then
							gender = char:FindFirstChild("Gender").Value
						else
							gender = "Male"
						end
						if owner.UserId == 50203523 then
							if gender == "Male" then
								voice("yuki/yuki_3000-33.wav",3,1.1,char.Head,0,false)
							else
								voice("yuki/yuki_3000-33.wav",3,1.6,char.Head,0,false)
							end
						end
					end
					local bpos = new("BodyPosition")
					bpos.Parent = rt
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.D = 1899
					bpos.Position = rt.CFrame * cframe(0,0,-30).Position
					magnitudedamage(10, "sphere", 0, 10, 386946017, 1.25, 0.8, rt,true,"normal","wing2")
					frame = 5
					task.wait(0.5)
					bpos:Destroy()
					super(1)
					frame = 6
					task.wait(0.75)
					chatter(char,"ro...")
					local gender = "Male"
					if char:FindFirstChild("Gender") then
						gender = char:FindFirstChild("Gender").Value
					else
						gender = "Male"
					end
					if owner.UserId == 50203523 then
						local gender = "Male"
						if char:FindFirstChild("Gender") then
							gender = char:FindFirstChild("Gender").Value
						else
							gender = "Male"
						end
						if owner.UserId == 50203523 then
							if gender == "Male" then
								voice("yuki/yuki_3000-34.wav",3,1.1,char.Head,0,false)
							else
								voice("yuki/yuki_3000-34.wav",3,1.6,char.Head,0,false)
							end
						end
					end
					local bpos = new("BodyPosition")
					bpos.Parent = rt
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.D = 2000
					bpos.Position = rt.CFrame * cframe(0,0,-15).Position
					magnitudedamage(11.5,"sphere", 0, 7.5, 107083556408593, 1.25, 1, rt,true,"slash2","wing1")
					trail.Enabled = true
					trail2.Enabled = true	
					frame = 7
					task.wait(0.125)
					frame = 8
					task.wait(0.45)
					trail.Enabled = false
					trail2.Enabled = false	
					bpos:Destroy()
					super(2)
					frame = 1
					task.wait(1)
					frame = 2
					Tool.Grip = cframe(0, 0.75, 0, 0.49999997, -0, -0.866025448, 0, 1, -0, 0.866025448, 0, 0.49999997)
					task.wait(0.1)
					chatter(char,"Wing!")
					local gender = "Male"
					if char:FindFirstChild("Gender") then
						gender = char:FindFirstChild("Gender").Value
					else
						gender = "Male"
					end
					if owner.UserId == 50203523 then
						local gender = "Male"
						if char:FindFirstChild("Gender") then
							gender = char:FindFirstChild("Gender").Value
						else
							gender = "Male"
						end
						if owner.UserId == 50203523 then
							if gender == "Male" then
								voice("yuki/yuki_3000-35.wav",3,1.05,char.Head,0,false)
							else
								voice("yuki/yuki_3000-35.wav",3,1.6,char.Head,0,false)
							end
						end
					end
					Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					local bpos = new("BodyPosition")
					bpos.Parent = rt
					bpos.MaxForce = vect3(math.huge,math.huge,math.huge)
					bpos.D = 2500
					bpos.Position = rt.CFrame * cframe(0,90,-125).Position
					Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					frame = 3
					sound(5989940988,1.25,0.5,Handle,0,false)
					trail.Enabled = true
					trail2.Enabled = true	
					spawn(function()
						while doingzero do
							jin = jin + 1
							task.wait()
						end
					end)
					spawn(function()
						while doingzero do
							magnitudedamage(2.5, "sphere", 0, 10, 107083556408593, 1.25, 1, rt,true,"slash1","wing")
							task.wait(0.015)						
						end
					end)
					task.wait(4.5)
					trail.Enabled = false
					trail2.Enabled = false	
					doingzero = false
					bpos:Destroy()
				end
				if holdinge then
					if heat >= 300 then 
						attack = false
						gyro.MaxTorque = vect3(0,math.huge,0)
						hum.WalkSpeed = ogws
						hum.JumpPower = ogjp
						hum.JumpHeight = ogjh 
						return 
					end
					local pe = new("ParticleEmitter")
					local pe0 = new("ParticleEmitter")
					local pe1 = new("ParticleEmitter")
					pe.Parent = char.Torso
					pe.Speed = NumberRange.new(15, 15)
					pe.Orientation = Enum.ParticleOrientation.VelocityParallel
					pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe.LightEmission = 1
					pe.LightInfluence = 1
					pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
					pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
					pe.Drag = 7
					pe.Lifetime = NumberRange.new(0, 1.5)
					pe.Rate = 500
					pe.SpreadAngle = vect2(360, 360)
					pe.VelocitySpread = 360
					pe0.Parent = char.Torso
					pe0.Speed = NumberRange.new(0, 20)
					pe0.Rotation = NumberRange.new(-360, 360)
					pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
					pe0.LightEmission = 1
					pe0.LightInfluence = 1
					pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
					pe0.Transparency = NumberSequence.new(1,0,1)
					pe0.Size = NumberSequence.new(0.5624997615814209,0)
					pe0.Shape = Enum.ParticleEmitterShape.Sphere
					pe0.Acceleration = vect3(0, -15, 0)
					pe0.Drag = 10
					pe0.Lifetime = NumberRange.new(0, 1.5)
					pe0.Rate = 1000
					pe0.RotSpeed = NumberRange.new(100, 100)
					pe1.Parent = char.Torso
					pe1.Speed = NumberRange.new(15, 15)
					pe1.Rotation = NumberRange.new(0, 360)
					pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
					pe1.LightEmission = 1
					pe1.LightInfluence = 1
					pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
					pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
					pe1.Size = NumberSequence.new(0.30000001192092896,0)
					pe1.Drag = 10
					pe1.Lifetime = NumberRange.new(0, 1.5)
					pe1.Rate = 10000
					pe1.RotSpeed = NumberRange.new(50, 50)
					pe1.SpreadAngle = vect2(360, 360)
					pe1.VelocitySpread = 360
					local sphere = new("Part")
					sphere.Parent = char
					sphere.Name = "YuiEffect"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0.5
					sphere.BrickColor = bc("Cool yellow")
					sphere.Material = "Neon"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
					tween:Play()
					debris:AddItem(sphere,2)
					sound(1613998698,1.5,1,rt,0.3,false)
					if not inair then
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "yui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					else
						rt.Anchored = true
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
						anim = "ayui"
						if heat < 300 then
							heat = heat + 50
						end
						if heat > 300 then
							heat = 300
						end
						if heat >= 0 and heat < 100 then
							heatlvl = 1
						elseif heat >= 100 and heat < 200 then
							heatlvl = 2
						elseif heat >= 300 then
							heatlvl = 3
						end
						task.wait(0.45)
						pe0.Enabled = false
						pe1.Enabled = false
						pe.Enabled = false
						debris:AddItem(pe,1.5)
						debris:AddItem(pe0,1.5)
						debris:AddItem(pe1,1.5)
						rt.Anchored = false
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					end
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "fatal" then
				attack = true
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "fatal"
				frame = 1
				super()
				chatter(char,"I've had enough of this...")
				local gender = "Male"
				if char:FindFirstChild("Gender") then
					gender = char:FindFirstChild("Gender").Value
				else
					gender = "Male"
				end
				if owner.UserId == 50203523 then
					local gender = "Male"
					if char:FindFirstChild("Gender") then
						gender = char:FindFirstChild("Gender").Value
					else
						gender = "Male"
					end
					if owner.UserId == 50203523 then
						if gender == "Male" then
							voice("yuki/yuki_1400-100.wav",3,1.1,char.Head,0,false)
						else
							voice("yuki/yuki_1400-100.wav",3,1.6,char.Head,0,false)
						end
					end
				end
				local targets = {}
				local doingfg = false
				local hastarget = false
				task.wait(1.5)
				frame = 2
				local la = char["Left Arm"]
				sound2(3264793,1.15,1,la,0,false)
				spawn(function()
					for i = 1,25 do
						task.wait(0.025)
						local firepart = new("Part")
						firepart.Parent = script
						firepart.Size = vect3(1.5,1.5,1.5)
						firepart.BottomSurface = Enum.SurfaceType.Smooth
						firepart.Anchored = true
						firepart.CanCollide = false
						firepart.CanTouch = false
						firepart.BrickColor = bc("Really black")
						firepart.Material = Enum.Material.Neon
						firepart.TopSurface = Enum.SurfaceType.Smooth
						firepart.CFrame = la.CFrame * cframe(0,-1.5,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
						spawn(function()
							for i = 1,25 do
								task.wait()
								firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
								firepart.Transparency = firepart.Transparency + 0.15
								firepart.Size = firepart.Size - vect3(0.1,0.1,0.1)
							end
						end)
						local tween = tweens:Create(firepart, TweenInfo.new(1), {Transparency = 1})
						tween:Play()
						tween.Completed:Connect(function() firepart:Destroy() end)	
					end
				end)
				local part = new("Part",script)
				part.Name = "HitboxThing"
				part.Transparency = 1
				part.Size = vect3(5, 7.5, 5)
				part.CanCollide = false
				part.Massless = true
				part.Anchored = true
				part.Locked = true
				part.CFrame = rt.CFrame * cframe(0,0,-45)
				debris:AddItem(part,0.15)
				local fatalr = new("Part")
				local fatalrm = new("SpecialMesh")
				local fatalrs = new("Part")
				local fatalrsm = new("SpecialMesh")
				local fatalrs2 = new("Part")
				local fatalrsm2 = new("SpecialMesh")
				local fatalrs1 = new("Part")
				local fatalrsm1 = new("SpecialMesh")
				fatalr.Name = "FatalRing"
				fatalr.Parent = script
				fatalr.Size = vect3(0.001, 0.001, 0.001)
				fatalr.Anchored = true
				fatalr.BrickColor = bc("Really black")
				fatalr.CanCollide = false
				fatalr.CanTouch = false
				fatalrm.Parent = fatalr
				fatalrm.MeshId = "http://www.roblox.com/asset/?id=3270017"
				fatalrm.Scale = vect3(5, 5, 3)
				fatalrm.MeshType = Enum.MeshType.FileMesh
				fatalrs.Name = "FatalSphere"
				fatalrs.BrickColor = bc("Really black")
				fatalrs.Parent = script
				fatalrs.Size = vect3(0.8, 0.8, 0.8)
				fatalrs.Anchored = true
				fatalrs.CanCollide = false
				fatalrs.CanTouch = false
				fatalrsm.Parent = fatalrs
				fatalrsm.MeshType = Enum.MeshType.Sphere
				fatalrs2.Name = "FatalSphere"
				fatalrs2.BrickColor = bc("Really black")
				fatalrs2.Parent = script
				fatalrs2.Transparency = 0.25
				fatalrs2.Size = vect3(2, 2, 2)
				fatalrs2.Anchored = true
				fatalrs2.CanCollide = false
				fatalrs2.CanTouch = false
				fatalrsm2.Parent = fatalrs2
				fatalrsm2.MeshType = Enum.MeshType.Sphere
				fatalrs1.Name = "FatalSphere"
				fatalrs1.Parent = script
				fatalrs1.BrickColor = bc("Really black")
				fatalrs1.Transparency = 0.5
				fatalrs1.Size = vect3(4.5, 4.5, 4.5)
				fatalrs1.Anchored = true
				fatalrs1.CanTouch = false
				fatalrs1.CanCollide = false
				fatalrsm1.Parent = fatalrs1
				fatalrsm1.MeshType = Enum.MeshType.Sphere
				fatalr.CFrame = part.CFrame * angles(rad(90),0,0)
				fatalrs.CFrame = fatalr.CFrame
				fatalrs1.CFrame = fatalr.CFrame
				fatalrs2.CFrame = fatalr.CFrame
				fatalrs.BackSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs.RightSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs.TopSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs.FormFactor = Enum.FormFactor.Custom
				fatalrs2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs2.FormFactor = Enum.FormFactor.Custom
				fatalrs1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
				fatalrs1.FormFactor = Enum.FormFactor.Custom
				fatalr.Material = "Neon"
				fatalrs.Material = "Neon"
				fatalrs1.Material = "Neon"
				fatalrs2.Material = "Neon"
				spawn(function()
					for i = 1,4 do
						local firepart = new("Part")
						firepart.Parent = workspace.Terrain
						firepart.Size = vect3(0.001,0.001,0.001)
						firepart.BottomSurface = Enum.SurfaceType.Smooth
						firepart.Anchored = true
						firepart.CanCollide = false
						firepart.CanTouch = false
						firepart.BrickColor = bc("Really black")
						firepart.Locked = true
						firepart.TopSurface = Enum.SurfaceType.Smooth
						firepart.CFrame = fatalr.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
						sound2(3264793,1,1,firepart,0,false)
						spawn(function()
							for i = 1,25 do
								task.wait()
								firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
								firepart.Transparency = firepart.Transparency + 0.05
								firepart.Size = firepart.Size + vect3(0.6,0.6,0.6)
							end
						end)
						local tween = tweens:Create(firepart, TweenInfo.new(0.45), {Transparency = 1})
						tween:Play()
						tween.Completed:Connect(function() firepart:Destroy() end)
						task.wait(0.035)
					end
				end)
				local tween = tweens:Create(fatalr, TweenInfo.new(0.325, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Transparency = 1})
				tween:Play()
				local tween0 = tweens:Create(fatalrm, TweenInfo.new(0.325, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Scale = vect3(45,45,25)})
				tween0:Play()
				local tween1 = tweens:Create(fatalrs, TweenInfo.new(0.325, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Size = vect3(30, 30, 30),Transparency = 1})
				tween1:Play()
				local tween2 = tweens:Create(fatalrs1, TweenInfo.new(0.325, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Size = vect3(30, 30, 30),Transparency = 1})
				tween2:Play()
				local tween3 = tweens:Create(fatalrs2, TweenInfo.new(0.325, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Size = vect3(30, 30, 30),Transparency = 1})
				tween3:Play()
				tween.Completed:Connect(function()
					fatalr.Transparency = 1
					fatalrm:Destroy()
					fatalr:Destroy()
					fatalrs:Destroy()
					fatalrs1:Destroy()
					fatalrs2:Destroy()
				end)
				local gpart = new("Part",script)
				gpart.Name = "GPart"
				gpart.Transparency = 1
				gpart.Size = vect3(5, 7.5, 5)
				gpart.CanCollide = false
				gpart.Massless = true
				gpart.Anchored = true
				gpart.Locked = true
				gpart.CFrame = rt.CFrame * cframe(0,0,-45)
				for i,v in pairs(workspace:GetDescendants()) do
					if v:FindFirstChildOfClass("Humanoid") and v ~= char then
						local vhum = v:FindFirstChildOfClass("Humanoid")
						local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
						if vtorso then
							local vdistance = (vtorso.Position - part.CFrame*cframe(0,0,-1.5).p).magnitude
							if vdistance <= 15 and vhum.Health > 0 then
								doingfg = true
								hastarget = true
								table.insert(targets, v)
								local bpos = new("BodyPosition")
								bpos.Name = "FatalHitBy"
								bpos.Parent = vtorso
								bpos.MaxForce = vect3(39999,39999,39999)
								bpos.D = 750
								bpos.Position = gpart.CFrame * cframe(0,7.5,0).Position
								spawn(function()
									while doingfg do
										task.wait(0.025)
										local firepart = new("Part")
										firepart.Parent = script
										firepart.Size = vect3(3,3,3)
										firepart.BottomSurface = Enum.SurfaceType.Smooth
										firepart.Anchored = true
										firepart.CanCollide = false
										firepart.CanTouch = false
										firepart.BrickColor = bc("Really black")
										firepart.Material = Enum.Material.Neon
										firepart.TopSurface = Enum.SurfaceType.Smooth
										firepart.CFrame = vtorso.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
										spawn(function()
											for i = 1,25 do
												task.wait()
												firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
												firepart.Transparency = firepart.Transparency + 0.15
												firepart.Size = firepart.Size - vect3(0.15,0.15,0.15)
											end
										end)
										local tween = tweens:Create(firepart, TweenInfo.new(1), {Transparency = 1})
										tween:Play()
										tween.Completed:Connect(function() firepart:Destroy() end)	
									end
								end)
							end
						end
					end
				end
				task.wait(0.125)
				if hastarget then
					task.wait(0.5)
					frame = 3
					task.wait(0.5)
					sound(157487812,1.5,0.75,rt,0,false)
					spawn(function()
						for i = 1, #targets do
							coroutine.resume(coroutine.create(function()
								local v = targets[i]
								local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
								if v ~= nil then
									local dashp = new("ParticleEmitter")
									dashp.Name = "Debris"
									dashp.Parent = vtorso
									dashp.Speed = NumberRange.new(22, 22)
									dashp.Rotation = NumberRange.new(1, 360)
									dashp.Color = ColorSequence.new(color(0, 0, 0),color(0.115, 0.115, 0.115))
									dashp.LightInfluence = 1
									dashp.Texture = "rbxassetid://12098538418"
									dashp.Transparency = NumberSequence.new(0.800000011920929,1)
									dashp.ZOffset = 3
									dashp.Size = NumberSequence.new(1.5,15)
									dashp.Drag = 0.10000000149011612
									dashp.EmissionDirection = Enum.NormalId.Back
									dashp.Lifetime = NumberRange.new(0.5, 0.5)
									dashp.Rate = 200
									dashp.RotSpeed = NumberRange.new(1, 360)
									dashp.SpreadAngle = vect2(-20, -20)
									dashp.VelocitySpread = -20
									spawn(function()
										task.wait(0.75)
										dashp.Enabled = false
										debris:AddItem(dashp,1.5)
									end)
								end
							end))
						end
					end)
					gpart:Destroy()
					spawn(function()
						for i = 1, #targets do
							coroutine.resume(coroutine.create(function()
								local v = targets[i]
								local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
								if v ~= nil then
									if vtorso:FindFirstChild("FatalHitBy") then vtorso:FindFirstChild("FatalHitBy").Position = rt.CFrame * cframe(0,4.5,-4.5).Position end
								end
							end))
						end
					end)
					frame = 4
					task.wait(0.25)
					gpart:Destroy()
					spawn(function()
						for i = 1, #targets do
							coroutine.resume(coroutine.create(function()
								local v = targets[i]
								local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
								if v ~= nil then
									if vtorso:FindFirstChild("FatalHitBy") then vtorso:FindFirstChild("FatalHitBy"):Destroy() end
									local bpos = new("BodyPosition")
									bpos.Name = "FatalHitBy"
									bpos.Parent = vtorso
									bpos.MaxForce = vect3(39999,39999,39999)
									bpos.D = 1000
									bpos.Position = rt.CFrame * cframe(0,0.25,-4.5).Position
								end
							end))
						end
					end)
					task.wait(0.5)
					spawn(function()
						for i = 1, #targets do
							coroutine.resume(coroutine.create(function()
								local v = targets[i]
								local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
								if v ~= nil then
									if vtorso:FindFirstChild("FatalHitBy") then vtorso:FindFirstChild("FatalHitBy"):Destroy() end
									local bpos = new("BodyPosition")
									bpos.Name = "FatalHitBy"
									bpos.Parent = vtorso
									bpos.MaxForce = vect3(39999,39999,39999)
									bpos.D = 1000
									bpos.Position = rt.CFrame * cframe(0,0.5,-5).Position
								end
							end))
						end
					end)
					doingfg = false
					trail.Enabled = true
					trail2.Enabled = true	
					if heatlvl == 1 or holdinge then
						anim = "nightmarea"
						Tool.Grip = cframe(0, 0.75, 0, 4.37113883e-08, -3.82137093e-15, -1, -8.74227766e-08, -1, -0, -1, 8.74227766e-08, -4.37113883e-08)
						frame = 2
						task.wait(0.1)
						frame = 3
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.225)
						frame = 4
						task.wait(0.1)
						frame = 5
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.225)
						frame = 6
						task.wait(0.1)
						frame = 7
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.15)
						frame = 8
						task.wait(0.1)
						anim = "fatal"
						Tool.Grip = cframe(0, 0.75, 0, 1.31134158e-07, -1, 4.37113883e-08, -3.82137093e-15, 4.37113883e-08, 1, -1, -1.31134158e-07, 1.91068547e-15)
						chatter(char,"Eat this!")
						local gender = "Male"
						if char:FindFirstChild("Gender") then
							gender = char:FindFirstChild("Gender").Value
						else
							gender = "Male"
						end
						if owner.UserId == 50203523 then
							local gender = "Male"
							if char:FindFirstChild("Gender") then
								gender = char:FindFirstChild("Gender").Value
							else
								gender = "Male"
							end
							if owner.UserId == 50203523 then
								if gender == "Male" then
									voice("yuki/yuki_202-12.wav",3,1.1,char.Head,0,false)
								else
									voice("yuki/yuki_202-12.wav",3,1.6,char.Head,0,false)
								end
							end
						end
						frame = 5
						task.wait(0.45)
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										if vtorso:FindFirstChild("FatalHitBy") then vtorso:FindFirstChild("FatalHitBy"):Destroy() end
									end
								end))
							end
						end)
						magnitudedamage(7.5, "boom", 0.05, 10, 46153268, 1.5, 0.5, rt,true, "burn","tyrant3")
						frame = 6
						task.wait(0.75)
						trail.Enabled = false
						trail2.Enabled = false	
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					elseif heatlvl == 2 then
						if heat > 100 then
							heat = heat - 100
						end
						heatlvl = 1
						anim = "nightmarea"
						Tool.Grip = cframe(0, 0.75, 0, 4.37113883e-08, -3.82137093e-15, -1, -8.74227766e-08, -1, -0, -1, 8.74227766e-08, -4.37113883e-08)
						frame = 2
						task.wait(0.1)
						frame = 3
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.225)
						frame = 4
						task.wait(0.1)
						frame = 5
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.225)
						frame = 6
						task.wait(0.1)
						frame = 7
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.15)
						frame = 8
						task.wait(0.1)
						frame = 3
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.225)
						frame = 4
						task.wait(0.1)
						frame = 5
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.225)
						frame = 6
						task.wait(0.1)
						frame = 7
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.15)
						frame = 8
						task.wait(0.1)
						anim = "fatal"
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
						frame = 5
						trail.Enabled = false
						trail2.Enabled = false	
						chatter(char,"Sarculous...")
						local gender = "Male"
						if char:FindFirstChild("Gender") then
							gender = char:FindFirstChild("Gender").Value
						else
							gender = "Male"
						end
						if owner.UserId == 50203523 then
							local gender = "Male"
							if char:FindFirstChild("Gender") then
								gender = char:FindFirstChild("Gender").Value
							else
								gender = "Male"
							end
							if owner.UserId == 50203523 then
								if gender == "Male" then
									sound1("savagefang.wav",3,1.05,char.Head,0,false)
								else
									sound1("savagefang.wav",3,1.6,char.Head,0,false)
								end
							end
						end
						task.wait(1.25)
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										if vtorso:FindFirstChild("FatalHitBy") then vtorso:FindFirstChild("FatalHitBy"):Destroy() end
									end
								end))
							end
						end)
						spawn(function()
							local pos = rt.CFrame
							local direction = pos.lookVector
							for i=1, 5 do
								local posit = pos+(direction*i*8)
								local scrumbpw2 = new("Part")
								local scrumbpwm2 = new("SpecialMesh")
								local scrumbp = new("Part")
								local scrumbpm = new("SpecialMesh")
								local scrumbp2 = new("Part")
								local scrumbpm2 = new("SpecialMesh")
								local scrumbpw = new("Part")
								local scrumbpwm = new("SpecialMesh")
								scrumbpw.Parent = script
								scrumbpw.Transparency = 0.05
								scrumbpw.Size = vect3(1, 1, 1)
								scrumbpw.Anchored = true
								scrumbpw.BottomSurface = Enum.SurfaceType.Smooth
								scrumbpw.BrickColor = bc("Dark indigo")
								scrumbpw.CanCollide = false
								scrumbpw.TopSurface = Enum.SurfaceType.Smooth
								scrumbpwm.Parent = scrumbpw
								scrumbpwm.MeshId = "rbxassetid://20329976"
								scrumbpwm.Scale = vect3(3, 3, 3)
								scrumbpwm.MeshType = Enum.MeshType.FileMesh
								scrumbpw2.Name = "Part1"
								scrumbpw2.Parent = scrumbpw
								scrumbpw2.Color = color(0.768627, 0.156863, 0.109804)
								scrumbpw2.Transparency = 0.25
								scrumbpw2.Size = vect3(1, 1, 1)
								scrumbpw2.Anchored = true
								scrumbpw2.BottomSurface = Enum.SurfaceType.Smooth
								scrumbpw2.BrickColor = bc("Really black")
								scrumbpw2.CanCollide = false
								scrumbpw2.TopSurface = Enum.SurfaceType.Smooth
								scrumbpwm2.Parent = scrumbpw2
								scrumbpwm2.MeshId = "rbxassetid://20329976"
								scrumbpwm2.Scale = vect3(3.5, 3.5, 3.5)
								scrumbpwm2.MeshType = Enum.MeshType.FileMesh
								scrumbp.Name = "scrumbp"
								scrumbp.Parent = scrumbpw
								scrumbp.Transparency = 0.25
								scrumbp.Size = vect3(2.5, 5, 2.5)
								scrumbp.Anchored = true
								scrumbp.BottomSurface = Enum.SurfaceType.Smooth
								scrumbp.BrickColor = bc("Really black")
								scrumbp.CanCollide = false
								scrumbp.TopSurface = Enum.SurfaceType.Smooth
								scrumbpm.Parent = scrumbp
								scrumbpm.MeshType = Enum.MeshType.Sphere
								scrumbp2.Name = "Part3"
								scrumbp2.Parent = scrumbpw
								scrumbp2.Transparency = 0.05
								scrumbp2.Size = vect3(2, 2.5, 2)
								scrumbp2.Anchored = true
								scrumbp2.BottomSurface = Enum.SurfaceType.Smooth
								scrumbp2.BrickColor = bc("Dark indigo")
								scrumbp2.CanCollide = false
								scrumbp2.TopSurface = Enum.SurfaceType.Smooth
								scrumbpm2.Parent = scrumbp2
								scrumbpm2.MeshType = Enum.MeshType.Sphere
								scrumbpw2.Material = "Neon"
								scrumbpw.Material = "Neon"
								scrumbp.Material = "Neon"
								scrumbp2.Material = "Neon"
								scrumbpw.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
								scrumbpw2.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5)
								scrumbp.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5) * angles(0,rad(-45),0)
								scrumbp2.CFrame = cframe(posit.x,posit.y-1.5,posit.z-1.5) * angles(0,rad(-45),0)
								if i == 5 then
									magnitudedamage(7.5,"sphere", 0, 11.5, 2248511, 1.5, 1, scrumbp,true,"burn","vortex2")
								else
									magnitudedamage(7.5,"sphere", 0, 11.5, 2248511, 1.5, 1, scrumbp,true,"normal","fatal")
								end
								sound(48618802,1.15,0.75,scrumbp,0,false)
								local tween = tweens:Create(scrumbpw,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
								tween:Play()
								local tweenM = tweens:Create(scrumbpwm,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.025,15),Offset = vect3(0,-1.5,-1)})
								tweenM:Play()
								local tween1 = tweens:Create(scrumbpw2,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
								tween1:Play()
								local tweenM1 = tweens:Create(scrumbpwm2,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.015,17.5),Offset = vect3(0,-1.5,-1)})
								tweenM1:Play()
								local tween2 = tweens:Create(scrumbp,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = scrumbp.CFrame * CFrame.Angles(0,math.rad(180),0),Size = vect3(7.5,60,7.5),Transparency = 1})
								tween2:Play()
								local tween3 = tweens:Create(scrumbp2,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = scrumbp.CFrame * CFrame.Angles(0,math.rad(180),0),Size = vect3(5,45,5),Transparency = 1})
								tween3:Play()
								tween.Completed:Connect(function() scrumbpw:Destroy()end)
								tween1.Completed:Connect(function() scrumbpw2:Destroy() end)
								tween2.Completed:Connect(function() scrumbp:Destroy()end)
								tween3.Completed:Connect(function() scrumbp2:Destroy() end)
								task.wait(.125)
							end
						end)
						anim = "redstar"
						frame = 1
						chatter(char,"Crumb!")
						task.wait(0.75)
					elseif heatlvl == 3 then
						if heat > 100 then
							heat = heat - 200
						end
						heatlvl = 1
						local doingfatal = true
						anim = "fatal"
						frame = 9
						super(1)
						chatter(char,"This will hurt!")
						local gender = "Male"
						if char:FindFirstChild("Gender") then
							gender = char:FindFirstChild("Gender").Value
						else
							gender = "Male"
						end
						if owner.UserId == 50203523 then
							local gender = "Male"
							if char:FindFirstChild("Gender") then
								gender = char:FindFirstChild("Gender").Value
							else
								gender = "Male"
							end
							if owner.UserId == 50203523 then
								if gender == "Male" then
									voice("yuki/yuki_202-12.wav",3,1.1,char.Head,0,false)
								else
									voice("yuki/yuki_202-12.wav",3,1.6,char.Head,0,false)
								end
							end
						end
						task.wait(1)
						frame = 10
						spawn(function()
							while doingfatal do
								jin = jin + 1
								task.wait()
							end
						end)
						spawn(function()
							while doingfatal do
								spawn(function()
									for i = 1, #targets do
										coroutine.resume(coroutine.create(function()
											local v = targets[i]
											local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
											local vhum = v:FindFirstChildOfClass("Humanoid")
											if v ~= nil then
												hiteffect("sphere",vtorso)
												sound(153092285,1.5,1,vtorso,0,false)
												if random(0,5) <= 2 then
													sound(7441099080,3,1,vtorso,0,false)
													hiteffect("blood",vtorso)
												end
												if not blazblue then
													if vhum.Health > 5 then
														local creator = new("ObjectValue")
														creator.Name = "creator"
														creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
														creator.Parent = vhum
														debris:AddItem(creator, 2)
														vhum:TakeDamage(5)
													end
												else
													if vhum.Health > 7.5 then
														local creator = new("ObjectValue")
														creator.Name = "creator"
														creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
														creator.Parent = vhum
														debris:AddItem(creator, 2)
														vhum:TakeDamage(7.5)
													end
												end
											end
										end))
									end
								end)
								task.wait(0.15)						
							end
						end)
						task.wait(2)
						doingfatal = false
						jin = 0
						anim = "nightmarea"
						frame = 1
						task.wait(0.125)
						anim = "fatal"
						frame = 7
						trail.Enabled = false
						trail2.Enabled = false	
						super(2)
						chatter(char,"This is getting fun!")
						local gender = "Male"
						if char:FindFirstChild("Gender") then
							gender = char:FindFirstChild("Gender").Value
						else
							gender = "Male"
						end
						if owner.UserId == 50203523 then
							local gender = "Male"
							if char:FindFirstChild("Gender") then
								gender = char:FindFirstChild("Gender").Value
							else
								gender = "Male"
							end
							if owner.UserId == 50203523 then
								if gender == "Male" then
									voice("yuki/yuki_3000-12.wav",3,1.1,char.Head,0,false)
								else
									voice("yuki/yuki_3000-12.wav",3,1.6,char.Head,0,false)
								end
							end
						end
						local dragon = new("Part")
						local dragonm = new("SpecialMesh")
						dragon.Name = "Dragon"
						dragon.Parent = script
						dragon.Size = vect3(0.001, 0.001, 0.001)
						dragon.BrickColor = bc("Really black")
						dragon.CanCollide = false
						dragon.CanTouch = false
						dragon.Anchored = true
						dragon.Locked = true
						dragon.Transparency = 1
						dragonm.Name = "DragonMesh"
						dragonm.Parent = dragon
						dragonm.MeshId = "rbxassetid://5472466819"
						dragonm.Scale = vect3(0.25, 0.25, 0.25)
						dragon.CFrame = rt.CFrame * cframe(0,0,7.5)
						tweens:Create(dragon, TweenInfo.new(1.75), {Transparency = 0}):Play()
						local fire = new("Fire")
						fire.Parent = char["Left Arm"]
						fire.Size = 6
						fire.Heat = 10
						fire.Color = color(0.0784314, 0.0784314, 0.0784314)
						fire.SecondaryColor = color(0.384314, 0.145098, 0.819608)
						local fire2 = new("Fire")
						fire2.Parent = char["Right Arm"]
						fire2.Size = 6
						fire2.Heat = 10
						fire2.Color = color(0.0784314, 0.0784314, 0.0784314)
						fire2.SecondaryColor = color(0.384314, 0.145098, 0.819608)
						sound(1273117535,4.5,1,rt,0,false)
						sound(7127123554,3,1,dragon,0,false)
						task.wait(2)
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										if vtorso:FindFirstChild("FatalHitBy") then vtorso:FindFirstChild("FatalHitBy"):Destroy() end
									end
								end))
							end
						end)
						spawn(function()
							task.wait(0.15)
							fire.Enabled = false
							fire2.Enabled = false
							debris:AddItem(fire,2.15)
							debris:AddItem(fire2,2.15)
						end)
						spawn(function()
							sound(511715134,2.15,1,dragon,0,false)
							tweens:Create(dragon, TweenInfo.new(0.25), {CFrame = rt.CFrame * cframe(0,0,-15)}):Play()
							sound(157487812,1.75,0.75,dragon,0,false)
							local dashp = new("ParticleEmitter")
							dashp.Name = "Debris"
							dashp.Parent = dragon
							dashp.Speed = NumberRange.new(22, 22)
							dashp.Rotation = NumberRange.new(1, 360)
							dashp.Color = ColorSequence.new(color(0, 0, 0),color(0.447059, 0.231373, 0.705882))
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
							task.wait(0.45)
							dashp.Enabled = false
							tweens:Create(dragon, TweenInfo.new(2), {Transparency = 1}):Play()
							debris:AddItem(dragon,2.25)
						end)
						magnitudedamage(30, "boom", 0.05, 10, 46153268, 1.5, 0.5, rt,true, "burn","tyrant3")
						frame = 8
						task.wait(2)
					end
					fatalcooldown = true
					spawn(function()
						task.wait(30)
						fatalcooldown = false
					end)
					if holdinge then
						if heat >= 300 then 
							attack = false
							gyro.MaxTorque = vect3(0,math.huge,0)
							hum.WalkSpeed = ogws
							hum.JumpPower = ogjp
							hum.JumpHeight = ogjh 
							return 
						end
						local pe = new("ParticleEmitter")
						local pe0 = new("ParticleEmitter")
						local pe1 = new("ParticleEmitter")
						pe.Parent = char.Torso
						pe.Speed = NumberRange.new(15, 15)
						pe.Orientation = Enum.ParticleOrientation.VelocityParallel
						pe.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
						pe.LightEmission = 1
						pe.LightInfluence = 1
						pe.Texture = "http://www.roblox.com/asset/?id=8268283628"
						pe.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
						pe.Size = NumberSequence.new(0.4000000059604645,0.4000000059604645)
						pe.Drag = 7
						pe.Lifetime = NumberRange.new(0, 1.5)
						pe.Rate = 500
						pe.SpreadAngle = vect2(360, 360)
						pe.VelocitySpread = 360
						pe0.Parent = char.Torso
						pe0.Speed = NumberRange.new(0, 20)
						pe0.Rotation = NumberRange.new(-360, 360)
						pe0.Color = ColorSequence.new(color(1, 1, 0.498039),color(0.752941, 1, 0.490196),color(0.666667, 1, 1))
						pe0.LightEmission = 1
						pe0.LightInfluence = 1
						pe0.Texture = "http://www.roblox.com/asset/?id=8177564047"
						pe0.Transparency = NumberSequence.new(1,0,1)
						pe0.Size = NumberSequence.new(0.5624997615814209,0)
						pe0.Shape = Enum.ParticleEmitterShape.Sphere
						pe0.Acceleration = vect3(0, -15, 0)
						pe0.Drag = 10
						pe0.Lifetime = NumberRange.new(0, 1.5)
						pe0.Rate = 1000
						pe0.RotSpeed = NumberRange.new(100, 100)
						pe1.Parent = char.Torso
						pe1.Speed = NumberRange.new(15, 15)
						pe1.Rotation = NumberRange.new(0, 360)
						pe1.Color = ColorSequence.new(color(1, 0.917647, 0),color(0.85098, 1, 0.188235),color(0.419608, 0.952941, 1))
						pe1.LightEmission = 1
						pe1.LightInfluence = 1
						pe1.Texture = "http://www.roblox.com/asset/?id=8177565057"
						pe1.Transparency = NumberSequence.new(0,0.19374996423721313,0.987500011920929)
						pe1.Size = NumberSequence.new(0.30000001192092896,0)
						pe1.Drag = 10
						pe1.Lifetime = NumberRange.new(0, 1.5)
						pe1.Rate = 10000
						pe1.RotSpeed = NumberRange.new(50, 50)
						pe1.SpreadAngle = vect2(360, 360)
						pe1.VelocitySpread = 360
						local sphere = new("Part")
						sphere.Parent = char
						sphere.Name = "YuiEffect"
						sphere.Shape = "Ball"
						sphere.Size = vect3(2.5,2.5,2.5)
						sphere.Transparency = 0.5
						sphere.BrickColor = bc("Cool yellow")
						sphere.Material = "Neon"
						sphere.CanCollide = false
						sphere.Anchored = true
						sphere.CFrame = rt.CFrame
						local tween = tweens:Create(sphere, TweenInfo.new(0.25), {Size = vect3(30,30,30), Transparency = 1, Color = color(1,1,1)})
						tween:Play()
						debris:AddItem(sphere,2)
						sound(1613998698,1.5,1,rt,0.3,false)
						if not inair then
							Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
							anim = "yui"
							if heat < 300 then
								heat = heat + 50
							end
							if heat > 300 then
								heat = 300
							end
							if heat >= 0 and heat < 100 then
								heatlvl = 1
							elseif heat >= 100 and heat < 200 then
								heatlvl = 2
							elseif heat >= 300 then
								heatlvl = 3
							end
							task.wait(0.45)
							pe0.Enabled = false
							pe1.Enabled = false
							pe.Enabled = false
							debris:AddItem(pe,1.5)
							debris:AddItem(pe0,1.5)
							debris:AddItem(pe1,1.5)
							Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
						else
							rt.Anchored = true
							Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, -0.5, -0.866025388, 0, 0.866025388, -0.5, 1, -2.18556941e-08, -3.78551732e-08)
							anim = "ayui"
							if heat < 300 then
								heat = heat + 50
							end
							if heat > 300 then
								heat = 300
							end
							if heat >= 0 and heat < 100 then
								heatlvl = 1
							elseif heat >= 100 and heat < 200 then
								heatlvl = 2
							elseif heat >= 300 then
								heatlvl = 3
							end
							task.wait(0.45)
							pe0.Enabled = false
							pe1.Enabled = false
							pe.Enabled = false
							debris:AddItem(pe,1.5)
							debris:AddItem(pe0,1.5)
							debris:AddItem(pe1,1.5)
							rt.Anchored = false
							Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
						end
					end
				else
					task.wait(0.5)
					gpart:Destroy()
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "saz" then
				if heatlvl == 1 then return end
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				attack = true
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "shade"
				frame = 1
				super()
				local grab = false
				local weld = nil
				local target = nil
				local targeth = nil
				task.wait(1.5)
				anim = "summon"
				frame = 4
				for i,v in pairs(workspace:GetDescendants()) do
					if v:FindFirstChildOfClass("Humanoid") and v ~= char then
						local vhum = v:FindFirstChildOfClass("Humanoid")
						local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
						if vtorso then
							local vdistance = (vtorso.Position - rt.CFrame*cframe(0,0,-1.5).p).magnitude
							if vdistance <= 7.5 and vhum.Health > 0 and not grab then
								grab = true
								sound(46153268,1.15,2,vtorso,0,false)
								hiteffect("grab",vtorso)
								target = vtorso
								targeth = vhum
								weld = new("Weld")
								weld.Parent = rt
								weld.Part0 = rt
								weld.Part1 = target
								weld.Name = "GrabWELD"
								weld.C0 = cframe(0.25, 0, -2.5) * angles(0,rad(-180),0)
								rt.Anchored = true	
							end
						end
					end
				end
				task.wait(0.15)
				if grab == true then
					if heatlvl == 2 then
						if heat > 100 then
							heat = heat - 100
						end
						heatlvl = 1
					elseif heatlvl == 3 then
						if heat > 100 then
							heat = heat - 200
						end
						heatlvl = 1
					end
					task.wait(0.15)
					chatter(char,"Gotcha!")
					anim = "agrab"
					frame = 2
					rt.Anchored = true			
					weld.C0 = cframe(-0.15, 0.25, -5) * angles(rad(-90),rad(180),0)	
					for i = 1 , 50 do
						task.wait()
						rt.CFrame = rt.CFrame * angles(0,rad(45),0)
					end
					debris:AddItem(weld,0.01)
					task.wait(0.01)
					sound(10209850,1.5,0.25,rt,0.175,false)
					anim = "saz"
					frame = 1
					local bpos = new("BodyPosition")
					bpos.Name = "SazHitBy"
					bpos.Parent = target
					bpos.MaxForce = vect3(39999,39999,39999)
					bpos.D = 1000
					bpos.Position = rt.CFrame * cframe(0,75,-5).Position
					task.wait(0.75)
					anim = "zero"
					frame = 1
					chatter(char,"Here we go!")
					task.wait(0.175)
					anim = "saz"
					frame = 2
					rt.Anchored = false	
					local bposu = new("BodyPosition")
					bposu.Name = "SazGo"
					bposu.Parent = rt
					bposu.MaxForce = vect3(39999,39999,39999)
					bposu.D = 1150
					bposu.Position = rt.CFrame * cframe(0,75,-0).Position
					task.wait(1.75)
					anim = "nightmarea"
					Tool.Grip = cframe(0, 0.75, 0, 4.37113883e-08, -3.82137093e-15, -1, -8.74227766e-08, -1, -0, -1, 8.74227766e-08, -4.37113883e-08)
					frame = 2
					chatter(char,"Saz' Amethyst...")
					task.wait(0.1)
					frame = 3
					hiteffect("sphere",target)
					sound(153092285,1.5,1,target,0,false)
					if random(0,5) <= 2 then
						sound(7441099080,3,1,target,0,false)
						hiteffect("blood",target)
					end
					if not blazblue then
						if targeth.Health > 6 then
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = targeth
							debris:AddItem(creator, 2)
							targeth:TakeDamage(6)
						end
					else
						if targeth.Health > 8.7 then
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = targeth
							debris:AddItem(creator, 2)
							targeth:TakeDamage(8.7)
						end
					end
					task.wait(0.225)
					frame = 4
					task.wait(0.1)
					frame = 5
					hiteffect("sphere",target)
					sound(153092285,1.5,1,target,0,false)
					if random(0,5) <= 2 then
						sound(7441099080,3,1,target,0,false)
						hiteffect("blood",target)
					end
					if not blazblue then
						if targeth.Health > 6 then
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = targeth
							debris:AddItem(creator, 2)
							targeth:TakeDamage(6)
						end
					else
						if targeth.Health > 8.7 then
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = targeth
							debris:AddItem(creator, 2)
							targeth:TakeDamage(8.7)
						end
					end
					task.wait(0.225)
					frame = 6
					task.wait(0.1)
					frame = 7
					hiteffect("sphere",target)
					sound(153092285,1.5,1,target,0,false)
					if random(0,5) <= 2 then
						sound(7441099080,3,1,target,0,false)
						hiteffect("blood",target)
					end
					if not blazblue then
						if targeth.Health > 6 then
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = targeth
							debris:AddItem(creator, 2)
							targeth:TakeDamage(6)
						end
					else
						if targeth.Health > 8.7 then
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = targeth
							debris:AddItem(creator, 2)
							targeth:TakeDamage(8.7)
						end
					end
					task.wait(0.15)
					frame = 8
					task.wait(0.1)
					frame = 3
					hiteffect("sphere",target)
					sound(153092285,1.5,1,target,0,false)
					if random(0,5) <= 2 then
						sound(7441099080,3,1,target,0,false)
						hiteffect("blood",target)
					end
					if not blazblue then
						if targeth.Health > 6 then
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = targeth
							debris:AddItem(creator, 2)
							targeth:TakeDamage(6)
						end
					else
						if targeth.Health > 8.7 then
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = targeth
							debris:AddItem(creator, 2)
							targeth:TakeDamage(8.7)
						end
					end
					task.wait(0.225)
					frame = 4
					task.wait(0.1)
					frame = 5
					hiteffect("sphere",target)
					sound(153092285,1.5,1,target,0,false)
					if random(0,5) <= 2 then
						sound(7441099080,3,1,target,0,false)
						hiteffect("blood",target)
					end
					if not blazblue then
						if targeth.Health > 6 then
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = targeth
							debris:AddItem(creator, 2)
							targeth:TakeDamage(6)
						end
					else
						if targeth.Health > 8.7 then
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = targeth
							debris:AddItem(creator, 2)
							targeth:TakeDamage(8.7)
						end
					end
					task.wait(0.225)
					frame = 6
					task.wait(0.1)
					frame = 7
					hiteffect("sphere",target)
					sound(153092285,1.5,1,target,0,false)
					if random(0,5) <= 2 then
						sound(7441099080,3,1,target,0,false)
						hiteffect("blood",target)
					end
					if not blazblue then
						if targeth.Health > 6 then
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = targeth
							debris:AddItem(creator, 2)
							targeth:TakeDamage(6)
						end
					else
						if targeth.Health > 8.7 then
							local creator = new("ObjectValue")
							creator.Name = "creator"
							creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
							creator.Parent = targeth
							debris:AddItem(creator, 2)
							targeth:TakeDamage(8.7)
						end
					end
					task.wait(0.15)
					frame = 8
					task.wait(0.1)
					Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
					bposu:Destroy()
					rt.Anchored = true
					anim = "saz"
					frame = 3
					chatter(char,"Death...")
					local fire = new("Fire")
					fire.Parent = char["Left Arm"]
					fire.Size = 6
					fire.Heat = 10
					fire.Color = color(0.0784314, 0.0784314, 0.0784314)
					fire.SecondaryColor = color(0.384314, 0.145098, 0.819608)
					sound(1273117535,4.5,1,char["Left Arm"],0,false)
					task.wait(1.5)
					frame = 4
					chatter(char,"Collider!!")
					hiteffect("boom",target)
					sound(46153268,1.45,0.5,target,0.05,false)
					spawn(function()
						task.wait(0.15)
						fire.Enabled = false
						debris:AddItem(fire,2.25)
					end)
					if target.Parent ~= nil then if target:FindFirstChild("SazHitBy") then target:FindFirstChild("SazHitBy"):Destroy() end end
					target.CFrame = rt.CFrame * cframe(0,0,-4.5) * angles(0,rad(-180),0)
					target.Velocity = rt.CFrame.lookVector*75 + rt.CFrame.upVector * -115
					targeth.PlatformStand = true
					spawn(function()
						wait(3)
						targeth.PlatformStand = false
					end)
					spawn(function()
						local hitfloor
						repeat 
							wait()
							hitfloor = raycast(target.Position, vect3(0, -1, 0), 2+targeth.HipHeight, target.Parent)
						until hitfloor or targeth:GetState() == Enum.HumanoidStateType.Landed
						sound(96730847431500,1.5,1,target,0,false)
						hiteffect("burn",target)
						damage(targeth, 19, 2233908, 2.5, 0.4, target, 0, "boom")
					end)
					task.wait(1.5)
					rt.Anchored = false
					sazcooldown = true
					spawn(function()
						task.wait(45)
						sazcooldown = false
					end)
				else
					task.wait(0.45)
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "overdrive" then
				if blazblue == true then return end
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				attack = true
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "overdrive"
				frame = 1
				local torso = char.Torso
				local la = char["Left Arm"]
				chatter(char,"Restriction Zero-Zero-X released...")	
				local gender = "Male"
				if char:FindFirstChild("Gender") then
					gender = char:FindFirstChild("Gender").Value
				else
					gender = "Male"
				end
				if owner.UserId == 50203523 then
					local gender = "Male"
					if char:FindFirstChild("Gender") then
						gender = char:FindFirstChild("Gender").Value
					else
						gender = "Male"
					end
					if owner.UserId == 50203523 then
						if gender == "Male" then
							sound1("enmau2.wav",3,1.05,char.Head,0,false)
						else
							sound1("enmau2.wav",3,1.6,char.Head,0,false)
						end
					end
				end
				sound(2101137,1.5,0.05,rt,0,false)
				local beep = new("Sound", rt)
				beep.SoundId = "rbxassetid://34315534"
				beep.Looped = true
				beep.Name = "beepsound"
				beep.PlaybackSpeed = 0.1
				beep.Volume = 3
				beep:Play()
				local doingoverdrive = true		
				spawn(function()
					while doingoverdrive do
						local randc = random(0,3)
						local late = new("Part")
						local latem = new("SpecialMesh")
						local late1 = new("Part")
						local latem1 = new("SpecialMesh")
						local late2 = new("Part")
						local latem2 = new("SpecialMesh")
						late.Name = "Effect"
						late.Parent = workspace.Terrain
						late.Size = vect3(0.001,0.001,0.001)
						late.Anchored = true
						late.BottomSurface = Enum.SurfaceType.Smooth
						if randc == 0 then
							late.BrickColor = bc("Really black")
						elseif randc == 1 then
							late.BrickColor = bc("Black")
						elseif randc == 2 then
							late.BrickColor = bc("Royal purple")
						elseif randc == 3 then
							late.BrickColor = bc("Dark indigo")
						end
						late.CanCollide = false
						late.CanTouch = false
						late.TopSurface = Enum.SurfaceType.Smooth
						late.FormFactor = Enum.FormFactor.Custom
						latem.Parent = late
						latem.MeshId = "http://www.roblox.com/asset/?id=20329976"
						latem.Scale = vect3(11.64, 6.466, 9.138)
						latem.MeshType = Enum.MeshType.FileMesh
						late1.Name = "Effect"
						late1.Parent = workspace.Terrain
						late1.Size = vect3(0.001,0.001,0.001)
						late1.Anchored = true
						late1.BottomSurface = Enum.SurfaceType.Smooth
						if randc == 0 then
							late1.BrickColor = bc("Really black")
						elseif randc == 1 then
							late1.BrickColor = bc("Black")
						elseif randc == 2 then
							late1.BrickColor = bc("Royal purple")
						elseif randc == 3 then
							late1.BrickColor = bc("Dark indigo")
						end
						late1.CanCollide = false
						late1.CanTouch = false
						late1.TopSurface = Enum.SurfaceType.Smooth
						late1.FormFactor = Enum.FormFactor.Custom
						latem1.Parent = late1
						latem1.MeshId = "http://www.roblox.com/asset/?id=20329976"
						latem1.Scale = vect3(17.01546859741211, 3.579, 13.386)
						latem1.MeshType = Enum.MeshType.FileMesh
						late2.Name = "Effect"
						late2.Parent = workspace.Terrain
						late2.Size = vect3(0.001,0.001,0.001)
						late2.CanTouch = false
						late2.Anchored = true
						late2.BottomSurface = Enum.SurfaceType.Smooth
						if randc == 0 then
							late2.BrickColor = bc("Really black")
						elseif randc == 1 then
							late2.BrickColor = bc("Black")
						elseif randc == 2 then
							late2.BrickColor = bc("Royal purple")
						elseif randc == 3 then
							late2.BrickColor = bc("Dark indigo")
						end
						late2.CanCollide = false
						late2.TopSurface = Enum.SurfaceType.Smooth
						late2.FormFactor = Enum.FormFactor.Custom
						latem2.Parent = late2
						latem2.MeshId = "http://www.roblox.com/asset/?id=20329976"
						latem2.Scale = vect3(4.516, 9.501, 4.516)
						latem2.MeshType = Enum.MeshType.FileMesh
						late.CFrame = rt.CFrame * cframe(0,-2.5,0)
						late1.CFrame = rt.CFrame * cframe(0,-2.5,0)
						late2.CFrame = rt.CFrame * cframe(0,-2.5,0)
						local tween = tweens:Create(late, TweenInfo.new(1), {Transparency = 1})
						tween:Play()
						local tween1 = tweens:Create(late1, TweenInfo.new(1), {Transparency = 1})
						tween1:Play()
						local tween2 = tweens:Create(late2, TweenInfo.new(1), {Transparency = 1})
						tween2:Play()
						tweens:Create(latem, TweenInfo.new(1), {Scale = vect3(35, 1, 35), Offset = vect3(0, -3.5, 0)}):Play()
						tweens:Create(latem1, TweenInfo.new(1), {Scale = vect3(45, 0.25, 45), Offset = vect3(0,-1,0)}):Play()
						tweens:Create(latem2, TweenInfo.new(1), {Scale = vect3(25, 1.25, 26), Offset = vect3(0,-5,0)}):Play()
						tween.Completed:Connect(function() late:Destroy() end)
						tween.Completed:Connect(function() late1:Destroy() end)
						tween.Completed:Connect(function() late2:Destroy() end)
						task.wait(0.125)
					end
				end)
				local bbpart =new("Part")
				local bbpartw = new("Weld")
				bbpart.Name = "PART"
				bbpart.Parent = script
				bbpart.Transparency = 1
				bbpart.Size = vect3(0,0,0)
				bbpart.CanCollide = false
				bbpart.CanTouch = false
				bbpart.Locked = true
				bbpartw.Parent = bbpart
				bbpartw.C0 = cframe(0, -1.15, 0, 1, 0, 0, 0, -1, -8.74227766e-08, 0, 8.74227766e-08, -1)
				bbpartw.Part0 = la
				bbpartw.Part1 = bbpart
				local bbfire = new("Fire")
				bbfire.Parent = bbpart
				bbfire.Size = 3.5
				bbfire.Heat = 10
				bbfire.Color = color(0,0,0)
				bbfire.SecondaryColor = Color3.fromRGB(98, 37, 209)
				task.wait(3)
				chatter(char,"Deploying ForceField!")	
				local gender = "Male"
				if char:FindFirstChild("Gender") then
					gender = char:FindFirstChild("Gender").Value
				else
					gender = "Male"
				end
				if owner.UserId == 50203523 then
					local gender = "Male"
					if char:FindFirstChild("Gender") then
						gender = char:FindFirstChild("Gender").Value
					else
						gender = "Male"
					end
					if owner.UserId == 50203523 then
						if gender == "Male" then
							sound1("enmau3.wav",3,1.05,char.Head,0,false)
						else
							sound1("enmau3.wav",3,1.6,char.Head,0,false)
						end
					end
				end
				spawn(function()
					local sphere = new("Part")
					sphere.Parent = script
					sphere.Name = "ForceStar"
					sphere.Shape = "Ball"
					sphere.Size = vect3(2.5,2.5,2.5)
					sphere.Transparency = 0
					sphere.BrickColor = bc("Royal purple")
					sphere.Material = "ForceField"
					sphere.CanCollide = false
					sphere.Anchored = true
					sphere.CFrame = rt.CFrame
					local tween = tweens:Create(sphere, TweenInfo.new(3), {Size = vect3(45,45,45), Transparency = 1})
					tween:Play()
					tween.Completed:Connect(function() sphere:Destroy() end)
					sound(2101137,1.5,0.3,rt,0,false)
				end)
				task.wait(3)
				chatter(char,"I'll show you the power of the great Berzei!")
				local gender = "Male"
				if char:FindFirstChild("Gender") then
					gender = char:FindFirstChild("Gender").Value
				else
					gender = "Male"
				end
				if owner.UserId == 50203523 then
					local gender = "Male"
					if char:FindFirstChild("Gender") then
						gender = char:FindFirstChild("Gender").Value
					else
						gender = "Male"
					end
					if owner.UserId == 50203523 then
						if gender == "Male" then
							sound1("enmau5.wav",3,1.05,char.Head,0,false)
						else
							sound1("enmau5.wav",3,1.6,char.Head,0,false)
						end
					end
				end
				task.wait(3)
				chatter(char,"BlazBlue...")
				local gender = "Male"
				if char:FindFirstChild("Gender") then
					gender = char:FindFirstChild("Gender").Value
				else
					gender = "Male"
				end
				if owner.UserId == 50203523 then
					local gender = "Male"
					if char:FindFirstChild("Gender") then
						gender = char:FindFirstChild("Gender").Value
					else
						gender = "Male"
					end
					if owner.UserId == 50203523 then
						if gender == "Male" then
							sound1("enmau6.wav",3,1.05,char.Head,0,false)
						else
							sound1("enmau6.wav",3,1.6,char.Head,0,false)
						end
					end
				end
				bbfire.Enabled = false
				debris:AddItem(bbpart,1.5)
				frame = 2	
				task.wait(1.5)
				chatter(char,"Activate!")
				local gender = "Male"
				if char:FindFirstChild("Gender") then
					gender = char:FindFirstChild("Gender").Value
				else
					gender = "Male"
				end
				if owner.UserId == 50203523 then
					local gender = "Male"
					if char:FindFirstChild("Gender") then
						gender = char:FindFirstChild("Gender").Value
					else
						gender = "Male"
					end
					if owner.UserId == 50203523 then
						if gender == "Male" then
							sound1("enmau7.wav",3,1.05,char.Head,0,false)
						else
							sound1("enmau7.wav",3,1.6,char.Head,0,false)
						end
					end
				end
				frame = 3	
				task.wait(0.25)
				magnitudedamage(0,"sphere", 0, 20, 1064346, 1.15, 1, rt,true,"normal","overdrive")
				local fire = new("Fire", torso)
				fire.Heat = 10
				fire.Size = 15
				fire.Name = "BlazBlueAura"
				fire.Color = Color3.fromRGB(98, 37, 209)
				fire.SecondaryColor = Color3.fromRGB(61, 21, 133)
				local wp = new("Part")
				local wm = new("SpecialMesh")
				wp.Name = "WavePart"
				wp.Parent = script
				wp.Transparency = 0.1
				wp.Size = vect3(0.001,0.001,0.001)
				wp.Anchored = true
				wp.BottomSurface = Enum.SurfaceType.Smooth
				wp.BrickColor = bc("Really black")
				wp.CanCollide = false
				wp.TopSurface = Enum.SurfaceType.Smooth
				wm.Parent = wp
				wm.MeshId = "rbxassetid://20329976"
				wm.Scale = vect3(3.5, 7.5, 3.5)
				wm.MeshType = Enum.MeshType.FileMesh
				local wp2 = new("Part")
				local wm2 = new("SpecialMesh")
				wp2.Name = "WavePart"
				wp2.Parent = wp
				wp2.Transparency = 0.025
				wp2.Size = vect3(0.001,0.001,0.001)
				wp2.Anchored = true
				wp2.BottomSurface = Enum.SurfaceType.Smooth
				wp2.BrickColor = bc("Dark indigo")
				wp2.CanCollide = false
				wp2.TopSurface = Enum.SurfaceType.Smooth
				wm2.Parent = wp2
				wm2.MeshId = "rbxassetid://20329976"
				wm2.Scale = vect3(3, 6, 3)
				wm2.MeshType = Enum.MeshType.FileMesh
				wp.Material = "Neon"
				wp2.Material = "Neon"
				wp.CFrame = rt.CFrame * cframe(0,-1.5,-0.45)
				wp2.CFrame = rt.CFrame * cframe(0,-1.5,-0.45)
				sound2(2760979, 1.5, 0.375, wp, 0,false)
				sound2(2693351, 1.25, 0.85, wp, 0,false)
				local tween = tweens:Create(wp,TweenInfo.new(3.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
				tween:Play()
				local tweenM = tweens:Create(wm,TweenInfo.new(3.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.05,15),Offset = vect3(0,-1.5,-1)})
				tweenM:Play()
				local tween1 = tweens:Create(wp2,TweenInfo.new(3.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
				tween1:Play()
				local tweenM1 = tweens:Create(wm2,TweenInfo.new(3.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.025,17.5),Offset = vect3(0,-1.5,-1)})
				tweenM1:Play()
				tween.Completed:Connect(function() wp:Destroy()end)
				tween1.Completed:Connect(function() wp2:Destroy() end)
				local dp = new("Part")
				local dpm = new("SpecialMesh")
				local dp2 = new("Part")
				local dpm2 = new("SpecialMesh")
				dp.Name = "dp"
				dp.Parent = script
				dp.Transparency = 0.25
				dp.Size = vect3(2.5, 5, 2.5)
				dp.Anchored = true
				dp.BottomSurface = Enum.SurfaceType.Smooth
				dp.BrickColor = bc("Really black")
				dp.CanCollide = false
				dp.TopSurface = Enum.SurfaceType.Smooth
				dpm.Parent = dp
				dpm.MeshType = Enum.MeshType.Sphere
				dp2.Name = "Part3"
				dp2.Parent = dp
				dp2.Transparency = 0.05
				dp2.Size = vect3(2, 2.5, 2)
				dp2.Anchored = true
				dp2.BottomSurface = Enum.SurfaceType.Smooth
				dp2.BrickColor = bc("Dark indigo")
				dp2.CanCollide = false
				dp2.TopSurface = Enum.SurfaceType.Smooth
				dpm2.Parent = dp2
				dpm2.MeshType = Enum.MeshType.Sphere
				dp.Material = "Neon"
				dp2.Material = "Neon"
				dp.CFrame = rt.CFrame * cframe(0,-1.5,0)
				dp2.CFrame = rt.CFrame * cframe(0,-1.5,0)
				sound(6892640563,1.5,1,rt,0,false)
				local tween2 = tweens:Create(dp,TweenInfo.new(2.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = dp.CFrame * angles(0,rad(180),0),Size = vect3(15,150,15),Transparency = 1})
				tween2:Play()
				local tween3 = tweens:Create(dp2,TweenInfo.new(2.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = dp.CFrame * angles(0,rad(180),0),Size = vect3(10,120,10),Transparency = 1})
				tween3:Play()
				tween2.Completed:Connect(function() dp:Destroy()end)
				tween3.Completed:Connect(function() dp2:Destroy() end)
				blazblue = true
				spawn(function()
					while doingoverdrive do
						task.wait()
						heatlvl = 3
						heat = 300
					end
				end)
				task.wait(2.5)
				chatter(char,"Let's go!")
				local gender = "Male"
				if char:FindFirstChild("Gender") then
					gender = char:FindFirstChild("Gender").Value
				else
					gender = "Male"
				end
				if owner.UserId == 50203523 then
					local gender = "Male"
					if char:FindFirstChild("Gender") then
						gender = char:FindFirstChild("Gender").Value
					else
						gender = "Male"
					end
					if owner.UserId == 50203523 then
						if gender == "Male" then
							voice("yuki/yuki_190-10.wav",3,1.1,char.Head,0,false)
						else
							voice("yuki/yuki_190-10.wav",3,1.6,char.Head,0,false)
						end
					end
				end
				spawn(function()
					task.wait(45)
					doingoverdrive = false
					blazblue = false
					beep:Destroy()
					fire:Destroy()
					spawn(function()
						task.wait(60)
						overdrivecooldown = false
					end)
				end)
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "blazblue" then
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				attack = true
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "blazblue"
				frame = 1
				local blazhit = false
				local targets = {}
				if (hum.Health <= 40 or blazblue == true or owner.UserId == 50203523) and heatlvl == 3 then
					if heat > 100 then
						heat = heat - 200
					end
					heatlvl = 1
					super()
					frame = 1
					task.wait(1.25)
					chatter(char,"BlazBlue!")
					local gender = "Male"
					if char:FindFirstChild("Gender") then
						gender = char:FindFirstChild("Gender").Value
					else
						gender = "Male"
					end
					if owner.UserId == 50203523 then
						local gender = "Male"
						if char:FindFirstChild("Gender") then
							gender = char:FindFirstChild("Gender").Value
						else
							gender = "Male"
						end
						if owner.UserId == 50203523 then
							if gender == "Male" then
								sound1("enmau6.wav",3,1.05,char.Head,0,false)
							else
								sound1("enmau6.wav",3,1.6,char.Head,0,false)
							end
						end
					end
					frame = 2
					local torso = char.Torso
					local boom = new("Explosion")
					boom.Parent = workspace
					boom.Position = torso.Position
					boom.BlastRadius = 0
					boom.BlastPressure = 0
					local wings = new("Part")
					local wingsm = new("SpecialMesh")
					local wingsw = new("Weld")
					wings.Name = "EnmaWings"
					wings.Parent = script
					wings.Size = vect3(0.001, 0.001, 0.001)
					wings.BrickColor = bc("Really black")
					wings.CanCollide = false
					wings.CanTouch = false
					wings.Transparency = 1
					wingsm.Parent = wings
					wingsm.MeshId = "http://www.roblox.com/asset/?id=215682815 "
					wingsm.MeshType = Enum.MeshType.FileMesh
					wingsw.Parent = wings
					wingsw.C0 = cframe(-0.0250000004, -1, 0.449999988, 1, -0, 0, 0, 1, 0, -0, 0, 1)
					wingsw.Part0 = wings
					wingsw.Part1 = torso
					local fire = new("Fire", torso)
					fire.Heat = 10
					fire.Size = 15
					fire.Name = "BlazBlueAura"
					fire.Color = color(0.0784314, 0.0784314, 0.0784314)
					fire.SecondaryColor = color(0.384314, 0.145098, 0.819608)
					local flicker = true
					local shirt = char:FindFirstChildOfClass("Shirt")
					local pants = char:FindFirstChildOfClass("Pants")
					local tshirt = char:FindFirstChildOfClass("ShirtGraphic")
					local ost = nil
					local opt = nil
					local otst = nil
					if shirt then
						ost = shirt.ShirtTemplate
					end
					if pants then
						opt = pants.PantsTemplate
					end
					if tshirt then
						otst = tshirt.Graphic
					end
					for i,v in pairs(char:GetDescendants()) do
						if v:IsA("BasePart") then
							if not v:IsDescendantOf(Tool) then
								local cval = new("Color3Value")
								cval.Value = v.Color
								cval.Name = "EnmaColor"
								cval.Parent = v
							end
						end
						if v:IsA("MeshPart") then
							if not v:IsDescendantOf(Tool) then
								local tval = new("StringValue")
								tval.Value = v.TextureID
								tval.Name = "EnmaMTexture"
								tval.Parent = v
							end
						end
						if v:IsA("SpecialMesh") then
							if not v:IsDescendantOf(Tool) then
								local tval = new("StringValue")
								tval.Value = v.TextureId
								tval.Name = "EnmaTexture"
								tval.Parent = v
							end
						end
					end
					spawn(function()
						if flicker then
							if shirt then
								shirt.ShirtTemplate = ""
							end
							if pants then
								pants.PantsTemplate = ""
							end
							if tshirt then
								tshirt.Graphic = ""
							end
							while flicker do
								if not flicker then return end
								for i,v in pairs(char:GetDescendants()) do
									if v:IsA("BasePart") then
										if not v:IsDescendantOf(Tool) then
											v.Color = color(0,0,0)
										end
									end
									if v:IsA("MeshPart") then
										if not v:IsDescendantOf(Tool) then
											v.TextureID = ""
										end
									end
									if v:IsA("SpecialMesh") then
										if not v:IsDescendantOf(Tool) then
											v.TextureId = ""
										end
									end
								end
								wings.Transparency = 0
								task.wait(0.05)
								if not flicker then return end
								for i,v in pairs(char:GetDescendants()) do
									if v:IsA("BasePart") then
										if not v:IsDescendantOf(Tool) then
											v.Color = color(1,1,1)
										end
									end
									if v:IsA("MeshPart") then
										if not v:IsDescendantOf(Tool) then
											v.TextureID = ""
										end
									end
									if v:IsA("SpecialMesh") then
										if not v:IsDescendantOf(Tool) then
											v.TextureId = ""
										end
									end
								end
								wings.Transparency = 1
								task.wait(0.05)
							end
						end
					end)
					if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 then
						sound(105094738430794,7.5,1.05,rt,279,false,true,2.45)
					end
					sound(2101137,1.5,0.45,rt,0,false)
					for i,v in pairs(workspace:GetDescendants()) do
						if v:FindFirstChildOfClass("Humanoid") and v ~= char then
							local vhum = v:FindFirstChildOfClass("Humanoid")
							local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
							if vtorso then
								local vdistance = (vtorso.Position - rt.CFrame*cframe(0,0,-1.5).p).magnitude
								if vdistance <= 7.5 and vhum.Health > 0 then
									blazhit = true
									sound(4766119678,1.5,1,vtorso,0,false)
									hiteffect("sphere",vtorso)
									if not blazblue then
										if vhum.Health > 12 then
											local creator = new("ObjectValue")
											creator.Name = "creator"
											creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
											creator.Parent = vhum
											debris:AddItem(creator, 2)
											vhum:TakeDamage(4)
										end
									else
										if vhum.Health > 17.5 then
											local creator = new("ObjectValue")
											creator.Name = "creator"
											creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
											creator.Parent = vhum
											debris:AddItem(creator, 2)
											vhum:TakeDamage(17.5)
										end
									end
									table.insert(targets, v)
									local bpos = new("BodyPosition")
									bpos.Name = "BlazBlueHitBy"
									bpos.Parent = vtorso
									bpos.MaxForce = vect3(39999,39999,39999)
									bpos.D = 2000
									bpos.Position = rt.CFrame * cframe(0,0,-50).Position
								end
							end
						end
					end
					task.wait(0.75)
					flicker = false
					wings:Destroy()
					fire.Enabled = false
					debris:AddItem(fire,2.15)
					for i,v in pairs(char:GetDescendants()) do
						if v:IsA("Color3Value") and v.Name == "EnmaColor" then
							v.Parent.Color = v.Value
						end
					end
					for i,v in pairs(char:GetDescendants()) do
						if v:IsA("StringValue") and v.Name == "EnmaTexture" then
							v.Parent.TextureId = v.Value
						end
					end
					for i,v in pairs(char:GetDescendants()) do
						if v:IsA("StringValue") and v.Name == "EnmaMTexture" then
							v.Parent.TextureID = v.Value
						end
					end
					if shirt then
						shirt.ShirtTemplate = ost
					end
					if pants then
						pants.PantsTemplate = opt
					end
					if tshirt then
						tshirt.Graphic = otst
					end
					if blazhit then
						task.wait(0.25)
						anim = "blazbluea"
						frame = 1
						chatter(char,"Go!")
						local gender = "Male"
						if char:FindFirstChild("Gender") then
							gender = char:FindFirstChild("Gender").Value
						else
							gender = "Male"
						end
						if owner.UserId == 50203523 then
							local gender = "Male"
							if char:FindFirstChild("Gender") then
								gender = char:FindFirstChild("Gender").Value
							else
								gender = "Male"
							end
							if owner.UserId == 50203523 then
								if gender == "Male" then
									voice("scorpion/scorp_620-0.wav",3,1.1,char.Head,0,false)
								else
									voice("scorpion/scorp_620-0.wav",3,1.6,char.Head,0,false)
								end
							end
						end
						local bpos = new("BodyPosition")
						bpos.Name = "BlazBlueGo"
						bpos.Parent = rt
						bpos.MaxForce = vect3(39999,39999,39999)
						bpos.D = 1000
						bpos.Position = rt.CFrame * cframe(0,0,-45).Position
						task.wait(0.3)
						bpos:Destroy()
						local vel = new("BodyVelocity")
						vel.Name = "BlazBlueGo"
						vel.Parent = rt
						vel.MaxForce = vect3(math.huge,math.huge,math.huge)
						vel.Velocity = rt.CFrame.lookVector * 15
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vhum = v:FindFirstChildOfClass("Humanoid")
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										if vtorso:FindFirstChild("BlazBlueHitBy") then vtorso:FindFirstChild("BlazBlueHitBy"):Destroy() end
										local vel = new("BodyVelocity")
										vel.Name = "BlazBlueHitBy"
										vel.Parent = vtorso
										vel.MaxForce = vect3(math.huge,math.huge,math.huge)
										vel.Velocity = rt.CFrame.lookVector * 15
									end
								end))
							end
						end)
						anim = "fang"
						local fire = new("Fire")
						fire.Parent = char["Left Arm"]
						fire.Size = 6
						fire.Heat = 10
						fire.Color = color(0.0784314, 0.0784314, 0.0784314)
						fire.SecondaryColor = color(0.384314, 0.145098, 0.819608)
						sound(1273117535,4.5,1,char["Left Arm"],0,false)
						frame = 5
						task.wait(0.1)
						frame = 6
						task.wait(0.1)
						sound(7122602098,1,0.65,char["Left Arm"],0,false)
						frame = 7
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vhum = v:FindFirstChildOfClass("Humanoid")
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										sound(4766119678,1.5,1,vtorso,0,false)
										hiteffect("sphere",vtorso)
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.25)
						fire.Enabled = false
						debris:AddItem(fire,2)
						anim = "slash"
						frame = 1
						task.wait(0.045)
						frame = 2
						sound(7122602098,1,0.65,Handle,0,false)
						trail.Enabled = true
						trail2.Enabled = true				
						task.wait(0.045)
						frame = 3
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vhum = v:FindFirstChildOfClass("Humanoid")
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										sound(4766119678,1.5,1,vtorso,0,false)
										hiteffect("sphere",vtorso)
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.25)
						anim = "blazbluea"
						frame = 2
						task.wait(0.1)
						frame = 3
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vhum = v:FindFirstChildOfClass("Humanoid")
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										sound(4766119678,1.5,1,vtorso,0,false)
										hiteffect("sphere",vtorso)
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.2)
						anim = "tyrant"
						frame = 1
						task.wait(0.25)
						anim = "nightmaref"
						frame = 1
						task.wait(0.1)
						frame = 2
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vhum = v:FindFirstChildOfClass("Humanoid")
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										sound(4766119678,1.5,1,vtorso,0,false)
										hiteffect("sphere",vtorso)
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.125)
						frame = 3
						task.wait(0.073)
						anim = "striker"
						frame = 5
						task.wait(0.1)
						trail.Enabled = false
						trail2.Enabled = false
						anim = "strikerk"
						frame = 1
						local fire = new("Fire")
						fire.Parent = char["Left Leg"]
						fire.Size = 6
						fire.Heat = 10
						fire.Color = color(0.0784314, 0.0784314, 0.0784314)
						fire.SecondaryColor = color(0.384314, 0.145098, 0.819608)
						sound(1273117535,4.5,1,char["Left Leg"],0,false)
						task.wait(0.1)
						frame = 2
						task.wait(0.1)
						frame = 3
						task.wait(0.1)
						sound(7122602098,1,1,char["Left Leg"],0,false)
						frame = 4
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vhum = v:FindFirstChildOfClass("Humanoid")
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										sound(4766119678,1.5,1,vtorso,0,false)
										hiteffect("sphere",vtorso)
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.1)
						fire.Enabled = false
						debris:AddItem(fire,2)
						anim = "fang"
						frame = 3
						task.wait(0.1)
						sound(12222216,1,0.4,Handle,0.425,false)
						trail.Enabled = true
						trail2.Enabled = true	
						frame = 4
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vhum = v:FindFirstChildOfClass("Humanoid")
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										sound(4766119678,1.5,1,vtorso,0,false)
										hiteffect("sphere",vtorso)
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.15)
						trail.Enabled = false
						trail2.Enabled = false	
						anim = "blazbluea"
						frame = 4
						task.wait(0.1)
						frame = 5
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vhum = v:FindFirstChildOfClass("Humanoid")
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										sound(4766119678,1.5,1,vtorso,0,false)
										hiteffect("sphere",vtorso)
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.15)
						frame = 6
						task.wait(0.1)
						frame = 7
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vhum = v:FindFirstChildOfClass("Humanoid")
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										sound(4766119678,1.5,1,vtorso,0,false)
										hiteffect("sphere",vtorso)
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.2)
						vel:Destroy()
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vhum = v:FindFirstChildOfClass("Humanoid")
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local touched = false
									if v ~= nil then
										if vtorso:FindFirstChild("BlazBlueHitBy") then vtorso:FindFirstChild("BlazBlueHitBy"):Destroy() end
										vtorso.CFrame = rt.CFrame * cframe(0,0,-10) * angles(0,rad(-180),0)
										local vel = new("BodyVelocity")
										vel.Name = "BlazBlueHitBy"
										vel.Parent = vtorso
										vel.MaxForce = vect3(math.huge,math.huge,math.huge)
										vel.Velocity = rt.CFrame.lookVector * 0
									end
								end))
							end
						end)
						anim = "zero"
						frame = 1
						super(2)
						chatter(char,"Yare yare daze...")
						local gender = "Male"
						if char:FindFirstChild("Gender") then
							gender = char:FindFirstChild("Gender").Value
						else
							gender = "Male"
						end
						if owner.UserId == 50203523 then
							local gender = "Male"
							if char:FindFirstChild("Gender") then
								gender = char:FindFirstChild("Gender").Value
							else
								gender = "Male"
							end
							if owner.UserId == 50203523 then
								if gender == "Male" then
									voice("yuki/yuki_3300-10.wav",3,1.1,char.Head,0,false)
								else
									voice("yuki/yuki_3300-10.wav",3,1.6,char.Head,0,false)
								end
							end
						end
						task.wait(0.75)
						frame = 2
						task.wait(0.064)
						local canoverture = false
						sound2(6892640563,1.45,1,rt,0,false)
						local wp = new("Part")
						local wm = new("SpecialMesh")
						wp.Name = "WavePart"
						wp.Parent = script
						wp.Transparency = 0.1
						wp.Size = vect3(0.001,0.001,0.001)
						wp.Anchored = true
						wp.BottomSurface = Enum.SurfaceType.Smooth
						wp.BrickColor = bc("Really black")
						wp.CanCollide = false
						wp.TopSurface = Enum.SurfaceType.Smooth
						wm.Parent = wp
						wm.MeshId = "rbxassetid://20329976"
						wm.Scale = vect3(3.5, 7.5, 3.5)
						wm.MeshType = Enum.MeshType.FileMesh
						local wp2 = new("Part")
						local wm2 = new("SpecialMesh")
						wp2.Name = "WavePart"
						wp2.Parent = wp
						wp2.Transparency = 0.025
						wp2.Size = vect3(0.001,0.001,0.001)
						wp2.Anchored = true
						wp2.BottomSurface = Enum.SurfaceType.Smooth
						wp2.BrickColor = bc("Dark indigo")
						wp2.CanCollide = false
						wp2.TopSurface = Enum.SurfaceType.Smooth
						wm2.Parent = wp2
						wm2.MeshId = "rbxassetid://20329976"
						wm2.Scale = vect3(3, 6, 3)
						wm2.MeshType = Enum.MeshType.FileMesh
						wp.Material = "Neon"
						wp2.Material = "Neon"
						wp.CFrame = rt.CFrame * cframe(0,-1.5,-7.45)
						wp2.CFrame = rt.CFrame * cframe(0,-1.5,-7.45)
						sound2(2760979, 1.5, 0.375, wp, 0,false)
						sound2(2693351, 1.25, 0.85, wp, 0,false)
						local tween = tweens:Create(wp,TweenInfo.new(3.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
						tween:Play()
						local tweenM = tweens:Create(wm,TweenInfo.new(3.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(15,0.05,15),Offset = vect3(0,-1.5,-1)})
						tweenM:Play()
						local tween1 = tweens:Create(wp2,TweenInfo.new(3.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
						tween1:Play()
						local tweenM1 = tweens:Create(wm2,TweenInfo.new(3.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(17.5,0.025,17.5),Offset = vect3(0,-1.5,-1)})
						tweenM1:Play()
						tween.Completed:Connect(function() wp:Destroy()end)
						tween1.Completed:Connect(function() wp2:Destroy() end)
						local dp = new("Part")
						local dpm = new("SpecialMesh")
						local dp2 = new("Part")
						local dpm2 = new("SpecialMesh")
						dp.Name = "dp"
						dp.Parent = script
						dp.Transparency = 0.25
						dp.Size = vect3(2.5, 5, 2.5)
						dp.Anchored = true
						dp.BottomSurface = Enum.SurfaceType.Smooth
						dp.BrickColor = bc("Really black")
						dp.CanCollide = false
						dp.TopSurface = Enum.SurfaceType.Smooth
						dpm.Parent = dp
						dpm.MeshType = Enum.MeshType.Sphere
						dp2.Name = "Part3"
						dp2.Parent = dp
						dp2.Transparency = 0.05
						dp2.Size = vect3(2, 2.5, 2)
						dp2.Anchored = true
						dp2.BottomSurface = Enum.SurfaceType.Smooth
						dp2.BrickColor = bc("Dark indigo")
						dp2.CanCollide = false
						dp2.TopSurface = Enum.SurfaceType.Smooth
						dpm2.Parent = dp2
						dpm2.MeshType = Enum.MeshType.Sphere
						dp.Material = "Neon"
						dp2.Material = "Neon"
						dp.CFrame = rt.CFrame * cframe(0,-1.5,-7.5)
						dp2.CFrame = rt.CFrame * cframe(0,-1.5,-7.5)
						sound(48618802,1.5,0.75,dp,0,false)
						local tween2 = tweens:Create(dp,TweenInfo.new(2.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = dp.CFrame * angles(0,rad(180),0),Size = vect3(7.5,75,7.5),Transparency = 1})
						tween2:Play()
						local tween3 = tweens:Create(dp2,TweenInfo.new(2.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = dp.CFrame * angles(0,rad(180),0),Size = vect3(5,60,5),Transparency = 1})
						tween3:Play()
						tween2.Completed:Connect(function() dp:Destroy()end)
						tween3.Completed:Connect(function() dp2:Destroy() end)
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vhum = v:FindFirstChildOfClass("Humanoid")
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										if vtorso:FindFirstChild("BlazBlueHitBy") then vtorso:FindFirstChild("BlazBlueHitBy"):Destroy() end
										if not blazblue then
											if vhum.Health > 25 then
												vhum.PlatformStand = true
												spawn(function() 
													wait(5)
													vhum.PlatformStand = false
												end)
												hiteffect("boom",vtorso)
												sound(96730847431500,1.5,1,vtorso,0,false)
												hiteffect("burn",vtorso)
												vtorso.Velocity = rt.CFrame.lookVector* 75 + rt.CFrame.upVector * 55
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(25)
											else
												canoverture = true
												hiteffect("boom",vtorso)
												sound(96730847431500,1.5,1,vtorso,0,false)
												local fire = new("Fire")
												fire.Parent = vtorso
												fire.Size = 15
												fire.Heat = 30
												fire.Color = color(0.0784314, 0.0784314, 0.0784314)
												fire.SecondaryColor = color(0.384314, 0.145098, 0.819608)
												local firesound = new("Sound")
												firesound.SoundId = "rbxassetid://269252174"
												firesound.Volume = 4.5
												firesound.Looped = true
												firesound.Parent = vtorso
												firesound:Play()
												spawn(function()
													wait(11.5)
													fire.Enabled = false
													firesound:Destroy()
													wait(2.5)
													fire:Destroy()
												end)
												debris:AddItem(fire, 16.5)
												local bpos = new("BodyPosition")
												bpos.Name = "BlazBlueHitBy"
												bpos.Parent = vtorso
												bpos.MaxForce = vect3(39999,39999,39999)
												bpos.D = 3500
												bpos.Position = rt.CFrame * cframe(0,60,-45).Position
												debris:AddItem(bpos,7.5)
											end
										else
											if vhum.Health > 50 then
												vhum.PlatformStand = true
												spawn(function() 
													wait(5)
													vhum.PlatformStand = false
												end)
												hiteffect("boom",vtorso)
												sound(96730847431500,1.5,1,vtorso,0,false)
												hiteffect("burn",vtorso)
												vtorso.Velocity = rt.CFrame.lookVector* 85 + rt.CFrame.upVector * 90
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(50)
											else
												canoverture = true
												hiteffect("boom",vtorso)
												sound(96730847431500,1.5,1,vtorso,0,false)
												local fire = new("Fire")
												fire.Parent = vtorso
												fire.Size = 15
												fire.Heat = 30
												fire.Color = color(0.0784314, 0.0784314, 0.0784314)
												fire.SecondaryColor = color(0.384314, 0.145098, 0.819608)
												local firesound = new("Sound")
												firesound.SoundId = "rbxassetid://269252174"
												firesound.Volume = 4.5
												firesound.Looped = true
												firesound.Parent = vtorso
												firesound:Play()
												spawn(function()
													wait(11.5)
													fire.Enabled = false
													firesound:Destroy()
													wait(2.5)
													fire:Destroy()
												end)
												debris:AddItem(fire, 16.5)
												local bpos = new("BodyPosition")
												bpos.Name = "BlazBlueHitBy"
												bpos.Parent = vtorso
												bpos.MaxForce = vect3(39999,39999,39999)
												bpos.D = 3500
												bpos.Position = rt.CFrame * cframe(0,60,-45).Position
												debris:AddItem(bpos,7.5)
											end
										end
									end
								end))
							end
						end)
						anim = "blazbluea"
						frame = 8
						task.wait(1.45)
						if canoverture then
							local overtureactive = true
							anim = "overture"
							frame = 1
							chatter(char,"NIGHTMARE...")
							local gender = "Male"
							if char:FindFirstChild("Gender") then
								gender = char:FindFirstChild("Gender").Value
							else
								gender = "Male"
							end
							if owner.UserId == 50203523 then
								local gender = "Male"
								if char:FindFirstChild("Gender") then
									gender = char:FindFirstChild("Gender").Value
								else
									gender = "Male"
								end
								if owner.UserId == 50203523 then
									if gender == "Male" then
										sound1("gotukuwa.wav",3,1.05,char.Head,0,false)
									else
										sound1("gotukuwa.wav",3,1.6,char.Head,0,false)
									end
								end
							end
							local zflicker = true
							for i,v in pairs(char:GetDescendants()) do
								if v:IsA("BasePart") then
									if not v:IsDescendantOf(Tool) then
										local cval = new("Color3Value")
										cval.Value = v.Color
										cval.Name = "EnmaColor"
										cval.Parent = v
									end
								end
								if v:IsA("MeshPart") then
									if not v:IsDescendantOf(Tool) then
										local tval = new("StringValue")
										tval.Value = v.TextureID
										tval.Name = "EnmaMTexture"
										tval.Parent = v
									end
								end
								if v:IsA("SpecialMesh") then
									if not v:IsDescendantOf(Tool) then
										local tval = new("StringValue")
										tval.Value = v.TextureId
										tval.Name = "EnmaTexture"
										tval.Parent = v
									end
								end
							end
							local wings = new("Part")
							local wingsm = new("SpecialMesh")
							local wingsw = new("Weld")
							wings.Name = "EnmaWings"
							wings.Parent = char
							wings.Size = vect3(0.001, 0.001, 0.001)
							wings.BrickColor = bc("Really black")
							wings.CanCollide = false
							wings.CanTouch = false
							wings.Transparency = 0
							wingsm.Parent = wings
							wingsm.MeshId = "http://www.roblox.com/asset/?id=215682815 "
							wingsm.MeshType = Enum.MeshType.FileMesh
							wingsw.Parent = wings
							wingsw.C0 = cframe(-0.0250000004, -1, 0.449999988, 1, -0, 0, 0, 1, 0, -0, 0, 1)
							wingsw.Part0 = wings
							wingsw.Part1 = torso
							spawn(function()
								if zflicker then
									if shirt then
										shirt.ShirtTemplate = ""
									end
									if pants then
										pants.PantsTemplate = ""
									end
									if tshirt then
										tshirt.Graphic = ""
									end
									while zflicker do
										if not zflicker then return end
										for i,v in pairs(char:GetDescendants()) do
											if v:IsA("BasePart") then
												if not v:IsDescendantOf(Tool) then
													v.Color = color(0,0,0)
												end
											end
											if v:IsA("MeshPart") then
												if not v:IsDescendantOf(Tool) then
													v.TextureID = ""
												end
											end
											if v:IsA("SpecialMesh") then
												if not v:IsDescendantOf(Tool) then
													v.TextureId = ""
												end
											end
										end
										wings.Color = color(0,0,0)
										task.wait(0.05)
										if not zflicker then return end
										for i,v in pairs(char:GetDescendants()) do
											if v:IsA("BasePart") then
												if not v:IsDescendantOf(Tool) then
													v.Color = color(1,1,1)
												end
											end
											if v:IsA("MeshPart") then
												if not v:IsDescendantOf(Tool) then
													v.TextureID = ""
												end
											end
											if v:IsA("SpecialMesh") then
												if not v:IsDescendantOf(Tool) then
													v.TextureId = ""
												end
											end
										end
										wings.Color = color(1,1,1)
										task.wait(0.05)
									end
								end
							end)
							if game.PlaceId == 11510416200 or game.PlaceId == 126783576555525 or game.PlaceId == 89201052571047 then
								sound(105094738430794,7.5,1.05,rt,279,false,true,2.45)
							end
							sound(2101137,1.5,0.45,rt,0,false)
							for _, v in pairs(Tool:GetDescendants()) do
								if v:IsA("BasePart") then
									local tw = tweens:Create(v, TweenInfo.new(1.25), {Transparency = 1})
									tw:Play()
								end
							end
							local startovert = true
							spawn(function()
								while startovert do
									spawn(function()
										local jumpring = new("Part")
										local ringm = new("SpecialMesh")
										local jumpwave = new("Part")
										local wavem = new("SpecialMesh")
										local jweld = new("Weld")
										jumpring.Name = "OvertureRing"
										jumpring.Parent = script
										jumpring.Size = vect3(0.001,0.001,0.001)
										jumpring.Anchored = true
										jumpring.Locked = true
										jumpring.BottomSurface = Enum.SurfaceType.Smooth
										jumpring.BrickColor = bc("Really black")
										jumpring.CanCollide = false
										jumpring.CanTouch = false
										jumpring.TopSurface = Enum.SurfaceType.Smooth
										jumpring.CFrame = rt.CFrame * cframe(0,-1.5,0) * angles(rad(-90),0,0)
										ringm.Parent = jumpring
										ringm.MeshId = "http://www.roblox.com/asset/?id=3270017"
										ringm.Scale = vect3(3, 2.92, 1)
										ringm.Offset = vect3(0, 0, -1.5)
										ringm.MeshType = Enum.MeshType.FileMesh
										jumpwave.Name = "OvertureWave"
										jumpwave.Parent = jumpring
										jumpwave.Locked = true
										jumpwave.CanCollide = false
										jumpwave.Size = vect3(0.001,0.001,0.001)
										jumpwave.FormFactor = Enum.FormFactor.Custom
										jumpwave.formFactor = Enum.FormFactor.Custom
										jumpwave.BrickColor = bc("Really black")
										wavem.Parent = jumpwave
										wavem.MeshId = "http://www.roblox.com/asset/?id=92588061"
										wavem.Offset = vect3(0, 0, -0.25)
										wavem.Scale = vect3(3, 0.5, 3)
										wavem.MeshType = Enum.MeshType.FileMesh
										jweld.Parent = jumpwave
										jweld.C0 = cframe(0, 0.75, 0, 1, 0, 0, 0, -4.37113883e-08, 1, 0, -1, -4.37113883e-08)
										jweld.Part0 = jumpwave
										jweld.Part1 = jumpring
										tweens:Create(ringm,TweenInfo.new(2.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(30, 29.2, 5)}):Play()
										tweens:Create(wavem,TweenInfo.new(2.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(30, 5, 30), Offset = vect3(0, 8.25, -0.25)}):Play()
										while jumpring ~= nil do
											if jumpring.Transparency >= 1 then
												if jumpring == nil then
													break
												end
												jumpring:Destroy()
												jumpwave:Destroy()
												jumpring = nil
											end
											if jumpring == nil then
												break
											else
												jumpring.CFrame = jumpring.CFrame * CFrame.fromEulerAnglesXYZ(0,0,0.3)
												wavem.Offset = wavem.Offset + vect3(0,0.1,0)
												wait()
												jumpring.Transparency = jumpring.Transparency + 0.025
												jumpwave.Transparency = jumpwave.Transparency + 0.025
											end
										end
									end)
									task.wait(0.125)
								end
							end)
							spawn(function()
								while startovert do
									local firepart = new("Part")
									firepart.Parent = script
									firepart.Size = vect3(7.5,7.5,7.5)
									firepart.BottomSurface = Enum.SurfaceType.Smooth
									firepart.Anchored = true
									firepart.CanCollide = false
									firepart.CanTouch = false
									firepart.BrickColor = bc("Really black")
									firepart.Material = Enum.Material.Neon
									firepart.TopSurface = Enum.SurfaceType.Smooth
									firepart.CFrame = torso.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
									spawn(function()
										for i = 1,25 do
											task.wait()
											firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
											firepart.Size = firepart.Size + vect3(0.25,0.25,0.25)
										end
									end)
									local tween = tweens:Create(firepart, TweenInfo.new(1), {Transparency = 1})
									tween:Play()
									tween.Completed:Connect(function() firepart:Destroy() end)	
									task.wait(0.125)
								end
							end)
							task.wait(2)
							zflicker = false
							for i,v in pairs(char:GetDescendants()) do
								if v:IsA("BasePart") then
									if not v:IsDescendantOf(Tool) then
										v.Color = color(0,0,0)
									end
								end
								if v:IsA("MeshPart") then
									if not v:IsDescendantOf(Tool) then
										v.TextureID = ""
									end
								end
								if v:IsA("SpecialMesh") then
									if not v:IsDescendantOf(Tool) then
										v.TextureId = ""
									end
								end
							end
							wings.Color = color(0,0,0)
							frame = 2
							task.wait(0.075)
							startovert = false
							sound(69935389,1.15,0.7,rt,0,false)
							sound(51322486,1.15,1.2,rt,0,false)
							sound(6892631834,1,1,rt,0,false)
							local vel = new("BodyVelocity")
							vel.Name = "OvertureMove"
							vel.Parent = rt
							vel.MaxForce = vect3(math.huge,math.huge,math.huge)
							vel.P = 450
							vel.Velocity = rt.CFrame.lookVector * 60 + rt.CFrame.upVector * 75
							chatter(char,"OVERTURE!!")
							local gender = "Male"
							if char:FindFirstChild("Gender") then
								gender = char:FindFirstChild("Gender").Value
							else
								gender = "Male"
							end
							if owner.UserId == 50203523 then
								local gender = "Male"
								if char:FindFirstChild("Gender") then
									gender = char:FindFirstChild("Gender").Value
								else
									gender = "Male"
								end
								if owner.UserId == 50203523 then
									if gender == "Male" then
										sound1("edane.wav",3,1,char.Head,0,false)
									else
										sound1("edane.wav",3,1.5,char.Head,0,false)
									end
								end
							end
							spawn(function()
								while overtureactive do
									local firepart = new("Part")
									firepart.Parent = script
									firepart.Size = vect3(9,9,9)
									firepart.BottomSurface = Enum.SurfaceType.Smooth
									firepart.Anchored = true
									firepart.CanCollide = false
									firepart.CanTouch = false
									firepart.BrickColor = bc("Really black")
									firepart.Material = Enum.Material.Neon
									firepart.TopSurface = Enum.SurfaceType.Smooth
									firepart.CFrame = torso.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
									spawn(function()
										for i = 1,25 do
											task.wait()
											firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
											firepart.Size = firepart.Size - vect3(0.15,0.15,0.15)
										end
									end)
									local tween = tweens:Create(firepart, TweenInfo.new(1), {Transparency = 1})
									tween:Play()
									tween.Completed:Connect(function() firepart:Destroy() end)	
									task.wait(0.045)
								end
							end)
							spawn(function()
								for i = 1,20 do
									local overtpl = new("Part")
									local overtplm = new("SpecialMesh")
									overtpl.Name = "OvertureWave"
									overtpl.Parent = script
									overtpl.Transparency = 0.25
									overtpl.Size = vect3(1,1,1)
									overtpl.Anchored = true
									overtpl.BottomSurface = Enum.SurfaceType.Smooth
									overtpl.BrickColor = bc("Really black")
									overtpl.CanCollide = false
									overtpl.CanTouch = false
									overtpl.Locked = true
									overtpl.TopSurface = Enum.SurfaceType.Smooth
									overtpl.CFrame = torso.CFrame * CFrame.fromEulerAnglesXYZ((random(-10,10)/20),0,random(-10,10)/12)
									overtplm.Parent = overtpl
									overtplm.MeshType = Enum.MeshType.Sphere
									local tween = tweens:Create(overtpl,TweenInfo.new(3,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = overtpl.CFrame * CFrame.Angles(0,math.rad(180),0),Size = vect3(1.75,75,1.75),Transparency = 1})
									tween:Play()
									tween.Completed:Connect(function() overtpl:Destroy()end)
									task.wait(0.075)
								end
							end)
							spawn(function()
								local overtp = new("Part")
								local overtpm = new("SpecialMesh")
								local overtp2 = new("Part")
								local overtpm2 = new("SpecialMesh")
								local SpecialMesh7 = new("SpecialMesh")
								overtp.Name = "OvertureWave"
								overtp.Parent = script
								overtp.Transparency = 0.25
								overtp.Size = vect3(2.5, 5, 2.5)
								overtp.Anchored = true
								overtp.BottomSurface = Enum.SurfaceType.Smooth
								overtp.BrickColor = bc("Really black")
								overtp.CanCollide = false
								overtp.TopSurface = Enum.SurfaceType.Smooth
								overtpm.Parent = overtp
								overtpm.MeshType = Enum.MeshType.Sphere
								overtp2.Name = "Part3"
								overtp2.Parent = script
								overtp2.Transparency = 0.05
								overtp2.Size = vect3(2, 2.5, 2)
								overtp2.Anchored = true
								overtp2.BottomSurface = Enum.SurfaceType.Smooth
								overtp2.BrickColor = bc("Black")
								overtp2.CanCollide = false
								overtp2.TopSurface = Enum.SurfaceType.Smooth
								overtpm2.Parent = overtp2
								overtpm2.MeshType = Enum.MeshType.Sphere
								overtp.Material = "Neon"
								overtp2.Material = "Neon"
								overtp.CFrame = rt.CFrame * angles(rad(-45),0,0)
								overtp2.CFrame = rt.CFrame * angles(rad(-45),0,0)
								local tween = tweens:Create(overtp,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = overtp.CFrame * cframe(0,1.5,-2.5) * CFrame.Angles(0,math.rad(180),0),Size = vect3(30,175,30),Transparency = 1})
								tween:Play()
								local tween2 = tweens:Create(overtp2,TweenInfo.new(2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{CFrame = overtp.CFrame * cframe(0,1.5,-2.5) * CFrame.Angles(0,math.rad(180),0),Size = vect3(25,100,25),Transparency = 1})
								tween2:Play()
								tween.Completed:Connect(function() overtp:Destroy()end)
								tween2.Completed:Connect(function() overtp2:Destroy() end)
								while overtureactive do
									jin = jin + 1
									for i,v in pairs(workspace:GetDescendants()) do
										if v:FindFirstChildOfClass("Humanoid") and v ~= char then
											local vhum = v:FindFirstChildOfClass("Humanoid")
											local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
											if vtorso then
												local vdistance = (vtorso.Position - rt.CFrame*cframe(0,0,-1.5).p).magnitude
												if vdistance <= 12.5 and vhum.Health > 0 then
													if vtorso:FindFirstChild("BlazBlueHitBy") then vtorso:FindFirstChild("BlazBlueHitBy"):Destroy() end
													sound2(6892631834,1,1,rt,0,false)
													hiteffect("boom",vtorso)
													hiteffect("burn",vtorso)
													v:BreakJoints()
													for _, vi in pairs(v:GetDescendants()) do
														if vi:IsA("Shirt") or v:IsA("ShirtGraphic") or v:IsA("Pants") then
															vi:Destroy()
														end
													end
													for _, vq in pairs(v:GetDescendants()) do
														if vq:IsA("SpecialMesh") then
															vq.TextureId = ""
														end
													end
													for _, vq in pairs(v:GetDescendants()) do
														if vq:IsA("MeshPart") then
															vq.TextureID = ""
														end
													end
													for _, ve in pairs(v:GetDescendants()) do
														if ve:IsA("BasePart") then
															ve:BreakJoints()
															ve.Color = color(1,1,1)
															local bv = new("BodyVelocity")
															bv.MaxForce = vect3(math.huge,math.huge,math.huge)
															bv.Velocity = rt.CFrame.lookVector * 60 + rt.CFrame.upVector * 75 + vect3(random(-1,1),random(-1,1),random(-1,1))
															bv.Parent = ve
															debris:AddItem(bv,2)
															ve.RotVelocity=vect3(random(-3,3),random(-3,3),0)
															local sparkles = new("Sparkles")
															sparkles.SparkleColor = color(0,0,0)
															sparkles.Parent = ve
															local tw = tweens:Create(ve, TweenInfo.new(0.5), {Color = Color3.fromRGB(0, 0, 0)})
															tw:Play()
															spawn(function()
																task.wait(3)
																local tw2 = tweens:Create(ve, TweenInfo.new(2), {Transparency = 1})
																tw2:Play()
																tw2.Completed:Connect(function() ve:Destroy() end)
															end)
														end
													end
													for _, vc in pairs(v:GetDescendants()) do
														if vc:IsA("Decal") then
															local tw = tweens:Create(vc, TweenInfo.new(2.5), {Transparency = 1})
															tw:Play()
															tw.Completed:Connect(function() vc:Destroy() end)
														end
													end
												end
											end
										end
									end
									task.wait()
								end
							end)
							frame = 3
							task.wait(2.5)
							vel:Destroy()
							overtureactive = false
							anim = "fall"
							rt.Velocity = rt.CFrame.lookVector* 75 + rt.CFrame.upVector * -45
							local hitfloor
							repeat 
								wait()
								hitfloor = raycast(rt.Position, (cframe(rt.Position, rt.Position + vect3(0, -1, 0))).lookVector, 4+hum.HipHeight, char)
							until hitfloor or hum:GetState() == Enum.HumanoidStateType.Landed
							rt.Anchored = false
							anim = "overture"
							frame = 4
							chatter(char,"Ugh...")
							local gender = "Male"
							if char:FindFirstChild("Gender") then
								gender = char:FindFirstChild("Gender").Value
							else
								gender = "Male"
							end
							if owner.UserId == 50203523 then
								local gender = "Male"
								if char:FindFirstChild("Gender") then
									gender = char:FindFirstChild("Gender").Value
								else
									gender = "Male"
								end
								if owner.UserId == 50203523 then
									if gender == "Male" then
										sound1("saul2/saul2_160-0.wav",3,1.1,char.Head,0,false)
									else
										sound1("saul2/saul2_160-0.wav",3,1.6,char.Head,0,false)
									end
								end
							end
							task.wait(1.5)
							local tw = tweens:Create(wings, TweenInfo.new(0.5), {Transparency = 1})
							tw:Play()
							tw.Completed:Connect(function() wings:Destroy() end)
							task.wait(0.5)
							for i,v in pairs(char:GetDescendants()) do
								if v:IsA("Color3Value") and v.Name == "EnmaColor" then
									v.Parent.Color = v.Value
								end
							end
							for i,v in pairs(char:GetDescendants()) do
								if v:IsA("StringValue") and v.Name == "EnmaTexture" then
									v.Parent.TextureId = v.Value
								end
							end
							for i,v in pairs(char:GetDescendants()) do
								if v:IsA("StringValue") and v.Name == "EnmaMTexture" then
									v.Parent.TextureID = v.Value
								end
							end
							if shirt then
								shirt.ShirtTemplate = ost
							end
							if pants then
								pants.PantsTemplate = opt
							end
							if tshirt then
								tshirt.Graphic = otst
							end
							for _, v in pairs(Tool:GetDescendants()) do
								if v:IsA("BasePart") then
									local tw = tweens:Create(v, TweenInfo.new(0.5), {Transparency = 0})
									tw:Play()
								end
							end
						end
						blazbluecooldown = true
						spawn(function()
							task.wait(50)
							blazbluecooldown = false
						end)
					else
						frame = 3
						task.wait(0.15)
						frame = 4
						chatter(char,"Ugh...")
						local gender = "Male"
						if char:FindFirstChild("Gender") then
							gender = char:FindFirstChild("Gender").Value
						else
							gender = "Male"
						end
						if owner.UserId == 50203523 then
							local gender = "Male"
							if char:FindFirstChild("Gender") then
								gender = char:FindFirstChild("Gender").Value
							else
								gender = "Male"
							end
							if owner.UserId == 50203523 then
								if gender == "Male" then
									sound1("saul2/saul2_160-0.wav",3,1.1,char.Head,0,false)
								else
									sound1("saul2/saul2_160-0.wav",3,1.6,char.Head,0,false)
								end
							end
						end
						task.wait(1.45)
					end	
				else
					anim = "nightmare"
					frame = 3
					local rand = random(0,3)
					if rand == 0 then
						chatter(char,"I can't even...")
					elseif rand == 1 then
						chatter(char,"I had a bad feeling...")
					elseif rand == 2 then
						chatter(char,"What was I...")
					elseif rand == 3 then
						chatter(char,"What a way to go...")
					end
					local gender = "Male"
					if char:FindFirstChild("Gender") then
						gender = char:FindFirstChild("Gender").Value
					else
						gender = "Male"
					end
					if owner.UserId == 50203523 then
						local gender = "Male"
						if char:FindFirstChild("Gender") then
							gender = char:FindFirstChild("Gender").Value
						else
							gender = "Male"
						end
						if owner.UserId == 50203523 then
							if gender == "Male" then
								sound1("saul2/saul2_160-0.wav",3,1.1,char.Head,0,false)
							else
								sound1("saul2/saul2_160-0.wav",3,1.6,char.Head,0,false)
							end
						end
					end
					task.wait(1.5)
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			elseif move == "nightmare" then
				rt.CFrame = rt.CFrame * cframe(0,0,-1.5)
				gyro.MaxTorque = vect3(0,0,0)
				attack = true
				hum.WalkSpeed = 0
				hum.JumpPower = 0
				hum.JumpHeight = 0
				anim = "nightmare"
				frame = 1
				local nighthit = false
				local doingnightspin = true
				local targets = {}
				if (hum.Health <= 40 or blazblue == true  or owner.UserId == 50203523) and heatlvl == 3 then
					if heat > 100 then
						heat = heat - 200
					end
					heatlvl = 1
					chatter(char,"Nightmare Reign...")
					local gender = "Male"
					if char:FindFirstChild("Gender") then
						gender = char:FindFirstChild("Gender").Value
					else
						gender = "Male"
					end
					if owner.UserId == 50203523 then
						local gender = "Male"
						if char:FindFirstChild("Gender") then
							gender = char:FindFirstChild("Gender").Value
						else
							gender = "Male"
						end
						if owner.UserId == 50203523 then
							if gender == "Male" then
								voice("yuki/yuki_3400-0.wav",3,1.1,char.Head,0,false)
							else
								voice("yuki/yuki_3400-0.wav",3,1.6,char.Head,0,false)
							end
						end
					end
					super()
					frame = 1
					task.wait(1.5)
					trail.Enabled = true
					trail2.Enabled = true
					rt.CFrame = rt.CFrame * cframe(0,0,-1.15)
					frame = 4
					task.wait(0.045)
					frame = 2
					for i,v in pairs(workspace:GetDescendants()) do
						if v:FindFirstChildOfClass("Humanoid") and v ~= char then
							local vhum = v:FindFirstChildOfClass("Humanoid")
							local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
							if vtorso then
								local vdistance = (vtorso.Position - rt.CFrame*cframe(0,0,-1.5).p).magnitude
								if vdistance <= 8.5 and vhum.Health > 0 then
									nighthit = true
									sound(1613998698,1.5,1,vtorso,0.285,false)
									hiteffect("sphere",vtorso)
									sound(153092285,1.75,0.75,vtorso,0,false)
									if random(0,5) <= 2 then
										sound(7441099080,3,1,vtorso,0,false)
										hiteffect("blood",vtorso)
									end
									if not blazblue then
										if vhum.Health > 4 then
											local creator = new("ObjectValue")
											creator.Name = "creator"
											creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
											creator.Parent = vhum
											debris:AddItem(creator, 2)
											vhum:TakeDamage(4)
										end
									else
										if vhum.Health > 7.5 then
											local creator = new("ObjectValue")
											creator.Name = "creator"
											creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
											creator.Parent = vhum
											debris:AddItem(creator, 2)
											vhum:TakeDamage(7.5)
										end
									end
									table.insert(targets, v)
									local bpos = new("BodyPosition")
									bpos.Name = "NightmareHitBy"
									bpos.Parent = vtorso
									bpos.MaxForce = vect3(39999,39999,39999)
									bpos.D = 2000
									bpos.Position = rt.CFrame * cframe(0,0,-5).Position
								end
							end
						end
					end
					task.wait(0.15)
					if nighthit then
						task.wait(0.125)
						anim = "nightmarea"
						Tool.Grip = cframe(0, 0.75, 0, 4.37113883e-08, -3.82137093e-15, -1, -8.74227766e-08, -1, -0, -1, 8.74227766e-08, -4.37113883e-08)
						chatter(char,"Nothing matters...")
						frame = 2
						local gender = "Male"
						if char:FindFirstChild("Gender") then
							gender = char:FindFirstChild("Gender").Value
						else
							gender = "Male"
						end
						if owner.UserId == 50203523 then
							local gender = "Male"
							if char:FindFirstChild("Gender") then
								gender = char:FindFirstChild("Gender").Value
							else
								gender = "Male"
							end
							if owner.UserId == 50203523 then
								if gender == "Male" then
									voice("yuki/yuki_3000-10.wav",3,1.1,char.Head,0,false)
								else
									voice("yuki/yuki_3000-10.wav",3,1.6,char.Head,0,false)
								end
							end
						end
						task.wait(0.125)
						frame = 3
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.225)
						frame = 4
						task.wait(0.125)
						frame = 5
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.225)
						frame = 6
						task.wait(0.125)
						frame = 7
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.175)
						frame = 8
						task.wait(0.125)
						frame = 3
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.225)
						frame = 4
						task.wait(0.125)
						frame = 5
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.225)
						frame = 6
						task.wait(0.125)
						frame = 7
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.175)
						frame = 8
						task.wait(0.125)
						frame = 3
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.225)
						frame = 4
						task.wait(0.125)
						frame = 5
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										hiteffect("sphere",vtorso)
										sound(153092285,1.5,1,vtorso,0,false)
										if random(0,5) <= 2 then
											sound(7441099080,3,1,vtorso,0,false)
											hiteffect("blood",vtorso)
										end
										if not blazblue then
											if vhum.Health > 6 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(6)
											end
										else
											if vhum.Health > 8.7 then
												local creator = new("ObjectValue")
												creator.Name = "creator"
												creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
												creator.Parent = vhum
												debris:AddItem(creator, 2)
												vhum:TakeDamage(8.7)
											end
										end
									end
								end))
							end
						end)
						task.wait(0.225)
						frame = 6
						task.wait(0.2)
						Tool.Grip = cframe(0, 0.75, 0, -4.37113883e-08, 0, -1, 0, 1, -0, 1, -0, -4.37113883e-08)
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										if vtorso:FindFirstChild("NightmareHitBy") then vtorso:FindFirstChild("NightmareHitBy"):Destroy() end
										local bpos = new("BodyPosition")
										bpos.Name = "NightmareHitBy"
										bpos.Parent = vtorso
										bpos.MaxForce = vect3(39999,39999,39999)
										bpos.D = 3000
										bpos.Position = rt.CFrame * cframe(0,0,-85).Position
									end
								end))
							end
						end)
						local bposu = new("BodyPosition")
						bposu.Name = "NightmareHitBy"
						bposu.Parent = rt
						bposu.MaxForce = vect3(39999,39999,39999)
						bposu.D = 3150
						bposu.Position = rt.CFrame * cframe(0,0,-81.5).Position
						frame = 9
						spawn(function()
							while doingnightspin do
								jin = jin + 1
								task.wait()
							end
						end)
						spawn(function()
							while doingnightspin do
								spawn(function()
									for i = 1, #targets do
										coroutine.resume(coroutine.create(function()
											local v = targets[i]
											local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
											local vhum = v:FindFirstChildOfClass("Humanoid")
											if v ~= nil then
												hiteffect("sphere",vtorso)
												sound(153092285,1.5,1,vtorso,0,false)
												if random(0,5) <= 2 then
													sound(7441099080,3,1,vtorso,0,false)
													hiteffect("blood",vtorso)
												end
												if not blazblue then
													if vhum.Health > 3 then
														local creator = new("ObjectValue")
														creator.Name = "creator"
														creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
														creator.Parent = vhum
														debris:AddItem(creator, 2)
														vhum:TakeDamage(3)
													end
												else
													if vhum.Health > 5.6 then
														local creator = new("ObjectValue")
														creator.Name = "creator"
														creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
														creator.Parent = vhum
														debris:AddItem(creator, 2)
														vhum:TakeDamage(5.6)
													end
												end
											end
										end))
									end
								end)
								task.wait(0.125)
							end
						end)
						task.wait(2.5)
						bposu:Destroy()
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										if vtorso:FindFirstChild("NightmareHitBy") then vtorso:FindFirstChild("NightmareHitBy"):Destroy() end
										local bpos = new("BodyPosition")
										bpos.Name = "NightmareHitBy"
										bpos.Parent = vtorso
										bpos.MaxForce = vect3(39999,39999,39999)
										bpos.D = 3500
										bpos.Position = rt.CFrame * cframe(0,0,-5).Position
									end
								end))
							end
						end)
						doingnightspin = false
						anim = "tyrant"
						frame = 1
						task.wait(0.35)
						anim = "nightmaref"
						frame = 1
						chatter(char,"Just disappear.")
						local gender = "Male"
						if char:FindFirstChild("Gender") then
							gender = char:FindFirstChild("Gender").Value
						else
							gender = "Male"
						end
						if owner.UserId == 50203523 then
							local gender = "Male"
							if char:FindFirstChild("Gender") then
								gender = char:FindFirstChild("Gender").Value
							else
								gender = "Male"
							end
							if owner.UserId == 50203523 then
								if gender == "Male" then
									voice("yuki/yuki_3000-11.wav",3,1.1,char.Head,0,false)
								else
									voice("yuki/yuki_3000-11.wav",3,1.6,char.Head,0,false)
								end
							end
						end
						task.wait(0.1)
						frame = 2
						sound(2692477,1.5,0.35,Handle,0,false)
						spawn(function()
							wait(0.15)
							sound(28257433,1.5,0.55,Handle,0,false)
							sound(28144425,1.5,0.275,Handle,0,false)
						end)
						local jumppart = new("Part")
						local jumpmesh = new("SpecialMesh")
						jumppart.Parent = script
						jumppart.Transparency = 0
						jumppart.Size = vect3(1, 1, 1)
						jumppart.Anchored = true
						jumppart.BottomSurface = Enum.SurfaceType.Smooth
						jumppart.BrickColor = bc("Dark indigo")
						jumppart.CanCollide = false
						jumppart.TopSurface = Enum.SurfaceType.Smooth
						jumpmesh.Parent = jumppart
						jumpmesh.MeshId = "rbxassetid://20329976"
						jumpmesh.Scale = vect3(3, 3, 3)
						jumpmesh.MeshType = Enum.MeshType.FileMesh
						jumppart.CFrame = rt.CFrame * cframe(0,-1.5,0)
						local tween = tweens:Create(jumppart,TweenInfo.new(1.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Transparency = 1})
						tween:Play()
						local tweenM = tweens:Create(jumpmesh,TweenInfo.new(1.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false,0),{Scale = vect3(30,0.025,30),Offset = vect3(0,-1.5,-1)})
						tweenM:Play()
						tween.Completed:Connect(function() jumppart:Destroy()end)
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local vhum = v:FindFirstChildOfClass("Humanoid")
									if v ~= nil then
										for i = 1,10 do
											task.wait(0.05)
											hiteffect("sphere",vtorso)
											sound(153092285,1.5,1,vtorso,0,false)
											if random(0,5) <= 2 then
												sound(7441099080,3,1,vtorso,0,false)
												hiteffect("blood",vtorso)
											end
											if not blazblue then
												if vhum.Health > 4 then
													local creator = new("ObjectValue")
													creator.Name = "creator"
													creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
													creator.Parent = vhum
													debris:AddItem(creator, 2)
													vhum:TakeDamage(4)
												end
											else
												if vhum.Health > 7.5 then
													local creator = new("ObjectValue")
													creator.Name = "creator"
													creator.Value = game:GetService("Players"):GetPlayerFromCharacter(char)
													creator.Parent = vhum
													debris:AddItem(creator, 2)
													vhum:TakeDamage(7.5)
												end
											end
										end
									end
								end))
							end
						end)
						spawn(function()
							for i = 1,10 do
								task.wait(0.05)
								local randomcolor = random(0,3)
								local firepart = new("Part")
								firepart.Parent = script
								firepart.Size = vect3(8.5,8.5,8.5)
								firepart.BottomSurface = Enum.SurfaceType.Smooth
								firepart.Anchored = true
								firepart.CanCollide = false
								firepart.CanTouch = false
								if randomcolor == 0 then
									firepart.BrickColor = bc("Really black")
								elseif randomcolor == 1 then
									firepart.BrickColor = bc("Dark indigo")
								elseif randomcolor == 2 then
									firepart.BrickColor = bc("Royal purple")
								elseif randomcolor == 3 then
									firepart.BrickColor = bc("Black")
								end
								firepart.Material = Enum.Material.Neon
								firepart.TopSurface = Enum.SurfaceType.Smooth
								firepart.CFrame = Handle.CFrame * cframe(0,0,0.25) * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
								local fire = new("Fire")
								fire.Parent = firepart
								fire.Size = 10
								fire.Heat = 25
								if randomcolor == 0 then
									fire.Color = Color3.fromRGB(17, 17, 17)
									fire.SecondaryColor = Color3.fromRGB(45, 45, 45)
								elseif randomcolor == 1 then
									fire.Color = Color3.fromRGB(61, 23, 132)
									fire.SecondaryColor = Color3.fromRGB(111, 22, 189)
								elseif randomcolor == 2 then
									fire.Color = Color3.fromRGB(98, 37, 209)
									fire.SecondaryColor = Color3.fromRGB(151, 24, 255)
								elseif randomcolor == 3 then
									fire.Color = Color3.fromRGB(27, 42, 53)
									fire.SecondaryColor = Color3.fromRGB(55, 64, 79)
								end
								local smoke = new("Smoke")
								smoke.Parent = firepart
								smoke.Color = fire.Color
								smoke.Opacity = 0.5
								smoke.RiseVelocity = 10
								smoke.Size = 5
								spawn(function()
									for i = 1,25 do
										wait()
										firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
										firepart.Transparency = firepart.Transparency + 0.05
										firepart.Size = firepart.Size - vect3(0.5,0.5,0.5)
									end
								end)
								spawn(function()
									wait(0.5)
									fire.Enabled = false
									smoke.Enabled = false
									debris:AddItem(firepart,2)
								end)	
							end
						end)
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										if vtorso:FindFirstChild("NightmareHitBy") then vtorso:FindFirstChild("NightmareHitBy"):Destroy() end
										local bpos = new("BodyPosition")
										bpos.Name = "NightmareHitBy"
										bpos.Parent = vtorso
										bpos.MaxForce = vect3(39999,39999,39999)
										bpos.D = 1500
										bpos.Position = rt.CFrame * cframe(0,60,-5).Position
									end
								end))
							end
						end)
						local bpos = new("BodyPosition")
						bpos.Name = "NightmareHitBy"
						bpos.Parent = rt
						bpos.MaxForce = vect3(39999,39999,39999)
						bpos.D = 1500
						bpos.Position = rt.CFrame * cframe(0,60,-0).Position
						sound(62339698, 1.5, 0.3,Handle,0,false)
						task.wait(0.45)
						frame = 3
						task.wait(0.073)
						anim = "striker"
						frame = 5
						task.wait(0.125)
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									if v ~= nil then
										if vtorso:FindFirstChild("NightmareHitBy") then vtorso:FindFirstChild("NightmareHitBy"):Destroy() end
										local bpos = new("BodyPosition")
										bpos.Name = "NightmareHitBy"
										bpos.Parent = vtorso
										bpos.MaxForce = vect3(39999,39999,39999)
										bpos.D = 2500
										bpos.Position = rt.CFrame * cframe(0,62.5,-5).Position
									end
								end))
							end
						end)
						trail.Enabled = false
						trail2.Enabled = false
						anim = "strikerk"
						frame = 1
						local fire = new("Fire")
						fire.Parent = char["Left Leg"]
						fire.Size = 6
						fire.Heat = 10
						fire.Color = color(0.0784314, 0.0784314, 0.0784314)
						fire.SecondaryColor = color(0.384314, 0.145098, 0.819608)
						sound(1273117535,4.5,1,char["Left Leg"],0,false)
						task.wait(0.1)
						frame = 2
						task.wait(0.1)
						frame = 3
						task.wait(0.1)
						sound(7122602098,1,1,char["Left Leg"],0,false)
						spawn(function()
							for i = 1, #targets do
								coroutine.resume(coroutine.create(function()
									local v = targets[i]
									local vhum = v:FindFirstChildOfClass("Humanoid")
									local vtorso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso") or v:FindFirstChild("HumanoidRootPart")
									local touched = false
									if v ~= nil then
										sound2(46153268, 1.5, 0.5,vtorso,0.05,false)
										if vtorso:FindFirstChild("NightmareHitBy") then vtorso:FindFirstChild("NightmareHitBy"):Destroy() end
										vtorso.CFrame = rt.CFrame * cframe(0,0,-5) * angles(rad(-90),0,0)
										vtorso.Velocity = rt.CFrame.lookVector*75 + rt.CFrame.upVector * 45
										vhum.PlatformStand = true
										vtorso.Touched:Connect(function()
											if touched then return end
											touched = true
											local boom = new("Explosion")
											boom.Parent = workspace
											boom.Position = vtorso.Position
											boom.BlastRadius = 0
											boom.BlastPressure = 0
											sound2(2233908,3,0.4,vtorso,0,false)
											sound2(6892640563,1.15,1,vtorso,0,false)
											hiteffect("burn",vtorso)
											v:BreakJoints()
											for _, vi in pairs(v:GetDescendants()) do
												if vi:IsA("Shirt") or v:IsA("ShirtGraphic") or v:IsA("Pants") then
													vi:Destroy()
												end
											end
											for _, vq in pairs(v:GetDescendants()) do
												if vq:IsA("SpecialMesh") then
													vq.TextureId = ""
												end
											end
											for _, vq in pairs(v:GetDescendants()) do
												if vq:IsA("MeshPart") then
													vq.TextureID = ""
												end
											end
											for _, ve in pairs(v:GetDescendants()) do
												if ve:IsA("BasePart") then
													ve:BreakJoints()
													local bv = new("BodyVelocity")
													bv.MaxForce = vect3(math.huge,math.huge,math.huge)
													bv.Velocity = vect3(random(-1,1),random(-1,1),random(-1,1))
													bv.Parent = ve
													ve.RotVelocity=vect3(random(-3,3),random(-3,3),0)
													local sparkles = new("Sparkles")
													sparkles.SparkleColor = color(0,0,0)
													sparkles.Parent = ve
													local tw = tweens:Create(ve, TweenInfo.new(0.45), {Color = Color3.fromRGB(0, 0, 0)})
													tw:Play()
													spawn(function()
														task.wait(3)
														local tw2 = tweens:Create(ve, TweenInfo.new(2), {Transparency = 1})
														tw2:Play()
														tw2.Completed:Connect(function() ve:Destroy() end)
													end)
												end
											end
											for _, vc in pairs(v:GetDescendants()) do
												if vc:IsA("Decal") then
													local tw = tweens:Create(vc, TweenInfo.new(2.5), {Transparency = 1})
													tw:Play()
													tw.Completed:Connect(function() vc:Destroy() end)
												end
											end
											spawn(function()
												for i = 1,3 do
													local randomcolor = random(0,3)
													local firepart = new("Part")
													firepart.Parent = workspace.Terrain
													firepart.Size = vect3(0.001,0.001,0.001)
													firepart.BottomSurface = Enum.SurfaceType.Smooth
													firepart.Anchored = true
													firepart.CanCollide = false
													firepart.CanTouch = false
													if randomcolor == 0 then
														firepart.BrickColor = bc("Really black")
													elseif randomcolor == 1 then
														firepart.BrickColor = bc("Dark indigo")
													elseif randomcolor == 2 then
														firepart.BrickColor = bc("Royal purple")
													elseif randomcolor == 3 then
														firepart.BrickColor = bc("Black")
													end
													firepart.Locked = true
													firepart.TopSurface = Enum.SurfaceType.Smooth
													firepart.CFrame = vtorso.CFrame * angles(rad(random(-360,360)),rad(random(-360,360)),rad(random(-360,360)))
													sound2(3264793,1,1,firepart,0,false)
													magnitudedamage(2,"sphere", 0, 10, 2767090, 1.5, 1, firepart,true,"normal","korone")
													spawn(function()
														for i = 1,25 do
															task.wait()
															firepart.CFrame = firepart.CFrame * angles(rad(7.5),rad(7.5),rad(7.5))
															firepart.Transparency = firepart.Transparency + 0.05
															firepart.Size = firepart.Size + vect3(1.25,1.25,1.25)
														end
													end)
													local tween = tweens:Create(firepart, TweenInfo.new(0.45), {Transparency = 1})
													tween:Play()
													tween.Completed:Connect(function() firepart:Destroy() end)
													task.wait(0.145)
												end
											end)
										end)
										spawn(function() 
											wait(5)
											vhum.PlatformStand = false
										end)
									end
								end))
							end
						end)
						frame = 4
						task.wait(0.1)
						fire.Enabled = false
						debris:AddItem(fire,3)
						bpos:Destroy()
						rt.Anchored = true
						task.wait(1.5)
						chatter(char,"Give me a break...")
						local gender = "Male"
						if char:FindFirstChild("Gender") then
							gender = char:FindFirstChild("Gender").Value
						else
							gender = "Male"
						end
						if owner.UserId == 50203523 then
							local gender = "Male"
							if char:FindFirstChild("Gender") then
								gender = char:FindFirstChild("Gender").Value
							else
								gender = "Male"
							end
							if owner.UserId == 50203523 then
								if gender == "Male" then
									voice("yuki/yuki_3300-10.wav",3,1.1,char.Head,0,false)
								else
									voice("yuki/yuki_3300-10.wav",3,1.6,char.Head,0,false)
								end
							end
						end
						rt.Anchored = false
						nightmarecooldown = true
						spawn(function()
							task.wait(45)
							nightmarecooldown = false
						end)	
					else
						task.wait(0.1)
						chatter(char,"Darn it, I missed!")
						local gender = "Male"
						if char:FindFirstChild("Gender") then
							gender = char:FindFirstChild("Gender").Value
						else
							gender = "Male"
						end
						if owner.UserId == 50203523 then
							local gender = "Male"
							if char:FindFirstChild("Gender") then
								gender = char:FindFirstChild("Gender").Value
							else
								gender = "Male"
							end
							if owner.UserId == 50203523 then
								if gender == "Male" then
									voice("yuki/yuki_5008-0.wav",3,1.1,char.Head,0,false)
								else
									voice("yuki/yuki_5008-0.wav",3,1.6,char.Head,0,false)
								end
							end
						end
						trail.Enabled = false
						trail2.Enabled = false
					end		
				else
					frame = 3
					local rand = random(0,3)
					if rand == 0 then
						chatter(char,"I can't even...")
					elseif rand == 1 then
						chatter(char,"I had a bad feeling...")
					elseif rand == 2 then
						chatter(char,"What was I...")
					elseif rand == 3 then
						chatter(char,"What a way to go...")
					end
					local gender = "Male"
					if char:FindFirstChild("Gender") then
						gender = char:FindFirstChild("Gender").Value
					else
						gender = "Male"
					end
					if owner.UserId == 50203523 then
						local gender = "Male"
						if char:FindFirstChild("Gender") then
							gender = char:FindFirstChild("Gender").Value
						else
							gender = "Male"
						end
						if owner.UserId == 50203523 then
							if gender == "Male" then
								voice("yuki/yuki_5400-0.wav",3,1.1,char.Head,0,false)
							else
								voice("yuki/yuki_5400-0.wav",3,1.6,char.Head,0,false)
							end
						end
					end
					task.wait(1.5)
				end
				attack = false
				gyro.MaxTorque = vect3(0,math.huge,0)
				hum.WalkSpeed = ogws
				hum.JumpPower = ogjp
				hum.JumpHeight = ogjh
			end
		end
	end)

	event2.OnServerEvent:connect(function(plr, key, set)
		if plr == owner then
			if key == "z" then
				if set == true then
					holdingz = true
				else
					holdingz = false
				end
			elseif key == "x" then
				if set == true then
					holdingx = true
				else
					holdingx = false
				end
			elseif key == "c" then
				if set == true then
					holdingc = true
				else
					holdingc = false
				end
			elseif key == "q" then
				if set == true then
					holdingq = true
				else
					holdingq = false
				end
			elseif key == "e" then
				if set == true then
					holdinge = true
				else
					holdinge = false
				end
			end
		end
	end)
end))
RemoteEvent94.Name = "????"
RemoteEvent94.Parent = Tool0
RemoteEvent95.Name = "??"
RemoteEvent95.Parent = Tool0
NLS([[local owner = nil
local char = nil
local Tool = script.Parent
local rs = game:GetService("RunService")
local event = Tool:FindFirstChild("????")
local event2 = Tool:FindFirstChild("??")
local mouse = game:GetService("Players").LocalPlayer:GetMouse()
local equipped = false
local keycombo = ""
local keycombotime = 0
local keycombobreaktime = 0.5
local keycount = 0
local keytime = 0
local hum = nil
local camera = workspace.CurrentCamera
local gyro = Tool:FindFirstChild("EnmaGyro")

Tool.Equipped:connect(function()
	owner = game:GetService("Players"):GetPlayerFromCharacter(Tool.Parent)
	char = owner.Character
	mouse = owner:GetMouse()
	equipped = true
	hum = char:FindFirstChildOfClass("Humanoid")
	gyro.Parent = char.HumanoidRootPart
end)
Tool.Unequipped:connect(function()
	equipped = false
	gyro.Parent = nil
end)
rs.RenderStepped:Connect(function()
	if equipped then
		keytime = keytime - 0.5
		if keytime < 0.5 then
			keycombo = ""
			keycount = 0
		end
		if char then
			gyro.CFrame = CFrame.lookAt(char.HumanoidRootPart.Position, char.HumanoidRootPart.Position + camera.CFrame.LookVector)
			gyro.D=1250
			gyro.P=7500
			task.wait()
		end
	end
end)
mouse.KeyDown:connect(function(key)
	if not equipped then
		return
	end
	keycombotime = tick()
	if key == "g" then
		event:FireServer("taunt")
		keycombo = ""
		keycount = 0
		keytime = 0
	end
	if key == "h" then
		event:FireServer("grab",camera.CFrame, char.HumanoidRootPart.CFrame)
		keycombo = ""
		keycount = 0
		keytime = 0
	end
	if key == "z" then
		event2:FireServer("z",true)
	end
	if key == "x" then
		event2:FireServer("x",true)
	end	
	if key == "c" then
		event2:FireServer("c",true)
	end		
	if key == "q" then
		event2:FireServer("q",true)
	end
	if key == "e" then
		event2:FireServer("e",true)
	end
	if key == "z"  then
		if keycombo == "sd" then
			event:FireServer("fang",camera.CFrame, char.HumanoidRootPart.CFrame)
		else
			event:FireServer("punch",camera.CFrame, char.HumanoidRootPart.CFrame)
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end
	if key == "x"  then
		if keycombo == "sa" then
			event:FireServer("tyrant",camera.CFrame, char.HumanoidRootPart.CFrame)
		else
			event:FireServer("kick",camera.CFrame, char.HumanoidRootPart.CFrame)
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end	
	if key == "c"  then
		if keycombo == "sd" then
			event:FireServer("fang",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "dds" then
			event:FireServer("striker",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "asd" then
			event:FireServer("vortex",camera.CFrame, char.HumanoidRootPart.CFrame)
		else
			event:FireServer("slash",camera.CFrame, char.HumanoidRootPart.CFrame)
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end	
	if key == "q"  then
		if keycombo == "sd" then
			event:FireServer("grenade",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "asd" then
			event:FireServer("redstar",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "aad" then
			event:FireServer("shade",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "wad" then
			event:FireServer("summon",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "ww" then
			event:FireServer("rumeiga",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "aa" then
			event:FireServer("korone",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "dd" then
			event:FireServer("hakurei",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "ss" then
			event:FireServer("kirisame",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "ad" then
			event:FireServer("relocate",camera.CoordinateFrame)
		elseif keycombo == "sw" then
			event:FireServer("hazama",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "dw" then
			event:FireServer("gouda",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "ssad" then
			event:FireServer("zero",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "adadad" then
			event:FireServer("overdrive",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "adadw" then
			event:FireServer("fatal",camera.CFrame, char.HumanoidRootPart.CFrame)			
		elseif keycombo == "asdww" then
			event:FireServer("saz",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "dsadsa" then
			event:FireServer("blazblue",camera.CFrame, char.HumanoidRootPart.CFrame)
		elseif keycombo == "asdasd" or keycombo == "asdsad" then
			event:FireServer("nightmare",camera.CFrame, char.HumanoidRootPart.CFrame)
		else
			event:FireServer("drive",camera.CFrame, char.HumanoidRootPart.CFrame)
		end
		keycombo = ""
		keycount = 0
		keytime = 0
	end
	if key == "e"  then
		if keycombo == "sd" then
			event:FireServer("charge")
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
		end
	end
end)
mouse.KeyUp:connect(function(key)
	if not equipped then
		return
	end
	if key == "z" then
		event2:FireServer("z",false)
	end
	if key == "x" then
		event2:FireServer("x",false)
	end	
	if key == "c" then
		event2:FireServer("c",false)
	end		
	if key == "q" then
		event2:FireServer("q",false)
	end
	if key == "e" then
		event2:FireServer("e",false)
	end
end)]],Tool0)
Part96.Name = "Handle33"
Part96.Parent = Tool0
Part96.CFrame = CFrame.new(-22.8872242, 2.69661236, -93.041687, 0.949057221, -0.270191163, 0.162133247, 0.194618553, 0.0979529247, -0.975975871, 0.247818619, 0.957811058, 0.145547152)
Part96.Orientation = Vector3.new(77.41600036621094, 48.08599853515625, 63.284000396728516)
Part96.Position = Vector3.new(-22.887224197387695, 2.6966123580932617, -93.04168701171875)
Part96.Rotation = Vector3.new(81.51799774169922, 9.331000328063965, 15.890999794006348)
Part96.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part96.Velocity = Vector3.new(-0.001463731867261231, 0.0056337593123316765, -0.00026209669886156917)
Part96.Size = Vector3.new(1, 2, 2)
Part96.BottomSurface = Enum.SurfaceType.Smooth
Part96.BrickColor = BrickColor.new("Royal purple")
Part96.CanCollide = false
Part96.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part96.TopSurface = Enum.SurfaceType.Smooth
Part96.brickColor = BrickColor.new("Royal purple")
Part96.FormFactor = Enum.FormFactor.Symmetric
Part96.formFactor = Enum.FormFactor.Symmetric
SpecialMesh97.Parent = Part96
SpecialMesh97.Scale = Vector3.new(0.0860000029206276, 1, 1)
SpecialMesh97.MeshType = Enum.MeshType.Wedge
Part98.Name = "Handle34"
Part98.Parent = Tool0
Part98.CFrame = CFrame.new(-22.7320976, 0.883941531, -92.2122192, -0.949057281, -0.270191163, -0.162133157, -0.194618478, 0.0979529247, 0.975975871, -0.247818634, 0.957811058, -0.145547122)
Part98.Orientation = Vector3.new(-77.41600036621094, -131.91400146484375, -63.284000396728516)
Part98.Position = Vector3.new(-22.732097625732422, 0.8839415311813354, -92.21221923828125)
Part98.Rotation = Vector3.new(-98.48200225830078, -9.331000328063965, 164.10899353027344)
Part98.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part98.Velocity = Vector3.new(-0.0020331006962805986, 0.005413867067545652, -0.0006361533887684345)
Part98.Size = Vector3.new(1, 2, 2)
Part98.BottomSurface = Enum.SurfaceType.Smooth
Part98.BrickColor = BrickColor.new("Royal purple")
Part98.CanCollide = false
Part98.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part98.TopSurface = Enum.SurfaceType.Smooth
Part98.brickColor = BrickColor.new("Royal purple")
Part98.FormFactor = Enum.FormFactor.Symmetric
Part98.formFactor = Enum.FormFactor.Symmetric
SpecialMesh99.Parent = Part98
SpecialMesh99.Scale = Vector3.new(0.0860000029206276, 0.42500001192092896, 0.3499999940395355)
SpecialMesh99.MeshType = Enum.MeshType.Wedge
Part100.Name = "Handle35"
Part100.Parent = Tool0
Part100.CFrame = CFrame.new(-22.0228653, 1.5440191, -95.4467087, -0.949057281, -0.270191163, -0.162133157, -0.194618478, 0.0979529247, 0.975975871, -0.247818634, 0.957811058, -0.145547122)
Part100.Orientation = Vector3.new(-77.41600036621094, -131.91400146484375, -63.284000396728516)
Part100.Position = Vector3.new(-22.022865295410156, 1.544019103050232, -95.44670867919922)
Part100.Rotation = Vector3.new(-98.48200225830078, -9.331000328063965, 164.10899353027344)
Part100.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part100.Velocity = Vector3.new(-0.0007743552559986711, 0.006074161268770695, -0.00022539669589605182)
Part100.Size = Vector3.new(1, 2, 2)
Part100.BottomSurface = Enum.SurfaceType.Smooth
Part100.BrickColor = BrickColor.new("Royal purple")
Part100.CanCollide = false
Part100.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part100.TopSurface = Enum.SurfaceType.Smooth
Part100.brickColor = BrickColor.new("Royal purple")
Part100.FormFactor = Enum.FormFactor.Symmetric
Part100.formFactor = Enum.FormFactor.Symmetric
BlockMesh101.Parent = Part100
BlockMesh101.Offset = Vector3.new(0, 0.5, -0.3700000047683716)
BlockMesh101.Scale = Vector3.new(0.08500000089406967, 3.140000104904175, 0.30000001192092896)
Part102.Name = "Handle36"
Part102.Parent = Tool0
Part102.CFrame = CFrame.new(-22.0228653, 1.5440191, -95.4467087, -0.949057281, -0.270191163, -0.162133157, -0.194618478, 0.0979529247, 0.975975871, -0.247818634, 0.957811058, -0.145547122)
Part102.Orientation = Vector3.new(-77.41600036621094, -131.91400146484375, -63.284000396728516)
Part102.Position = Vector3.new(-22.022865295410156, 1.544019103050232, -95.44670867919922)
Part102.Rotation = Vector3.new(-98.48200225830078, -9.331000328063965, 164.10899353027344)
Part102.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part102.Velocity = Vector3.new(-0.0007743552559986711, 0.006074161268770695, -0.00022539669589605182)
Part102.Size = Vector3.new(1, 2, 2)
Part102.BottomSurface = Enum.SurfaceType.Smooth
Part102.BrickColor = BrickColor.new("Royal purple")
Part102.CanCollide = false
Part102.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part102.TopSurface = Enum.SurfaceType.Smooth
Part102.brickColor = BrickColor.new("Royal purple")
Part102.FormFactor = Enum.FormFactor.Symmetric
Part102.formFactor = Enum.FormFactor.Symmetric
BlockMesh103.Parent = Part102
BlockMesh103.Offset = Vector3.new(0, 0.800000011920929, -0.5)
BlockMesh103.Scale = Vector3.new(0.08449999988079071, 2, 0.5)
Part104.Name = "Handle38"
Part104.Parent = Tool0
Part104.CFrame = CFrame.new(-21.4919262, 0.640708447, -96.7706223, -0.949057281, 0.162133157, -0.270191103, -0.194618464, -0.975975871, 0.0979529321, -0.247818589, 0.145547122, 0.957811058)
Part104.Orientation = Vector3.new(-5.620999813079834, -15.753000259399414, -168.72300720214844)
Part104.Position = Vector3.new(-21.491926193237305, 0.6407084465026855, -96.77062225341797)
Part104.Rotation = Vector3.new(-5.839000225067139, -15.675999641418457, -170.30499267578125)
Part104.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part104.Velocity = Vector3.new(-0.00043520284816622734, 0.006308322306722403, -0.0002491525374352932)
Part104.Size = Vector3.new(1, 2, 2)
Part104.BottomSurface = Enum.SurfaceType.Smooth
Part104.BrickColor = BrickColor.new("Royal purple")
Part104.CanCollide = false
Part104.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part104.TopSurface = Enum.SurfaceType.Smooth
Part104.brickColor = BrickColor.new("Royal purple")
Part104.FormFactor = Enum.FormFactor.Symmetric
Part104.formFactor = Enum.FormFactor.Symmetric
SpecialMesh105.Parent = Part104
SpecialMesh105.Scale = Vector3.new(0.0860000029206276, 0.2199999988079071, 0.30000001192092896)
SpecialMesh105.MeshType = Enum.MeshType.Wedge
Part106.Name = "Handle37"
Part106.Parent = Tool0
Part106.CFrame = CFrame.new(-22.4173222, 0.63224566, -93.2200317, -0.949057281, 0.162133157, -0.270191103, -0.194618464, -0.975975871, 0.0979529321, -0.247818589, 0.145547122, 0.957811058)
Part106.Orientation = Vector3.new(-5.620999813079834, -15.753000259399414, -168.72300720214844)
Part106.Position = Vector3.new(-22.417322158813477, 0.632245659828186, -93.22003173828125)
Part106.Rotation = Vector3.new(-5.839000225067139, -15.675999641418457, -170.30499267578125)
Part106.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part106.Velocity = Vector3.new(-0.0017095182556658983, 0.005605531856417656, -0.000582954497076571)
Part106.Size = Vector3.new(1, 2, 2)
Part106.BottomSurface = Enum.SurfaceType.Smooth
Part106.BrickColor = BrickColor.new("Royal purple")
Part106.CanCollide = false
Part106.RotVelocity = Vector3.new(0.00023704060004092753, -0.0003585448139347136, -0.000150036794366315)
Part106.TopSurface = Enum.SurfaceType.Smooth
Part106.brickColor = BrickColor.new("Royal purple")
Part106.FormFactor = Enum.FormFactor.Symmetric
Part106.formFactor = Enum.FormFactor.Symmetric
SpecialMesh107.Parent = Part106
SpecialMesh107.Scale = Vector3.new(0.0860000029206276, 0.2199999988079071, 0.30000001192092896)
SpecialMesh107.MeshType = Enum.MeshType.Wedge
for i,v in pairs(mas:GetChildren()) do
	v.Parent = script
	pcall(function() v:MakeJoints() end)
end
Tool0.Parent = owner.Backpack
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
