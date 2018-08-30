numbers = (1..100)

numbers.each do |number|
  if number % 3 == 0 && number % 5 == 0
    puts " - (#{number}) BitMaker"
  elsif number % 3 == 0
    puts " - (#{number}) Bit"
  elsif number % 5 == 0
    puts " - (#{number}) Maker"
  else
    puts " - (#{number}) "
  end
end
