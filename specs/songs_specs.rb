require('minitest/autorun')
require('minitest/rg')
require_relative('../songs.rb')

class TestSongs < MiniTest::Test

  def setup()
     @song = Songs.new("Psycho Killer", "Talking Heads", "40")
     @song2 = Songs.new("Angel Eyes", "Roxy Music", "20")
     @song3 = Songs.new("Underwear", "Pulp", "40")
     @song4 = Songs.new("Sultans of Swing", "Dire Straits", "20")
     @song5 = Songs.new("Atomic", "Blondie", "20")
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
    assert_equal("40", actual)
  end

end
