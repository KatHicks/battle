class Player

  attr_reader :name, :points

  INITIAL_HP = 60

  def initialize(name, points = INITIAL_HP)
    @name = name
    @points = points
  end

  def attack(opposing_player)
    opposing_player.deduct_points
  end

  def deduct_points
    @points -= 10
  end

end
