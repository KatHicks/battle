require 'game'

describe Game do

  let(:stefan) { spy("Player") }
  let(:kat) { spy("Player") }

  subject(:game) { described_class.new(stefan, kat) }

  context '#attack' do
    it 'deducts points from the attacked player' do
      game.attack(kat)
      expect(kat).to have_received(:deduct_points)
    end
  end

end
