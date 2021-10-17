--[[
  Lua doesn't come with a JSON parsing library, but FreeSWITCH includes one.
]]

local json = freeswitch.JSON()
local data = {
  foo = "bar",
  baz = "bang",
}
local encoded_json = json:encode(data)
freeswitch.consoleLog("notice", encoded_json)
local json_string = [[
{
  "bing": "bang",
  "bong": "blah"
}
]]
local decoded_json = json:decode(json_string)
freeswitch.consoleLog("notice", decoded_json.bing)

