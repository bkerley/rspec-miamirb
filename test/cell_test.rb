require 'minitest/autorun'

class CellTest < Minitest::Test
  def test_counts_neighbors
    c = Cell.new(0, 0)
    assert_equal 0, c.neighbors

    c2 = Cell.new(1, 0)
    assert_equal 1, c.neighbors
  end

  def test_comes_to_life
    @board = Minitest::Mock.new
    @board.expect :neighbors, 3

    c = Cell.new(@board, 0, 0)

    assert c.become_alive?
  end
  def test_stays_alive
  end
end
