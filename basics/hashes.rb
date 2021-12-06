# -------------------------------- HASHES --------------------------------
tv_shows = {
  :HBO => 'Game of Thrones',
  :AMC => 'The Walking Dead',
  :ABC => 'The Big Bang Theory'
}

dogs = {
  fido: 'Labrador',
  rover: 'Golden Retriever',
  max: 'Beagle'
}

puts tv_shows[:HBO]
puts dogs[:rover]

puts " "
puts " "
puts " "

# -------------------------------- LOOPS --------------------------------

dogs.each do |key, value|
  puts key
end

puts " "
puts " "
puts " "

football_teams = {
  :Texas_Tech => 'Weirdos',
  :Texas_A_M => 'Aggies',
  :Texas => 'Longhorns',
  :Baylor => 'Bears'
}

football_teams.each do |key, value|
  puts key
end

# fetch method
# let's you pass a given key and will return the value for that key if it exists
# if the key does not exist, you can also specify what it should return

puts football_teams.fetch(:TCU, "TCU does not exist")
puts football_teams.fetch(:UTSA) # returns key not found error
puts football_teams.fetch(:Baylor)
