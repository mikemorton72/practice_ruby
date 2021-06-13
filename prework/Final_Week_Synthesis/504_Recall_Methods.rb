puts "I'm thinking of a number between 1 and 100.\n"
puts "Please enter your guess:"
guess = gets.chomp.to_i
correct = 33

if guess == 33
    puts "You win!"
elsif guess > 33
    puts "Too high."
elsif guess < 33
    puts "Too low."
end


