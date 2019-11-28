require 'pry'



class Song
    attr_accessor :name, :artist, :genre
  
    @@all = []
    @@count = 0
    @@artists = []
    @@genres = []
    

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
        @@count += 1
        @@artists << artist
        @@genres << genre
    end
    

    def self.all
       @@all
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
    def self.all
        @@all
    end
    
    def self.genre_count
        genre_hash = {}
        @@genres.map do |music|
            if genre_hash[music]
               genre_hash[music] += 1
            else
               genre_hash[music] = 1           
            end

        end
        genre_hash
    end
    def self.artist_count
        artist_hash = {}
        @@artists.map do |music|
            if artist_hash[music]
               artist_hash[music] += 1
            else
               artist_hash[music] = 1           
            end

        end
        artist_hash
    end

end