class PodcastListJoinsController < ApplicationController
    belongs_to :podcast
    belongs_to :list
end
