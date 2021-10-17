--[[
  Example #1: Writing to console.
]]

-- Wait three seconds.
-- freeswitch.msleep(3000)
-- An array-style table, with index keys.
local log_levels = {
  "console",
  "alert",
  "crit",
  "err",
  "warning",
  "notice",
  "info",
  "debug",
}
-- ipairs iterates by index, so order is preserved.
for _, level in ipairs(log_levels) do
  freeswitch.consoleLog(level, "Hello world!")
end
-- TODO: This prevents the ERR message in console.
--stream:write("done")
