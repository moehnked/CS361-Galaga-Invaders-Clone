require_relative 'spaceship'

class GaligaInvaders

  def initialize
    @caption = "Galaga Invaders"
    @ship = SpaceShip.new(100, 100, 50)
  end
  
  def update
    # update the state of the world
  end
  
  def draw
    @ship.draw
  end

  def show
    while (true) do
      update
      draw
    end
  end

  def key_pressed(key)
    if key == 'a'
      @ship.move_left()
    end
    if else key == 'd'
      @ship.move_right()
    end 
    if else key == ' '
      @ship.move_ship_shoot()
  end

end

GalagaInvaders.new.show