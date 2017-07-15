#git
require 'colorize'
require 'messages'
require 'board'


class Board

  def initialize(input, output)
    @messages = Messages.new(input, output)
    @input = input
    @output = output
    @win_rule = false
    @comp_win_rule = false
    @comp_ships = []
    @user_shot_count = 0
    @comp_shot_count = 0
    @finish_time = Time.now
    @start_time = Time.now
  end

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
    @win_rule || @cpu_win_rule
  end

  def win!
    @win_rule = true
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
