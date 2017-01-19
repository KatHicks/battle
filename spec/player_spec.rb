require 'player'

NAME = "kat"

describe Player do
  subject(:player){described_class.new(NAME)}

  context '#get_name' do
    it 'returns players name' do
      expect(player.name).to eq(NAME)
    end
  end
end
