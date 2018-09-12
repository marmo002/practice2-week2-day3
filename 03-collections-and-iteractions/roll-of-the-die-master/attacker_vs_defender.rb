def roll
  die = Random.rand(7)
  while die == 0
    die = Random.rand(7)
  end
  return die
end

##############################
#           ARMIES
##############################
players = {
  player1: {
    armies: 5,
  },
  player2: {
    armies: 5,
  }
}

def attacker_roles(player_armies)
  array = []
  case player_armies
  when 1
    array << "Not enough armies"
  when 2
    array << roll
  when 3
    2.times { array << roll }
  when 4..5
    3.times { array << roll }
  end
  return array.sort.reverse
end

def defender_roles(player_armies)
  array = []
  case player_armies
  when 1
    array << roll
  when 2..5
    2.times { array << roll }
  end
  return array.sort.reverse
end


def assigning_roles(players_hash)
  attacker_no = Random.rand(1...3)
  if attacker_no == 1
    players_hash[:player1][:is] = "A"
    players_hash[:player2][:is] = "D"
  else
    players_hash[:player2][:is] = "A"
    players_hash[:player1][:is] = "D"
  end
end

##############################
#      ASSIGNING ROLES
##############################
  assigning_roles(players)

  attacker = players.select { |k, v| v[:is] == "A" }.keys[0]
  defender = players.select { |k, v| v[:is] == "D" }.keys[0]

  a_armies = players[attacker][:armies]
  d_armies = players[defender][:armies]

  #CHECK IF ATTACKER OR DEFENDER HAVE ENOUGH ARMIES
  while a_armies > 1 && d_armies > 0

    #attack -> game on
    attacker_dices = attacker_roles(a_armies)
    defender_dices = defender_roles(d_armies)

    puts
    puts "New Battle Begins"
    puts "================="
    puts
    puts "Armies before the battle"
    puts "Attacker: #{a_armies} armies"
    puts "Defender: #{d_armies} armies"
    puts
    puts "Attacker roles  #{attacker_dices.join(", ")}"
    puts "Defenders roles #{defender_dices.join(", ")}"
    puts
    higher_armies = attacker_dices.length <=> defender_dices.length
    case higher_armies
    when -1
      i_times = defender_dices.length
    when 0
      i_times = defender_dices.length
    when 1
      i_times = attacker_dices.length
    end

    i_times.times do |e|
      rolla = attacker_dices[e]
      rollb = defender_dices[e]
      case rolla <=> rollb
      when -1
        puts "Defender wins a battle: #{rollb} beats #{rolla}"
        players[attacker][:armies]-=1
      when 0
        puts "Defender wins a battle: #{rollb} beats #{rolla}"
        players[attacker][:armies]-=1
      when 1
        puts "Attacker wins a battle: #{rolla} beats #{rollb}"
        players[defender][:armies]-=1
      end
    end
    a_armies = players[attacker][:armies]
    d_armies = players[defender][:armies]
    puts
    puts "Armies after the battle:"
    puts "Attacker: #{a_armies} armies"
    puts "Defender: #{d_armies} armies"
  end

  # run final outcome
  puts
  puts "Final Outcome"
  puts "============="
  puts
  puts "Attacker's final army count: #{a_armies}"
  puts "Defender's final army count: #{d_armies}"
  puts

  if d_armies == 0
    puts "Attacker takes this country"
  elsif a_armies == 1
    puts "Defender retains their country"
  end
  puts
