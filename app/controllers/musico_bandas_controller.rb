class MusicoBandasController < ApplicationController
  before_action :set_musico_banda, only: [:show, :edit, :update, :destroy]

  # GET /musico_bandas
  # GET /musico_bandas.json
  def index
    @musico_bandas = MusicoBanda.all
  end

  # GET /musico_bandas/1
  # GET /musico_bandas/1.json
  def show
  end

  # GET /musico_bandas/new
  def new
    @musico_banda = MusicoBanda.new
  end

  # GET /musico_bandas/1/edit
  def edit
  end

  # POST /musico_bandas
  # POST /musico_bandas.json
  def create
    @musico_banda = MusicoBanda.new(musico_banda_params)

    respond_to do |format|
      if @musico_banda.save
        format.html { redirect_to @musico_banda, notice: 'Musico banda was successfully created.' }
        format.json { render :show, status: :created, location: @musico_banda }
      else
        format.html { render :new }
        format.json { render json: @musico_banda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musico_bandas/1
  # PATCH/PUT /musico_bandas/1.json
  def update
    respond_to do |format|
      if @musico_banda.update(musico_banda_params)
        format.html { redirect_to @musico_banda, notice: 'Musico banda was successfully updated.' }
        format.json { render :show, status: :ok, location: @musico_banda }
      else
        format.html { render :edit }
        format.json { render json: @musico_banda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musico_bandas/1
  # DELETE /musico_bandas/1.json
  def destroy
    @musico_banda.destroy
    respond_to do |format|
      format.html { redirect_to musico_bandas_url, notice: 'Musico banda was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musico_banda
      @musico_banda = MusicoBanda.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def musico_banda_params
      params.require(:musico_banda).permit(:musico_id, :banda_id)
    end
end
