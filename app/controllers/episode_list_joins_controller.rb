class EpisodeListJoinsController < ApplicationController
    def create
        episode_list_join = EpisodeListJoin.new(episode_list_join_params)
        episode_list_join.save
        render json: episode_list_join
    end
    def delete_from_list
        record = EpisodeListJoin.find_by(list_id: params[:list_id],episode_id: params[:episode_id]).destroy
        render json: record
    end
    private
    def episode_list_join_params
        params.require(:episode_list_join).permit(:episode_id,:list_id)
    end
    
end
