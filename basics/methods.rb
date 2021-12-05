# -------------------- splat arguments ----------------------
=begin
  - a method doesn't know how many arguments they will receive
  - this is when a splat argument comes into the picture
  - with a splat argument, we can tell the method it will receive one or more arguments
  - it's an argument preceded by a *
=end

def by_two?(number)
  puts number % 2 == 0
end

by_two?(12)
