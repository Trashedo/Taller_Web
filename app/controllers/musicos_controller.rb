class MusicosController < ApplicationController
  before_action :set_musico, only: [:show, :edit, :update, :destroy]

  # GET /musicos
  # GET /musicos.json
  def index
    @musicos = Musico.all
  end

  # GET /musicos/1
  # GET /musicos/1.json
  def show
    @bandas = @musico.banda.all
  end

  # GET /musicos/new
  def new
    @musico = Musico.new
  end

  # GET /musicos/1/edit
  def edit
  end

  # POST /musicos
  # POST /musicos.json
  def create
    @musico = Musico.new(musico_params)

    respond_to do |format|
      if @musico.save
        format.html { redirect_to @musico, notice: 'Musico was successfully created.' }
        format.json { render :show, status: :created, location: @musico }
      else
        format.html { render :new }
        format.json { render json: @musico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musicos/1
  # PATCH/PUT /musicos/1.json
  def update
    respond_to do |format|
      if @musico.update(musico_params)
        format.html { redirect_to @musico, notice: 'Musico was successfully updated.' }
        format.json { render :show, status: :ok, location: @musico }
      else
        format.html { render :edit }
        format.json { render json: @musico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musicos/1
  # DELETE /musicos/1.json
  def destroy
    @musico.destroy
    respond_to do |format|
      format.html { redirect_to musicos_url, notice: 'Musico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musico
      @musico = Musico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def musico_params
      params.require(:musico).permit(:nombre, :paterno, :materno, :usuario_id, :instrumento_id, :usuario_id, :instrumento_id)
    end
end
