require 'colorize'


class Messages

  def welcome
    "Welcome to BATTLESHIP".colorize(:cyan, :bright)
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

  def comp_intro
    output.puts "I have laid out my ships on the grid.
    \nYou now need to layout your two ships.
    \nThe first is two units long and the\nsecond is three units long.
    \nThe grid has A1 at the top left and D4 at the bottom right.
    \nEnter the coordinates for the two unit ship: ".colorize(:magenta)
  end

  def miss
    output.puts "You fired at #{coordinate} and missed!".colorize(:blue, :bright)
  end

  def comp_miss
    output.puts "Your enemy fired at #{coordinate} missed!".colorize(:blue, :bright)
  end

  def direct_hit(coordinate)
    "Direct hit at #{coordinate}!".colorize(:yellow, :bright)
  end

  def invailid
    output.print "Invalid ship placement, try again: ".colorize(:red, :bright)
  end

  def invalid_shot
    output.print "Invalid shot, try again: ".colorize(:red, :bright)
  end




end
