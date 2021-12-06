class TicTacToe
  WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [6, 4, 2],
    [0, 4, 8],
  ]

  def initialize
    @board = Array.new(9, " ")
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(user_input)
    @user_choice = user_input.to_i - 1
  end

  def move(index, current_player = "X")
    @board[index] = current_player
  end

  def position_taken?
    @board[@user_choice] == "X" || @board[@user_choice] == "O"
  end
end
