# frozen_string_literal: true

class Ghost
    attr_reader :pos_x, :pos_y

    def initialize
        @pos_x = pos_x
        @pos_y = pos_y
    end

    def eat_pacman
        puts '---------------YOU LOOSE----------------'
    end

    def actual_position(value)
        actual = @gameboard[@pos_x][@pos_y]
    end
end