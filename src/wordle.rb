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
    draw_board()
  end

  def draw_board
    y = 0
    @game.board.board.each do |row|
      x = 0
      row.each do |square|
        if square == 1
          c = Gosu::Color::YELLOW
        elsif square == 2
          c = Gosu::Color::GREEN
        else
          c = Gosu::Color::BLUE
        end
        draw_rect(290 + (42 * x), 77 + (47 * y), 31, 33, c, z = 1, mode = :default)
        x += 1
      end
      y += 1
    end
  end

  def update
  end

  def button_down(id)
    @game.board.keyboard.button_down_keyboard(id, mouse_x, mouse_y)
  end
end
