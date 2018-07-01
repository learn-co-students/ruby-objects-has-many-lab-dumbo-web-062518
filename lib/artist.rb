require 'pry'

class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.each do |song|
      song.artist == self
    end
  end

  def add_song(name)
    Song.all.each do |song|
      song.artist = self
    end
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end

  def self.song_count
    Song.all.count
  end

end
