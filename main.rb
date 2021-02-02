require './game.rb'
require './player.rb'

p1 = Player.new("Player 1")
p2 = Player.new("Player 2")
game = Game.new(p1, p2)
game.start

while gets.chomp == 'y'
  game.start
end

exit