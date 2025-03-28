--[[
    Script: ReplicatedStorage.Packages.CameraShaker.CameraShakeInstance
    Type: ModuleScript
    Decompiled with Konstant using Nebula Decompiler
--]]

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-03-29 09:44:11
-- Luau version 6, Types version 3
-- Time taken: 0.003996 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local new_2_upvr = Vector3.new
module_2_upvr.CameraShakeState = {
	FadingIn = 0;
	FadingOut = 1;
	Sustained = 2;
	Inactive = 3;
}
function module_2_upvr.new(arg1, arg2, arg3, arg4) -- Line 28
	--[[ Upvalues[2]:
		[1]: new_2_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	if arg3 == nil then
		local var4 = 0
	end
	if arg4 == nil then
		local var5 = 0
	end
	if type(arg1) ~= "number" then
	else
	end
	assert(true, "Magnitude must be a number")
	if type(arg2) ~= "number" then
		-- KONSTANTWARNING: GOTO [30] #23
	end
	assert(true, "Roughness must be a number")
	if type(var4) ~= "number" then
		-- KONSTANTWARNING: GOTO [45] #34
	end
	assert(true, "FadeInTime must be a number")
	if type(var5) ~= "number" then
		-- KONSTANTWARNING: GOTO [60] #45
	end
	assert(true, "FadeOutTime must be a number")
	local module = {}
	module.Magnitude = arg1
	module.Roughness = arg2
	module.PositionInfluence = new_2_upvr()
	module.RotationInfluence = new_2_upvr()
	module.DeleteOnInactive = true
	module.roughMod = 1
	module.magnMod = 1
	module.fadeOutDuration = var5
	module.fadeInDuration = var4
	if 0 >= var4 then
		-- KONSTANTWARNING: GOTO [99] #72
	end
	module.sustain = true
	if 0 < var4 then
	else
	end
	module.currentFadeTime = 1
	module.tick = Random.new():NextNumber(-100, 100)
	module._camShakeInstance = true
	return setmetatable(module, module_2_upvr)
end
local noise_upvr = math.noise
function module_2_upvr.UpdateShake(arg1, arg2) -- Line 59
	--[[ Upvalues[2]:
		[1]: noise_upvr (readonly)
		[2]: new_2_upvr (readonly)
	]]
	local tick = arg1.tick
	local var9
	if 0 < arg1.fadeInDuration and arg1.sustain then
		if var9 < 1 then
			var9 += arg2 / arg1.fadeInDuration
		elseif 0 < arg1.fadeOutDuration then
			arg1.sustain = false
		end
	end
	if not arg1.sustain then
		var9 -= arg2 / arg1.fadeOutDuration
	end
	if arg1.sustain then
		arg1.tick = tick + arg2 * arg1.Roughness * arg1.roughMod
	else
		arg1.tick = tick + arg2 * arg1.Roughness * arg1.roughMod * var9
	end
	arg1.currentFadeTime = var9
	return new_2_upvr(noise_upvr(tick, 0) * 0.5, noise_upvr(0, tick) * 0.5, noise_upvr(tick, tick) * 0.5) * arg1.Magnitude * arg1.magnMod * var9
end
function module_2_upvr.StartFadeOut(arg1, arg2) -- Line 95
	if arg2 == 0 then
		arg1.currentFadeTime = 0
	end
	arg1.fadeOutDuration = arg2
	arg1.fadeInDuration = 0
	arg1.sustain = false
end
function module_2_upvr.StartFadeIn(arg1, arg2) -- Line 105
	if arg2 == 0 then
		arg1.currentFadeTime = 1
	end
	local var10 = arg2
	if not var10 then
		var10 = arg1.fadeInDuration
	end
	arg1.fadeInDuration = var10
	arg1.fadeOutDuration = 0
	arg1.sustain = true
end
function module_2_upvr.GetScaleRoughness(arg1) -- Line 115
	return arg1.roughMod
end
function module_2_upvr.SetScaleRoughness(arg1, arg2) -- Line 120
	arg1.roughMod = arg2
end
function module_2_upvr.GetScaleMagnitude(arg1) -- Line 125
	return arg1.magnMod
end
function module_2_upvr.SetScaleMagnitude(arg1, arg2) -- Line 130
	arg1.magnMod = arg2
end
function module_2_upvr.GetNormalizedFadeTime(arg1) -- Line 135
	return arg1.currentFadeTime
end
function module_2_upvr.IsShaking(arg1) -- Line 140
	local var11 = true
	if 0 >= arg1.currentFadeTime then
		var11 = arg1.sustain
	end
	return var11
end
function module_2_upvr.IsFadingOut(arg1) -- Line 145
	local var12 = not arg1.sustain
	if var12 then
		if 0 >= arg1.currentFadeTime then
			var12 = false
		else
			var12 = true
		end
	end
	return var12
end
function module_2_upvr.IsFadingIn(arg1) -- Line 150
	local var14 = false
	if arg1.currentFadeTime < 1 then
		var14 = arg1.sustain
		if var14 then
			if 0 >= arg1.fadeInDuration then
				var14 = false
			else
				var14 = true
			end
		end
	end
	return var14
end
function module_2_upvr.GetState(arg1) -- Line 155
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	if arg1:IsFadingIn() then
		return module_2_upvr.CameraShakeState.FadingIn
	end
	if arg1:IsFadingOut() then
		return module_2_upvr.CameraShakeState.FadingOut
	end
	if arg1:IsShaking() then
		return module_2_upvr.CameraShakeState.Sustained
	end
	return module_2_upvr.CameraShakeState.Inactive
end
return module_2_upvr