require 'simplecov'
require 'minitest/autorun'
require 'minitest/pride'

class ShipTest < Minitest::Test

  def test_ship_exist
    s = Ship.new

    assert_instance_of Ship, s
  end

  def test_coordinates_are_assigned
    s = Ship.new

    assert_equal 0, s.assign(A1)
  end

end
