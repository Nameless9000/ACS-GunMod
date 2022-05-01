
modDmg = true

local function modGun(tool)
        if not tool:FindFirstChild("ACS_Modulo") then return end

    local m = tool.ACS_Modulo.Variaveis.Settings
local x = require(m)
local newx = {
	FireRate = 1250, 
	AutoChamber = true, 
	ChamberWhileAim = true, 
	VRecoil = { 0, 0 }, 
	HRecoil = { 0, 0 }, 
	AimRecover = 0, 
	RecoilPunch = 0, 
	VPunchBase =0, 
	HPunchBase = 0, 
	DPunchBase = 0, 
	PunchRecover = 0.2, 
	MinRecoilPower = 0, 
	MaxRecoilPower = 0, 
	RecoilPowerStepAmount = 0, 
	MinSpread = 0, 
	MaxSpread = 0, 
	AimInaccuracyStepAmount = 0, 
	WalkMultiplier = 0, 
	SwayBase = 0, 
	MaxSway = 0, 
	BulletPenetration = 999, 
	FallOfDamage = 0, 
	Distance = 10000, 
	BDrop = 0, 
	BWMaxDistance = 200, 
	ExplosionDamage = 100, 
	LauncherDamage = 100, 
	FastReload = true, 
	Mode = "Auto"
    };
if modDmg then
	newx.LimbsDamage = { 25, 100 }
	newx.TorsoDamage = { 50, 100 }
	newx.HeadDamage = { 1000, 10000 }
end
    m.Parent.Ammo.Value = 9999
    m.Parent.StoredAmmo.MaxValue = 9999
    m.Parent.StoredAmmo.Value = 9999
    for n,v in pairs(newx) do
        x[n] = v
    end
end

for _,tool in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
modGun(tool)
end

game.Players.LocalPlayer.Backpack.ChildAdded:Connect(modGun)

local heldGun = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
if heldGun then modGun(heldGun) end
