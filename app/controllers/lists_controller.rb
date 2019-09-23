class ListsController < ApplicationController
    def create
        list = List.new(list_params)
        list.save
        render json: list
    end

    private
    def list_params
        params.require(:list).permit(:name,:description,:user_id)
    end
end
