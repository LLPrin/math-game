# ----------------------------RUBY MATH GAME---------------------------------------------

# Create a 2-Player math game where players take turns to answer
# simple math addition problems. A new math question is generated
# for each turn by picking two numbers between 1 and 20. The player
# whose turn it is is prompted the question and must answer
# correctly or lose a life.

# no matter what you lose -_-'

# ----------------------------MAIN.RB---------------------------------------------
# This files your entry point for game

require_relative 'game'
require_relative 'player'
require_relative 'question'

game = Game.new
game.start