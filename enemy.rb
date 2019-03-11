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

  def fire
    {x: x, y: y, velocity: FIRING_VELOCITY}
  end

  def move_down
    move(y, -BASIC_VELOCITY)
  end

  def move_up
    move(y, BASIC_VELOCITY)
  end

  def move_left
    move(x, -BASIC_VELOCITY)
  end

  def move_right
    move(x, BASIC_VELOCITY)
  end
  
end
