
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
    song = self.new
    song.save
    song
  end

  def self.new_by_name(name)
    song = self.create
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.create
    song.name = name
    song
  end
  def self.find_by_name(name)
    self.all.find {|p| p.name == name}
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name) == nil
      self.create_by_name(name)
    end
    self.find_by_name(name)
  end
  def self.alphabetical
    self.all.sort_by {|w| w.name}
  end

  def self.new_from_filename(filename)
    artist_name = filename.split(" _ ")[0]

    song_name = file_name.split(" - ")[1].split(".")[0]
    song = self.create
    song.name = song_name
    song.artist_name = artist_name
    song
  end
end
