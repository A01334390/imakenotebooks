class CuadernosController < ApplicationController
  before_action :set_cuaderno, only: [:show, :edit, :update, :destroy]

  # GET /cuadernos
  # GET /cuadernos.json
  def index
    @cuadernos = Cuaderno.all
  end

  # GET /cuadernos/1
  # GET /cuadernos/1.json
  def show
  end

  # GET /cuadernos/new
  def new
    @cuaderno = Cuaderno.new
  end

  # GET /cuadernos/1/edit
  def edit
  end

  # POST /cuadernos
  # POST /cuadernos.json
  def create
    @cuaderno = Cuaderno.new(cuaderno_params)

    respond_to do |format|
      if @cuaderno.save
        format.html { redirect_to @cuaderno, notice: 'Cuaderno was successfully created.' }
        format.json { render :show, status: :created, location: @cuaderno }
      else
        format.html { render :new }
        format.json { render json: @cuaderno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cuadernos/1
  # PATCH/PUT /cuadernos/1.json
  def update
    respond_to do |format|
      if @cuaderno.update(cuaderno_params)
        format.html { redirect_to @cuaderno, notice: 'Cuaderno was successfully updated.' }
        format.json { render :show, status: :ok, location: @cuaderno }
      else
        format.html { render :edit }
        format.json { render json: @cuaderno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuadernos/1
  # DELETE /cuadernos/1.json
  def destroy
    @cuaderno.destroy
    respond_to do |format|
      format.html { redirect_to cuadernos_url, notice: 'Cuaderno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuaderno
      @cuaderno = Cuaderno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cuaderno_params
      params.require(:cuaderno).permit(:tiempo, :tipo, :beneficio, :liston, :imagen, :resorte, :tipohojas)
    end
end
