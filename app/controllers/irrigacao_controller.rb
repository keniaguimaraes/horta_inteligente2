class IrrigacaoController < ApplicationController
  def index
       @irrigacao = SementeIrrigacaoView.where("semente_id =:semente_id",{semente_id:params[:semente_id]}).all
  end
end
