class Game

	attr_reader :current_player, :winner 

	def initialize(players, board)
		@players = players
		@board = board
		@current_player = players[0]
		@winner = nil;
	end

	def number_of_players
		return @players.count
	end

	def update_current_player
		@current_player = @players.rotate![0]
	end

	def next_turn(goes)
		return if(is_won?)
		update_current_player
	end

	def is_won?

	end

end