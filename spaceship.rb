class SpaceShip
  
  def initialize(x, width, height)
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

end