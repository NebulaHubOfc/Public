--[[
    Script: ReplicatedStorage.Packages._Index.jakeywastaken_imgizmo@3.5.1.imgizmo.Gizmos.VolumeCylinder
    Type: ModuleScript
    Decompiled with Konstant using Nebula Decompiler
--]]

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-03-29 09:44:21
-- Luau version 6, Types version 3
-- Time taken: 0.001391 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.Init(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 8
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_2_upvr)
	setmetatable_result1.Ceive = arg1
	setmetatable_result1.Propertys = arg2
	setmetatable_result1.Request = arg3
	setmetatable_result1.Release = arg4
	setmetatable_result1.Retain = arg5
	setmetatable_result1.Register = arg6
	return setmetatable_result1
end
local Terrain_upvr = workspace.Terrain
function module_2_upvr.Draw(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 28
	--[[ Upvalues[1]:
		[1]: Terrain_upvr (readonly)
	]]
	local Ceive = arg1.Ceive
	if not Ceive.Enabled then
	else
		local any_Request_result1 = arg1.Request("CylinderHandleAdornment")
		any_Request_result1.Color3 = arg1.Propertys.Color3
		any_Request_result1.Transparency = arg1.Propertys.Transparency
		any_Request_result1.CFrame = arg2
		any_Request_result1.Height = arg4
		any_Request_result1.Radius = arg3
		any_Request_result1.InnerRadius = arg5 or 0
		any_Request_result1.Angle = arg6 or 360
		any_Request_result1.AlwaysOnTop = arg1.Propertys.AlwaysOnTop
		any_Request_result1.ZIndex = 1
		any_Request_result1.Adornee = Terrain_upvr
		any_Request_result1.Parent = Terrain_upvr
		Ceive.ActiveInstances += 1
		arg1.Register(any_Request_result1)
		arg1.Ceive.ScheduleCleaning()
	end
end
function module_2_upvr.Create(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 63
	local module = {}
	module.Transform = arg2
	module.Radius = arg3
	module.Length = arg4
	module.InnerRadius = arg5 or 0
	module.Angle = arg6 or 360
	module.AlwaysOnTop = arg1.Propertys.AlwaysOnTop
	module.Transparency = arg1.Propertys.Transparency
	module.Color3 = arg1.Propertys.Color3
	module.Enabled = true
	module.Destroy = false
	arg1.Retain(arg1, module)
	return module
end
function module_2_upvr.Update(arg1, arg2) -- Line 82
	local Ceive_2 = arg1.Ceive
	Ceive_2.PushProperty("AlwaysOnTop", arg2.AlwaysOnTop)
	Ceive_2.PushProperty("Transparency", arg2.Transparency)
	Ceive_2.PushProperty("Color3", arg2.Color3)
	arg1:Draw(arg2.Transform, arg2.Radius, arg2.Length, arg2.InnerRadius, arg2.Angle)
end
return module_2_upvr