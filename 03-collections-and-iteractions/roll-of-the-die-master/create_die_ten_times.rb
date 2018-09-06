def roll_die
  die = Random.rand(7)

  while die == 0
    die = Random.rand(7)
  end

  "The result of your roll is #{die}"
end

10.times {
  puts roll_die
}
