# frozen_string_literal: true

require File.join(File.dirname(__FILE__), '../app/gameboard')
requie 'rspec'

describe Pacman do
    pacman = Pacman.new

    describe '.actual_position' do
        it "returns a bidimensional array position" do
          pacman.actual_position(2)
            
        end
    end
end
