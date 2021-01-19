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

    def mundo
        @gameboard.push(["_ ", "_ ", "_ ", "_ ", "_ ", "_ ", "0 ", "0 ", "0 ", "0 "])
        @gameboard.push(["| ", ". ", ". ", "| ", ". ", "| ", "0 ", "0 ", "0 ", "0 "])
        @gameboard.push(["| ", ". ", "v ", ". ", ". ", "| ", "0 ", "0 ", "0 ", "0 "])
        @gameboard.push(["| ", ". ", ". ", "| ", ". ", "| ", "0 ", "0 ", "0 ", "0 "])
        @gameboard.push(["_ ", "_ ", ". ", ". ", ". ", "| ", "0 ", "0 ", "0 ", "0 "])
        @gameboard.push([". ", ". ", ". ", "| ", ". ", "| ", "0 ", "0 ", "0 ", "0 "])
        @gameboard.push(["_ ", "_ ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 "])
        @gameboard.push(["0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 ", "0 "])
    end
end
