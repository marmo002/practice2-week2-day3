# ARRAYS
fav_colours = ['blue', 'yellow', 'purple', 'red']
siblings = [31, 29, 27, 20, 22]
coin_flip = [true, false, false, true, true]
artists = ["sanz", "marc anthony", "Bruno Mars" ]
my_colours = [:blue, :yellow, :purple, :red ]


# HASHES
definitions = {
  happy: "Emotional state of joy",
  gorgeous: "Good looks of a person",
  sweet: "distintive taste of food",
}

movies = {
  titanic: 1997,
  pearl_haour: 2001,
  click: 2006,
}

cities = {
  toronto: 2809000,
  lima: 8538000,
  new_york: 37414,
}

siblings_hash = {
  alithu: 27,
  beto: 22,
  claudio: 20,
  bebe: 29,
}

puts "1. Last element of colours array is:"
puts fav_colours[-1]
puts

puts "****************************************"
puts "2. Adding new city to cities hash:"
cities[:ottawa] = 45682
puts cities
puts

puts "****************************************"
puts "3. Reverse array of coins"
coin_flip.reverse!
puts coin_flip
puts

puts "****************************************"
puts "4. Population of Lima city is"
puts cities[:lima]
puts

puts "****************************************"
puts "5. Performing artists  arrays"
artists.each { |artist|
  puts "The artist #{artist.capitalize} performs amazingly"
}
puts
