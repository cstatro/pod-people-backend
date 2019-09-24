class FollowersController < ApplicationController
    def create
        follower = Follower.new(follower_params)
        follower.save
        render json: follower
    end
    private
    def follower_params
        params.require(:follower).permit(:list_id,:user_id)
    end
end
