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

# Special operator known as spaceship operator
# returns -1 if the value on the left is less than the value on the right
# returns 0 if the values are equal
# returns 1 if the value on the left is greater than the value on the right

10 <=> 10 # returns 0
5 <=> 10 # returns -1
15 <=> 10 # returns 1

# ------------------------------ CASE STATEMENTS ------------------------------
=begin
  - process each condition in turn, and if the condition returns false, it will move to the next one until a match is found
  - an else clause works as a default if no match is found
  - you can assign the result of a case statement to a variable
=end

grade = 'B'

did_i_pass = case grade
  when 'A'
    'hell yeah'
  when 'B'
    'not bad'
  when 'C'
    'you can do better'
  when 'D'
    'you need to study'
  else
    'you failed'
end

puts did_i_pass

# ------------------------------ UNLESS STATEMENTS ------------------------------
# works in the opposite way of an if statement
# will only process code if the expression evaluates to false
# use an unless statement when you want to not do something if a condition is true

age = 23

unless age < 18 # 23 > 18, so this is false
  puts "here"
end
