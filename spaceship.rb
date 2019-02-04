class spaceship
  def initialize(x, width, height)
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

end