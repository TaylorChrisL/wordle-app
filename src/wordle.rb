require "gosu"
require_relative "words"

class Wordle < Gosu::Window
  def initialize
    super 800, 600
    self.caption = "Wordle"
    @game = Words.new
    @background = Gosu::Image.new("media/wordle_background.png", :tileable => true)
  end

  def draw
    @background.draw(0, 0, 0)
  end

  def update
  end

  def button_down(id)
    @game.board.keyboard.button_down_keyboard(id, mouse_x, mouse_y)
  end
end
