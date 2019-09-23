class EpisodesController < ApplicationController
    def create
        episode = Episode.new(episode_params)
        episode.save
        render json: episode
    end
    private
    def episode_params
        params.require(:episode).permit(:title,:image_url,:audio_link,:run_time,:episode_number,:podcast_id)
    end
end
