require './player'
require './question'
require './game'

p1 = Player.new("Alice")
p2 = Player.new("Bob")
game = Game.new

game.start(p1, p2)
