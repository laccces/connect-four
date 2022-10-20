def player_one_move
  player_one_choice = gets.to_i

  case player_one_choice
    when 1
      if board[0][6] == X || O 
        board[0][7] = X
      elsif board[0][5] == X || O 
        board[0][6] = X
      elsif board[0][4] == X || O 
        board[0][5] = X
      elsif board[0][3] == X || O 
        board[0][4] = X
      elsif board[0][2] == X || O 
        board[0][3] = X
      elsif board[0][1] == X || O 
        board[0][2] = X
      else
        board[0][1] = X
      end
    when 2
      
    when 3
      
    when 4
      
    when 5
      
    when 6
      
    when 7
      
    else 
      puts "Error."
  end
end