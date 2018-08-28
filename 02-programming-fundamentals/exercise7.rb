movies_years = {
  1999 => [ "The Matrix", "Star Wars: Episode 1", "The Mummy" ],
  2009 => [ "Avatar", "Star Trek", "District 9" ],
  2019 => [ "How to train your dragon 3", "Toy Story 4", "Star Wars: Episode 9" ],
}

phone_pad = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
  ["*", 0, "#"],
]

geography = [
  numb_1 = {
    "name" => "Georgia",
    "continent" => "Europe",
    "island?" => false,
  },
  numb_2 = {
    "name" => "Japan",
    "continent" => "Asia",
    "island?" => true,
  },
  numb_3 = {
    "name" => "Denmark",
    "continent" => "Europe",
    "island?" => false,
  },
]

20.times  { |e| puts "#{e + 1}. I will not skateboard in the halls" }
puts "****************************************"
puts

message = []
20.times  do  |e|
    message << "#{e + 1}. I will not skateboard in the halls"
end
puts message
puts "****************************************"
puts

numbers_1_50 = []
50.times { |e| numbers_1_50 << e + 1}
puts numbers_1_50
puts "------"
numbers_1_50_sum = 0

numbers_1_50.each do |numb|
  numbers_1_50_sum += numb
end
puts "Total is: #{numbers_1_50_sum}"
puts "****************************************"
puts

repetition_array = []
numbers_1_50.each do |n1|
  repetition_array << n1
  repetition_array << n1
  repetition_array << n1
end
puts repetition_array
puts "****************************************"
puts

puts geography
islands = []
geography.each do |h|
  if h["island?"] == true
    islands << h["name"]
  end
end
puts islands
puts "****************************************"
puts
