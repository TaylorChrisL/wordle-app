require "gosu"
require_relative "words"

class Wordle < Gosu::Window
  def initialize
    super 800, 600
    self.caption = "Wordle"
    @game = Words.new
    @background = Gosu::Image.new("media/wordle_background.png", :tileable => true)
    @play_again = false
  end

  def draw
    @background.draw(0, 0, 0)
    draw_board()
    draw_current_guess()
    draw_previous_guesses()
    draw_invalid_guess()
    draw_end_of_game()
  end

  # Draws background colors for previous guesses
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
  end

  def draw_current_guess
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
  end

  def draw_previous_guesses
    y = 0
    y_add = 0
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

  def draw_invalid_guess
    if @game.show_invalid
      Gosu::Image.from_text("Word not in Wordle Dictionary", 40, options = { :width => 200, :align => :center }).draw(30, 60, 2, scale_x = 1, scale_y = 1, color = Gosu::Color::RED)
    end
  end

  def draw_end_of_game
    if @game.board.winner?(@game.turn - 1)
      @play_again = true
      Gosu::Image.from_text("YOU WIN!!!", 40, options = { :width => 200, :align => :center }).draw(525, 60, 2, scale_x = 1, scale_y = 1, color = Gosu::Color::BLACK)
    elsif @game.turn == 6
      @play_again = true
      Gosu::Image.from_text("You Lose =(", 40, options = { :width => 200, :align => :center }).draw(525, 60, 2, scale_x = 1, scale_y = 1, color = Gosu::Color::BLACK)
    end
    if @play_again
      Gosu::Image.from_text("Press P to play again or Q to quit", 40, options = { :width => 200, :align => :center }).draw(525, 115, 2, scale_x = 1, scale_y = 1, color = Gosu::Color::BLACK)
    end
  end

  def update
  end

  def button_down(id)
    if @play_again
      if id == Gosu::KbP
        initialize()
      elsif id == Gosu::KbQ
        close
      end
    else
      @game.board.keyboard.button_down_keyboard(id, mouse_x, mouse_y)
    end
  end
end
