class TicTacToe
  @raster = [][]

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

  def won?

  end



  def print

  end

end