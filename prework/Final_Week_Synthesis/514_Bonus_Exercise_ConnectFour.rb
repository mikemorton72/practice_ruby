def new_board()
  return Array.new(7) {Array.new(6) {"-"}}
end

def print_board(main_array)
  system("clear")
  puts "Welcome to Connect 4!\nThe game can be quit at any time by typing 'quit' into the terminal.\nTo reset the board, type 'board.'\n "
  for row in main_array
    row_text = " |"
    for column in row
      row_text += " #{column}"
    end
    row_text += " |"
    puts row_text
  end
end

def add_piece(player,column,main_array)
  row_index = 0
  first_in_column = true
  while row_index < main_array.length
     if main_array[row_index][column-1] != "-"
        first_in_column = false
        main_array[row_index-1][column-1] = player
        puts "adding #{player}"
        break
      end
      row_index += 1
  end
  if first_in_column
    main_array[main_array.length-1][column-1] = player
  end
end




main_array = new_board()
print_board(main_array)
player = "X"

while true
  puts "\nPlayer #{player}'s turn!\nPlease enter a column:"
  input_check = false
  valid_inputs = (1..main_array.length-1).to_a
  valid_inputs << "quit"
  valid_inputs << "board"
  column_input = gets.chomp
  if column_input == "quit"
    break
  elsif column_input == "board"
    main_array = new_board()
    print_board(main_array)
    next
  end
  for valid_input in valid_inputs
    if column_input.to_i == valid_input
      input_check = true
    end
  end
  if input_check == false
    puts "\nInvalid column entry. Please enter a number bewtween 1 and #{main_array[0].length}."
    next
  end

  add_piece(player, column_input.to_i, main_array)
  print_board(main_array)
  if player == "X"
    player = "O"
  else
    player = "X"
  end

end

