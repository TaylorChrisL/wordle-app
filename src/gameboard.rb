require_relative "keyboard"

class Gameboard
  attr_accessor :board_guesses, :current_guess, :words
  attr_reader :board, :keyboard

  def initialize(words)
    @board = [
      [0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0],
    ]
    @words = words
    @current_guess = []
    @board_guesses = []
    @keyboard = Keyboard.new(self)
    @show_invalid = false
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
