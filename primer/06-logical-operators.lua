--[[
  Primer - Logical operators
]]

foo = true and false -- returns false
foo = true and "bar" -- returns "bar"
foo = false or true -- returns true
foo = "foo" or "bar" returns "foo"
foo = false or nil -- returns nil
foo = true and "bar" or "baz" -- returns bar
foo = false and "bar" or "baz" -- returns baz

-- vim: number
