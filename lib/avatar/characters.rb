class Characters

    @@all = []

    attr_accessor :name

    def initialize(attributes)
        @@all << self
    end

    def self.all
        @@all
    end

    
end

