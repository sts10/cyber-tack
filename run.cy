
game_over = false
turn_number = 1
board = [0,0,0,0,0,0,0,0,0]

while game_over != true:
    present_board(board)


func present_board(board):
    print '{board[0]} {board[1]} {board[2]}'
    print '{board[3]} {board[4]} {board[5]}'
    print '{board[6]} {board[7]} {board[8]}'
    -- can't get this loop to work cuz I can't
    -- print on same line
    -- for board each i, space:
        --print '{i}. {space}'
