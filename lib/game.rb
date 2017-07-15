require 'colorize'
require 'messages'
require 'user_ship_placement'
require 'cpu_ship_placement'
require 'board'

class Game

  @messages = Messages.new
  @user_win_rule = false
  @comp_win_rule = false
  @comp_ships = []
  @user_shot_count = 0
  @comp_shot_count = 0
  @start_time = Time.now
  @finish_time = Time.now

  def end_game_win
    @finish_time = Time.now
    @messages.win(@player_shot_counter, @start_time, @finish_time)
    "Well, well, well. We have a winner! Great job!".colorize(:green, :bright)
  end

  def end_game_lose
    @finish_time = Time.now
    @messages.lose(@comp_shot_counter, @start_time, @finish_time)
    "Sorry, you lose. It's a bit of a hit or miss kind of game ;)".colorize(:red, :bright)
  end

  def print_player_map
    @messages.print_player_map(@displayed_comp_board)
  end

  def print_comp_map
    @messages.print_comp_map(@player_board)
  end

  def someone_won?
    @user_win_rule || @cpu_win_rule
  end

  def user_win!
    @user_win_rule = true
  end

  def cpu_win!
    @cpu_win_rule = true
  end

  def player_turn?
    @player_turn
  end

  def turn!
    @player_turn = !@player_turn
  end

end
