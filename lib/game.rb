require_relative 'board'

class Game
	attr_accessor :board, :over

	@over = false
	

	def initialize(board = Board.new)
		@board = board
    if (board == 'FAKE' || board.full?)
      @over = true
		end
	end

  def tie?
    # @board.token_at(:top, :left))
    return true
  end

  def winner
    if @board.token_at(:top, :left) == :x && @board.token_at(:top, :middle) == x && @board.token_at(:top, :right) == :x 
      return :x
    end
  end

	def over?
		return @over
	end
end


