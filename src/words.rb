require_relative "gameboard"
require "csv"

VALID_SOLUTIONS = "./media/valid_solutions.csv"
VALID_GUESSES = "./media/valid_guesses.csv"

class Words
  attr_accessor :show_invalid
  attr_reader :turn, :board

  def initialize
    @a_words = []
    @b_words = []
    @c_words = []
    @d_words = []
    @e_words = []
    @f_words = []
    @g_words = []
    @h_words = []
    @i_words = []
    @j_words = []
    @k_words = []
    @l_words = []
    @m_words = []
    @n_words = []
    @o_words = []
    @p_words = []
    @q_words = []
    @r_words = []
    @s_words = []
    @t_words = []
    @u_words = []
    @v_words = []
    @w_words = []
    @x_words = []
    @y_words = []
    @z_words = []
    get_words
    @board = Gameboard.new(self)
    @turn = 0
    @show_invalid = false
    turn_word_into_hash(@word)
  end

  def get_words
    solution_words = CSV.read(VALID_SOLUTIONS)
    @word = solution_words[0].sample

    guesses = CSV.read(VALID_GUESSES)
    guesses[0].each do |guess|
      case guess.split("")[0]
      when "a"
        @a_words << guess
      when "b"
        @b_words << guess
      when "c"
        @c_words << guess
      when "d"
        @d_words << guess
      when "e"
        @e_words << guess
      when "f"
        @f_words << guess
      when "g"
        @g_words << guess
      when "h"
        @h_words << guess
      when "i"
        @i_words << guess
      when "j"
        @j_words << guess
      when "k"
        @k_words << guess
      when "l"
        @l_words << guess
      when "m"
        @m_words << guess
      when "n"
        @n_words << guess
      when "o"
        @o_words << guess
      when "p"
        @p_words << guess
      when "q"
        @q_words << guess
      when "r"
        @r_words << guess
      when "s"
        @s_words << guess
      when "t"
        @t_words << guess
      when "u"
        @u_words << guess
      when "v"
        @v_words << guess
      when "w"
        @w_words << guess
      when "x"
        @x_words << guess
      when "y"
        @y_words << guess
      when "z"
        @z_words << guess
      end
    end
  end

  def valid_guess?(guess)
    case guess.split("")[0]
    when "a"
      if @a_words.include?(guess)
        return true
      else
        return false
      end
    when "b"
      if @b_words.include?(guess)
        return true
      else
        return false
      end
    when "c"
      if @c_words.include?(guess)
        return true
      else
        return false
      end
    when "d"
      if @d_words.include?(guess)
        return true
      else
        return false
      end
    when "e"
      if @e_words.include?(guess)
        return true
      else
        return false
      end
    when "f"
      if @f_words.include?(guess)
        return true
      else
        return false
      end
    when "g"
      if @g_words.include?(guess)
        return true
      else
        return false
      end
    when "h"
      if @h_words.include?(guess)
        return true
      else
        return false
      end
    when "i"
      if @i_words.include?(guess)
        return true
      else
        return false
      end
    when "j"
      if @j_words.include?(guess)
        return true
      else
        return false
      end
    when "k"
      if @k_words.include?(guess)
        return true
      else
        return false
      end
    when "l"
      if @l_words.include?(guess)
        return true
      else
        return false
      end
    when "m"
      if @m_words.include?(guess)
        return true
      else
        return false
      end
    when "n"
      if @n_words.include?(guess)
        return true
      else
        return false
      end
    when "o"
      if @o_words.include?(guess)
        return true
      else
        return false
      end
    when "p"
      if @p_words.include?(guess)
        return true
      else
        return false
      end
    when "q"
      if @q_words.include?(guess)
        return true
      else
        return false
      end
    when "r"
      if @r_words.include?(guess)
        return true
      else
        return false
      end
    when "s"
      if @s_words.include?(guess)
        return true
      else
        return false
      end
    when "t"
      if @t_words.include?(guess)
        return true
      else
        return false
      end
    when "u"
      if @u_words.include?(guess)
        return true
      else
        return false
      end
    when "v"
      if @v_words.include?(guess)
        return true
      else
        return false
      end
    when "w"
      if @w_words.include?(guess)
        return true
      else
        return false
      end
    when "x"
      if @x_words.include?(guess)
        return true
      else
        return false
      end
    when "y"
      if @y_words.include?(guess)
        return true
      else
        return false
      end
    when "z"
      if @z_words.include?(guess)
        return true
      else
        return false
      end
    end
  end

  def guess(guess)
    p guess
    guess_array = guess.split("")

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
    @board.board_guesses << guess_array
    puts "You win" if @board.winner?(@turn)
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
