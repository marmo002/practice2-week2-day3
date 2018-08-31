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
  "alithu" => 27,
  "beto" => 22,
  "claudio" => 20,
  "bebe" => 29,
  "dad" => 52,
  "gato" => 43,
}

puts "1. Make new array with fav colours and artists, sort it and out put it"
colours_artists = []
colours_artists << fav_colours << artists
puts colours_artists.flatten.sort
puts "****************************************"
puts

puts "2. array of ages and artists together"
siblings.each do |age|
  artists.each do |artist|
    puts " -I <3 #{artist} #{age}"
  end
end
puts "****************************************"
puts

puts "3. Use map, create new array of ages:"
puts siblings
puts
siblings_after_one_year = siblings.map { |age| age + 1}
puts siblings_after_one_year
puts "****************************************"
puts

puts "4. Use reduce to sum ages"
total_ages = siblings.reduce(0) {|total, num| total + num}
puts "The total is #{total_ages}"
puts "****************************************"
puts

puts "5. Use select on coin flip to get all heads"
heads = coin_flip.select {|coin| coin == true}
puts heads
puts "****************************************"
puts
