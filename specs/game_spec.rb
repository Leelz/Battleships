require 'minitest/autorun'
require_relative '../game'
require_relative '../cell'
require_relative '../tracking_cell'
require_relative '../player'
require_relative '../primary_board'
require_relative '../tracking_board'
require_relative '../ship'

class TestGame < Minitest::Test

	def setup
		@board1 = Primary_Board.new(10, 10)
		@board2 = Primary_Board.new(10, 10)
		@tracking_board1 = Tracking_Board.new(10, 10)
		@tracking_board2 = Tracking_Board.new(10, 10)
		@destroyer = Ship.new(4, "Destroyer")
		@player1 = Player.new("Adam")
		@player2 = Player.new("Harry")
		@players = [@player1, @player2]
		@game = Game.new(@players, @board)
	end


	def test_game_starts_with_2_players
		assert_equal(2, @game.number_of_players)
	end

	def test_game_current_player_starts_as_player_1
		assert_equal(@player1, @game.current_player)
	end

	def test_can_update_current_player
		@game.update_current_player
		assert_equal(@player2, @game.current_player)
	end

	def test_can_take_turn
		@game.next_turn(1)
		assert_equal(@player2, @game.current_player)
	end

	def test_player_hits_ship
		@board2.add_ship_horizontally(0, 0, @destroyer)
		assert_equal("full", @board2.check_cell_status(0,1))
		assert_equal("full", @board2.check_cell_status(0,2))
		assert_equal("full", @board2.check_cell_status(0,3))
		assert_equal("You hit your opponents ship!", @player1.shoot(0, 0, @board2, @tracking_board1))
		assert_equal("Argh, you got me!", @player2.your_boat_hit?(0, 0, @board2))
	end

	# def test_player_misses

	# end

	# def test_opponent_misses

	# end

	def test_winner_starts_as_nil
		assert_nil(@game.winner)
	end

	# def test_game_is_won

	# end

end