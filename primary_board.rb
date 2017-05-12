require_relative('Board')

# The primary board where the player places his/her boats

class Primary_Board < Board

attr_reader :state

	def initialize(rows, columns)
		@state = Array.new(rows) { Array.new(columns) { Cell.new } }
	end

	def add_ship_to(x_coord, y_coord)
		@state[x_coord][y_coord].add_ship
	end

	def add_ship_horizontally(x_coord, y_coord, ship)
		(0...ship.health).each do |n|
			add_ship_to(y_coord, (x_coord + n))
		end
	end

	def add_ship_vertically(x_coord, y_coord, ship)
		(0...ship.health).each do |n|
			add_ship_to((y_coord + n), x_coord)			
		end
	end

end