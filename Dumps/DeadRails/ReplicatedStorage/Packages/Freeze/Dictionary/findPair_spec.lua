--[[
    Script: ReplicatedStorage.Packages.Freeze.Dictionary.findPair.spec
    Type: ModuleScript
    Decompiled with Konstant using Nebula Decompiler
--]]

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-03-29 09:46:48
-- Luau version 6, Types version 3
-- Time taken: 0.001067 seconds

local findPair_upvr = require(script.Parent.findPair)
return function() -- Line 4
	--[[ Upvalues[1]:
		[1]: findPair_upvr (readonly)
	]]
	local tbl_upvr = {
		a = 1;
		b = 2;
		c = 3;
	}
	it("findPair match", function() -- Line 6
		--[[ Upvalues[2]:
			[1]: findPair_upvr (copied, readonly)
			[2]: tbl_upvr (readonly)
		]]
		local var2_result1_2, var2_result2 = findPair_upvr(tbl_upvr, function(arg1) -- Line 7
			local var6
			if arg1 % 2 ~= 0 then
				var6 = false
			else
				var6 = true
			end
			return var6
		end)
		expect(var2_result1_2).toEqual('b')
		expect(var2_result2).toEqual(2)
	end)
	it("findPair no match", function() -- Line 15
		--[[ Upvalues[2]:
			[1]: findPair_upvr (copied, readonly)
			[2]: tbl_upvr (readonly)
		]]
		local var2_result1, findPair_upvr_result2 = findPair_upvr(tbl_upvr, function(arg1) -- Line 16
			if arg1 ~= 4 then
			else
			end
			return true
		end)
		expect(var2_result1).toEqual(nil)
		expect(findPair_upvr_result2).toEqual(nil)
	end)
end