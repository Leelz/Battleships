class Cell

# A Cell object can be either empty or full
# Instances of the cell class are used in the
# Primary Board

	attr_accessor :content

	def initialize 
		@content = "empty"
	end

	def add_ship
		@content = "full"
	end

end