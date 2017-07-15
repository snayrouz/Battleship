require 'colorize'


class Messages

  def initialize(input, output)
    @input = input
    @output = output
  end

  def miss
    output.puts "You missed!".colorize(:blue)
  end

  def comp_miss
    output.puts "Your enemy missed!".colorize(:blue)
  end

  def invailid
    output.print "Invalid ship placement, try again: ".colorize(:red)
  end

  def invalid_shot
    output.print "Invalid shot, try again: ".colorize(:red)
  end



end
