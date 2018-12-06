require 'pry'

class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name, artist= @artist)
    @name = name
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

  def artist
    @artist.name
  end

end
