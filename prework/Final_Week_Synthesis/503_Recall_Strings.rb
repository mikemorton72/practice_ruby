days = ["monday", "tuesday", "wednesday", "thursday", "friday", "saturday", "sunday"]
puts "Please enter a day of the week: "
userday = gets.chomp.downcase
inputcheck = false
for day in days
    if day == userday
        inputcheck = true
    end
end


if inputcheck
    if userday == "monday"
        puts "Sounds like someone has a case of the Mondays!"
    elsif userday == "saturday" || userday == "sunday"
        puts "It's the weekend. Enjoy it."
    else
        puts "Time to make the Donuts!"
    end
else
    puts "That does not compute. Try again!"
end

