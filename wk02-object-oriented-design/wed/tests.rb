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

  def test_can_validate_guess
    assert @player.valid_guess?("a")
    refute @player.valid_guess?("cookies")
    refute @player.valid_guess?("A")
    refute @player.valid_guess?("!")
  end

  def test_can_get_guess
    @player.stub :get_input, "c" do
      assert_equal @player.get_guess, "c"
    end
  end
end

class RandomPlayerTests < MiniTest::Test
  def test_can_build_player
    assert RandomPlayer.new
  end
end
