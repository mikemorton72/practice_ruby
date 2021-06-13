# array = [5, 2, 6, 1]
array = [4,2,5,1]
sum = 0
geometric_product = 1

array.each do |n|
  n = n.to_f
  sum += n
  geometric_product *= n
end

geometric_mean = geometric_product ** (1/(array.length.to_f))
# average = sum.to_f / array.length
puts 1/array.length
puts "The sum is #{sum} and the geometric mean is #{geometric_mean}."
