--[[
    Script: ReplicatedStorage.Packages.Freeze.List.find
    Type: ModuleScript
    Decompiled with Wave using Nebula Decompiler
--]]

local v0 = require(script.Parent.Parent.utils.findPair);
return function(v1, v2, v3) --[[ Line: 17 ]] --[[ Name: find ]]
    -- upvalues: v0 (copy)
    local _, v5 = v0(v1, v2);
    if v5 == nil then
        return v3;
    else
        return v5;
    end;
end;