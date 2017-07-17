require 'Battleship'
require 'game'
require 'board'

class RenderInput

  def grid_hash
      @grid = {'A1' => 0, 'B1' => 1, 'C1' => 2, 'D1' => 3,
              'A2' => 4, 'B2' => 5, 'C2' => 6, 'D2' => 7,
              'A3' => 8, 'B3' => 9, 'C3' => 10, 'D3' => 11,
              'A4' => 12, 'B4' => 13, 'C4' => 14, 'D4' => 15}
  end

  def render(cell)
    self.grid_hash[cell]
    return value
  end

end
