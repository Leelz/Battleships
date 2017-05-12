require 'minitest/autorun'
require_relative '../cell'

class TestCell < Minitest::Test

	def setup
		@cell = Cell.new()
	end

	def test_content_should_start_unknown
		assert_equal("empty", @cell.content)
	end

	def test_ship_can_be_added
		@cell.add_ship
		assert_equal("full", @cell.content)
	end

end