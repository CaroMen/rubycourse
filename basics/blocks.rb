# -------------------------------- BLOCKS --------------------------------
# blocks are a way of creating methods that don't have a name
# they can be defined with either "do" and "end" or with {}

4.times do
  puts "i am one block"
end

puts " "
puts " "
puts " "

4.times { puts "with curlies"}

puts " "
puts " "
puts " "

# -------------------------------- COLLECT METHOD --------------------------------
# takes a block and applies the expression in the block to every element in an array
# this returns a new array, which means it doesn't modify the original array
# if we want to modify the original array, just add a ! at the end of collect
cities = ['Sydney', 'Dallas', 'Denver', 'Seattle']

cities.collect do |city|
  puts city.upcase
end

puts " "
puts " "
puts " "

puts cities

puts " "
puts " "
puts " "

# -------------------------------- YIELDS --------------------------------
# allows us to pass a set of additional instructions to the block

def your_name(name)
  puts "Before the yield"
  yield(name)
  puts "After the yield"
end

your_name("Caro") { |n| puts "#{n}"}
