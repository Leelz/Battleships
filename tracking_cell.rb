class Tracking_Cell

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