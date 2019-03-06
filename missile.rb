class Missile includes Moveable
	attr_reader :x, :y, :velocity
	
	def initialize(x:, y:, velocity:)
		@x = x
		@y = y
		@velocity = velocity
	end

	def move
		Moveable.move(self.y,velocity)
	end
	def draw
		# ...
	end

end
