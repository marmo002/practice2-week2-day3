my_dogs = [
  { :name => 'Ralph', :position => 5 },
  { :name => 'Cindy', :position => 8 },
  { :name => 'Jade', :position => 11 },
]
his_dogs = [
  { :name => 'Marly', :position => 13 },
  { :name => 'Fido', :position => 3 },
  { :name => 'Tobby', :position => 8 },
  { :name => 'Ricky', :position => 11 },
]
her_dogs = [
  { :name => 'Miguel', :position => 3 },
  { :name => 'Gato', :position => 15 },
  { :name => 'Chino', :position => 1 },
  { :name => 'Ruless', :position => 11 },
]

def get_absent_dogs(dogs)
  dogs.select do |dog|
    dog[:position] >= 10
  end
end


def call_absent_dogs(dogs)
  away_dogs =  get_absent_dogs(dogs)

  away_dogs.each do |dog|
    puts "Come back #{dog[:name]}!"
  end
end

def chase_squirrel(array, by)
  array.map! do |dog|
    {:name => dog[:name], :position => dog[:position] + by}
  end
end

def return_dogs(array)
  array.map! do |dog|
    {:name => dog[:name], :position => 0}
  end
end

puts my_dogs
puts "****************************************"
return_dogs(my_dogs)
p my_dogs
