class Characters

    @@all = []

    attr_accessor :name, :allies, :enemies, :photoUrl

    def initialize(name, allies, enemies, photoUrl)
        @name = name
        @allies = allies
        @enemies = enemies
        @photoUrl = photoUrl
        @@all << self
    end

    def self.all
        @@all
    end

    
end

