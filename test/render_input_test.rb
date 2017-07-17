require 'simplecov'
require 'minitest/autorun'
require 'minitest/pride'

class RenderInputTest < Minitest::Test

  def test_grid_hash_exists
    render_input = RenderInput.new
    grid_hash = 
    assert render_input.grid_hash
  end

  def test_cell_can_return_value
    render_input = RenderInput.new
    cell = 'A1'

    assert_equal 0, render_input.render(cell)
  end

end
