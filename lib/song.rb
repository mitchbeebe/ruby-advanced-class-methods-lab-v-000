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
    s.name = name
    s
  end
  
  def self.create_by_name(name)
    s = self.create
    s.name = name
    s
  end

  def self.find_by_name(name)
    @@all.each do |x|
      if x.name == name
        return x
      else
        false
      end
    end
  end
end
