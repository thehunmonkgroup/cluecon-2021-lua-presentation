--[[
  Example #2: Making an API call.
]]

local api = freeswitch.API()
local status = api:execute("status")
freeswitch.consoleLog("notice", status)
