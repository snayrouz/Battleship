require 'simplecov'
require 'minitest/autorun'
require 'minitest/pride'

class GameTest < Minitest::Test

  def test_win_condition_starts_false
    g = Game.new

    assert_equal false, g.someone_won?
  end

  def test_it_can_set_win_condition_to_true
    g = Game.new

    g.win!
    assert_equal true, g.someone_won?
  end

  def test_it_is_players_turn_by_default
    g = Game.new

    assert_equal true, g.player_turn?
  end

  def test_it_can_set_comp_turn
    g = Game.new

    g.turn!
    assert_equal false, g.player_turn?
  end







end
