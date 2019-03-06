<<<<<<< HEAD
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
=======
class Missile
  attr_reader :x, :y, :velocity

  def initialize(x:, y:, velocity:)
    @x = x
    @y = y
    @velocity = velocity
  end
>>>>>>> 1eb0435e54ec6e3b0e76f9dc474573d4c917f224

  def move
    y += velocity
  end
end

