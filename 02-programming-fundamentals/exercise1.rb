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

puts "1. The fliping coin"
coin_flip.each { |flip|
  if flip == true
    puts "It's heads"
  else
    puts "It's tails"
  end
}
puts

puts "****************************************"
puts "2. My first fav color is #{my_colours[0].capitalize}."
puts

puts "****************************************"
puts "3. My siblings' age in order:"
siblings.sort.each do |age|
  puts age
end
puts

puts "****************************************"
puts "4. A new baby sibling"
puts siblings << 0
puts

puts "****************************************"
puts "5. The movie \"#{movies.keys[2].capitalize}\" was lunched in the year #{movies[:click]}."
