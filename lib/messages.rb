require 'colorize'

module Messages


  def welcome
    prints "Welcome to BATTLESHIP".colorize(:cyan, :bright)
  end

  def options
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?".colorize(:cyan)
    answer = gets.chomp.downcase
    if answer == "p" || answer == "play"
      @game
    elsif answer == "i" || answer == "instructions".
      instructions
      options
    elsif answer == "q" || answer == "quit"
      exit
    else
      puts "That's not an option. But no problem, let's get back to the option menu.".colorize(:red)
      options
    end
  end

  def instructions
    puts "Try and sink all your enemy's ships before they sink all of yours!"
    puts "You won't be able to see the computer's board so you'll have to try and guess where their ships are."
    puts "When all of the squares that your ships occupy are hit, the ship will be sunk."
    puts "The first player who sinks all of their opponents ships wins, and the game ends."
    puts "Would you like to (p)lay or (q)uit game?".colorize(:cyan, :bright)
    answer = get.chomp.downcase
    if answer == "p" || answer == "play"
      @game
    elsif answer == "q" || answer == "quit"
      exit
    end
  end

  def cpu_intro
    puts "I have laid out my ships on the grid.
    \nYou now need to layout your two ships.
    \nThe first is two units long and the\nsecond is three units long.
    \nThe grid has A1 at the top left and D4 at the bottom right.
    \nEnter the coordinates for the two unit ship: ".colorize(:magenta)
  end

  def user_miss
    output.puts "You fired at #{cell} and missed!".colorize(:red, :bright)
  end

  def cpu_miss
    output.puts "Your enemy fired at #{cell} missed!".colorize(:red, :bright)
  end

  def user_invailid_placement
    output.print "Invalid ship placement, try again: ".colorize(:red, :bright)
  end

  def user_invalid_shot
    output.print "Invalid shot, try again: ".colorize(:red, :bright)
  end

  def invalid_length
    "Your ship is either too long or too short. Try again: ".colorize(:red, :bright)
  end

  def direct_hit(cell)
    "Direct hit at #{cell}!".colorize(:yellow)
  end

  def ask_for_third_ship
    "Now enter the placement coordinates for your long ship: ".colorize(:green)
  end

  def user_turn
    "It's your turn to fire! Enter your selection: ".colorize(:green)
  end

# @game = Game.new_game

end
