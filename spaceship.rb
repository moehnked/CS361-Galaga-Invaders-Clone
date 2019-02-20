class Spaceship 
  
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
  	move(DEFAULT_VELOCITY)
  end

  def move_ship_right()
  	move(-DEFAULT_VELOCITY)
  end
  
  def move(xaxis)
    self.x += xaxis
  end

  def muzzle_location()
    Vector.new(x,top_edge)    
  end

  def top_edge()
      y - half_height
  end

  def half_height()
      height / 2
  end

  Vector = Struct.new(:x, :y)


end