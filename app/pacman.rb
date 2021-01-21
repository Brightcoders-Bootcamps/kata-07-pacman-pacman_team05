# frozen_string_literal: true

require File.join(File.dirname(__FILE__), 'gameboard')

# Pacman is where we give the methods and attributes 
class Pacman

    attr_reader :pacman, :pos_x, :pos_y
    def initialize 
        default_position 
        @pacman = 'v'
    end

    def default_position
        @pos_x = 10
        @pos_y = 5
    end

    def add_score
        @score += 1
    end

    def position(value)
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
        puts actual
        add_score if actual_position = '. '
    end
end



