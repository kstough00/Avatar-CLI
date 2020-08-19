class CLI

    def nations
        ["Fire Nation", "Water Tribe", "Air Nomads", "Earth Kingdom"]
    end


    def start
        puts "Welcome to my Avatar pack!"
        puts "Please select a Nation:"
        nations.each {|n| puts n }
        get_nation
        API.get_characters(nations)
    end


    def get_nation
        input = gets.strip
        check_exit?(input)
        display_character(input)
        API.get_characters(input)
    end

    def display_character(input)
        # input = gets.strip
        if input == "Earth Kingdom"
            puts "Earth Kingdom Characters"
        elsif input == "Water Tribe"
            puts "Water Tribe Characters"
        elsif input == "Fire Nation"
            puts "ENEMY"
        elsif input == "Air Nomads"
            puts "BOOYA"
        else
            puts "Invalid selection, please try again:"
        end
        API.get_characters
    end



    def check_exit?(input)
        if input.downcase == "exit"
            exit
        end
    end


end

