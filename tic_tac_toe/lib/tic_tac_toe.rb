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

  def position_taken?(index_value)
    # if @board[index_value] == " "
    #   false
    # elsif @board[index_value] == "X" || @board[index_value] == "O"
    #   true
    # end
    @board[index_value] == "X" || @board[index_value] == "O"
  end

  def valid_move?(position)
    # if @board[position] == " "
    #   true
    # else
    #   false
    # end

    # @board[position] == " "

    @board[position] && !position_taken?(position)
  end

  def turn_count
    count = 0
    @board.each do |position|
      if position == "X" || position == "O"
        count += 1
      end
    end
    count
  end

  def current_player
    current_player = turn_count.even? ? "X" : "O"
    current_player
  end

  # def turn
  #   # get user input
  #   puts "Please enter 1-9:"
  #   input = gets.strip

  #   # set @user_choice to user input
  #   input_to_index(input)

  #   # check if input is valid
  #   if valid_move?(@user_choice)
  #     # use move method
  #     move(@user_choice, current_player)
  #     display_board
  #   else
  #     turn
  #   end
  # end
end
