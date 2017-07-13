class Battleship


  def initialize
    puts Welcome
    options
    @game = Game.new
  end


  def welcome
    "Welcome to BATTLESHIP"
  end

  def options
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    answer = gets.chomp.downcase
    if answer == "p" || answer == "play"
      @game
    elsif answer == "i" || answer == "instructions"
      instructions
      options
    elsif answer == "q" || answer == "quit"
      exit
    else
      puts "That's not an option. But no problem, let's get back to the option menu."
      options
    end
  end

  def instructions
    puts "Try and sink all your enemy's ships before they sink all of yours!"
    puts "You won't be able to see the computer's board so you'll have to try and guess where their ships are."
    puts "When all of the squares that your ships occupy are hit, the ship will be sunk."
    puts "The first player who sinks all of their opponents ships wins, and the game ends."
    puts "Would you like to (p)lay or (q)uit game?"
    answer = get.chomp.downcase
    if answer == "p" || answer == "play"
      @game
    elsif answer == "q" || answer == "quit"
      exit
    end    
  end

end

new_game = Battleship.new
