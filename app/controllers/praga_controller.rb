class PragaController < ApplicationController
   def index
      @praga = SementePragaView.where("semente_id =:semente_id",{semente_id:params[:semente_id]}).all
   end
end
