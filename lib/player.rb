class Player

  attr_reader :name, :points

  INITIAL_HP = 60

  def initialize(name, points = INITIAL_HP)
    @name = name
    @points = points
  end

  def deduct_points
    @points -= 10
  end

  def reset_points
    @points = INITIAL_HP
  end

end
