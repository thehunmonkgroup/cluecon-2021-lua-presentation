--[[
  Example #3: Collect DTMF input from a user.
]]

KILL_DIGIT = "9"

-- The input callback function.
function on_input(s, _type, obj, arg)
  if _type == "dtmf" then
    if obj.digit == KILL_DIGIT then
      freeswitch.consoleLog("warning", string.format([[OH NO! YOU PRESSED %s, I'M OUTTA HERE...]], obj.digit))
      -- A number of these special return values impact a file that's playing
      -- at the time of the the input. See
      -- https://freeswitch.org/confluence/display/FREESWITCH/Lua+API+Reference#LuaAPIReference-session:setInputCallback
      -- for more.
      return 'break'
    else
      freeswitch.consoleLog("notice", string.format([[YOU PRESSED %s]], obj.digit))
      return ''
    end
  else
    return ''
  end
end

-- Check if the session is active (between call start and hangup).
-- Always check this if you're looping, in case the session ends.
if session:ready() then
  -- The passed callback will be called whenever there is an input event.
  session:setInputCallback("on_input", "");
  -- Plays a file into the call.
  session:streamFile("silence_stream://100000");
end

-- vim: number
