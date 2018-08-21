
def letter_grade
  puts "Enter grade in percentage please"
  user_input = gets.chomp.to_i
  if user_input >= 90
    "Your percentage is #{user_input}, you've got a \"A+\""
  elsif user_input >= 80
    "Your percentage is #{user_input}, you've got a \"A\""
  elsif user_input >= 70
    "Your percentage is #{user_input}, you've got a \"A-\""
  elsif user_input >= 60
    "Your percentage is #{user_input}, you've got a \"B+\""
  elsif user_input >= 50
    "Your percentage is #{user_input}, you've got a \"B\""
  else
    "Your percentage is #{user_input}, you've got a \"C\""
  end
end

puts letter_grade
