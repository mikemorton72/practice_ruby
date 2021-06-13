times = ["first","second","third","fourth"]
ages = []
over18 = []

for time in times do
  puts "Please enter the #{time} age: "
  ages << gets.chomp.to_i
end

for age in ages do
  if age >= 18  
    over18 << age
  end
end

p over18