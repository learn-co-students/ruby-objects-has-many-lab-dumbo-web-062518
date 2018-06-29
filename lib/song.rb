class Song	
	attr_accessor :name, :all, :artist
	@@all = []
	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def artist_name
		self.artist && self.artist.name
	end
end