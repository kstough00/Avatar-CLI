class CLI

    @@all = []
    @@nations = ["Fire Nation", "Earth Kingdom", "Air Nomads", "Water Tribe"]

    def start
        puts "Welcome to my Avatar pack!"
        puts ""
        puts "Please choose a Nation by number:"
        puts ""
        @@nations.each.with_index(1) do |nation, index|
            puts ""
            puts "#{index}: #{nation}"
            puts ""
        end
        get_nation
    end


    def get_nation
        input = gets.strip
        check_exit?(input)
        get_characters(input)
        character_display
        choose_again
        # get_character_info(input)
        # API.get_characters(input)
        
    end

    def get_characters(input)
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
            puts ""
            start
        end
    end

    def character_display
        puts "Please choose a character by number:"
        Characters.all.each.with_index(1) do |character,index|
            puts ""
            puts "#{index}: #{character.name}"
        end
        
        get_character_info
        # binding.pry
    end

    def get_character_info
        input = gets.strip
        check_exit?(input)
        input = input.to_i
        if input > 0 && input <= Characters.all.length
        puts ""
        character = Characters.all.find.with_index(1) do |character,index|
            input == index
            # binding.pry
        end
            if character
                puts "Character Information:"
                puts "Name: #{character.name}"
                puts "Allies: #{character.allies.join}"
                puts "Enemies: #{character.enemies.join}"
                puts "Photo URL: #{character.photoUrl}"
            else
                puts "Invalid selection, please try again:"
            end
        else
            check_exit?(input)

            puts "Invalid selection, please try again:"
            character_display
        end
        # binding.pry
    end

    def choose_again
        puts ""
        puts "Would you like to make another selection: yes/no"
        input = gets.strip
        check_exit?(input)
        if input == "yes"
            Characters.all.clear
            start
        else 
            exit
        end

    end

    def check_exit?(input)
        # binding.pry
        if input == "exit"
            exit
        end
    end

end

