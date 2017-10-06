require('minitest/autorun')
require('minitest/rg')
require_relative('../bar.rb')

class TestBar < MiniTest::Test

  def setup()
     @bar = Bar.new("wine", 6)
     @bar2 = Bar.new("btl_beer", 5)
     @bar3 = Bar.new("spirits", 4)
     @bar4 = Bar.new("soft_drinks", 1)
  end

  def test_bar_has_spirits()
    actual = @bar.spirits()
    assert_equal("spirits", actual)
  end
end
