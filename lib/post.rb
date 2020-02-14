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
    
  