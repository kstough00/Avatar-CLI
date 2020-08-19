class API

    def self.get_characters
        url = "https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=${Nation+Name}"
        response = HTTParty.get(url)
       
        # binding.pry
    end

end

