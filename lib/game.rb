require 'player'

class Game
  attr_reader :player_one, :player_two

  def initialize(player_one_class = Player, player_two_class = Player)
    @player_one = player_one_class.new('player_one')
    @player_two = player_two_class.new('player_two')
    reset_players_HP
  end

  def reset_players_HP
    @player_one.reset_points
    @player_two.reset_points
  end

  def attack(attacked)
    attacked.deduct_points
  end
end
