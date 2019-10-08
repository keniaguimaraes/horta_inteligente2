class SementesController < ApplicationController
  before_action :set_semente, only: [:show, :edit, :update, :destroy]

  # GET /sementes
  # GET /sementes.json
  def index
    @sementes = Semente.all
  end

  # GET /sementes/1
  # GET /sementes/1.json
  def show
  end

  # GET /sementes/new
  def new
    @semente = Semente.new
  end

  # GET /sementes/1/edit
  def edit
  end

  # POST /sementes
  # POST /sementes.json
  def create
    @semente = Semente.new(semente_params)

    respond_to do |format|
      if @semente.save
        format.html { redirect_to @semente, notice: 'Semente was successfully created.' }
        format.json { render :show, status: :created, location: @semente }
      else
        format.html { render :new }
        format.json { render json: @semente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sementes/1
  # PATCH/PUT /sementes/1.json
  def update
    respond_to do |format|
      if @semente.update(semente_params)
        format.html { redirect_to @semente, notice: 'Semente was successfully updated.' }
        format.json { render :show, status: :ok, location: @semente }
      else
        format.html { render :edit }
        format.json { render json: @semente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sementes/1
  # DELETE /sementes/1.json
  def destroy
    @semente.destroy
    respond_to do |format|
      format.html { redirect_to sementes_url, notice: 'Semente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_semente
      @semente = Semente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def semente_params
      params.require(:semente).permit(:kenia)
    end
end
