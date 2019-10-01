class ListsController < ApplicationController
    def create
        list = List.new(list_params)
        list.save
        render json: list
    end
    def show
        list = List.find(params[:id])
        render json: list
    end
    def index
        lists = List.all 
        render json: lists
    end
    def search
        arr = request.headers['search'].split(',')
        results = List.sort_by_relevancy(arr)
        render json: results
    end


    private
    def list_params
        params.require(:list).permit(:name,:description,:user_id)
    end
end
