--[[
    Script: ReplicatedStorage.Packages.Satchel.Packages._Index.roblox_testez@0.4.1.testez.TestPlan
    Type: ModuleScript
    Decompiled with Konstant using Nebula Decompiler
--]]

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-03-29 09:45:48
-- Luau version 6, Types version 3
-- Time taken: 0.007599 seconds

local TestEnum_upvr = require(script.Parent.TestEnum)
local Expectation_upvr = require(script.Parent.Expectation)
local function newEnvironment_upvr(arg1, arg2) -- Line 11, Named "newEnvironment"
	--[[ Upvalues[2]:
		[1]: TestEnum_upvr (readonly)
		[2]: Expectation_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_3 = {}
	if arg2 then
		if type(arg2) ~= "table" then
			error("Bad argument #2 to newEnvironment. Expected table, got %s":format(typeof(arg2)), 2)
		end
		for i, v in pairs(arg2) do
			module_3[i] = v
		end
	end
	local function addChild(arg1_2, arg2_2, arg3, arg4) -- Line 25
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: TestEnum_upvr (copied, readonly)
		]]
		local any_addChild_result1 = arg1:addChild(arg1_2, arg3, arg4)
		any_addChild_result1.callback = arg2_2
		if arg3 == TestEnum_upvr.NodeType.Describe then
			any_addChild_result1:expand()
		end
		return any_addChild_result1
	end
	function module_3.describeFOCUS(arg1_3, arg2_3) -- Line 34
		--[[ Upvalues[2]:
			[1]: addChild (readonly)
			[2]: TestEnum_upvr (copied, readonly)
		]]
		addChild(arg1_3, arg2_3, TestEnum_upvr.NodeType.Describe, TestEnum_upvr.NodeModifier.Focus)
	end
	function module_3.describeSKIP(arg1_4, arg2_4) -- Line 38
		--[[ Upvalues[2]:
			[1]: addChild (readonly)
			[2]: TestEnum_upvr (copied, readonly)
		]]
		addChild(arg1_4, arg2_4, TestEnum_upvr.NodeType.Describe, TestEnum_upvr.NodeModifier.Skip)
	end
	function module_3.describe(arg1_5, arg2_5, arg3) -- Line 42
		--[[ Upvalues[2]:
			[1]: addChild (readonly)
			[2]: TestEnum_upvr (copied, readonly)
		]]
		addChild(arg1_5, arg2_5, TestEnum_upvr.NodeType.Describe, TestEnum_upvr.NodeModifier.None)
	end
	function module_3.itFOCUS(arg1_6, arg2_6) -- Line 46
		--[[ Upvalues[2]:
			[1]: addChild (readonly)
			[2]: TestEnum_upvr (copied, readonly)
		]]
		addChild(arg1_6, arg2_6, TestEnum_upvr.NodeType.It, TestEnum_upvr.NodeModifier.Focus)
	end
	function module_3.itSKIP(arg1_7, arg2_7) -- Line 50
		--[[ Upvalues[2]:
			[1]: addChild (readonly)
			[2]: TestEnum_upvr (copied, readonly)
		]]
		addChild(arg1_7, arg2_7, TestEnum_upvr.NodeType.It, TestEnum_upvr.NodeModifier.Skip)
	end
	function module_3.itFIXME(arg1_8, arg2_8) -- Line 54
		--[[ Upvalues[2]:
			[1]: addChild (readonly)
			[2]: TestEnum_upvr (copied, readonly)
		]]
		warn("FIXME: broken test", addChild(arg1_8, arg2_8, TestEnum_upvr.NodeType.It, TestEnum_upvr.NodeModifier.Skip):getFullName())
	end
	function module_3.it(arg1_9, arg2_9, arg3) -- Line 59
		--[[ Upvalues[2]:
			[1]: addChild (readonly)
			[2]: TestEnum_upvr (copied, readonly)
		]]
		addChild(arg1_9, arg2_9, TestEnum_upvr.NodeType.It, TestEnum_upvr.NodeModifier.None)
	end
	for i_2_upvr, v_2_upvr in pairs({
		[TestEnum_upvr.NodeType.BeforeAll] = "beforeAll";
		[TestEnum_upvr.NodeType.AfterAll] = "afterAll";
		[TestEnum_upvr.NodeType.BeforeEach] = "beforeEach";
		[TestEnum_upvr.NodeType.AfterEach] = "afterEach";
	}) do
		local var29_upvw = 0
		module_3[v_2_upvr] = function(arg1_10) -- Line 74
			--[[ Upvalues[5]:
				[1]: addChild (readonly)
				[2]: v_2_upvr (readonly)
				[3]: var29_upvw (read and write)
				[4]: i_2_upvr (readonly)
				[5]: TestEnum_upvr (copied, readonly)
			]]
			addChild(v_2_upvr..'_'..tostring(var29_upvw), arg1_10, i_2_upvr, TestEnum_upvr.NodeModifier.None)
			var29_upvw += 1
		end
		local _
	end
	function module_3.FIXME(arg1_11) -- Line 80
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: TestEnum_upvr (copied, readonly)
		]]
		warn("FIXME: broken test", arg1:getFullName(), arg1_11 or "")
		arg1.modifier = TestEnum_upvr.NodeModifier.Skip
	end
	function module_3.FOCUS() -- Line 86
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: TestEnum_upvr (copied, readonly)
		]]
		arg1.modifier = TestEnum_upvr.NodeModifier.Focus
	end
	function module_3.SKIP() -- Line 90
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: TestEnum_upvr (copied, readonly)
		]]
		arg1.modifier = TestEnum_upvr.NodeModifier.Skip
	end
	function module_3.HACK_NO_XPCALL() -- Line 98
		warn("HACK_NO_XPCALL is deprecated. It is now safe to yield in an ".."xpcall, so this is no longer necessary. It can be safely deleted.")
	end
	module_3.fit = module_3.itFOCUS
	module_3.xit = module_3.itSKIP
	module_3.fdescribe = module_3.describeFOCUS
	module_3.xdescribe = module_3.describeSKIP
	module_3.expect = setmetatable({
		extend = function(...) -- Line 109, Named "extend"
			error("Cannot call \"expect.extend\" from within a \"describe\" node.")
		end;
	}, {
		__call = function(arg1_12, ...) -- Line 113, Named "__call"
			--[[ Upvalues[1]:
				[1]: Expectation_upvr (copied, readonly)
			]]
			return Expectation_upvr.new(...)
		end;
	})
	return module_3
