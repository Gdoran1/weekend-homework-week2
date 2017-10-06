class Songs

  attr_reader(:title, :artist, :cost)

  def initialize(title, artist, cost)
    @title = title
    @artist = artist
    @cost = cost
  end

end
