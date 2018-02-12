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

  def test_rockwin
    assert_equal("Rock wins!", @rockpaperscissors.result)
  end

  def test_paperwin
    assert_equal("Paper wins!", @rockpaperscissors1.result)
  end

  def test_scissorwin
    assert_equal("Scissors wins!", @rockpaperscissors2.result)
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

  def test_rockwin
    assert_equal("Rock wins!", @rockpaperscissors6.result)
  end

  def test_paperwin
    assert_equal("Paper wins!", @rockpaperscissors7.result)
  end

  def test_scissorwin
    assert_equal("Scissors wins!", @rockpaperscissors8.result)
  end

end
