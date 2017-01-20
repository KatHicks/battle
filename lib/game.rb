class Game

  attr_reader :player_one, :player_two, :turns

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @turns = {
      attacker: player_one,
      attacked: player_two
    }
  end

  def attack
    turns[:attacked].deduct_points
  end

  def switch_turn
    if turns[:attacker] == player_one
      @turns = {attacker: player_two, attacked: player_one}
    else
      @turns = {attacker: player_one, attacked: player_two}
    end
  end

end
