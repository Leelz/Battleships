class Tracking_Cell

# The Tracking Cell can be either unknown, full or empty
# Tracking cells make up the tracking board

	attr_accessor :content, :shot

	def initialize 
		@content = "unknown"
		@shot = false
	end

	def hit
		@content = "full"
	end

	def miss
		@content = "empty"
	end 

end