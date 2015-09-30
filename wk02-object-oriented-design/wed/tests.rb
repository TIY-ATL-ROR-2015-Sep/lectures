require './human'
require './random'

require 'minitest/autorun'

class HumanPlayerTests < MiniTest::Test
  def test_can_make_player
    assert HumanPlayer.new
    assert HumanPlayer.new("Brit")
  end

  def test_can_get_name
    brit = HumanPlayer.new("Brit")
    assert_equal brit.name, "Brit"
  end

  def test_can_get_nameless
    player = HumanPlayer.new
    assert_equal player.name, "The Nameless One"
  end

end

class RandomPlayerTests < MiniTest::Test
  def test_can_build_player
    assert RandomPlayer.new
  end
end
