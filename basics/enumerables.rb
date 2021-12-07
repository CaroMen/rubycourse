#  ------------------------------- ENUMERABLES ---------------------------------
=begin
  - if we want to select everything but one item in an array, we can use #select method
    - we could also use the #reject method
=end
states = ['Texas', 'California', 'Florida', 'New York', 'Ohio']

states.select { |state| state != 'Florida' }

puts states # add a ! at the end of select to remove florida from the original array

puts " "
puts " "
puts " "

new_states = states.reject { |state| state == "Texas"}

puts new_states

# reduce method
# reduces an array or hash down to a single object
# can be used when you want to get an output of a single value
# can be used to get the sum of an array

nums = [2, 4, 5, 6, 7, 10, 11, 23]
puts nums.reduce { |sum, number| sum + number }

puts " "
puts " "
puts " "

stores = ['Kroger', 'Costco', 'Target', 'Costco', 'Kroger']
new_res = stores.reduce(Hash.new(0)) do |store_hash, store|
  store_hash[store] += 1
  store_hash
end

puts new_res

puts " "
puts " "
puts " "

# ----------------------------- PREDICATE ENUMERABLES ---------------------------------
# include? method
# can be used if we want to know whether a particular item exists in an array
# will return true if the element passed in as an argument exists in the array
numbers = [2, 4, 5, 6, 7, 8, 19, 23, 45, 54]

# without include?
numbers.each do |num|
  if num == 23
    result = true
  end
end

# with include?
puts numbers.include?(23)

# any? method
# returns true if any elements in the array or hash matches the condition within the block

puts numbers.any? { |num| num >= 10}

puts numbers.count { |num| num >= 10}

# all? method
# returns true if the condition in the block applies to all of the elements in your array
words = ['hello', 'world', 'my', 'name', 'is', 'caro']

puts words.all? { |word| word.include?("a")}

# none? method
# returns true only if the condition in the block matches none of the elements in the array

puts words.none? { |word| word.include?("z")}
