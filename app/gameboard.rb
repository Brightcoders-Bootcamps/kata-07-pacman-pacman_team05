# frozen_string_literal: true

require File.join(File.dirname(__FILE__), 'pacman')
# The Gameboard class is where the game is excuted 
class Gameboard
  attr_reader :gameboard, :pacman

  def initialize
    @pacman = pacman
    @gameboard = []
  end

  #! imprime el mundo
  def print_board
    puts "\n\t SCORE:  #{@pacman.score}"
    @gameboard.each do |row|
        row.each {|value| print value}
        puts "\n"
    end
  end

  #! crea el mundo
  def world
    @gameboard.push(["_ ", "_ ", "_ ", "_ ", "_ ", "_ ", "_ ", "_ ", "_ ", "_ "])
    @gameboard.push(["| ", ". ", ". ", "| ", ". ", "| ", ". ", ". ", ". ", "| "])
    @gameboard.push(["| ", ". ", ". ", ". ", ". ", "| ", ". ", "| ", ". ", "| "])
    @gameboard.push(["| ", ". ", ". ", "| ", ". ", "| ", ". ", "| ", ". ", "| "])
    @gameboard.push(["_ ", "_ ", ". ", ". ", ". ", "| ", ". ", "| ", ". ", "| "])
    @gameboard.push([". ", ". ", ". ", "| ", ". ", "| ", ". ", "| ", ". ", "| "])
    @gameboard.push(["_ ", "_ ", ". ", "| ", ". ", "| ", ". ", "| ", ". ", "| "])
    @gameboard.push([". ", ". ", ". ", ". ", ". ", ". ", ". ", "| ", ". ", "| "])
  end


  def verify_wall
    for i in 0..9
      for j in 0..9
        if @gameboard[i][j] == "| " or @gameboard[i][j] == "_ "
          #! no deberia poder pasar a esa posicion
        else
          #! debe de poder pasar a esa posición 
        end
      end
    end
  end

  #! define la posicion inicial del pacman
  def initial_position(px, py, d)
    @gameboard[px][py] = d
  end

  def modify_position(px, py, d)
    for i in -1..1
      for j in -1..1
                #! position 3,3 pacman
                #! posiciones a buscar
                #! 2,2 3,2 y 4,3 3,4
                #!  3   3
                #! 3-1 3-1   2,2
                #! 3-0 3-1   3,2
                #! 3+1 3,0   4,3
                #! 3+0 3+1
        @gameboard[px][py] == "| " or @gameboard[px][py] == "_ "
        
      end
    end


    @gameboard[position_x][position_y] = direction
  end
end

game = Gameboard.new
game.world
game.verify_wall
#game.print_board