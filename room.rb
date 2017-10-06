class Room

  attr_reader(:name)




  def initialize(name)
    @name = name
    @guests = []
    @songs = []
  end

  def number_of_guest()
    return @guests.length()
  end

  def add_guest(new_guest)
    @guests.push(new_guest)
  end

  def guest_leave(guest_leave)
    @guests.delete(guest_leave)
  end

  def number_of_songs()
    return @songs.length()
  end

  def add_song(new_song)
    @songs.push(new_song)
  end

end
