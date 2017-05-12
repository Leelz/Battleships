class Ship

# Ship has responsibility for keeping track of its health and when it's sunk

	attr_accessor :health, :name, :sunk

	def initialize(health, name)
		@name = name
		@health = health
		@sunk = false
	end

	def receive_shot
		@health -= 1
		if @health == 0
			@sunk = true
		end
	end

end