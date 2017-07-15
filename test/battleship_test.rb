require 'simplecov'
require 'minitest/autorun'
require 'minitest/pride'

class BattleshipTest < Minitest::test

  def test_battleship_exist
    b = Battleship.new

    assert_instance_of Battleship, b
  end

  def test_welcome_message
    b = Battleship.new

    assert_equal "Welcome to BATTLESHIP", b.welcome
  end

  def test_options
    b = Battleship.new

    assert_equal , b.options
  end

  def test_instructions
    b = Battleship.new



    assert_equal , b.instructions
  end

end
