class EpisodeListJoin < ApplicationRecord
    belongs_to :episode
    belongs_to :list
    validates_uniqueness_of :episode_id, scope: :list_id

    
end
