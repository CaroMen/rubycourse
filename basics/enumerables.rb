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
