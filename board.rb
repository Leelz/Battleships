class Board

	# The board is a super-class with functions to be 
	# inherited by Primary and Tracking Boards
	# It has no state

# Functions to validate the board

	def number_of_rows
		return @state.length
	end

	def number_of_columns
		counter = 0
		for column in @state
			counter += 1
		end
		return counter
	end

	def number_of_cells
		all_cells = Array.new
		for column in @state
			for cell in column
				all_cells.push(cell)
			end
		end
		return all_cells.length
	end

# Function to check for boat or no boat?

	def check_cell_status(x_coord, y_coord)
		return @state[x_coord][y_coord].content
	end


end