class FINDANI::Anime
    @@all = []
    #attr_accessor :id
    # self.send
    def initialize(anime_hash)
        
        anime_hash["attributes"].each do |key, value|

            self.class.attr_accessor(key)
            self.send("#{key}=", value)
    
        end

        @@all << self

    end

    def get_english_title
        self.titles["en"]
    end

    def self.all
        @@all
    end


end