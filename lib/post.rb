class Post 
  attr_accessor :title, :author 
  
  def initialize(title)
    @title = title 
    save
  end
  
  @@all = []
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
    if self.author == nil 
      return nil
    else
      self.author.name 
    end
  end
  
  def self.count_authors
    z = []
    @@all.each do |x|
      if x.author == nil 
      else 
        z << x
      end
    end
    z.length 
  end
  
end
  