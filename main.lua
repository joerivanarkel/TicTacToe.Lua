require('board')

board = new_board()

result = true
while result do
    local coord1 = io.read("*n")
    local coord2 = io.read("*n")

    board = add_token(coord1, coord2, "X")
    winner, result_type = get_winner(board, "X")
    if winner == true then
        result = false
        print_board()
        if result_type == 'draw' then
            print('It is a draw')
        else
            print('X has won')
        end
        break
    end

    board = ai_token("O")
    winner, result_type = get_winner(board, "O")

    if winner == true then
        result = false
        print_board()
        if result_type == 'draw' then
            print('It is a draw')
        else
            print('O has won')
        end
        break
    end

    print_board()

end