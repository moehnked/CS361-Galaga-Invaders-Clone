class Enemy includes Moveable

  BASIC_VELOCITY = 10
  attr_accessor :x, :y, :width, :height;
  def initialize(x, y, width, height)
    @x = x
    @y = y
    @width =  width
    @height = height
  end

  def move_down
    self.y += BASIC_VELOCITY
  end

  def move_up
    self.y -= BASIC_VELOCITY
  end

  def move_left
    self.x -= BASIC_VELOCITY
  end

  def move_right
    self.x += BASIC_VELOCITY
  end


end
