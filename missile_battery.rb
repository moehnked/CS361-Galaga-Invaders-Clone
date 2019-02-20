require_relative 'missle'

class MissleBattery
  attr_reader :missiles

  def initialize
    @missiles = []
  end

  def new_missile(x:, y:, velocity:)
    missiles << Missile.new(x, y, velocity)
  end

  def move_missiles
    missiles.each(&:move)
  end

  def draw_missiles
    missiles.each(&:draw)
  end

end