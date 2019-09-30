class EpisodesController < ApplicationController
    def create
        episode = Episode.where(:audio_link => params[:audio_link]).first_or_initialize(episode_params)
        episode.save
        render json: episode
    end
    private
    def episode_params
        params.require(:episode).permit(:title,:image_url,:audio_link,:run_time,:episode_number,:podcast_id,:description)
    end
end
