--[[
  This is a block comment.
]]

-- This is a comment.
-- Variable declaration.
foo = 1.25 -- Floating point numbers.
-- Can use letters, digits, and underscore.
_bar_123 = "baz" -- String.

-- Tables, the one complex data structure.
-- These can be nested.
table_1 = {10, 20, 30} -- Create an ordered list.
value = table1[1] -- value is 10.
-- Create a record-style table, this is not ordered!
table_2 = { foo = "bar", baz = "bang", }
another_value = table2.bar -- another_value is "baz".


-- Strings.
new_string = "foo" .. "bar" -- Concatenation.
another_string = [[Another way to declare]]
string.format("%s/%s", "foo", "bar") -- String formatting.

-- Conditionals
if foo == "bar" then
  -- Do some stuff
elseif foo == "baz" then
  -- Do something else
else
  -- Ok, do this
end

-- Looping.
-- 'pairs' for record-style, 'ipairs' for lists.
for i, v in pairs({ foo = "bar", baz = "bang"}) do
  print(i, v)
end

function foo(bar)
  -- This variable is local to the function.
  local result = bar - 1
  if bar < 0 then
    -- This variable is local to the if block.
    local message = "Less than 0"
    print(message)
  end
  return result
end

-- vim: number
