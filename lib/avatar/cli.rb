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
        character_display(input)
        # character_info_display(input)
        API.get_characters(input)
        character_info_display(input)
        
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
            start
        end
    end

    def character_display(input)
        puts "Please choose a character by number:"
        Characters.all.each.with_index(1) do |character,index|
            puts ""
            puts "#{index}: #{character.name}"
        end
        # binding.pry
    end

    def get_character_info(input)

    end


    def character_info_display(input)
        input = gets.strip
        puts "Character Information:"
        API.get_characters(input)
        Characters.all.each.with_index(1) do |name, allies, enemies, photoUrl|
        puts ""
        puts "#{name}: #{allies}: #{enemies}: #{photoUrl}"
    # binding.pry
        end
    end





    def check_exit?(input)
        if input.downcase == "exit"
            exit
        end
    end


end

