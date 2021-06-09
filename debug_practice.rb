# Exercise 1
# ORIGINAL CODE:
# greeting = gets.chomp()
# if answer["Arrr!“]
#   puts “Go away, pirate."
# elsif
#   puts “Greetings, hater of pirates!”

# MY EDITS: added end to last line and fixed quote character for strings
greeting = gets.chomp()
if greeting == "Arrr!"
  puts "Go away, pirate."
elsif
  puts "Greetings, hater of pirates!"
end



#Exercise 3
#ORIGINAL CODE:
# puts “Greetings! What is your year of origin?'
# origin == gets.chomp
# if origin < 1900
#   puts ‘That’s the past!’
# elseif origin > 1900 && origin < 2020
#   puts “That’s the present!”
# elsif
#   puts “That’s the future!”

#MY EDITS: see below
puts "Greetings! What is your year of origin?"
  origin = gets.chomp.to_i
if origin < 1900
  puts "That’s the past!"
elsif origin > 1900 && origin < 2020
  puts "That’s the present!"
else
  puts "That’s the future!"
end



#Exercise 5
#ORIGINAL CODE
# put “Input exam grade one:”
# exam_one = gets.chomp().toi
# puts ‘Input exam grade two:’
# exam_two = gets.chomp(.to_s
# puts “Input exam grade three:”
# exam_3 = gets.chomp().to_i
# def list_grade(exam_one exam_two exam_three)
#   puts “Exams: #exam_one}, #{exam_two}, {exam_three}”
# end
# def average_grade(exam_one, exam_two, exam_three)
#   average == (exam_one + exam_two + exam_three) / 3)
# end
# average = avrage_grade(exam_one, exam_two, exam_three).to_i
# def letter_grade(average-grade)
#   if average_grade < 59
#     puts “Grade: F”
#   elseif average_grade >= 60 && average_grade <= 69
#     puts “Grade: D”
#   elsif average_grade > 70 & average_grade <= 79
#     puts ‘Grade: C”
#   elseif average_grade >= 80 && average_grade <= 89
#     puts “Grade: B”
#   elsif average_grade >= 90
#     puts “Grade: A’
# end
# def pass_fail(average)
#   if average < 59
#     puts “Student is failing.
#   else puts “Student is passing.”
#   end
# end
# list_grade(exam_one, exam_two, exam_three)
# puts “Average”: #{average}”    
# lettergrade(average) 	 
# pass_fail(average)

#MY EDITS:
puts "Input exam grade one:"
exam_one = gets.chomp().to_i
puts "Input exam grade two:"
exam_two = gets.chomp.to_s
puts "Input exam grade three:"
exam_3 = gets.chomp().to_i
def list_grade(exam_one, exam_two, exam_three)
  puts "Exams: #{exam_one}, #{exam_two}, #{exam_three}"
end
def average_grade(exam_one, exam_two, exam_three)
  average = ((exam_one.to_f + exam_two.to_f + exam_three.to_f) / 3)
end
average = average_grade(exam_one, exam_two, exam_3).to_i
def letter_grade(average_grade)
  if average_grade < 59
    puts "Grade: F"
  elsif average_grade >= 60 && average_grade <= 69
    puts "Grade: D"
  elsif average_grade >= 70 && average_grade <= 79
    puts "Grade: C"
  elsif average_grade >= 80 && average_grade <= 89
    puts "Grade: B"
  elsif average_grade >= 90
    puts "Grade: A"
  end
end
def pass_fail(average)
  if average < 59
    puts "Student is failing."
  else puts "Student is passing."
  end
end
list_grade(exam_one, exam_two, exam_3)
puts "Average: #{average}"    
letter_grade(average) 	 
pass_fail(average)