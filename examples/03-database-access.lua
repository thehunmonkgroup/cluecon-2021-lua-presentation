--[[
  Example #3: Accessing a database.
]]

-- FreeSWITCH provides native ODBC database access, you just need to configure
-- ODBC for the user/database.
local dbh = freeswitch.Dbh("odbc://cluecon")
-- This method allows checking if the connection is available
-- If the assert fails, the script with throw an error.
assert(dbh:connected())

local sql = "SELECT name, hair_color FROM example"

-- A record-style table.
-- Having some fun mapping console colors to hair color.
local color_map = {
  red = "crit",
  blue = "notice",
  green = "info",
  blonde = "debug",
}

-- This function will be called once for every row returned.
local row_callback = function(data)
  local message = string.format([[%s has %s hair]], data.name, data.hair_color)
  freeswitch.consoleLog(color_map[data.hair_color], message)
end
-- Functions are first class objects in Lua, and can be passed as arguments.
dbh:query(sql, row_callback)
