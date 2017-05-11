require 'minitest/autorun'
require_relative '../tracking_board'

class TestTrackingBoard < Minitest::Test

	def setup
    	@tracking_board = Tracking_Board.new(10, 10)
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

  def test_hit_when_ship_present
    assert_equal("full", @board.shoot(0,0))
  end

  def test_miss_when_ship_absent
    assert_equal("empty", @board.shoot(0,0))
  end



end