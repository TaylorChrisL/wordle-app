require "gosu"
require_relative "words"

class Wordle < Gosu::Window
  def initialize
    super 800, 600
    self.caption = "Wordle"
    @game = Words.new
  end
end
