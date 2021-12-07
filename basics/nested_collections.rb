# ------------------ NESTED COLLECTIONS --------------------
vehicles = {
  alice: {year: 2019, make: "Toyota", model: "Corolla"},
  blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
  caleb: {year: 2020, make: "Honda", model: "Accord"}
}

# access data
puts vehicles[:alice][:year]

# add data
vehicles[:david] = {year: 2020, make: "Ford", model: "F150"}
puts vehicles

# add data to nested collection
vehicles[:blake][:trim] = "Sport"
puts vehicles

puts " "
puts " "
puts " "

# ----------------------- METHODS ------------------------
# select method
# returns a new hash with only the selected keys
puts vehicles.select { |name, data| data[:year] == 2020 }

# map method
# returns a new array with the results of the block
# even when we use map!, it will still return a new array while changing the contents of the original array
string_nums = ['1', '2', '3', '4', '5']

new_array = string_nums.map(&:to_i)

puts new_array

# collect method
# same as map
# not sure why there's two different methods that do the same thign
