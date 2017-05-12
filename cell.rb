class Cell

	attr_accessor :content

	def initialize 
		@content = "empty"
		@shot = false
	end

	def add_ship
		@content = "full"
	end

end