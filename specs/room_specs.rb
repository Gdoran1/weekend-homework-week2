require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')

class TestRoom < MiniTest::Test

  def setup()
     @room = Room.new("Disco")
     @room2 = Room.new("Pop")
     @room3 = Room.new("Indie")
     @room4 = Room.new("rock")
   end

   def test_room_has_name()
     actual = @room3.name()
     assert_equal("Indie", actual)
   end

   def test_room_starts_with_zero_guest()
    actual = @room.number_of_guest()
    assert_equal(0, actual)
   end

  def test_room_can_add_guest()
    @room.add_guest(@guest)
    actual = @room.number_of_guest()
    assert_equal(1, actual)
  end

  def test_can_guest_leave_room()
    @room.guest_leave(@guest)
    actual = @room.number_of_guest()
    assert_equal(0, actual)
  end

  def test_room_has_no_song()
   actual = @room.number_of_songs()
   assert_equal(0, actual)
  end

  def test_room_can_add_song()
   @room.add_song(@songs)
   actual = @room.number_of_songs()
   assert_equal(1, actual)
  end

end
