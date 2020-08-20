class API

    @@nations = {"1": "Fire Nation", "2": "Water Tribe", "3": "Air Nomads", "4": "Earth Kingdom"}

    def self.get_characters(user_input)
        url = "https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=${Nation+Name}"
        response = HTTParty.get(url)
       
        # binding.pry
    end

    def self.nations
     @@nations
    end


end

