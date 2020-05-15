class Champions
  
  @@all = []

  attr_accessor :name, :title, :description, :tags, :stats

  def initialize(name:, title:, description:, tags:, stats:)
    @name = name
    @title = title
    @description = description
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
      binding.pry
  def self.select_by_name(champions)
    self.all.select {|champion| champion.name == name}
  end
  
end