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
    c = self.new
    @@all << c
    c
  end

  def self.new_by_name(name)

     @name = name


  end


end
