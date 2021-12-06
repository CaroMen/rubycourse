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

# -------------------- predicate methods ----------------------
=begin
  - a naming convention for methods that return true or false
  - you can also create your own method with a ? at the end that indicates it's a predicate method
=end

puts 5.even?
puts 4.even?
puts 10.odd?
puts 21.odd?

puts 12.between?(10, 20)
