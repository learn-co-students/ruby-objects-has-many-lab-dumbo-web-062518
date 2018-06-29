require_relative "song.rb"

class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def add_song(song_name)
    song_name.artist = self
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def add_song_by_name(name)
    Song.new(name, self)
  end

  def self.song_count
    Song.all.select { |song| song.artist != nil  }.length
  end
end
