, # frozen_string_literal: true

require File.join(File.dirname(__FILE__), 'gameboard')

class Pacman

    attr_reader: @pacman, @pos_x, :pos_y
    def initialize 
        default_position 
        @pacamman = ''v
    end

    def default_position
        @pos_x = 10
        @pos_y = 5
    end

    def add_score
        @score += 1
    end

    def movement(value)
        if ['w']
            @pacman = 'v'
        elsif['s']
            @pacman = '^'
        elsif['d']
            @pacman = '<'
        elsif['a']
            @pacman = '>'
        end
    end


    def actual_position(value)
        actual = @gameboard[@pos_x][@pos_y]
    end
end

game = Gameboard.new
game.mundo
game.print_board