class FINDANI::CLI 
# get inputs and it will show strings or display
    def initialize
        FINDANI::API.new.get_anime_data # Made a buch of Anime objects
        puts "Grabbing Data... Loading..."
        @input = nil
    end

    def run
        greeting
        menu

    end


    def greeting
        puts "Welcome to Anime CLI"
    end

    def menu

        until @input == "exit"
            display_title
            
            user_input
        

        end
        goodbye
        exit

        
    end


    def display_title
        FINDANI::Anime.all.each.with_index(1) do |anime, index|
            puts "#{index}. #{anime.get_english_title}"
        end
        show_anime(user_input)

    end

    def show_anime(input)
        anime_obj = FINDANI::Anime.all[input.to_i-1]

        puts "TITLE: #{anime_obj.canonicalTitle}"
        puts "DESCRIPTION: #{anime_obj.description}"
        puts "RATING: #{anime_obj.averageRating}"
        puts " ------------- "
        puts "type back to go menu "
        user_input
    end

    def goodbye
        puts "Goodbye, see ya later. "
    end

    def user_input
        @input = gets.chomp.downcase
        if @input == "exit"
            exit
        elsif @input == "menu"
            menu
        end
        @input
    end
end
