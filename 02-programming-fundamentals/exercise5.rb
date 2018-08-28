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

puts "1. The total population in cities hash is:"
population_sum = cities.map { |k, v| v }.sum
puts population_sum
puts "****************************************"
puts

puts "2. Print out the names of your family and friends:"
siblings_hash.each do |n, a|
  if a <= 25
    puts " -#{n.capitalize} is young"
  else
    puts " -#{n.capitalize} is not getting older, but better"
  end
end
puts "****************************************"
puts

puts "3. Print the last two colours in your array of colours:"
2.times do |e|
  colour = fav_colours[-e - 1]
  puts " -#{colour}"
end
puts "****************************************"
puts

puts "4. Increace by 1 the age on your array of ages:"
puts siblings
 siblings.map! { |e| e + 1 }
puts "****************************************"
puts siblings
puts "****************************************"
puts

puts "5. Add two colours to fav colours:"
fav_colours << "magenta"
fav_colours << "orange"
puts fav_colours
puts "****************************************"
puts
