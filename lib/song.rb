require 'pry'

class Song
    attr_accessor :name, :artist, :genre
    @@all = []

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
        @@all << self 
    end 
 
    @@count = 0
    @@genres = []
    @@artists = []


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
        @@genres.group_by{|genres| genres}.map{|key, value| [key, value.length]}.to_h
    end 

    def self.artist_count
        @@artists.group_by{|artist| artist}.map{|key, value| [key, value.length]}.to_h
    end 

end