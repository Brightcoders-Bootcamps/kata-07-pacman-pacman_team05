# frozen_string_literal: true

require File.join(File.dirname(__FILE__), 'pacman')
require File.join(File.dirname(__FILE__), 'gameboard')

pac  = Pacman.new
game = Gameboard.new
game.world #general el mundo
game.initial_position(@pos_x, pos_y, @pacman) #* hace que el pacman se posicione
game.modify_position(pac.actual_position)
game.print_board

loop do
    action = STDIN.gets
    gameboard.verify_wall(action)
    break if ['x']
end