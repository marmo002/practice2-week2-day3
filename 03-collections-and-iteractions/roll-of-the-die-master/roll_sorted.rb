def roll_die
  die = Random.rand(7)

  while die == 0
    die = Random.rand(7)
  end

  die
end

rolls = []

10.times {
  rolls << roll_die
}

rolls.sort!

rolls.each { |roll|
  puts "The result of your roll is #{roll}"
}
