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

puts " "
puts " "
puts " "

# -------------------------------- LAMBDAS --------------------------------
# a way to write a block and save it to a variable
# useful if you're calling diff methods but passing in the same block
# to call a lambda you need to use the #call method

# two ways to create a lambda
new_lambda = lambda { puts "this is one way" }
new_lambda.call

other_lambda = -> { puts "this is another way" }
other_lambda.call

# -------------------------------- PROCS --------------------------------
# an object we can use to store blocks and pass them around like variables
# doesn't care how many arguments you pass it or if you pass any at all
# will assign nil to any parameters that you don't pass it but name

# declaring a new proc
new_proc = Proc.new { puts "this is a proc" }

# called the same way as lambdas
new_proc.call

# both blocks and lambdas can be passed as arguments to methods
def call_lambda_or_proc(lambda_or_proc)
  lambda_or_proc.call
end

lambda_to_call = -> { puts 2 * 8}

call_lambda_or_proc(lambda_to_call)

# -------------------------------- PROCS VS LAMBDAS --------------------------------
# DIFFERENCES
# procs don't care about the number of arguments you pass them or if you pass any at all
#   - it will assign nil to any parameters that you don't pass through as arguments
nested_array = [[1, 2], [3, 4], [5, 6]]
nested_array.select { |a, b| a + b > 4 } # <- this gets treated as a non-lambda proc

# a lambda will care about the number of arguments you pass it
#   - it will raise an error if you don't pass the expected number of arguments
raises_error = lambda { |a, b| puts "#{a} and #{b}"}
raises_error.call(1, 2)

# writing an explicit return inside a lambda, it will return from the lambda block back to the caller
a_lambda = -> { return "this is a lambda"}
a_lambda.call

# a proc object returns from the context in which it is called
a_prob = Proc.new { return }
a_prob.call

# SIMILARITIES
# both support default arguments the same way Ruby methods do
# both can be used as arguments to a method

# Capturing blocks
# blocks are anonymous methods
# the way we can capture blocks is by using the & operator
# if a method uses other parameters, the block-capturing & should always go last
# capturing a block with an & is known as an explicit block
#   - when you don't name it in the parameter list, it's known as an implicit block
def this_method(&block)
  block.call
end

my_block = -> { puts "this is a new block" }

this_method(&my_block)
