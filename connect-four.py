board = [[' ' for _ in range(7)] for _ in range(6)]

divider = "-----------------------------"

print("Here's the board:")
print(divider)
for row in board:
    print("| {} | {} | {} | {} | {} | {} | {} |".format(*row))
    print(divider)
print("  1   2   3   4   5   6   7")

