students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22
}

staff = {
  :cohort1 => 2,
  :cohort2 => 3,
  :cohort3 => 5
}

def cohort_students(hash)
  puts
  puts "****************************************"
  hash.each do |k, v|
    puts "#{k}: #{v} students"
  end
  puts "****************************************"
  puts
end

cohort_students(students)

students[:cohort4] = 43

cohort_students(students)

puts "Lists of cohorts"
puts students.keys
puts

students.each do |k, v|
  students[k] = (v * 1.5).round
end

cohort_students(students)

students.delete(:cohort2)
cohort_students(students)

total_students = 0
students.each do |k, v|
  total_students += v
end
puts "We have a total students of"
puts total_students


cohort_students(staff)
