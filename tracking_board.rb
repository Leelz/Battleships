require_relative('Board')

class Tracking_Board < Board

	attr_reader :state

	def initialize(rows, columns)
		@state = Array.new(rows) { Array.new(columns) { Tracking_Cell.new } }
	end

	def check_cell_status(x_coord, y_coord)
		return @state[x_coord][y_coord].content
	end

end