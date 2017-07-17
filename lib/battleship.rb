require 'colorize'
require 'messages'
require 'game'
require 'board'

class Battleship

  def initialize
    @user_board = Board.new
    @cpu_board = Board.new
  end

  def start_game
    Messages.welcome
    Messages.options
    Messages.instructions
  end

  def small_ship_placement_user
    #create method to randomize ship placement for cpu
    Messages.cpu_intro

    input = gets.chomp.upcase
    # create method to take cells inputed and assign to grid.
  end

  def large_ship_placement_user
    input = gets.chomp.upcase
    # create method to take cells inputed and assign to grid.
    # last method here will be to initiate player_shot_sequence
  end

  def player_shot_sequence
    Messages.user_turn

    input = gets.chomp.upcase
    # create player shot sequence method using the methods created in other class
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
gmae.start_game
