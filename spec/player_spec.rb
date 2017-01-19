require 'player'

describe Player do
  subject(:kat){described_class.new("Kat")}
  subject(:pedro){described_class.new("Pedro")}

  context '#get_name' do
    it 'returns players name' do
      expect(kat.name).to eq("Kat")
    end
  end

  context '#attack' do
    it 'deducts points from the attacked player' do
      expect{ kat.attack(pedro) }.to change{ pedro.points }.by(-10)
    end
  end

  context '#deduct_points' do
    it 'deducts points from itself' do
      expect{ kat.deduct_points }.to change{ kat.points }.by(-10)
    end
  end

end
