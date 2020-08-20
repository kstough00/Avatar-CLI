class CLI
    @@all = []
    @@nations = ["Fire Nation", "Earth Kingdom", "Air Nomads", "Water Tribe"]

    def start
        puts "Welcome to my Avatar pack!"
        puts "Please choose a Nation by number:"
        @@nations.each.with_index(1) do |nation, index|
            puts "#{index}: #{nation}"
        end
        get_nation
        end


    def get_nation
        input = gets.strip
        check_exit?(input)
        display_characters(input)
        character_info_display(input)
        API.get_characters(input)
        
    end

    def display_characters(input)
        if input == "1"
            API.get_characters("Fire+Nation")
        elsif input == "2"
            API.get_characters("Earth+Kingdom")
        elsif input == "3"
            API.get_characters("Air+Nomads")
        elsif input == "4"
            API.get_characters("Water+Tribe")
        else
            puts "Invalid selection, please try again:"
            start
        end
        # binding.pry
    end

    def character_info_display(input)
        # display_characters(input)
        Characters.all.each.with_index(1) do |character,index|
            puts "#{index} : #{character.name}"
        end

        # binding.pry
    end


    def check_exit?(input)
        if input.downcase == "exit"
            exit
        end
    end


end

