class Cell

	attr_accessor :content, :shot

	def initialize 
		@content = "unknown"
		@shot = false
	end

	def add_ship
		@content = "full"
	end

	def 

	def checks_for_ship
		if self.content != "full"
			self.content = "empty"
		end
	end

	def shoot!
		raise RuntimeError ,"This grid has already been shot! Try another grid! u muppit" if shot?
		self.shot = true
		content.receive_shot!
	end

end