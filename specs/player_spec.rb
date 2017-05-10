require 'minitest/autorun'
require_relative '../player'

class TestPlayer < Minitest::Test

	def setup
    @player = Player.new("Adam")
 	end


 	def test_player_has_name
 	 assert_equal("Adam", @player.name)
 	end

end