require 'simplecov'
require 'minitest/autorun'
require 'minitest/pride'

class MessagesTest < Minitest::Test

  def test_welcome_message
    m = Messages.new

    assert_equal "Welcome to BATTLESHIP", m.welcome
  end

  def test_options
    m = Messages.new

    assert_equal , m.options
  end

  def test_instructions
    m = Messages.new



    assert_equal , m.instructions
  end


  def test_comp_introduces_itself
    m = Messages.new

    assert_equal "I have laid out my ships on the grid.
    \nYou now need to layout your two ships.
    \nThe first is two units long and the\nsecond is three units long.
    \nThe grid has A1 at the top left and D4 at the bottom right.
    \nEnter the coordinates for the two unit ship: ", m.comp_intro
  end

  def test_miss_message
    m = Messages.new

    assert_equal "You fired at #{coordinate} and missed!", m.miss
  end

  def test_comp_miss_message
    m = Messages.new

    assert_equal "Your enemy fired at #{coordinate} missed!", m.comp_miss
  end

  def test_direct_hit_message
    m = Messages.new

    assert_equal "Direct hit at #{coordinate}!", m.direct_hit(coordinate)
  end

  def test_invalid_ship_placement_message
    m = Messages.new

    assert_equal "Invalid ship placement, try again: ", m.invalid
  end

  def test_invalid_shot_message
    m = Messages.new

    assert_equal "Invalid shot, try again: ", m.invalid_shot
  end

end
