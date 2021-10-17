--[[
  Lua doesn't come with a JSON parsing library, but FreeSWITCH includes one.
]]

local inspect = require("inspect")
local json = freeswitch.JSON()

-- Encoding JSON.
local data = {
  foo = "bar",
  baz = "bang",
}
local encoded_json = json:encode(data)
freeswitch.consoleLog("notice", encoded_json)

-- Decoding JSON.
local webservice = require("examples.04-webservice-call")
local json_string = webservice.get_weather_data("15001")
local data = json:decode(json_string)
freeswitch.consoleLog("notice", inspect(data))

