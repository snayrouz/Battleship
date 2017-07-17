require 'colorize'
require 'messages'
require 'board'
require 'ship'
require 'render_input'

#unsure if I need a ship_positions array, ship_list array, and placement_history. My logic is it should store in array_u and array_c

class Board

    attr_reader :array, :history, :ship_positions, :ship_list

  def initialize
    @placement_history = []
    @ship_positions = []
    @ship_list = []
    @array_u = [
     "", "", "", "",
     "", "", "", "",
     "", "", "", "",
     "", "", "", ""]
    @array_c = [
     "", "", "", "",
     "", "", "", "",
     "", "", "", "",
     "", "", "", ""]
  end

  def screen_user
    ". 1  2  3  4 \n
    A  #{@array_u[0]} #{@array_u[1]} #{@array_u[2]} #{@array_u[3]} \n
    B  #{@array_u[4]} #{@array_u[5]} #{@array_u[6]} #{@array_u[7]} \n
    C  #{@array_u[8]} #{@array_u[9]} #{@array_u[10]} #{@array_u[11]} \n
    D  #{@array_u[12]} #{@array_u13]} #{@array_u[14]} #{@array_u[15]} \n"
  end

  def screen_cpu
    ". 1  2  3  4 \n
    A  #{@array_c[0]} #{@array_c[1]} #{@array_c[2]} #{@array_c[3]} \n
    B  #{@array_c[4]} #{@array_c[5]} #{@array_c[6]} #{@array_c[7]} \n
    C  #{@array_c[8]} #{@array_c[9]} #{@array_c[10]} #{@array_c[11]} \n
    D  #{@array_c[12]} #{@array_c[13]} #{@array_c[14]} #{@array_c[15]} \n"
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
        return true ##this should also work to check overlap
      else false
      end
  end

  def validate_large_ship?(cell_1, cell_2)
    x = (cell_1 - cell_2).abs
    if (x == 2) || (x == 8)
      return true #this should also work to check overlap
    else false
    end
  end

  def add_ship_to_board(ship)
    if ship.h_or_v_postion? && !ships_overlap?(ship)
      @ship << ship
      stored_ship_list
    else
      Messages.user_invailid_placement
    end
  end

  def add_to_history(cell)
    @placement_history << cell
  end

  def store_placed_ships
    @placement_history = @ships.map do |ship|
      ship.location
    end
  end

  def ships_overlap?(ship) # do I need this if I have an empty array of strings holding the positions?
    ship.location.any? do |cell|
      ship_postions?(cell)
    end
  end

  def stored_ship_list
    @ship_positons = @ship.map do |ship|
      ship.location
    end
    stored_ship_list.flatten
  end

  def on_board?(cell)
    if (cell < 0) || (cell > array.length - 1)
      true
    else
      Messages.user_invailid_placement
    end
  end

  def display_H_or_M
    stored_ship_list
    @placement_history.each do |shot|
      if shot_in_ship_list?(shot)
        @array[shot] = "H"
      else
        @array[shot] = "M"
      end
    end
  end

  def duplicate_shot?(cell)
    @placement_history.any? do |element|
      element == cell
    end
  end

  def shot_in_ship_list?(shot)
     @ship_list.any? do |location|
       shot == location
     end
  end

end
