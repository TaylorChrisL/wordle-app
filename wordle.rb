require_relative "words"

game = Words.new

while true
  p game.board.board
  puts
  p "Input your guess"
  input = gets.chomp
  game.guess(input)
end
