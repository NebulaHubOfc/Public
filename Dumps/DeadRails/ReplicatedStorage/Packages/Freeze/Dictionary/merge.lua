--[[
    Script: ReplicatedStorage.Packages.Freeze.Dictionary.merge
    Type: ModuleScript
    Decompiled with Konstant using Nebula Decompiler
--]]

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-03-29 09:47:33
-- Luau version 6, Types version 3
-- Time taken: 0.000431 seconds

local maybeFreeze_upvr = require(script.Parent.Parent.utils.maybeFreeze)
local merge_upvr = require(script.Parent.Parent.utils.merge)
return function(...) -- Line 20, Named "merge"
	--[[ Upvalues[2]:
		[1]: maybeFreeze_upvr (readonly)
		[2]: merge_upvr (readonly)
	]]
	return maybeFreeze_upvr(merge_upvr(...))
end