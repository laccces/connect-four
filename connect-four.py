board = [['.' for _ in range(7)] for _ in range(6)]

divider = "-----------------------------"

def print_board():
    print("Here's the board:")
    print(divider)
    for row in board:
        print("| {} | {} | {} | {} | {} | {} | {} |".format(*row))
        print(divider)
    print("  1   2   3   4   5   6   7")

print_board()

def player_one_turn():
    player_selection = int(input("Where would you like to move? Enter a column from 1 to 7. "))
    
    if player_selection < 1 or player_selection > 7:
        print("Error, please enter a number between 1 and 7.")
    
    
    column = (player_selection - 1)
    row = 5
    i = 0

    while i < 6:
        if board[row][column] != '.':
            row -= 1
            i += 1
        else: 
            board[row][column] = 'X'
            break
    
    if i == 6:
        print("That column is full, please choose another")
    
player_one_turn()

print_board()

player_one_turn()

print_board()