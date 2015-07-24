require "minitest/autorun"

class TestKalem < Minitest::Test
  def setup
    @kalem = Kalem.new
  end
  
  def test_that_kitty_can_eat
    assert_equal "OHA!", @kalem.i_can_has_cheezburger?
  end
  
  def test_that_it_will_not_bland
    refute_match /^no/i, @kalem.will_it_blend?
  end
  
  def test_that_will_be_skipped
    skip "test this later"
  end
  
end

