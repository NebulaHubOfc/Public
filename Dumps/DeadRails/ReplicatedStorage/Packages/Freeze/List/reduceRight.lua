--[[
    Script: ReplicatedStorage.Packages.Freeze.List.reduceRight
    Type: ModuleScript
    Decompiled with Konstant using Nebula Decompiler
--]]

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-03-29 09:48:49
-- Luau version 6, Types version 3
-- Time taken: 0.000317 seconds

local reduce_upvr = require(script.Parent.Parent.utils.reduce)
return function(arg1, arg2, arg3) -- Line 18, Named "reduceRight"
	--[[ Upvalues[1]:
		[1]: reduce_upvr (readonly)
	]]
	return reduce_upvr(arg1, arg2, arg3, true)
end