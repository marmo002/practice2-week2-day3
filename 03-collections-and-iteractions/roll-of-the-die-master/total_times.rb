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
  puts "#{k} occurs #{v} times"
}
