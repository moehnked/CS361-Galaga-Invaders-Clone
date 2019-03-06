class Enemy includes Moveable

  BASIC_VELOCITY = 10
  FIRING_VELOCITY = 10
  attr_accessor :x, :y, :width, :height;
  def initialize(x, y, width, height)
    @x = x
    @y = y
    @width =  width
    @height = height
  end

  #handling rudimentary firing behavior. Consider Module for this?
  def fire
    {x: self.x, y: self.y, velocity: FIRING_VELOCITY}
  end

  #think about pulling the move methods out in future issue.
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
