--[[
    Script: ReplicatedStorage.Packages.Freeze.List.merge
    Type: ModuleScript
    Decompiled with Wave using Nebula Decompiler
--]]

local v0 = require(script.Parent.Parent.utils.merge);
local v1 = require(script.Parent.Parent.utils.maybeFreeze);
return function(...) --[[ Line: 21 ]] --[[ Name: merge ]]
    -- upvalues: v1 (copy), v0 (copy)
    return v1(v0(...));
end;