class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    s = self.new
    s.save
    s
  end
  
  def self.new_by_name(name)
    s = self.new
    self.name = name
    s
  end

end
