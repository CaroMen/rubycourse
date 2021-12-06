# -------------------------------- ARRAYS --------------------------------
# work very similar to arrays in other languages
# zero-based indexing, ruby lets us use negative indices which will return the elements starting from the end of an array

# #first and #last method

countries = ['USA', 'Canada', 'Mexico', 'France', 'Germany', 'Italy']

puts countries.first
puts countries.last

puts " "
puts " "
puts " "

# ADDING AND REMOVING ELEMENTS
=begin
  - to add an element to an array, we can use the << (shovel) operator or the #push method
    - both of these will add an element to the end of the array and return that array with the new elements
  - the #pop method will remove the element that's at the end of the array and returns  that element
  - the #unshift method will ad an item to the beginning of the array and also returns the array with the new element
  - the #shift method will remove the element at the beginning of the array and returns that element
  - you can use #insert to add a new item to an array at a specific index
=end

arr = [1, 2, 4, 5, 6, 7]

arr.insert(2, 3)

puts arr

puts " "
puts " "
puts " "

duplicates = [1, 1, 2, 3, 3, 4, 5, 6, 7, 7]

duplicates.uniq!

puts duplicates
