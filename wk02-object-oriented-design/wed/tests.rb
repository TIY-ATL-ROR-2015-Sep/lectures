require './human'
require './random'

require 'minitest/autorun'

class HumanPlayerTests < MiniTest::Test
  def setup
    @player = HumanPlayer.new
    @brit = HumanPlayer.new("Brit")
  end

  def test_can_make_player
    assert @player
    assert @brit
  end

  def test_can_get_names
    assert_equal @brit.name, "Brit"
    assert_equal @player.name, "The Nameless One"
  end

  def test_can_get_guess
    skip
    player = HumanPlayer.new
  end
end

class RandomPlayerTests < MiniTest::Test
  def test_can_build_player
    assert RandomPlayer.new
  end
end
