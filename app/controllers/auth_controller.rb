class AuthController < ApplicationController
    def login
        # byebug
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            render json: user
        else
            render json: {error: "you dun goofed"}
        end
    end

end
