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
    y_add = 0
    @game.board.board.each do |row|
      x = 0
      if y > 3
        y_add = 2
      elsif y > 1
        y_add = 1
      end
      x_add = 0
      row.each do |square|
        if x > 2
          x_add = 2
        elsif x > 0
          x_add = 1
        end
        if square == 1
          c = Gosu::Color::YELLOW
        elsif square == 2
          c = Gosu::Color::GREEN
        else
          c = Gosu::Color::WHITE
        end
        draw_rect(
          290 + (42 * x) + x_add,
          77 + (46 * y) + y_add,
          32, 35, c, z = 1, mode = :default
        )
        x += 1
      end
      y += 1
    end
    x_add = 0
    x = 0
    y = @game.board.board_guesses.length
    y_add = 0
    if y > 3
      y_add = 2
    elsif y > 1
      y_add = 1
    end
    @game.board.current_guess.each do |letter|
      if x > 2
        x_add = 2
      elsif x > 0
        x_add = 1
      end
      Gosu::Image.from_text(letter, 35, options = { :width => 32, :align => :center }).draw(290 + (42 * x) + x_add, 77 + (46 * y) + y_add, 2, scale_x = 1, scale_y = 1, color = Gosu::Color::BLACK)
      x += 1
    end
    y = 0
    @game.board.board_guesses.each do |row|
      x = 0
      if y > 3
        y_add = 2
      elsif y > 1
        y_add = 1
      end
      x_add = 0
      row.each do |square|
        if x > 2
          x_add = 2
        elsif x > 0
          x_add = 1
        end
        Gosu::Image.from_text(square, 35, options = { :width => 32, :align => :center }).draw(290 + (42 * x) + x_add, 77 + (46 * y) + y_add, 2, scale_x = 1, scale_y = 1, color = Gosu::Color::BLACK)
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
