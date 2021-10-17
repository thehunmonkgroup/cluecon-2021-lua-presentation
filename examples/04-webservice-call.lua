--[[
  Example #4: Calling an external webservice.
]]

local WEATHER_URL = "https://api.openweathermap.org/data/2.5/weather?zip=%s&appid=%s"

local https = require 'ssl.https' -- From LuaSec module.
local url = require("socket.url") -- From Socket module.

local zip = argv[1] -- The first argument passed to the script.
local api_key = require("private").openweathermap_api_key -- The require returns a table.

local endpoint = string.format(WEATHER_URL, url.escape(zip), url.escape(api_key))

freeswitch.consoleLog("notice", string.format([[Visiting endpoint: %s]], endpoint))

local body, status_code, headers, status_description = https.request(endpoint)

freeswitch.consoleLog("notice", string.format([[STATUS CODE: %d]], status_code))
freeswitch.consoleLog("notice", string.format([[DATA: %s]], body))
