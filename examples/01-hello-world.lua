--[[
  Example #1: Writing to console.
]]

-- Wait three seconds.
-- freeswitch.msleep(3000)
-- An array-style table, with index keys.
local log_levels = {
  "debug",
  "info",
  "notice",
  "warning",
  "err",
  "crit",
  "alert",
  "console",
}
-- ipairs iterates by index, so order is preserved.
for _, level in ipairs(log_levels) do
  freeswitch.consoleLog(level, "Hello world!")
end
-- TODO: This prevents the ERR message in console.
--stream:write("done")
