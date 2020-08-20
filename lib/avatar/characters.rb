class Characters

    @@all = []

    attr_accessor :character, :url

    def initialize(character, url)
        @url = url 
        @character = character
        @@all << self
    end

    def self.all
        @@all
    end

    
end

