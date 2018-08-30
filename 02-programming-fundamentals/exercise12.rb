puts "How many pizzas you want to order?"
ordered_pizzas = gets.chomp.to_i

ordered_pizzas.times { |index|
  puts
  puts "How many toppings for pizza #{ index + 1 }?"
  toppings = gets.chomp.to_i
  puts
  puts "You ordered a pizza with #{toppings} toppings!!"
}
puts
if ordered_pizzas >= 3
  puts "Because you ordered 3 or more pizzas"
  puts "YOU GOT YOURSELF CHUNKY BACON!!!!!!!"
end
