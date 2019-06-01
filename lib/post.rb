require 'pry'

class Post
  attr_accessor :title, :author, :all

  @@all = []

  def initialize(title, author=nil)
    @title = title
    @author = author
    @@all << self
  end

  def self.all
      @@all
  end

  def author_name
    return nil if @author==nil
    @author.name
  end

end

# pry.start
