#git
require 'simplecov'
require 'minitest/autorun'
require 'minitest/pride'

class BattleshipTest < Minitest::test

  def test_battleship_exist
    b = Battleship.new

    assert_instance_of Battleship, b
  end

  
end
