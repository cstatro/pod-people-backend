class UsersController < ApplicationController
    def create
        user = User.new(username: params[:username],password: params[:password],name: params[:name])
        if user.save
          render json: {token: JsonWebToken.encode({id: user.id})}
          else
            render json: {errors: user.errors.full_messages}
          end
    end
    def show
        user = User.find(params[:id])
        render json: user
    end
end
