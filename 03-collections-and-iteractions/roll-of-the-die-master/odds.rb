rolls1 = (1..6).to_a
rolls2 = (1..6).to_a

totals = {}

rolls1.each {|rollA|
  rolls2.each {|rollB|
    total = rollA + rollB
    if totals[total]
      totals[total] += 1
    else
      totals[total] = 1
    end
  }
}

totals.each { |k, v|
  percentage = (v * 100) / 36.0
  puts "The odds of #{k} comming up are #{percentage.round}%"
}
