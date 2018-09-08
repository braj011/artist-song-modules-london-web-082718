require 'pry'

class Song

  extend Memorable::ClassMethods
  extend Findable::ClassMethod
  include Memorable::InstanceMethods
  include Paramable::InstanceMethod
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  # def initialize
  #   self.class.all << self   # OLD: @@songs << self
  # end

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def artist=(artist)
    @artist = artist
  end


  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

  # def self.count      - GOT RID OF as incldued memorable module's class methods
  #   self.all.count
  # end
  # def self.reset_all
  #   @@songs.clear
  # end


  def self.all
    @@songs
  end
end
