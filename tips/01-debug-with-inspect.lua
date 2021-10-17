--[[
  inspect.lua is a third party library that allows easy inspection of any Lua
  variable.
]]

local inspect = require("inspect")

freeswitch.consoleLog("notice", inspect(freeswitch))
