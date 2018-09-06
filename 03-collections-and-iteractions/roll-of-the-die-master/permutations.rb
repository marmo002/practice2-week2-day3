rolls1 = (1..6).to_a
rolls2 = (1..6).to_a

rolls1.each {|rollA|
  rolls2.each {|rollB|
    puts "#{rollA} #{rollB}"
  }
}
