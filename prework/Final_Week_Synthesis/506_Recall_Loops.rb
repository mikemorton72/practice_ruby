#using .times method
iterations = 20
iterations.times do |i|
  puts (i+1)*5
end

puts "\n"

#using while loop
n = 1
while n <= iterations
  puts n*5
  n += 1
end
