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
  "titanic" => 1997,
  "pearl Haour" => 2001,
  "click" => 2006,
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

puts "1. less than 25 yo siblings:"
under_25 = siblings.select do |sibling|
  sibling <= 25
end
puts under_25
puts "****************************************"
puts

puts "2. My oldest sybling is:"
puts " #{siblings.max} years old"
puts "****************************************"
puts

puts "3. I flipped heads:"
heads = coin_flip.select { |e| e == true }
puts " #{heads.count} times"
puts "****************************************"
puts

puts "4. I removed this artist:"
puts artists.delete_at(2)
puts "****************************************"
puts

puts "5. New York population is:"
puts " #{cities[:new_york] = 999999} people"
puts "****************************************"
puts
