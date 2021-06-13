def double_array_numbers(number_array)
  index = 0
  while index < number_array.length
    number_array[index] = number_array[index]*2
    index += 1
  end
  return number_array
end

puts double_array_numbers([5, 10, 15, 4, 9])