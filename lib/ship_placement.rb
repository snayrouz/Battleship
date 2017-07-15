require 'messages'


class ShipPlacement

  def cpu_small



  end

  def cpu_large



  end

  def user_small
    if validate_small_ship(coordinate_1, coordinate_2) == true
      user_small_ship = Ship.new
      user_small_ship.assign(coordinate_1)
      user_small_ship.assign(coordinate_2)
    else
      puts Messages.invalid_length
    end
    return user_small_ship
  end

  def user_large
    if validate_large_ship(coordinate_1, coordinate_2) == true
      user_large_ship.assign(coordinate_1)
      user_large_ship.assign(coordinate_2)
    else
      puts Messages.invalid_length
    end
    return user_large_ship
  end

  def validate_small_ship(coordinate_1, coordinate_2)
    x = (coordinate_1 - coordinate_2).abs
      if (x == 1) || (x == 4)
        return true #create a method to make ships once validated
      else false
      end
  end

  def validate_large_ship(coordinate_1, coordinate_2)
    x = (coordinate_1 - coordinate_2).abs
    if (x == 2) || (x == 8)
      return true #create a method to make ships once validated
    else false
    end
  end


end
