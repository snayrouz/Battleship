#git
require 'colorize'


class Messages

  def initialize(input, output)
    @input = input
    @output = output
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
