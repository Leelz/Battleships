require 'minitest/autorun'
require_relative '../tracking_cell'

class TestTrackingCell < Minitest::Test

	def setup
		@cell = Tracking_Cell.new()
  	end

	def test_content_should_start_unknown
		assert_equal("unknown", @cell.content)
	end

	def test_cell_can_be_full
		assert_equal("full", @cell.hit)
	end

	def test_cell_can_be_empty
		assert_equal("empty", @cell.miss)
	end

end