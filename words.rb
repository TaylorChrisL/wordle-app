require_relative "gameboard"

class Words
  attr_reader :turn, :board

  def initialize
    words = [
      "class",
      "https",
      "while",
      "loops",
      "codes",
      "array",
      "float",
    ]

    @board = Gameboard.new
    @turn = 0
    @word = words.sample
    turn_word_into_hash(@word)
  end

  def guess(guess)
    guess_array = guess.split("")
    # word_array = @word.split("")

    g_index = 0
    guess_array.each do |g_letter|
      if @word_hash.has_key?(g_letter)
        if @word_hash[g_letter].include?(g_index)
          @board.right_place(@turn, g_index)
        else
          @board.right_letter(@turn, g_index)
        end
      end
      g_index += 1
    end

    @turn += 1
  end

  def turn_word_into_hash(word)
    @word_hash = {}
    index = 0
    word.split("").each do |letter|
      if @word_hash.has_key?(letter)
        @word_hash[letter] << index
      else
        @word_hash[letter] = [index]
      end
      index += 1
    end
  end
end
