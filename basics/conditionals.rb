# ---------------------------- CONDITIONALS ----------------------------
=begin
  - very similar to how python/javascript does
  - i'll just focus on the new methods introduced
=end

if 5.eql?(5.0)
  puts "5 is equal to 5.0"
else
  puts "5 is not equal to 5.0"
end

if "5".eql?(5)
  puts "'5' is equal to 5"
else
  puts "'5' is not equal to 5"
end

# eql? checks the value type and the actual value which is why "5" doesn't equal 5

first_val = "a"
second_val = "a"

if first_val.equal?(second_val)
  puts "first_val and second_val are the same object"
else
  puts "first_val and second_val are not the same object"
end


third_val = "b"
fourth_val = third_val

if third_val.equal?(fourth_val)
  puts "third_val and fourth_val are the same object"
else
  puts "third_val and fourth_val are not the same object"
end

# equal? will check if the values being compared both point to the exact same object in memory
# this really depends on the way computers store certain values because...

first_num = 5
second_num = 5

puts first_num.equal?(second_num) # returns true because they both point to the same object due to the way computers store integers in memory

first_float = 5.0
second_float = 5.0

puts first_float.equal?(second_float) # same situation as above
