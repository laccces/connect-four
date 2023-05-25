board = [['.' for _ in range(7)] for _ in range(6)]

divider = "-----------------------------"

print("Here's the board:")
print(divider)
for row in board:
    print("| {} | {} | {} | {} | {} | {} | {} |".format(*row))
    print(divider)
print("  1   2   3   4   5   6   7")

def player_one_turn():
    player_selection = int(input("Where would you like to move? Enter a column from 1 to 7. "))
    
    if player_selection < 1 or player_selection > 7:
        print("Error, please enter a number between 1 and 7.")
    
player_one_turn()

#    if player_selection == 1:
# if player_selection != '.':

