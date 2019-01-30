class GalagaInvaders

  def initialize
    @caption = "Galaga Invaders"
  end
  
  def update
    # update the state of the world
  end
  
  def draw
    # draw the state of the world
  end

  def show
    while (true) do
      update
      draw
    end
  end

end

GalagaInvaders.new.show