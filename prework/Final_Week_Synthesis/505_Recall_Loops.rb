bottles = (0..99).to_a
bottles.reverse!

for bottle in bottles
  if bottle > 1
    puts "#{bottle} bottles of beer on the wall, #{bottle} bottles of beer.\nTake one down and pass it around, #{bottle - 1} bottles of beer on the wall.\n"
  elsif bottle == 1
    puts "#{bottle} bottles of beer on the wall, #{bottle} bottles of beer.\nTake one down and pass it around, no more bottles of beer on the wall.\n"
  elsif bottle == 0
    puts "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
  end
end


