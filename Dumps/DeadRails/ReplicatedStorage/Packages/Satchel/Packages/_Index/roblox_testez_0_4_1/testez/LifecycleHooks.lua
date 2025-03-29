--[[
    Script: ReplicatedStorage.Packages.Satchel.Packages._Index.roblox_testez@0.4.1.testez.LifecycleHooks
    Type: ModuleScript
    Decompiled with Wave using Nebula Decompiler
--]]

local v0 = require(script.Parent.TestEnum);
local v1 = {};
v1.__index = v1;
v1.new = function() --[[ Line: 6 ]] --[[ Name: new ]]
    -- upvalues: v1 (copy)
    return (setmetatable({
        _stack = {}
    }, v1));
end;
v1.getBeforeEachHooks = function(v2) --[[ Line: 16 ]] --[[ Name: getBeforeEachHooks ]]
    -- upvalues: v0 (copy)
    local l_BeforeEach_0 = v0.NodeType.BeforeEach;
    local v4 = {};
    for _, v6 in ipairs(v2._stack) do
        for _, v8 in ipairs(v6[l_BeforeEach_0]) do
            table.insert(v4, v8);
        end;
    end;
    return v4;
end;
v1.getAfterEachHooks = function(v9) --[[ Line: 32 ]] --[[ Name: getAfterEachHooks ]]
    -- upvalues: v0 (copy)
    local l_AfterEach_0 = v0.NodeType.AfterEach;
    local v11 = {};
    for _, v13 in ipairs(v9._stack) do
        for _, v15 in ipairs(v13[l_AfterEach_0]) do
            table.insert(v11, 1, v15);
        end;
    end;
    return v11;
end;
v1.popHooks = function(v16) --[[ Line: 48 ]] --[[ Name: popHooks ]]
    table.remove(v16._stack, #v16._stack);
end;
v1.pushHooksFrom = function(v17, v18) --[[ Line: 52 ]] --[[ Name: pushHooksFrom ]]
    -- upvalues: v0 (copy)
    assert(v18 ~= nil);
    table.insert(v17._stack, {
        [v0.NodeType.BeforeAll] = v17:_getHooksOfType(v18.children, v0.NodeType.BeforeAll), 
        [v0.NodeType.AfterAll] = v17:_getHooksOfType(v18.children, v0.NodeType.AfterAll), 
        [v0.NodeType.BeforeEach] = v17:_getHooksOfType(v18.children, v0.NodeType.BeforeEach), 
        [v0.NodeType.AfterEach] = v17:_getHooksOfType(v18.children, v0.NodeType.AfterEach)
    });
end;
v1.getBeforeAllHooks = function(v19) --[[ Line: 66 ]] --[[ Name: getBeforeAllHooks ]]
    -- upvalues: v0 (copy)
    return v19._stack[#v19._stack][v0.NodeType.BeforeAll];
end;
v1.getAfterAllHooks = function(v20) --[[ Line: 73 ]] --[[ Name: getAfterAllHooks ]]
    -- upvalues: v0 (copy)
    return v20._stack[#v20._stack][v0.NodeType.AfterAll];
end;
v1._getHooksOfType = function(_, v22, v23) --[[ Line: 77 ]] --[[ Name: _getHooksOfType ]]
    local v24 = {};
    for _, v26 in ipairs(v22) do
        if v26.type == v23 then
            table.insert(v24, v26.callback);
        end;
    end;
    return v24;
end;
return v1;