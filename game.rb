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
  attr_reader :player1, :player2, :current_player

  def initialize
    puts "Player 1, please enter name: "
    player1name = gets.chomp
    @player1 = Player.new(player1name)
    puts "Player 2, please enter name: "
    player2name = gets.chomp
    @player2 = Player.new(player2name)
    @current_player = @player1
  end

  def start
    while @player1.lives > 0 && @player2.lives > 0
      ask_question
    end
      puts "#{@current_player.name} is a loser!"
  end

  def switch_player
    if @current_player == @player1
      @current_player
end

