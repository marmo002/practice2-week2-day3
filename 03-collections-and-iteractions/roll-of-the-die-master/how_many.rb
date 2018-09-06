rolls1 = (1..6).to_a
rolls2 = (1..6).to_a

total_permutations = 0

rolls1.each {|rollA|
  rolls2.each {|rollB|
    total_permutations += 1
    total = rollA + rollB
    puts "Dice Roll: #{rollA}, #{rollB} Total: #{total}"
  }
}
puts "There are #{total_permutations} total permutations"
