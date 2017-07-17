require 'simplecov'
require 'minitest/autorun'
require 'minitest/pride'

class ShipTest < Minitest::Test

  def test_ship_exist
    ship = Ship.new

    assert_instance_of Ship, ship
  end

  def test_coordinates_are_assigned
    ship = Ship.new
    cell = 'A1'

    assert_equal 0, ship.assign('A1')
  end

  def test_on_ship
    ship = Ship.new
    cell = 'A1'

    assert ship.on_ship?(cell)
  end

  def test_in_column?
    ship = Ship.new

    assert ship.in_column?
  end

  def test_in_row?
    ship = Ship.new

    assert ship.in_row?
  end

  def test_h_or_v_position
    ship = Ship.new

    assert ship.h_or_v_postion?
  end






end
