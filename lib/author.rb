class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    # @backed_projects = []
  end

  def self.post_count
      Post.all.length
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(post_title)
    post_title = Post.new(post_title, self)
  end

  def posts
    Post.all.select do |post|
      post.author == self
    end
  end
end
