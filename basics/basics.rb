# ------------------------ NUMBERS ----------------------
# Converting number types
13.to_f # converts an integer to a float
13.0.to_i # converts a float to an integer

# --------------------- NUMBER METHODS ---------------------
# even?
puts 13.even? # return false
puts 6.even? # return true

# odd?
puts 13.odd? # return true
puts 2.odd? # return false

# ---------------------- STRINGS ----------------------
# you can use single or double quotes
"hello"
'hello'

# you can concatenate strings using the shovel operator
puts "hello " << "world"

# substrings can be accessed the following ways
puts "hello"[0..2] # should return "hel" because it's inclusive

puts "hello"[0, 2] # should return "he" because it's exclusive

# -------------------- STRING METHOD --------------------
# #capitalize
puts "caro".capitalize # returns Caro

# #upcase
puts "caro".upcase # returns CARO

# downcase
puts "CARO".downcase # return caro

# #include?
puts "beanie blue".include?("lue") # return true

# split
# split works differently depending on how you use it
puts "hello there".split # would return ["hello", "there"]

# but doing .split("") on "hello"
puts "hello".split("") # returns ["h", "e", "l", "l", "o"]

# strip
# this removes the leading and trailing whitespaces of a string
puts "   hello   ".strip # returns "hello"

# ------------------- THINGS TO LOOK UP --------------------
# sub, gsub, insert, delete, prepend, gsub!

# ------------------- SYMBOLS --------------------
# strings can be changed, so when used ruby has to store it in memory even if an existing string with the same value already exists
# symbols are only stored once in memory
# symbols are faster than strings
# symbols are immutable
# symbols are typically preferred over strings as the keys in hashes

:new_symbol
