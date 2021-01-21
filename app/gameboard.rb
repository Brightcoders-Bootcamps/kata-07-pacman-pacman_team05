# frozen_string_literal: true

#require File.join(File.dirname(__FILE__), 'pacman')
# The Gameboard class is where the game is excuted 
class Gameboard
  #attr_reader :gameboard, :pacman

  def initialize
    #@pacman = pacman
    @gameboard = []
    @plus = 1
    @less = -1
  end

  #! imprime el mundo
  def print_board
    #puts "\n\t SCORE:  #{@pacman.score}"
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

  def modify_up(posx, posy, pos)
    modify_position(posx + @less, posy, "v ")
    modify_position(posx, posy, ". ")
  end

  def modify_down(posx, posy, pos)
    modify_position(posx + @plus, posy, "^ ")
    modify_position(posx, posy, ". ")
  end

  def modify_left(posx, posy, pos)
    modify_position(posx, posy + @less, "> ")
    modify_position(posx, posy, ". ")
  end

  def modify_right(posx, posy, pos)
    modify_position(posx, posy + @plus, "< ")
    modify_position(posx, posy, ". ")
  end

  def verify_wall(posx, posy, pos)
    return modify_left(posx, posy, pos) if pos == "a" and @gameboard[posx][posy + @less] != "| "
    return modify_up(posx, posy, pos) if pos == "w" and @gameboard[posx + @less][posy] != "_ "
    return modify_right(posx, posy, pos) if pos == "d" and @gameboard[posx][posy + @plus] != "! "
    return modify_down(posx, posy, pos) if pos == "s" and @gameboard[posx + @plus][posy] != "_ "
  end

  #! define la posicion inicial del pacman
  def initial_position(px, py, d)
    @gameboard[px][py] = d
  end


  def modify_position(posx, posy, pos)
    @gameboard[posx][posy] = pos
    print_board
  end
end

game = Gameboard.new
game.world
game.initial_position(4, 2, "< ")
game.print_board
game.verify_wall(4, 2, "d")


#game.initial_position(3, 2, ">")
#game.print_board