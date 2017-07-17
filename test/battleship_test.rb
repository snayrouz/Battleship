#git
require 'simplecov'
require 'minitest/autorun'
require 'minitest/pride'

class BattleshipTest < Minitest::test

  def test_battleship_exist
    b = Battleship.new

    assert_instance_of Battleship, b
  end

  def test_start_game
    skip
    b = Battleship.new

    assert b.start_game
  end

  def test_small_ship_placement_user
    b = Battleship.new

    assert b.small_ship_placement_user
  end

  def test_large_ship_placement_user
    b = Battleship.new

    assert b.large_ship_placement_user
  end

  def test_player_shot_sequence
    b = Battleship.new

    assert b.player_shot_sequence
  end

  def test_cpu_shot_sequence
    b = Battleship.new

    assert b.cpu_shot_sequence
  end

  def test_end_game_sequence
    b = Battleship.new

    assert b.end_game_sequence
  end

end
