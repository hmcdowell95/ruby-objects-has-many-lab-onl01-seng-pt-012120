class Author 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
  end
  
  def posts 
    Post.all.select {|x| x.author == self}
  end
  
  def add_post(x)
    x.author = self
  end
  
  def add_post_by_title(x)
    a = Post.new(x)
    a.author = self
  end
  
  def self.post_count
    Post.count_authors
  end
  
end