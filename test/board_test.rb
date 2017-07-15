# require 'simplecov'
require 'minitest/autorun'
require 'minitest/pride'

class BoardTest < Minitest::Test

  def test_creates_new_board
    skip
    board = Board.new

    assert_instance_of Board, board
  end

  def test_array_length_16
    skip
    board = Board.new

    assert_equal 16, board.array.length
  end

  def test_render_to_screen
    skip
    board = Board.new

    assert board.render_to_screen
  end

  def test_valid_small_ship_returns_true
    skip
    board = Board.new

    coordinate_1 = 1
    coordinate_2 = 5

    assert board.validate_small_ship?(coordinate_1, coordinate_2)
  end

  def test_valid_large_ship_returns_true
    skip
    board = Board.new

    coordinate_1 = 0
    coordinate_2 = 8

    assert board.validate_large_ship?(coordinate_1, coordinate_2)
  end

  def test_cell_add_to_history
    skip
    board = Board.new

    cell = 5
    assert_equal [5], board.add_to_history(cell)
  end


end
