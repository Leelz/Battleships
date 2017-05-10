require 'minitest/autorun'
require_relative '../board'
require_relative '../cell'
require_relative '../ship'

class TestBoard < Minitest::Test

	def setup
		@cell = Cell.new()
    	@board = Board.new(10, 10, @cell)
    	@destroyer = Ship.new(4, "Destroyer")
  	end

	def test_board_should_have_10_rows
		assert_equal(10, @board.number_of_rows)
	end

	def test_board_should_have_10_columns
		assert_equal(10, @board.number_of_columns)
	end

	def test_board_should_have_100_cells
		assert_equal(100, @board.number_of_cells)
	end

	def test_ship_added_horizontally
		@board.add_ship_horizontally(0, 0, @destroyer)
   		assert_equal("full", @board.check_cell_status(0,0))
   		assert_equal("full", @board.check_cell_status(1,0))
   		assert_equal("full", @board.check_cell_status(2,0))
   		assert_equal("full", @board.check_cell_status(3,0))
   		assert_equal("unknown", @board.check_cell_status(4,0))
   		assert_equal("unknown", @board.check_cell_status(0,1))
   		assert_equal("unknown", @board.check_cell_status(0,2))
   		assert_equal("unknown", @board.check_cell_status(0,3))
   		assert_equal("unknown", @board.check_cell_status(0,4))
 	end



end

# * 1 ship of length 5;
# * 1 ship of length 4;
# * 2 ships of length 3;
# * 1 ship of length 2;