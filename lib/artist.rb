require 'pry'

class Artist

  extend Memorable::ClassMethods
  extend Findable::ClassMethod
  include Memorable::InstanceMethods
  include Paramable::InstanceMethod
  attr_accessor :name
  attr_reader :songs


  @@artists = []

  # def self.find_by_name(name)
  #   @@artists.detect{|a| a.name == name}
  #   # done similar to this, except with find - returns first name by match
  # end

  def initialize
    super
    # self.class.all << self            # OLD:  @@artists << self
    @songs = []
  end
  # super keyword to tell our Artist's .initialize method to use the code
  # in the Memorable::InstanceMethods module's .initialize
  # method and also to use any additional code in the Artist's
  # .initialize method.

  def self.all
    @@artists
  end

  # def self.reset_all
  #   self.all.clear          # clears the class
  # end
  #
  # def self.count
  #   @@artists.count
  # end

  def add_song(song)
    @songs << song
    song.artist = self    # assoc Song class's instance's artist attr to the song here
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }   # songs refers to the array made within initialize method
  end
  #
  # def to_param
  #   name.downcase.gsub(' ', '-')
  #   # Returns a copy of str with the all occurrences of pattern substituted for the second argument.
  #   # https://apidock.com/ruby/String/gsub
  # end

end
