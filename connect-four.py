print("Connect Four. Get four in a row vertically, horizontally or diagonally before your opponent to win.")

player_one = input("Player 1, enter your name: ")
player_two = input("Player 2, enter your name: ")

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
    while True:
        player_selection = input(player_one + ", where would you like to move? Enter a column number from 1 to 7. ")
        if player_selection.isdigit():
            player_selection = int(player_selection)
            if 1 <= player_selection <= 7:
                break
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
    
def player_two_turn():
    while True:
        player_selection = input(player_two + ", where would you like to move? Enter a column number from 1 to 7. ")
        if player_selection.isdigit():
            player_selection = int(player_selection)
            if 1 <= player_selection <= 7:
                break
        print("Error, please enter a number between 1 and 7.")

    column = (player_selection - 1)
    row = 5
    i = 0

    while i < 6:
        if board[row][column] != '.':
            row -= 1
            i += 1
        else: 
            board[row][column] = '0'
            break
    
    if i == 6:
        print("That column is full, please choose another")


def check_win(board):
# check horizontal spaces
    for row in range(len(board)):
        for col in range(len(board[0]) - 3):
            if board[row][col] == board[row][col + 1] == board[row][col + 2] == board[row][col + 3] != '.':
                return True

    # check vertical spaces
    for row in range(len(board) - 3):
        for col in range(len(board[0])):
            if board[row][col] == board[row + 1][col] == board[row + 2][col] == board[row + 3][col] != '.':
                return True

    # check / diagonal spaces
    for row in range(len(board) - 3):
        for col in range(len(board[0]) - 3):
            if board[row][col] == board[row + 1][col + 1] == board[row + 2][col + 2] == board[row + 3][col + 3] != '.':
                return True

    # check \ diagonal spaces
    for row in range(3, len(board)):
        for col in range(len(board[0]) - 3):
            if board[row][col] == board[row - 1][col + 1] == board[row - 2][col + 2] == board[row - 3][col + 3] != '.':
                return True

    return False


def play_game():
    while True:
        player_one_turn()
        
        game_over = check_win(board)
        if game_over == True:
            print_board()
            print(player_one + " wins!")
            break
        else: print_board()

        player_two_turn()
        
        game_over = check_win(board)
        if game_over == True:
            print_board()
            print(player_two + " wins!")
            break
        else: print_board()

play_game()