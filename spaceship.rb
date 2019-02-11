class Spaceship 
  def initialize(x, y, width, height)
    @y = y
    @x = x
    @width = width
    @height = height
  end

  def move_ship_left()
  	@x -= 10
  end

  def move_ship_right()
  	@x += 10
  end

  def ship_shoot()
    Battery.create_missile(x, y)
  	#needs to be implemented 
  end

end