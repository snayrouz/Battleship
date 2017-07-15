

require 'board'

class Ship

  attr_reader :location

  def initialize
    @location = []
  end

  def assign(cell)
    @location << cell
  end






end
