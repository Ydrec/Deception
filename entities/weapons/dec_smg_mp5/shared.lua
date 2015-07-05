if ( SERVER ) then
	AddCSLuaFile( "shared.lua" )
	SWEP.NoDocter = true
	SWEP.NoACOG = true
	
	SWEP.BulletLength = 9
	SWEP.CaseLength = 19
	SWEP.RequiresRail = false
end

if ( CLIENT ) then

	SWEP.PrintName			= "MP5"			
	SWEP.Author				= "Counter-Strike"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 1
	SWEP.IconLetter			= "x"
	SWEP.Muzzle = "cstm_muzzle_smg"
	SWEP.SparkEffect = "cstm_child_sparks_small"
	SWEP.SmokeEffect = "cstm_child_smoke_small"
	
	killicon.AddFont( "cstm_smg_mp5", "CSKillIcons", SWEP.IconLetter, Color( 255, 80, 0, 255 ) )
	
	SWEP.VElements = {
		["silencer"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.MP5_Parent", pos = Vector(0, 2.986, 12.668), angle = Angle(0, 0, 0), size = Vector(0.043, 0.043, 0.136), color = Color(255, 255, 255, 0), surpresslightning = false, material = "models/bunneh/silencer", skin = 0, bodygroup = {} }
	}
	
	SWEP.WElements = {
		["silencer"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", pos = Vector(22.156, 0.975, -5.332), angle = Angle(-90, 0, 0), size = Vector(0.043, 0.043, 0.136), color = Color(255, 255, 255, 0), surpresslightning = false, material = "models/bunneh/silencer", skin = 0, bodygroup = {} }
	}
	
end

SWEP.Caliber = "9x19MM"
SWEP.HoldType			= "ar2"
SWEP.Base = "dec_base_pistol"
///SWEP.Category			= "Condition SWEPs (TEST)"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.ViewModelFOV = 70
SWEP.ViewModelFlip = true
SWEP.ViewModel = "models/weapons/v_smg_mp5.mdl"
SWEP.WorldModel = "models/weapons/w_smg_mp5.mdl"
SWEP.ShowViewModel = true
SWEP.ShowWorldModel = true
SWEP.ViewModelBonescales = {}

SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Primary.Sound			= Sound("weapons/mp5navy/mp5-1.wav")
SWEP.Primary.Recoil			= 0.3
SWEP.Primary.Damage			= 18
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.02
SWEP.Primary.ClipSize		= 30
SWEP.Primary.Delay			= 0.075
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "smg1"
SWEP.InitialHoldtype = "smg"
SWEP.InHoldtype = "smg"
SWEP.ReloadAct = "reload1"

-- Animation speed/custom reload function related
SWEP.IsReloading = false
SWEP.NoBoltAnim = true
SWEP.AnimPrefix = ""
SWEP.ReloadSpeed = 1
SWEP.ShouldBolt = false
SWEP.ReloadDelay = 0
SWEP.IncAmmoPerc = 0.35 -- Amount of frames required to pass (in percentage) of the reload animation for the weapon to have it's amount of ammo increased

-- Dynamic accuracy related
SWEP.ShotsAmount 			= 0
SWEP.ConeDecAff				= 0
SWEP.DefRecoil				= 0.65
SWEP.CurCone				= 0.035
SWEP.DecreaseRecoilTime 	= 0
SWEP.ConeAff1 				= 0 -- Crouching/standing
SWEP.ConeAff2 				= 0 -- Using ironsights
SWEP.ViewPunchCycle 		= 0
SWEP.ViewPunchDelay			= 0
SWEP.WalkPunchCycle			= 0
SWEP.WalkPunchDelay 		= 0
SWEP.UnConeTime				= 0 -- Amount of time after firing the last shot that needs to pass until accuracy increases
SWEP.FinalCone				= 0 -- Self explanatory
SWEP.VelocitySensivity		= 1.5 -- Percentage of how much the cone increases depending on the player's velocity (moving speed). Rifles - 100%; SMGs - 80%; Pistols - 60%; Shotguns - 20%
SWEP.HeadbobMul 			= 1
SWEP.IsSilenced 			= false
SWEP.IronsightsCone			= 0.02
SWEP.HipCone 				= 0.048
SWEP.ScopeCone = 0.022
SWEP.InaccAff1 = 0.5
SWEP.ConeInaccuracyAff1 = 0.55

SWEP.Size = 7

SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.IsUsingIronsights 		= false
SWEP.TargetMul = 0
SWEP.SetAndForget			= false

SWEP.IronSightsPos = Vector(6.0749, -5.5216, 2.3984)
SWEP.IronSightsAng = Vector(2.5174, -0.0099, 0)

SWEP.AimPos = Vector(4.7715, -4.8504, 1.8579)
SWEP.AimAng = Vector(1.3901, 0.1106, 0)

SWEP.ChargePos = Vector (5.4056, -10.3522, -4.0017)
SWEP.ChargeAng = Vector (-1.7505, -55.5187, 68.8356)

SWEP.ScopePos = Vector(4.699, -6.107, 1.467)
SWEP.ScopeAng = Vector(0, 0, 0)

SWEP.ReflexPos = Vector(4.751, -4.099, 1.547)
SWEP.ReflexAng = Vector(0, 0, 0)