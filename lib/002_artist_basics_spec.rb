class Artist
  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all = []
  end

  def self.create(name)
    self.new(name).save
    self
  end

  def songs
    @songs
  end

  def add_song(song)
    if song.artist == nil
      song.artist = self
      self.songs << song
    end
  end

end
