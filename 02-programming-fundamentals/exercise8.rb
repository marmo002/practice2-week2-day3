expenses_1 = [199.25, 36, 88.90, 137]
expenses_2 = [465, 236, 856.90, 135.98, 910.01]

def expenses_sum(array)
  expenses_total = 0
  array.each do |expense|
    expenses_total += expense
  end

  expenses_total
end

puts expenses_sum(expenses_2)
puts expenses_sum(expenses_1)
