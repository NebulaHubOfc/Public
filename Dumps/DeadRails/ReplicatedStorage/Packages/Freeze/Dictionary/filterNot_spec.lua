--[[
    Script: ReplicatedStorage.Packages.Freeze.Dictionary.filterNot.spec
    Type: ModuleScript
    Decompiled with Konstant using Nebula Decompiler
--]]

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-03-29 09:46:20
-- Luau version 6, Types version 3
-- Time taken: 0.000949 seconds

local filterNot_upvr = require(script.Parent.filterNot)
return function() -- Line 4
	--[[ Upvalues[1]:
		[1]: filterNot_upvr (readonly)
	]]
	local tbl_upvr = {
		a = 1;
		b = 2;
		c = 3;
		d = 4;
	}
	it("filterNot even", function() -- Line 6
		--[[ Upvalues[2]:
			[1]: filterNot_upvr (copied, readonly)
			[2]: tbl_upvr (readonly)
		]]
		expect(filterNot_upvr(tbl_upvr, function(arg1) -- Line 7
			local var6
			if arg1 % 2 ~= 0 then
				var6 = false
			else
				var6 = true
			end
			return var6
		end)).toEqual({
			a = 1;
			c = 3;
		})
	end)
	it("filterNot all", function() -- Line 14
		--[[ Upvalues[2]:
			[1]: filterNot_upvr (copied, readonly)
			[2]: tbl_upvr (readonly)
		]]
		expect(filterNot_upvr(tbl_upvr, function(arg1) -- Line 15
			return false
		end)).toEqual({
			a = 1;
			b = 2;
			c = 3;
			d = 4;
		})
	end)
end