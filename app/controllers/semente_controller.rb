class SementeController < ApplicationController
    def index
      @semente = SementePlantioView.where("plantio_id =:plantio_id",{plantio_id:params[:plantio_id]}).page params[:page]
    end
    def semente
       @semente = SementePlantioView.where("plantio_id =:plantio_id",{plantio_id:params[:plantio_id]}).all
    end
end
