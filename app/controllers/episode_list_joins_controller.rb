class EpisodeListJoinsController < ApplicationController
    def create
        episode_list_join = EpisodeListJoin.new(episode_list_join_params)
        episode_list_join.save
        render json: episode_list_join
    end
    private
    def episode_list_join_params
        params.require(:episode_list_join).permit(:episode_id,:list_id)
    end
end
