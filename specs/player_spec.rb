require 'minitest/autorun'
require_relative '../player'
require_relative '../primary_board'
require_relative '../ship'
require_relative '../cell'

class TestPlayer < Minitest::Test

	def setup
		@player = Player.new("Adam")
		@board = Primary_Board.new(10, 10)
		@destroyer = Ship.new(4, "Destroyer")
	end

	def test_player_has_name
		assert_equal("Adam", @player.name)
	end

	def test_starts_at_0_turns
		assert_equal(1, @player.takes_turn)
	end

end 