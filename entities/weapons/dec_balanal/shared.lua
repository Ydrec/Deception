if CLIENT then
    SWEP.PrintName = "Ballistics Analyzer"
    SWEP.Slot = 3
    SWEP.SlotPos = 3
    SWEP.DrawAmmo = false
    SWEP.DrawCrosshair = false
	SWEP.BounceWeaponIcon = false
end

if SERVER then
	AddCSLuaFile("shared.lua")
	SWEP.IsCustomWeapon = true
end

SWEP.Author            = "Spy"
SWEP.Instructions    = "Look at a dead body to analyze it. Press your reload key to switch between registered analyzes."
SWEP.Contact        = ""
SWEP.Purpose        = ""

SWEP.ViewModelFOV    = 65
SWEP.ViewModelFlip    = false

SWEP.Spawnable            = true
SWEP.AdminSpawnable        = true


SWEP.ViewModel      = "models/weapons/v_pistol.mdl"
SWEP.WorldModel   = "models/weapons/w_pistol.mdl"
  
-- Primary Fire Attributes --
SWEP.Primary.Recoil            = 0
SWEP.Primary.Damage            = 0
SWEP.Primary.NumShots        = 1
SWEP.Primary.Cone            = 0
SWEP.Primary.ClipSize        = 1
SWEP.Primary.DefaultClip    = 1
SWEP.Primary.Automatic       = false    
SWEP.Primary.Ammo             = "SniperRound"
 
-- Secondary Fire Attributes --
SWEP.Secondary.Recoil        = 0
SWEP.Secondary.Damage        = 0
SWEP.Secondary.NumShots        = 1
SWEP.Secondary.Cone            = 0
SWEP.Secondary.ClipSize        = -1
SWEP.Secondary.DefaultClip    = -1
SWEP.Secondary.Automatic       = false
SWEP.Secondary.Ammo         = "none"

SWEP.Size = 2
SWEP.CantHolster = true

local CT, pos, ang

function SWEP:Initialize()
    self:SetWeaponHoldType("slam")
end

function SWEP:Precache()
end

function SWEP:Deploy()
	CT = CurTime()
	self:SendWeaponAnim(ACT_VM_DRAW)
	self.ReloadDelay = CT + 0.8
	self:SetNextPrimaryFire(CT + 0.8)
    return true
end

function SWEP:Holster()
    return true
end

function SWEP:Reload()
	return false
end

function SWEP:ViewModelDrawn()
	self:DrawModel()
	
	pos, ang = self:GetBonePosition(self:LookupBone("v_weapon.c4"))
	
	cam.Start3D2D(pos, ang, 0.1)
		draw.SimpleText("Test text", "Trebuchet64_AA", 0, 0, Color(255, 255, 255, 255))
	cam.End3D2D()
end

function SWEP:PrimaryAttack()
	return false
end

function SWEP:SecondaryAttack()
	return false
end