class Keyboard
  def initialize(board)
    @board = board
  end

  def button_down_keyboard(id, mouse_x, mouse_y)
    if id == Gosu::MsLeft
      if mouse_x > 120 && mouse_x < 168 && mouse_y > 360 && mouse_y < 430
        press("q")
      elsif mouse_x > 175 && mouse_x < 223 && mouse_y > 360 && mouse_y < 430
        press("w")
      elsif mouse_x > 230 && mouse_x < 278 && mouse_y > 360 && mouse_y < 430
        press("e")
      elsif mouse_x > 285 && mouse_x < 333 && mouse_y > 360 && mouse_y < 430
        press("r")
      elsif mouse_x > 340 && mouse_x < 388 && mouse_y > 360 && mouse_y < 430
        press("t")
      elsif mouse_x > 395 && mouse_x < 443 && mouse_y > 360 && mouse_y < 430
        press("y")
      elsif mouse_x > 450 && mouse_x < 498 && mouse_y > 360 && mouse_y < 430
        press("u")
      elsif mouse_x > 505 && mouse_x < 553 && mouse_y > 360 && mouse_y < 430
        press("i")
      elsif mouse_x > 560 && mouse_x < 608 && mouse_y > 360 && mouse_y < 430
        press("o")
      elsif mouse_x > 615 && mouse_x < 663 && mouse_y > 360 && mouse_y < 430
        press("p")
      elsif mouse_x > 145 && mouse_x < 193 && mouse_y > 440 && mouse_y < 510
        press("a")
      elsif mouse_x > 200 && mouse_x < 249 && mouse_y > 440 && mouse_y < 510
        press("s")
      elsif mouse_x > 255 && mouse_x < 304 && mouse_y > 440 && mouse_y < 510
        press("d")
      elsif mouse_x > 311 && mouse_x < 359 && mouse_y > 440 && mouse_y < 510
        press("f")
      elsif mouse_x > 367 && mouse_x < 415 && mouse_y > 440 && mouse_y < 510
        press("g")
      elsif mouse_x > 423 && mouse_x < 471 && mouse_y > 440 && mouse_y < 510
        press("h")
      elsif mouse_x > 478 && mouse_x < 527 && mouse_y > 440 && mouse_y < 510
        press("j")
      elsif mouse_x > 533 && mouse_x < 582 && mouse_y > 440 && mouse_y < 510
        press("k")
      elsif mouse_x > 585 && mouse_x < 637 && mouse_y > 440 && mouse_y < 510
        press("l")
      elsif mouse_x > 120 && mouse_x < 193 && mouse_y > 520 && mouse_y < 590
        press("enter")
      elsif mouse_x > 200 && mouse_x < 249 && mouse_y > 520 && mouse_y < 590
        press("z")
      elsif mouse_x > 255 && mouse_x < 304 && mouse_y > 520 && mouse_y < 590
        press("x")
      elsif mouse_x > 311 && mouse_x < 359 && mouse_y > 520 && mouse_y < 590
        press("c")
      elsif mouse_x > 367 && mouse_x < 415 && mouse_y > 520 && mouse_y < 590
        press("v")
      elsif mouse_x > 423 && mouse_x < 471 && mouse_y > 520 && mouse_y < 590
        press("b")
      elsif mouse_x > 478 && mouse_x < 527 && mouse_y > 520 && mouse_y < 590
        press("n")
      elsif mouse_x > 533 && mouse_x < 582 && mouse_y > 520 && mouse_y < 590
        press("m")
      elsif mouse_x > 589 && mouse_x < 662 && mouse_y > 520 && mouse_y < 590
        press("backspace")
      end
    end
  end

  def press(key)
    case key
    when "a"
      @board.words.show_invalid = false
      if @board.current_guess.length < 5
        @board.current_guess << "a"
      end
    when "b"
      @board.words.show_invalid = false
      if @board.current_guess.length < 5
        @board.current_guess << "b"
      end
    when "c"
      @board.words.show_invalid = false
      if @board.current_guess.length < 5
        @board.current_guess << "c"
      end
    when "d"
      @board.words.show_invalid = false
      if @board.current_guess.length < 5
        @board.current_guess << "d"
      end
    when "e"
      @board.words.show_invalid = false
      if @board.current_guess.length < 5
        @board.current_guess << "e"
      end
    when "f"
      @board.words.show_invalid = false
      if @board.current_guess.length < 5
        @board.current_guess << "f"
      end
    when "g"
      @board.words.show_invalid = false
      if @board.current_guess.length < 5
        @board.current_guess << "g"
      end
    when "h"
      @board.words.show_invalid = false
      if @board.current_guess.length < 5
        @board.current_guess << "h"
      end
    when "i"
      @board.words.show_invalid = false
      if @board.current_guess.length < 5
        @board.current_guess << "i"
      end
    when "j"
      @board.words.show_invalid = false
      if @board.current_guess.length < 5
        @board.current_guess << "j"
      end
    when "k"
      @board.words.show_invalid = false
      if @board.current_guess.length < 5
        @board.current_guess << "k"
      end
    when "l"
      @board.words.show_invalid = false
      if @board.current_guess.length < 5
        @board.current_guess << "l"
      end
    when "m"
      @board.words.show_invalid = false
      if @board.current_guess.length < 5
        @board.current_guess << "m"
      end
    when "n"
      @board.words.show_invalid = false
      if @board.current_guess.length < 5
        @board.current_guess << "n"
      end
    when "o"
      @board.words.show_invalid = false
      if @board.current_guess.length < 5
        @board.current_guess << "o"
      end
    when "p"
      @board.words.show_invalid = false
      if @board.current_guess.length < 5
        @board.current_guess << "p"
      end
    when "q"
      @board.words.show_invalid = false
      if @board.current_guess.length < 5
        @board.current_guess << "q"
      end
    when "r"
      @board.words.show_invalid = false
      if @board.current_guess.length < 5
        @board.current_guess << "r"
      end
    when "s"
      @board.words.show_invalid = false
      if @board.current_guess.length < 5
        @board.current_guess << "s"
      end
    when "t"
      @board.words.show_invalid = false
      if @board.current_guess.length < 5
        @board.current_guess << "t"
      end
    when "u"
      @board.words.show_invalid = false
      if @board.current_guess.length < 5
        @board.current_guess << "u"
      end
    when "v"
      @board.words.show_invalid = false
      if @board.current_guess.length < 5
        @board.current_guess << "v"
      end
    when "w"
      @board.words.show_invalid = false
      if @board.current_guess.length < 5
        @board.current_guess << "w"
      end
    when "x"
      @board.words.show_invalid = false
      if @board.current_guess.length < 5
        @board.current_guess << "x"
      end
    when "y"
      @board.words.show_invalid = false
      if @board.current_guess.length < 5
        @board.current_guess << "y"
      end
    when "z"
      @board.words.show_invalid = false
      if @board.current_guess.length < 5
        @board.current_guess << "z"
      end
    when "enter"
      if @board.current_guess.length == 5
        if @board.words.valid_guess?(@board.current_guess.join)
          @board.words.guess(@board.current_guess.join)
        else
          @board.words.show_invalid = true
        end
        @board.current_guess = []
      end
    when "backspace"
      if @board.current_guess.length > 0
        @board.current_guess.pop
      end
    end
  end
end
