--[[
  Primer - Tables
]]

-- Create an empty table.
foo = {}

-- Create an ordered list.
table1 = {10, 20, 30}
value = table1[1] -- value is 10

-- Create a record-style table, this is not ordered!
table2 = {
  bar = "baz",
  bang = "zoom",
}
another_value = table2.bar -- another_value is "baz"

-- vim: number
