class Missile
  attr_reader :x, :y, :velocity

  def initialize(x:, y:, velocity:)
    @x = x
    @y = y
    @velocity = velocity
  end

  def move
    y += velocity
  end
end

