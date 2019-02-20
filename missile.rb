class Missle

	def initialize(x, y)
		@x = x
		@y = y
	end

	def move
		@y -= 10
	end

	def draw
		# draw missle
	end

	def collision
		# collide with fort/player ship
	end

end