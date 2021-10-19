--[[
  Primer - Functions
]]

function is_true(a)
  -- This variable is local to the function.
  local result = 0
  if a then
    -- This variable is local to the block.
    local message = "a is true"
    print(message)
    result = 1
  end
  return result
end

-- Functions are first class values.
a_function = is_true
a_function(true)

-- vim: number
