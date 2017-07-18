require 'colorize'
require './lib/messages'
require './lib/board'


# class Game
#
#     def initialize
#       @messages = Messages.new
#       @user_win_rule = false
#       @comp_win_rule = false
#       @comp_ships = []
#       @user_shot_count = 0
#       @cpu_shot_count = 0
#       @start_time = Time.now
#       @finish_time = Time.now
#     end
#
#     # have to build out shot sequence in this class for cpu and user
#
#     def end_game_win
#       @finish_time = Time.now
#       @messages.win(@user_shot_count, @start_time, @finish_time)
#       "Well, well, well. We have a winner! Great job!".colorize(:green, :bright)
#     end
#
#     def end_game_lose
#       @finish_time = Time.now
#       @messages.lose(@cpu_shot_count, @start_time, @finish_time)
#       "Sorry, you lose. It's a bit of a hit or miss kind of game ;)".colorize(:red, :bright)
#     end
#
#     def someone_won?
#       @user_win_rule || @cpu_win_rule
#     end
#
#     def user_win!
#       @user_win_rule = true
#     end
#
#     def cpu_win!
#       @cpu_win_rule = true
#     end
#
#     def user_turn?
#       @user_turn
#     end
#
#     def turn!
#       @user_turn = !@user_turn
#     end
#
#     # def render_to_screen_u
#     #   @messages.screen_user(@array_c) #need to create cpu board w/ current board status
#     # end
#     #
#     # def render_to_screen_c
#     #   @messages.screen_cpu(@array_u) #need to create user board w/ current board status
#     # end
#
#     # unsure about these methods in this class. could be in board class
#
# end
