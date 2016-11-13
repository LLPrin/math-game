# ----------------------------GAME.RB---------------------------------------------

# --------------------------

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
      question
    end
      puts "#{@current_player.name} is a loser!"
  end

  def switch_player
    if @current_player == @player1
      @current_player = @player2
      puts "#{current_player.name}'s turn!"
  end
end

  def question
    new_question = Question.new
    puts
    puts "#{new_question.generate_question}"
    player_answer = gets.chomp
    check = new_question.verify_answer(player_answer)
    if check == true
      puts "You dun did good."
      puts "#{@current_player.name} score: #{current_player.lives}"
    else
      puts
      puts "WRONG."
      @current_player.lives -= 1
      puts
      puts "#{current_player.name}'s score: #{current_player.lives}"
      puts
    end

  switch_player

  end
end

