class Episode < ApplicationRecord
    belongs_to :podcast

    def artist_name
        self.podcast.name 
    end
end
