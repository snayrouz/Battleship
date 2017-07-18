require 'colorize'
require 'messages'
# require 'game'
require 'board'
require 'render_input'

class Battleship
  include Messages
  include RenderInput

  def initialize
    @user_board = Board.new
    @cpu_board = Board.new
  end

  def start_game
    Messages.welcome
    Messages.options
    Messages.instructions
    Messages.cpu_intro
  end

  def user_place_ship_sequence
    input = gets.chomp.upcase

    placed_cell = input.split
    cell_1 = RenderInput.render(placed_cell[0])
    cell_2 = RenderInput.render(placed_cell[0])

    ship_1 = @user_board.user_small(cell_1, cell_2)
    @user_board.add_ship_to_board(ship_1)
    user_place_large_sequence
  end

  def user_place_large_sequence
    input = gets.chomp.upcase

    placed_cell = input.split
    cell_1 = RenderInput.render(placed_cell[0])
    cell_2 = RenderInput.render(placed_cell[-2])

    ship_2 = @user_board.user_small(cell_1, cell_2)
    @user_board.add_ship_to_board(ship_2)
    player_shot_sequence
  end

  def player_shot_sequence
    Messages.user_turn

    input = gets.chomp.upcase
    placed_cell = input
    cell = RenderInput.render(placed_cell)
    if @cpu_board.on_board?(cell)
      Messages.user_invalid_shot
      player_shot_sequence
    elsif @cpu_board.duplicate_shot(cell)
      Messages.user_invalid_shot
    elsif @cpu_board.shot_in_ship_list?(cell)
      @cpu_board.add_to_history(cell)
      Messages.direct_hit(cell)
    else
      @cpu_board.add_to_history(cell)
      Messages.user_miss
    end
  end

  def cpu_shot_sequence
    #method that iterates through filled grid to see what's available for cpu to shoot at
    player_shot_sequence
  end

  def end_game_sequence
    # grab methods from Game to test if someone has won or not, then output message for end of game depending on winner
    # play again method or exit game?
  end



end


game = Battleship.new
game.start_game
