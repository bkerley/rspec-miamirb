class Board
  def cromulent?
    'yeah'
  end
end

describe Board do
  fit { is_expected.to be }
  it { is_expected.to be_a Board }
  it { is_expected.to be_cromulent }
end
