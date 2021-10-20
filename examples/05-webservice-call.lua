--[[
  Example #4: Calling an external webservice.
]]

-- This is a standard way of implementing a consumable module in Lua.
-- Starting with an empty table.
local _M = {}

local WEATHER_URL = "https://api.openweathermap.org/data/2.5/weather?zip=%s&appid=%s"

local https = require 'ssl.https' -- From LuaSec module.
local url = require("socket.url") -- From Socket module.

local default_api_key = require("private").openweathermap_api_key -- The require returns a table.

-- Adding a method to the module.
function _M.get_weather_data(zip, api_key)
  api_key = api_key or default_api_key
  local endpoint = string.format(WEATHER_URL, url.escape(zip), url.escape(api_key))

  freeswitch.consoleLog("notice", string.format([[Visiting endpoint: %s]], endpoint))

  local body, status_code, headers, status_description = https.request(endpoint)

  if status_code == 200 then
    freeswitch.consoleLog("notice", string.format([[DATA: %s]], body))
    return body
  else
    freeswitch.consoleLog("warning", string.format([[Could not call webservice: %s, %s]], status_code, status_description))
  end
end

-- A simple method of making this module directly callable as a script, if it
-- detects any arguments, then call the 'get_weather_data()' method with the first
-- argument.
if argv[1] then -- The first argument passed to the script.
  _M.get_weather_data(argv[1])
end

-- Return the table of methods, this is what 'require' will return in the
-- calling script.
return _M

-- vim: number
