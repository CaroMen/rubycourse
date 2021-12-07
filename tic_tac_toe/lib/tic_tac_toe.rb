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

  def move(index, current_player)
    @board[index] = current_player
  end

  def position_taken?(index_value)
    # if @board[index_value] == " "
    #   false
    # elsif @board[index_value] == "X" || @board[index_value] == "O"
    #   true
    # end
    @board[index_value] == "X" || @board[index_value] == "O"
  end

  def valid_move?(position)
    # @board[position] && !position_taken?(position)
    position.between?(0,8) && !position_taken?(position)
  end

  def turn_count
    @board.count { |i| i != " "}
  end

  def current_player
    turn_count.even? ? "X" : "O"
  end

  def turn
   puts "Please enter 1 - 9"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(index)
      token = current_player
      move(index, token)
    else
      turn
    end
    display_board
  end

  def won?
    WIN_COMBINATIONS.any? do |combo|
      if position_taken?(combo[0]) && @board[combo[0]] == @board[combo[1]] && @board[combo[1]] == @board[combo[2]]
        return combo
      end
    end
  end

  def full?
    @board.all? { |i| i != " "}
  end

  def draw?
    !won? && full?
  end

  def over?
    won? || full?
  end

  def winner
    if won?
      @board[won?[0]]
    end
  end

  def play
    turn until over?
    puts winner ? "Congratulations #{winner}!" : "Cats Game!"
  end
end
