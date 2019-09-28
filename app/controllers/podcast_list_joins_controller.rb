class PodcastListJoinsController < ApplicationController
    def create
        podcast_list_join = PodcastListJoin.new(podcast_list_join_params)
        podcast_list_join.save 
        render json: podcast_list_join
    end
    def podcast_list_join_params
        params.require(:podcast_list_join).permit(:podcast_id,:list_id)
    end

end
