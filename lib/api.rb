class FINDANI::API
    # All the data is going to be grabbed here.
    def initialize
        @url = "https://kitsu.io/api/edge"
    end
    
    def get_anime_data
        puts "_------____________------- GRABBED DATA -------_______--------_"
        
        anime_hash = HTTParty.get(@url + "/anime")
        anime_array = anime_hash["data"] # return an array of anime hashs
        self.create_anime_objects(anime_array)
    end

    def create_anime_objects(anime_array)
        anime_array.each do |anime_hash|
            FINDANI::Anime.new(anime_hash)
        end
    end
end