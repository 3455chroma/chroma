class MtourokusController < ApplicationController
  before_action :set_mtouroku, only: [:show, :edit, :update, :destroy]

  # GET /mtourokus
  # GET /mtourokus.json
  def index
    @mtourokus = Mtouroku.all
  end

  # GET /mtourokus/1
  # GET /mtourokus/1.json
  def show
  end

  # GET /mtourokus/new
  def new
    @mtouroku = Mtouroku.new
  end

  # GET /mtourokus/1/edit
  def edit
  end

  # POST /mtourokus
  # POST /mtourokus.json
  def create
    @mtouroku = Mtouroku.new(mtouroku_params)

    respond_to do |format|
      if @mtouroku.save
        format.html { redirect_to @mtouroku, notice: 'Mtouroku was successfully created.' }
        format.json { render :show, status: :created, location: @mtouroku }
      else
        format.html { render :new }
        format.json { render json: @mtouroku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mtourokus/1
  # PATCH/PUT /mtourokus/1.json
  def update
    respond_to do |format|
      if @mtouroku.update(mtouroku_params)
        format.html { redirect_to @mtouroku, notice: 'Mtouroku was successfully updated.' }
        format.json { render :show, status: :ok, location: @mtouroku }
      else
        format.html { render :edit }
        format.json { render json: @mtouroku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mtourokus/1
  # DELETE /mtourokus/1.json
  def destroy
    @mtouroku.destroy
    respond_to do |format|
      format.html { redirect_to mtourokus_url, notice: 'Mtouroku was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mtouroku
      @mtouroku = Mtouroku.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mtouroku_params
      params.require(:mtouroku).permit(:id, :memo, :genre_id)
    end
end
