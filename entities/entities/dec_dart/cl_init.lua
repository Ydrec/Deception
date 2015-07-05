include("shared.lua")

function ENT:Initialize()
end

function ENT:Draw()
	self:SetModelScale(Vector(0.25, 0.25, 0.25))
	self:DrawModel()
end