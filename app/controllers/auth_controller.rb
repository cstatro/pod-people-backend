class AuthController < ApplicationController
    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            render json: {token: JsonWebToken.encode({id: user.id})}
        else
            render json: {error: "you dun goofed"}
        end
    end
    def authenticate
     decoded = JsonWebToken.decode(request.headers['auth'])
    render json: decoded[0]
    end


end
