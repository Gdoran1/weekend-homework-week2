require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class TestGuest < MiniTest::Test

  def setup()
     @guest = Guests.new("Graeme Doran", "100")
     @guest2 = Guests.new("Craig Doran", "30")
     @guest3 = Guests.new("Struan Doran", "30")
  end

  def test_guest_has_name()
    actual = @guest.name()
    assert_equal("Graeme Doran", actual)
  end

  def test_guest_has_cash()
    actual = @guest.cash()
    assert_equal("100", actual)
  end

end
