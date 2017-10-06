require('minitest/autorun')
require('minitest/rg')
require_relative('../club.rb')

class TestClub < MiniTest::Test

  def setup()

     @club = Club.new()

  end
end
