class PodcastListJoin < ApplicationRecord
    belongs_to :podcast
    belongs_to :list
end
