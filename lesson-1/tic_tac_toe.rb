class TicTacToe

  module Logic
    WINNING_COMBINATIONS = [
        {0 => 0, 0 => 1, 0 => 2},
        {1 => 0, 1 => 1, 1 => 2},
        {2 => 0, 2 => 1, 2 => 2},

        {0 => 0, 1 => 0, 2 => 0},
        {0 => 1, 1 => 1, 2 => 1},
        {0 => 2, 1 => 2, 2 => 2},

        {0 => 0, 1 => 1, 2 => 2},
        {0 => 2, 1 => 1, 2 => 0}
    ]

    def done?
      @raster.each do |row|
        row.each do |cell|
          if cell.nil?
            return false
          end
        end
      end
      true
    end

    def full_match?(row)
      match = row.uniq
      match.length == 1 && match.first == 'X'
    end

    def won?
      WINNING_COMBINATIONS.each do |c|
        row = []
        c.each do |x,y|
          row << @raster[x][y]
        end
        return true if full_match? row
      end
      false
    end
  end

  module Renderer
    def print_border
      18.times { print '-' }
      print "\n"
    end

    def print_row(row)
      row.each do |cell|
        print "|  #{cell}  "
      end
      print "|\n"
    end

    def display
      @raster.each do |row|
        print_border
        print_row row
      end
    end
  end

  module Interaction
    def pick_position
      while true
        pos = gets.chomp
        data = /^[0-9]+$/.match(pos).to_a.first
        valid = !data.nil?
        if valid

        else
          puts "Input #{pos} not valid. Retry."
        end
        break if valid
      end
    end
  end

  include Logic
  include Renderer
  include Interaction

  def initialize
    @raster = []
    @raster << [ 'x', 'o', 'x' ]
    @raster << [ 'x', 'o', 'x' ]
    @raster << [ 'x', 'o', 'x' ]
  end





end

TicTacToe.new.display