class Turn
  def initialize
    puts "ACTUALLY BEING INITIALIZED"
  end
end

describe Turn do
  let(:turn){ Turn.new }

  it "might not get initialized" do
    expect(5).to eq 5
  end

  it "is only initialized on use" do
    expect(turn).to be_a Turn
  end
end
