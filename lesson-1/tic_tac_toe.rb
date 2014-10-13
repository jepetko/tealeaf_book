class TicTacToe

  module Logic
    WINNING_COMBINATIONS = [
        [{0 => 0}, {0 => 1}, {0 => 2}],
        [{1 => 0}, {1 => 1}, {1 => 2}],
        [{2 => 0}, {2 => 1}, {2 => 2}],

        [{0 => 0}, {1 => 0}, {2 => 0}],
        [{0 => 1}, {1 => 1}, {2 => 1}],
        [{0 => 2}, {1 => 2}, {2 => 2}],

        [{0 => 0}, {1 => 1}, {2 => 2}],
        [{0 => 2}, {1 => 1}, {2 => 0}]
    ]

    def done?
      @raster.each do |row|
        row.each do |cell|
          if cell.empty?
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
        c.each do |line|
          line.each do |x,y|
            row << @raster[x][y]
          end
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
        print "|  #{cell.empty? ? ' ' : cell}  "
      end
      print "|\n"
    end

    def display
      @raster.each do |row|
        print_border
        print_row row
      end
      print_border
    end
  end

  module Interaction

    def occupy_position(pos, type = 'X')
      data = /^[0-9]$/.match(pos.to_s).to_a.first
      valid = !data.nil?
      if valid
        data = data.to_i
        row = (data-1)/3
        cell = data - row*3 - 1
        return false if !@raster[row][cell].empty?
        @raster[row][cell] = type
      end
      valid
    end

    def pick_position
      while true
        puts 'Pick a position:'
        pos = gets.chomp
        valid = occupy_position pos, 'X'
        if valid
          break
        else
          puts "Your input on #{pos} is not valid. Retry."
        end
      end
    end

    def pick_by_pc
      return if done?
      while true
        pos = Random.rand(0..9)
        valid = occupy_position pos, 'O'
        if valid
          break
        end
      end
    end
  end

  include Logic
  include Renderer
  include Interaction

  def initialize
    @raster = []
    3.times do
      @raster << []
      (0..2).each do
        @raster.last << ''
      end
    end
  end

  def start
    system 'clear'
    display
    loop do
      pick_position
      pick_by_pc
      system 'clear'
      display
      if won?
        puts 'Congratulations! you won!'
        break
      elsif done?
        puts 'Sorry. PC is more clever.'
        break
      end
    end
  end
end

TicTacToe.new.start