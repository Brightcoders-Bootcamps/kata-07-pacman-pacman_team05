# frozen_string_literal: true

class Gameboard
    #attr_reader :pacman, :gameboard, :ghost

    def initialize
        #@pacman = Pacman.new
        @gameboard = []
        #@ghost = Ghost.new
    end

    def print_board
        @gameboard.each do |row|
            row.each {|value| print value}
            puts "\n"
        end
    end
#!      0 1 2 3 4 5 6 7 8 9 
#!    0 _ _ _ _ - ! 0 0 0 0 
#!    1 | . . | . ! 0 0 0 0 
#!    2 | . V . . ! 0 0 0 0 
#!    3 | . . | . ! 0 0 0 0  
#!    4 _ _ . . . ! 0 0 0 0 
#!    5 . . . ! . ! 0 0 0 0  
#!    6 _ _ 0 0 0 0 0 0 0 0
#!    7 0 0 0 0 0 0 0 0 0 0 
#!    8 0 0 0 0 0 0 0 0 0 0 
#!    9 0 0 0 0 0 0 0 0 0 0 




    def mundo
        @gameboard = Array.new(10) { Array.new(10)  { 0.to_s + " "}}
    
        #print_board(@gameboard)

        # for i in 1..10
        #     for j in  1..10
        #         @gameboard[i, j].push("_ ")
        #     end
        # end

        # for i in 1..10 
        #     i % 2 == 0 ?  :
        #     if i % 2 == 0
        #         @gameboard = Array.new(i) { Array.new(10)  { "_ " }}
        #     else
        #         @gameboard.push('.')
        #     end
        # end
        
    end
end

game = Gameboard.new
game.mundo
game.print_board