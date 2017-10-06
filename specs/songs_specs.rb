require('minitest/autorun')
require('minitest/rg')
require_relative('../songs.rb')

class TestSongs < MiniTest::Test

  def setup()
     @song = Songs.new("Psycho Killer", "Talking Heads", "8")
     @song2 = Songs.new("Angel Eyes", "Roxy Music", "4")
     @song3 = Songs.new("Underwear", "Pulp", "8")
     @song4 = Songs.new("Sultans of Swing", "Dire Straits", "4")
     @song5 = Songs.new("Atomic", "Blondie", "4")
  end

  def test_songs_has_title()
    actual = @song.title()
    assert_equal("Psycho Killer", actual)
  end

  def test_songs_has_artist()
    actual = @song.artist()
    assert_equal("Talking Heads", actual)
  end

  def test_song_has_cost()
    actual = @song.cost()
    assert_equal("8", actual)
  end

end
