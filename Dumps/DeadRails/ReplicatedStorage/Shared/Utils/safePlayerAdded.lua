--[[
    Script: ReplicatedStorage.Shared.Utils.safePlayerAdded
    Type: ModuleScript
    Decompiled with Wave using Nebula Decompiler
--]]

local l_Players_0 = game:GetService("Players");
return function(v1) --[[ Line: 8 ]] --[[ Name: safePlayerAdded ]]
    -- upvalues: l_Players_0 (copy)
    for _, v3 in l_Players_0:GetPlayers() do
        task.spawn(v1, v3);
    end;
    return l_Players_0.PlayerAdded:Connect(v1);
end;