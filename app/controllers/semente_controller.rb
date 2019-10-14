class SementeController < ApplicationController
    def index
      @semente = SementePlantioView.where("plantio_id =:plantio_id",{plantio_id:params[:plantio_id]}).page params[:page]
      @semente_cabecalho = SementePlantioCabecalhoView.where("plantio_id =:plantio_id ",{plantio_id:params[:plantio_id]}).all
     
    end
   
end
