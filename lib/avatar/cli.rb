class CLI

    def start
        puts "Welcome to my Avatar pack!"
        puts "Please choose a Nation by number:"
        API.nations.each do |index, nation|
            puts "#{index}: #{nation}"
        end
        # nations.each {|n| puts n }
        get_nation
        API.get_characters(nations)
        end
    


    def get_nation
        input = gets.strip
        check_exit?(input)
        display_characters(input)
        character_info_display
        API.get_characters(input)
    end

    def display_characters(input)
        # input = gets.strip
        if input == "4"
            puts "Earth Kingdom Characters"
        elsif input == "2"
            puts "Water Tribe Characters"
        elsif input == "1"
            puts "ENEMY"
        elsif input == "3"
            puts "BOOYA"
        else
            puts "Invalid selection, please try again:"
        end
        API.get_characters(input)
    end

    def character_info_display(input)
        input = display_characters(input)
        puts "What a great choice!"
        puts #{photo.url}
    end




    def check_exit?(input)
        if input.downcase == "exit"
            exit
        end
    end


end

