--[[
  Primer - Looping
]]

-- Indexed-based looping, order preserved.
a = {"one", "two", "three"}
for i, v in ipairs(a) do
  print(i, v)
end

-- Table-based looping, order NOT preserved!
b = { foo = "bar", baz = "bang", }
for i, v in pairs(b) do
  print(i, v)
end

-- Infinite while loop.
while( true ) do
  print("This loop will run forever.")
end
