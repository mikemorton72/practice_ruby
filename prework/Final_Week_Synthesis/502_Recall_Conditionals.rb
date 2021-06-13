times = ["first","second","third"]
ages = []
all18 = true

for time in times do
  puts "Please enter the #{time} age: "
  age = gets.chomp.to_i
  ages << age
  if age < 18
    all18 = false
  end
end

if all18 
  p 0
else
  p 1
end