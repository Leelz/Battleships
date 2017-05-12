require 'minitest/autorun'
require_relative '../tracking_board'
require_relative '../tracking_cell'

class TestTrackingBoard < Minitest::Test

  def setup
    @tracking_board = Tracking_Board.new(10, 10)
  end

  def test_board_should_have_10_rows
    assert_equal(10, @tracking_board.number_of_rows)
  end

  def test_board_should_have_10_columns
    assert_equal(10, @tracking_board.number_of_columns)
  end

  def test_board_should_have_100_cells
    assert_equal(100, @tracking_board.number_of_cells)
  end

end