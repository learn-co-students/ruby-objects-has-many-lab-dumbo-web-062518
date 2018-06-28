require 'pry'

class Song
  attr_accessor :name, :artist, :all

  @@all = []

  def initialize(name, artist=nil)
    @name = name
    @artist = artist
    @@all << self
  end

  def self.all
      @@all
  end

  def artist_name
    return nil if @artist==nil
    @artist.name
  end

end

# pry.start
