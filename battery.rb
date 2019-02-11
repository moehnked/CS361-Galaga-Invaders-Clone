class Battery
	def initialize()
		@missiles = []
	end

	def self.create_missle(x,y)
		new_missle = Missle.new(x,y)
		@missiles << new_missle 
	end
end 