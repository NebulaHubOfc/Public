--[[
    Script: ReplicatedStorage.Packages.Freeze.List.first
    Type: ModuleScript
    Decompiled with Konstant using Nebula Decompiler
--]]

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-03-29 09:45:42
-- Luau version 6, Types version 3
-- Time taken: 0.000306 seconds

local get_upvr = require(script.Parent.get)
return function(arg1, arg2) -- Line 15, Named "first"
	--[[ Upvalues[1]:
		[1]: get_upvr (readonly)
	]]
	return get_upvr(arg1, 1, arg2)
end