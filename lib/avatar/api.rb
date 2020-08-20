class API


    def self.get_characters(input)
        url = "https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{input}"
        response = HTTParty.get(url)
        response.each do |character| 
            name = character["name"]
            allies = character["allies"]
            enemies = character["enemies"]
            photoUrl = character["photoUrl"]
            Characters.new(name, allies, enemies, photoUrl)
            Characters
        # binding.pry
        end
    end

end

