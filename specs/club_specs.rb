require('minitest/autorun')
require('minitest/rg')
require_relative('../club.rb')
require_relative('../guest.rb')

class TestClub < MiniTest::Test

  def setup()
     @club = Club.new("Karaoke King", 10)
  end

  def test_club_has_name()
    actual = @club.name()
    assert_equal("Karaoke King", actual)
  end

  def test_club_has_entry_cost()
    actual = @club.entry_cost()
    assert_equal(10, actual)
  end

  def test_till_starts_with_zero_cash()
   actual = @club.cash_in_till()
   assert_equal(0, actual)
  end

  def test_cash_can_be_added_to_till()
    actual = @club.pay_entry_cost()
    assert_equal(10, actual)
  end

  # def test_guest_can_afford_entry_cost()
  #   actual = @guest.()
  #   assert_equal(10, actual)
  # end
end
