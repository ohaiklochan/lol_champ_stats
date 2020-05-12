class Champions
  
  @@all = []
  
  attr_accessor :name, :title, :blurb, :info, :tags
  
  # def initialize
  #   @name = name
  #   @title = title
  #   @blurb = blurb
  #   @info = info
  #   @tags = tags
  # end
  
  def initialize(champions)
    champions.each |k, v| 
      self.send (("#{k}=", v )) if self.respond_to?{("#{k}=")}
    end
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  
  
end