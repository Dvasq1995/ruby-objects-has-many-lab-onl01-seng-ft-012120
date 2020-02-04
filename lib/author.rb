class Author
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def songs
    Post.all.select {|song| song.author = self}
  end
  
  def add_post(post)
    @posts << post
    post.author = self
  end
  
  def add_post_by_title(post_name)
    post = Post.new(post_name)
    add_post(post)
  end
  
  def self.post_count
    Post.all.count {|post| post}
  end
end