end
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
local function new(arg1, arg2, arg3, arg4) -- Line 129
	--[[ Upvalues[3]:
		[1]: TestEnum_upvr (readonly)
		[2]: newEnvironment_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	local var34 = arg4
	if not var34 then
		var34 = TestEnum_upvr.NodeModifier.None
	end
	local module_2 = {}
	module_2.plan = arg1
	module_2.phrase = arg2
	module_2.type = arg3
	module_2.modifier = var34
	module_2.children = {}
	module_2.callback = nil
	module_2.parent = nil
	module_2.environment = newEnvironment_upvr(module_2, arg1.extraEnvironment)
	return setmetatable(module_2, tbl_upvr)
end
tbl_upvr.new = new
local function getModifier_upvr(arg1, arg2, arg3) -- Line 146, Named "getModifier"
	--[[ Upvalues[1]:
		[1]: TestEnum_upvr (readonly)
	]]
	if arg2 and (arg3 == nil or arg3 == TestEnum_upvr.NodeModifier.None) then
		if arg1:match(arg2) then
			return TestEnum_upvr.NodeModifier.Focus
		end
		return TestEnum_upvr.NodeModifier.Skip
	end
	return arg3
end
local function addChild(arg1, arg2, arg3, arg4) -- Line 157
	--[[ Upvalues[3]:
		[1]: TestEnum_upvr (readonly)
		[2]: getModifier_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	if arg3 == TestEnum_upvr.NodeType.It then
		for _, v_3 in pairs(arg1.children) do
			if v_3.phrase == arg2 then
				error("Duplicate it block found: "..v_3:getFullName())
			end
		end
	end
	local any_new_result1_2 = tbl_upvr.new(arg1.plan, arg2, arg3, getModifier_upvr(arg1:getFullName()..' '..arg2, arg1.plan.testNamePattern, arg4))
	any_new_result1_2.parent = arg1
	table.insert(arg1.children, any_new_result1_2)
	return any_new_result1_2
end
tbl_upvr.addChild = addChild
function tbl_upvr.getFullName(arg1) -- Line 177
	if arg1.parent then
		local any_getFullName_result1_2 = arg1.parent:getFullName()
		if any_getFullName_result1_2 then
			return any_getFullName_result1_2..' '..arg1.phrase
		end
	end
	return arg1.phrase
end
function tbl_upvr.expand(arg1) -- Line 191
	local getfenv_result1 = getfenv(arg1.callback)
	local setmetatable_result1 = setmetatable({}, {
		__index = getfenv_result1;
	})
	for i_4, v_4 in pairs(arg1.environment) do
		setmetatable_result1[i_4] = v_4
	end
	setmetatable_result1.script = getfenv_result1.script
	setfenv(arg1.callback, setmetatable_result1)
	local xpcall_result1, xpcall_result2 = xpcall(arg1.callback, function(arg1_13) -- Line 202
		return debug.traceback(tostring(arg1_13), 2)
	end)
	if not xpcall_result1 then
		arg1.loadError = xpcall_result2
	end
end
local module_6_upvr = {}
module_6_upvr.__index = module_6_upvr
function module_6_upvr.new(arg1, arg2) -- Line 217
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local module = {
		children = {};
	}
	module.testNamePattern = arg1
	module.extraEnvironment = arg2
	return setmetatable(module, module_6_upvr)
end
function module_6_upvr.addChild(arg1, arg2, arg3, arg4) -- Line 230
	--[[ Upvalues[2]:
		[1]: getModifier_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local any_new_result1 = tbl_upvr.new(arg1, arg2, arg3, getModifier_upvr(arg2, arg1.testNamePattern, arg4))
	table.insert(arg1.children, any_new_result1)
	return any_new_result1
end
function module_6_upvr.addRoot(arg1, arg2, arg3) -- Line 241
	--[[ Upvalues[1]:
		[1]: TestEnum_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 6. Error Block 2 start (CF ANALYSIS FAILED)
	local _, _, _ = ipairs(arg1.children)
	-- KONSTANTERROR: [5] 6. Error Block 2 end (CF ANALYSIS FAILED)
end
function module_6_upvr.visitAllNodes(arg1, arg2, arg3, arg4) -- Line 267
	arg4 = arg4 or 0
	local var67 = arg4
	for _, v_5 in ipairs((arg3 or arg1).children) do
		arg2(v_5, var67)
		arg1:visitAllNodes(arg2, v_5, var67 + 1)
	end
end
function module_6_upvr.visualize(arg1) -- Line 282
	local module_5_upvr = {}
	arg1:visitAllNodes(function(arg1_14, arg2) -- Line 284
		--[[ Upvalues[1]:
			[1]: module_5_upvr (readonly)
		]]
		table.insert(module_5_upvr, ' ':rep(3 * arg2)..arg1_14.phrase)
	end)
	return table.concat(module_5_upvr, '\n')
end
function module_6_upvr.findNodes(arg1, arg2) -- Line 294
	local module_4_upvr = {}
	arg1:visitAllNodes(function(arg1_15) -- Line 296
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: module_4_upvr (readonly)
		]]
		if arg2(arg1_15) then
			table.insert(module_4_upvr, arg1_15)
		end
	end)
	return module_4_upvr
end
return module_6_upvr