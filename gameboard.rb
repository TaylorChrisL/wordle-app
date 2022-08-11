class Gameboard
  attr_accessor :board_guesses
  attr_reader :board

  def initialize
    @board = [
      [0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0],
    ]
    @board_guesses = []
  end

  def right_letter(row, column)
    @board[row][column] = 1
  end

  def right_place(row, column)
    @board[row][column] = 2
  end

  def winner?(turn)
    @board[turn].each do |square|
      return false if square != 2
    end
    return true
  end
end
