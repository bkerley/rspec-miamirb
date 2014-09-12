class Cell
end

describe Cell do
  subject { described_class.new(0, 0) }

  it 'counts neighbors' do
    expect(subject.neighbors).to eq 0

    c2 = described_class.new(1, 0)
    expect(subject.neighbors).to eq 1
  end
  it 'comes to life appropriately'
  it 'stays alive appropriately'
end
