class Genre
  @@all = []
  attr_accessor :name
  def initialize
    @name = name
    @@all << self
  end
  def self.all
  @@all
end
def songs(song)
  Song.all.select { |song| song.genre == self }
end

end
