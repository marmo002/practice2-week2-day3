def roll_die
  die = Random.rand(7)

  while die == 0
    die = Random.rand(7)
  end

  die
end

def dice
  roll1 = roll_die
  roll2 = roll_die

   puts "You rolled #{roll1} and #{roll2}"
   puts "Your total is #{roll1 + roll2}"
end

dice
