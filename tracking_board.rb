require_relative('Board')

# The Tracking Board has responsibility for instantiating a tracking board
# and filling with tracking cells

class Tracking_Board < Board

	attr_reader :state

	def initialize(rows, columns)
		@state = Array.new(rows) { Array.new(columns) { Tracking_Cell.new } }
	end

end