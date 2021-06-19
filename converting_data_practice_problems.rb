#  1. Convert an array of arrays into a hash.
#     For example, [[1, 3], [8, 9], [2, 16]] becomes {1 => 3, 8 => 9, 2 => 16}.
array = [[1, 3], [8, 9], [2, 16]]
hash = array.to_h
# p hash


#  2. Convert an array of hashes into a hash using the :id key from the array's hashes as the keys in the new hash.
#     For example, [{id: 1, color: "blue", price: 32}, {id: 2, color: "red", price: 12}] becomes {1 => {id: 1, color: "blue", price: 32}, 2 => {id: 2, color: "red", price: 12}}.
array = [{id: 1, color: "blue", price: 32}, {id: 2, color: "red", price: 12}]
hash = {}
array.each {|inner_hash| hash[inner_hash[:id]] = inner_hash}
# p hash


#  3. Convert a string into a hash with keys for each letter in the string and values for the number of times the letter appears in the string.
#     For example, "bookkeeper" becomes {"b" => 1, "o" => 2, "k" => 2, "e" => 3, "p" => 1, "r" => 1}.
string = "bookkeeper"
letter_hash = Hash.new(0) #this makes default value of an undefinied key = 0
string.chars.each {|letter| letter_hash[letter] += 1}
# p letter_hash


#  4. Convert a hash into an array of arrays.
#     For example, {"chair" => 100, "book" => 14} becomes [["chair", 100], ["book", 14]].
hash = {"chair" => 100, "book" => 14}
array = []
hash.each {|k,v| array << [k, v]}
# p array


#  5. Convert a hash into an array of hashes using the keys from each hash as the :id key in each of the array's hashes.
#     For example, {321 => {name: "Alice", age: 31}, 322 => {name: "Maria", age: 27}} becomes [{id: 321, name: "Alice", age: 31}, {id: 322, name: "Maria", age: 27}].
hash = {321 => {name: "Alice", age: 31}, 322 => {name: "Maria", age: 27}}
array = []
hash.each {|k, v| array << {id: k, name: v[:name], age: v[:age]}}
# p array


#  6. Convert an array of strings into a hash with keys for each string in the array and values for the number of times the string appears in the array.
#     For example, ["do", "or", "do", "not"] becomes {"do" => 2, "or" => 1, "not" => 1}.
array = ["do", "or", "do", "not"]
word_hash = Hash.new(0)
array.each {|word| word_hash[word] += 1}
# p word_hash


#  7. Convert a hash into a flat array containing all the hash’s keys and values.
#     For example, {"a" => 1, "b" => 2, "c" => 3, "d" => 4} becomes ["a", 1, "b", 2, "c", 3, "d", 4].
hash = {"a" => 1, "b" => 2, "c" => 3, "d" => 4}
hash = hash.flatten
# p hash


#  8. Combine data from a hash with names and prices and an array of hashes with names, colors, and weights to make a new hash.
#     For example, {"chair" => 75, "book" => 15} and [{name: "chair", color: "red", weight: 10}, {name: "book", color: "black", weight: 1}] becomes {"chair" => {price: 75, color: "red", weight: 10}, "book" => {price: 15, color: "black", weight: 1}}.
price_hash = {"chair" => 75, "book" => 15}
description_hashes = [{name: "chair", color: "red", weight: 10}, {name: "book", color: "black", weight: 1}]
new_hash = {}
description_hashes.each do |description_hash|
  new_hash[description_hash[:name]] = {price: price_hash[description_hash[:name]], color: description_hash[:color], weight: description_hash[:weight]}
end
# p new_hash


#  9. Convert an array of hashes into a hash of arrays, using the author as keys and the titles as values.
#     For example, [{author: "Jeff Smith", title: "Bone"}, {author: "George Orwell", title: "1984"}, {author: "Jeff Smith", title: "RASL"}] becomes {"Jeff Smith" => ["Bone", "RASL"], "George Orwell" => ["1984"]}.
array_of_hashes = [{author: "Jeff Smith", title: "Bone"}, {author: "George Orwell", title: "1984"}, {author: "Jeff Smith", title: "RASL"}]
hash_of_arrays = {}
array_of_hashes.each do |hash|
  if hash_of_arrays[hash[:author]]
    hash_of_arrays[hash[:author]] << hash[:title]
  else
    hash_of_arrays[hash[:author]] = [hash[:title]]
  end
end
# p hash_of_arrays


# 10. Given a hash, create a new hash that has the keys and values switched.
#     For example, {"a" => 1, "b" => 2, "c" => 3} becomes {1 => "a", 2 => "b", 3 => "c"}.
hash = {"a" => 1, "b" => 2, "c" => 3}
inverted_hash = hash.invert
# p inverted_hash