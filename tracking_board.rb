class Tracking_Board

attr_reader :state

	def initialize(rows, columns)
		@state = Array.new(rows) { Array.new(columns) { Cell.new } }
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

end