class CicloController < ApplicationController
    def index
       @ciclo = SementeCicloView.where("semente_id =:semente_id",{semente_id:params[:semente_id]}).all
    end
end
