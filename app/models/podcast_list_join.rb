class PodcastListJoin < ApplicationRecord
    belongs_to :podcast
    belongs_to :list
    validates_uniqueness_of :podcast_id, scope: :list_id
    
end
