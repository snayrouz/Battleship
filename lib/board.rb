require 'colorize'
require 'messages'
require 'board'

class Board

    attr_reader :array, :history

  def initialize
    @placement_history = []
    @ship_positions = []
    @grid = grid
    @array = [
     "", "", "", "",
     "", "", "", "",
     "", "", "", "",
     "", "", "", ""]
  end

  def render_to_screen
    ". 1  2  3  4 \n
    A  #{@array[0]} #{@array[1]} #{@array[2]} #{@array[3]} \n
    B  #{@array[4]} #{@array[5]} #{@array[6]} #{@array[7]} \n
    C  #{@array[8]} #{@array[9]} #{@array[10]} #{@array[11]} \n
    D  #{@array[12]} #{@array[13]} #{@array[14]} #{@array[15]} \n"
  end

  def grid
    @grid = {'A1' => 0, 'B1' => 1, 'C1' => 2, 'D1' => 3,
            'A2' => 4, 'B2' => 5, 'C2' => 6, 'D2' => 7,
            'A3' => 8, 'B3' => 9, 'C3' => 10, 'D3' => 11,
            'A4' => 12, 'B4' => 13, 'C4' => 14, 'D4' => 15}
  end

  def user_small
    if validate_small_ship(cell_1, cell_2) == true
      user_small_ship = Ship.new
      user_small_ship.assign(cell_1)
      user_small_ship.assign(cell_2)
    else
      puts Messages.invalid_length
    end
    return user_small_ship
  end

  def user_large
    if validate_large_ship(cell_1, cell_2) == true
      user_large_ship = Ship.new
      user_large_ship.assign(cell_1)
      user_large_ship.assign(cell_2)
    else
      puts Messages.invalid_length
    end
    return user_large_ship
  end

  def validate_small_ship?(coordinate_1, coordinate_2)
    x = (cell_1 - cell_2).abs
      if (x == 1) || (x == 4)
        return true #create a method to make ships once validated
      else false
      end
  end

  def validate_large_ship?(cell_1, cell_2)
    x = (cell_1 - cell_2).abs
    if (x == 2) || (x == 8)
      return true #create a method to make ships once validated
    else false
    end
  end

  def add_to_history(cell)
    @placement_history << cell
  end

  def duplicate_shot?(cell)
    @placement_history.any? do |element|
      element == cell
    end
  end

  def store_placed_ships
    @placement_history = @ships.map do |ship|
      ship.location
    end
  end

  def displayed_cpu_board
    #this method will display the current cpu board view
  end

  def user_board
    #this method wil display the current user board view
  end

end
