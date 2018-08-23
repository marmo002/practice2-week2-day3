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

puts "1. The first two in artits array are:"
2.times do |n|
  puts " - Mr #{artists[n].capitalize}"
end
puts "****************************************"
puts

puts "2. The movies and their dates:"
movies.each do |movie, year|
  puts " - #{movie.capitalize} was released in #{year}"
end
puts "****************************************"
puts

puts "3. Sort and reverse ages array:"
siblings.sort.reverse!
puts siblings
puts "****************************************"
puts

puts "4. Add Beauty and the Beast to movies hash"
movies["Beauty and the Beast"] = [1991, 2017]
puts movies
puts "****************************************"
puts
