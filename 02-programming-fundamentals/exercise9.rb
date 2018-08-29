grocery_list = ["carrots", "toilet paper", "apples", "salmon"]

def output_list(array)
  puts "****************************************"
  puts "Grocery list:"
  array.each do |item|
    puts " *#{item}"
  end
  puts "****************************************"
  puts
end

def list_count(array)
  count = 0
  array.each do |item|
    count += 1
  end
  count
end

output_list(grocery_list)

grocery_list << "rice"

output_list(grocery_list)

puts "The total number of items I need to buy is:"
puts list_count(grocery_list)
puts "****************************************"
puts

if grocery_list.include? "bananas"
  puts "You need to pick up bananas today"
else
  puts "No bananas required today"
end

puts "The second item on my list is:"
puts grocery_list[1].upcase
puts "****************************************"
puts

grocery_list.sort!
output_list(grocery_list)

grocery_list.delete("salmon")
output_list(grocery_list)
