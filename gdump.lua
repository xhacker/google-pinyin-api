--[[
## Title: GDump
## Version: 1.3
## Date: 2010-01-11
## Author: simonw@cwowaddon.com
## URL: http://bbs.cwowaddon.com/thread-6654-1-1.html
## Notes: Use "i<gd>[object|exp]" command to show Lua object value.
]]

local GDump = {
	OutLine = "\n+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n",
	Line = "---------------------------------------------------------------------------\n",
	Style = "%-30s %-20s %s\n",
}

function GDump:Dump(input)
	local var
	local varname

	if #input == 0 then
		var = _G
		varname = "_G"
	else
		var = _G[input]
		varname = input
	end

	local title = self:GetTitleLayout()
	local varitem, pvalue = self:GetObjectLayout(varname, var)

	if (var == nil) then
		local funcitem, funcpvalue = self:GetCallLayout(input)
		return { funcpvalue, title..varitem..funcitem }

	elseif (type(var) == "table") then
		local tableitem = self:GetTableLayout(var)
		return { pvalue, title..varitem..tableitem }

	else
		return { pvalue, title..varitem }
	end
end

function GDump:GetTitleLayout()
	local result = string.format(self.Style, "Name", "Type", "Value")
	return self.OutLine..result
end

function GDump:GetObjectLayout(varname, var)
	varname = string.gsub(varname, "/", ".")
	local pvalue = tostring(var)
	local result = string.format(self.Style, varname, type(var), pvalue)
	return self.Line..result, pvalue
end

function GDump:GetTableLayout(var)
	local result = ""

	for k, v in pairs(var) do
		result = result..string.format(self.Style, k, type(v), tostring(v))
	end

	return self.Line..result
end

function GDump:GetCallLayout(var)
	local exp = string.gsub(var, "/", ".")
	local value = loadstring("return "..exp)()
	local pvalue = tostring(value)
	local result = string.format(self.Style, "Expression", type(value), pvalue)

	if (type(value) == "table") then
		return self.Line..result..self:GetTableLayout(value), pvalue
	else
		return self.Line..result, pvalue
	end
end

------------------------------------------------------------------------------------
--Global
------------------------------------------------------------------------------------
function gdump(input)
	return GDump:Dump(input)
end

ime.register_command("gd", "gdump", "DumpVars", "none", "输入对象名或表达式:")