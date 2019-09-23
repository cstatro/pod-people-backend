class PodcastsController < ApplicationController
    def create
        podcast = Podcast.where(:name => params[:name]).first_or_initialize(podcast_params)
        podcast.save
        render json: podcast
    end

    private
    def podcast_params
        params.require(:podcast).permit(:genre,:publisher,:number_of_episodes,:image_url,:feed,:name)
    end
end
