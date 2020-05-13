class Champions
  
  @@all = []
  
  attr_accessor :name, :title, :blurb, :tags, :stats
  
  def initialize(name:, title:, blurb:, tags:, stats:)
    @name = name
    @title = title
    @blurb = blurb
    @tags = tags
    @stats = stats
    
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.clear
    @@all.clear
  end
  
end