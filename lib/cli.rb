class FINDANI::CLI 
# get inputs and it will show strings or display
    def initialize
        FINDANI::API.new.get_anime_data # Made a buch of Anime objects
        puts "Grabbing Data... Loading..."
    end

    def run
        greeting
        menu

    end


    def greeting
        puts "Welcome to Anime CLI"
    end

    def menu
        display_title
        input = gets

        if input.to_i
            FINDANI::Anime.all[input.to_i - 1]
            binding.pry
        end
        show_input

        exit
    end

    def handle_input

    def display_title
        FINDANI::Anime.all.each.with_index(1) do |anime, index|
            puts "#{index}. #{anime.get_english_title}"
        end
    end
end
