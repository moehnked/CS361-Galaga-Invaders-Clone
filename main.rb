require_relative 'spaceship'

class GalagaInvaders

  attr_accessor :ship
  def initialize
    @caption = "Galaga Invaders"
    @ship = SpaceShip.new({height: 100, width: 100, x: 50, y: 50})
  end
  
  def update
    # aliens are moving
  end
  
  def draw
    ship.draw
  end

  def show
    while (true) do
      update
      draw
    end
  end

  def key_pressed(key)
    if key == 'a'
      ship.move_left
    elsif key == 'd'
      ship.move_right
    elsif key == ' '
      ship.ship_shoot
    end
  end

end

GalagaInvaders.new.show