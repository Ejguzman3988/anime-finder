class FINDANI::CLI 
# get inputs and it will show strings or display
    def run
        greeting
        FINDANI::API # <= Data from api
        menu
    end


    def greeting
        puts "Welcome to Anime CLI"
        puts "Grabbing Data... Loading..."
    end

    def menu
        puts "pick something from menu"
    end
end
