require 'pry'

class Author

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.each do |post|
      post.author == self
    end
  end

  def add_post(name)
    Post.all.each do |post|
      post.author = self
    end
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
  end

  def self.post_count
    Post.all.count
  end

end
