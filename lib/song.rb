require 'pry'
class Song

  attr_accessor :name, :artist, :genre

  @@count =0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@artists << artist
    @@genres << genre


  end

  def self.count
    @@count
  end


  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    # binding.pry
    #Hash[genres.map{ | genre | [genre, @@genres.count('genres')]}
    # genres.map do |genre|
    #   binding.pry
    #   [genre, @@genres.count(genre)]
    # end
    Hash[genres.map{|genre| [genre, @@genres.count(genre)]}]
  end

  def self.artist_count
    Hash[artists.map{|artist| [artist, @@artists.count(artist)]}]
  end


end
