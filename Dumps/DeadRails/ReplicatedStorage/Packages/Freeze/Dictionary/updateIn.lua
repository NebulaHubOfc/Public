--[[
    Script: ReplicatedStorage.Packages.Freeze.Dictionary.updateIn
    Type: ModuleScript
    Decompiled with Wave using Nebula Decompiler
--]]

local v0 = require(script.Parent.Parent.utils.updateIn);
local v1 = require(script.Parent.Parent.utils.maybeFreeze);
return function(v2, v3, v4, v5) --[[ Line: 31 ]] --[[ Name: updateIn ]]
    -- upvalues: v1 (copy), v0 (copy)
    return v1(v0(v2, v3, v4, v5));
end;