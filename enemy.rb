class Enemy
  include Moveable

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

  def move_down
    Moveable.move(y, -BASIC_VELOCITY)
  end

  def move_up
    Moveable.move(y, BASIC_VELOCITY)
  end

  def move_left
    Moveable.move(x, -BASIC_VELOCITY)
  end

  def move_right
    Moveable.move(x, BASIC_VELOCITY)
  end


end
