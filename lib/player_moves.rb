def player_one_move
  player_one_choice = gets.to_i

  case player_one_choice
    when 1
      if @blank[0][4] == "X" || "O" 
        @blank[0][5] = "X"
      elsif @blank[0][3] == "X" || "O" 
        @blank[0][4] = "X"
      elsif @blank[0][2] == "X" || "O" 
        @blank[0][3] = "X"
      elsif @blank[0][1] == "X" || "O" 
        @blank[0][2] = "X"
      elsif @blank[0][0] == "X" || "O" 
        @blank[0][1] = "X"
      else
        @blank[0][0] = "X"
      end
    when 2
      if @blank[1][4] == "X" || "O" 
        @blank[1][5] = "X"
      elsif @blank[1][3] == "X" || "O" 
        @blank[1][4] = "X"
      elsif @blank[1][2] == "X" || "O" 
        @blank[1][3] = "X"
      elsif @blank[1][1] == "X" || "O" 
        @blank[1][2] = "X"
      elsif @blank[1][0] == "X" || "O" 
        @blank[1][1] = "X"
      else
        @blank[1][0] = "X"
      end
    when 3
      if @blank[2][4] == "X" || "O" 
        @blank[2][5] = "X"
      elsif @blank[2][3] == "X" || "O" 
        @blank[2][4] = "X"
      elsif @blank[2][2] == "X" || "O" 
        @blank[2][3] = "X"
      elsif @blank[2][1] == "X" || "O" 
        @blank[2][2] = "X"
      elsif @blank[2][0] == "X" || "O" 
        @blank[2][1] = "X"
      else
        @blank[2][0] = "X"
      end
    when 4
      if @blank[3][4] == "X" || "O" 
        @blank[3][5] = "X"
      elsif @blank[3][3] == "X" || "O" 
        @blank[3][4] = "X"
      elsif @blank[3][2] == "X" || "O" 
        @blank[3][3] = "X"
      elsif @blank[3][1] == "X" || "O" 
        @blank[3][2] = "X"
      elsif @blank[3][0] == "X" || "O" 
        @blank[3][1] = "X"
      else
        @blank[3][0] = "X"
      end
    when 5
      if @blank[4][4] == "X" || "O" 
        @blank[4][5] = "X"
      elsif @blank[4][3] == "X" || "O" 
        @blank[4][4] = "X"
      elsif @blank[4][2] == "X" || "O" 
        @blank[4][3] = "X"
      elsif @blank[4][1] == "X" || "O" 
        @blank[4][2] = "X"
      elsif @blank[4][0] == "X" || "O" 
        @blank[4][1] = "X"
      else
        @blank[4][0] = "X"
      end
    when 6
      if @blank[5][4] == "X" || "O" 
        @blank[5][5] = "X"
      elsif @blank[5][3] == "X" || "O" 
        @blank[5][4] = "X"
      elsif @blank[5][2] == "X" || "O" 
        @blank[5][3] = "X"
      elsif @blank[5][1] == "X" || "O" 
        @blank[5][2] = "X"
      elsif @blank[5][0] == "X" || "O" 
        @blank[5][1] = "X"
      else
        @blank[5][0] = "X"
      end
    when 7
      if @blank[6][4] == "X" || "O" 
        @blank[6][5] = "X"
      elsif @blank[6][3] == "X" || "O" 
        @blank[6][4] = "X"
      elsif @blank[6][2] == "X" || "O" 
        @blank[6][3] = "X"
      elsif @blank[6][1] == "X" || "O" 
        @blank[6][2] = "X"
      elsif @blank[6][0] == "X" || "O" 
        @blank[6][1] = "X"
      else
        @blank[6][0] = "X"
      end
    else 
      puts "Error."
  end
end