--[[
    Script: ReplicatedStorage.Packages.Freeze.List.take
    Type: ModuleScript
    Decompiled with Konstant using Nebula Decompiler
--]]

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-03-29 09:45:04
-- Luau version 6, Types version 3
-- Time taken: 0.000320 seconds

local slice_upvr = require(script.Parent.slice)
return function(arg1, arg2) -- Line 15, Named "take"
	--[[ Upvalues[1]:
		[1]: slice_upvr (readonly)
	]]
	return slice_upvr(arg1, 1, math.max(1, arg2))
end