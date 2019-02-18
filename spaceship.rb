class Spaceship 
  def initialize(x, y, width, height)
    @y = y
    @x = x
    @width = width
    @height = height
  end

  def move_left()
  	@x -= 10
  end

  def move_right()
  	@x += 10
  end

  def ship_shoot()
    #decouple battery
    Battery.create_missile(x, y)
  	#needs to be implemented 
  end

end