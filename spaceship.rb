class Spaceship includes Moveable
  
  DEFAULT_VELOCITY = 10

  attr_accessor :x, :y :velocity

  def initialize(args)
    @y = args[:y]
    @x = args[:x]
    @width = args[:width]
    @height = args[:height]
    @velocity = 10
  end

  def move_ship_left()
  	Moveable.move(self.x, DEFAULT_VELOCITY)
  end

  def move_ship_right()
  	Moveable.move(self.x, -DEFAULT_VELOCITY)
  end

  def muzzle_location()
    Vector.new(x, top_edge)    
  end

  def top_edge()
      y - half_height
  end

  def half_height()
      height / 2
  end

  Vector = Struct.new(:x, :y)

end
