require 'game'

describe Game do

  let(:stefan) { spy("Player") }
  let(:kat) { spy("Player") }

  subject(:game) { described_class.new(stefan, kat) }

  context "upon initialisation" do
    it 'the game starts with two player objects' do
      expect(game.player_one).to eq stefan
      expect(game.player_two).to eq kat
    end
  end

  context '#attack' do
    it 'deducts points from the attacked player' do
      game.attack(kat)
      expect(kat).to have_received(:deduct_points)
    end
  end

end
