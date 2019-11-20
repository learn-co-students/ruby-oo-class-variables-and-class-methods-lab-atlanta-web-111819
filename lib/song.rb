class Song

    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.genre_count
        histogram = {}
        @@genres.each do |genre|
            if histogram[genre] == nil
                histogram[genre] = 1
            else
                histogram[genre] += 1
            end
        end
        histogram
    end

    def self.genres
        self.genre_count.keys
    end

    def self.artist_count
        histogram = {}
        @@artists.each do |artist|
            if histogram[artist] == nil
                histogram[artist] = 1
            else
                histogram[artist] += 1
            end
        end
        histogram
    end

    def self.artists
        self.artist_count.keys  
    end

    def self.count
        @@count
    end
end