require 'player'

class Game

  attr_reader :player_one, :player_two

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def attack(attacked)
    attacked.deduct_points
  end

end
