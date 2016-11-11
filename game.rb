# ----------------------------GAME.RB---------------------------------------------

# --------------------------
# |         GAME           |
# --------------------------
# | Properties             |
# | ----------             |
# | @player1               |
# | @player2               |
# | @is_running            | # Boolean. Start = True, End = False
# |                        |
# | Methods                |
# | ----------             |
# | play                   |
# | turn_new               |
# | input(str)             |
# | output(str)            |
# | generate_scores(str)   |
# | turn_new               | # 5. Switch Turns, Loop ends
# --------------------------
# * @question # can be in turn or game, your decision
# * @turn # your decision

require 'pry'

class Game
  attr_reader :player1, :player2, :current_turn

    #attr_accessor:
  def initialize
    puts "Player 1, please enter name: "
    player1name = gets.chomp
    @player1 = Player.new(player1name)
    puts "Player 2, please enter name: "

    #things you'll need in game
  end

  # def new question - prompt user

  #def verify answer

end



