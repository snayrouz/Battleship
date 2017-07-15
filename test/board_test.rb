# require 'simplecov'
# require 'minitest/autorun'
# require 'minitest/pride'

class BoardTest < Minitest::Test

  def test_win_condition_starts_false
    b = Board.new

    assert_equal false, b.someone_won?
  end

  def test_it_can_set_win_condition_to_true
    b = Board.new

    b.win!
    assert_equal true, b.someone_won?
  end

  def test_it_is_players_turn_by_default
    b = Board.new

    assert_equal true, b.player_turn?
  end

  def test_it_can_set_comp_turn
    b = Board.new

    b.turn!
    assert_equal false, b.player_turn?
  end

end
