class Board

	attr_reader :state

	def initialize(rows, columns, cell)
		@state = Array.new(rows) { Array.new(columns, cell) }
	end

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

	def check_cell_status(x_coord, y_coord)
		return @state[x_coord][y_coord].content
	end

	def add_ship_to(x_coord, y_coord)
		@state[x_coord][y_coord]
	end

	def add_ship_horizontally(x_coord, y_coord, ship)
		(0...ship.health).each do |n|
			add_ship_to(y_coord, (x_coord + n))
		end
	end

	# def add_ship_vertically(x_coord, y_coord, ship)
	# 	(0...ship.health).each do |n|
	# 		add_ship_to((y_coord + n), x_coord ,ship)			
	# 	end
	# end


end