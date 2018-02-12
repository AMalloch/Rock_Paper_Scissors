require 'minitest/autorun'
require_relative '../models/rockpaperscissors.rb'

class TestRockpaperscissor < Minitest::Test

  def setup
    @rockpaperscissors = Rockpaperscissor.new("rock", "scissors")
    @rockpaperscissors1 = Rockpaperscissor.new("paper", "rock")
    @rockpaperscissors2 = Rockpaperscissor.new("scissors", "paper")
    @rockpaperscissors3 = Rockpaperscissor.new("rock", "rock")
    @rockpaperscissors4 = Rockpaperscissor.new("paper", "paper")
    @rockpaperscissors5 = Rockpaperscissor.new("scissors", "scissors")
    @rockpaperscissors6 = Rockpaperscissor.new("scissors", "rock")
    @rockpaperscissors7 = Rockpaperscissor.new("rock", "paper")
    @rockpaperscissors8 = Rockpaperscissor.new("paper", "scissors")
  end

  def test_rockwin_player1
    assert_equal("Player one wins by playing rock!", @rockpaperscissors.result)
  end

  def test_paperwin_player1
    assert_equal("Player one wins by playing paper!", @rockpaperscissors1.result)
  end

  def test_scissorwin_player1
    assert_equal("Player one wins by playing scissors!", @rockpaperscissors2.result)
  end

  def test_rockdraw
    assert_equal("Draw!", @rockpaperscissors3.result)
  end

  def test_paperdraw
    assert_equal("Draw!", @rockpaperscissors4.result)
  end

  def test_scissordraw
    assert_equal("Draw!", @rockpaperscissors5.result)
  end

  def test_rockwin_player2
    assert_equal("Player two wins by playing rock!", @rockpaperscissors6.result)
  end

  def test_paperwin_player2
    assert_equal("Player two wins by playing paper!", @rockpaperscissors7.result)
  end

  def test_scissorwin_player2
    assert_equal("Player two wins by playing scissors!", @rockpaperscissors8.result)
  end

end
