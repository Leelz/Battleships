class Player

	# The player is responsible for firing at the opponents board
	# telling the opponent when the opponent has hit a ship.

	attr_reader :name

	def initialize(name)
		@name = name
		@turns = 0
	end

	def takes_turn
		@turns += 1
	end

	def mark_tracking_board(x_coords, y_coords, tracking_board)
		tracking_board.state[x_coords][y_coords].content = "full"
	end

	def shoot(x_coords, y_coords, opponents_board, tracking_board)
		if opponents_board.state[x_coords][y_coords].content = "full"
			return "You hit your opponents ship!"
			mark_tracking_board(x_coords, y_coords, tracking_board)
		else
			return "You missed"
		end
	end

	def your_boat_hit?(x_coords, y_coords, board)
		if board.state[x_coords][y_coords].content = "full" 
			return "Argh, you got me!"
		else
			return "haha, you missed!"
		end
	end

end