class EpisodeListJoin < ApplicationRecord
    belongs_to :episode
    belongs_to :list
end
