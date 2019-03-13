require_relative 'spaceship'
require_relative 'missile_battery'

class GalagaInvaders

  attr_accessor :ship, :missiles, :game
  def initialize
    @caption = "Galaga Invaders"
    @ship = SpaceShip.new({height: 100, width: 100, x: 50, y: 50})
    @missiles = MissileBattery.new
    @wing = Wing.new(EnemyFactory.new(10))
    @stage = Stage.new(stage_config)
    @game = Game.new
  end
  
  def update
    # game starts when game screen
    # If timer ends, player dies, or player kills all, 
    # then update the stage

    if timeToLaunchSquad
      wing.launch_squad
    end

    
    # If it is time to launch squad then launch

    # If flight path is done join formation
    
    # if player hits enemy, enemy loses health.

    # if player is hit by enemy, new ship is spawned, unless 0 lives left.

    # if all enemies are dead, next stage.

    # if players lives gone, game over screen.



    if(enemiesKilled || timerEnds || playerDies) {
      # reset/update stage
      # reset timer
    }



  end
  
  def draw
    if game.inProgess
      ship.draw
      wing.draw
      missiles.draw
    end
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
    elsif key == 's'
      game.start
    end
  end

end

GalagaInvaders.new.show