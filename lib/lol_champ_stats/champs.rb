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
  
  # def initialize(champions)
  #   champions.each |k, v| 
  #     self.send (("#{k}=", v )) if self.respond_to?{("#{k}=")}
  #   end
  #   save
  # end
  
  
  def self.all
    @@all
  end
  
  def self.clear
    @@all.clear
  end
  
end