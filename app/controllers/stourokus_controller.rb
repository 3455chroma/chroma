class StourokusController < ApplicationController
  before_action :set_stouroku, only: [:show, :edit, :update, :destroy]

  # GET /stourokus
  # GET /stourokus.json
  def index
    @stourokus = Stouroku.all
  end

  # GET /stourokus/1
  # GET /stourokus/1.json
  def show
  end

  # GET /stourokus/new
  def new
    @stouroku = Stouroku.new
  end

  # GET /stourokus/1/edit
  def edit
  end

  # POST /stourokus
  # POST /stourokus.json
  def create
    @stouroku = Stouroku.new(stouroku_params)

    respond_to do |format|
      if @stouroku.save
        format.html { redirect_to @stouroku, notice: 'Stouroku was successfully created.' }
        format.json { render :show, status: :created, location: @stouroku }
      else
        format.html { render :new }
        format.json { render json: @stouroku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stourokus/1
  # PATCH/PUT /stourokus/1.json
  def update
    respond_to do |format|
      if @stouroku.update(stouroku_params)
        format.html { redirect_to @stouroku, notice: 'Stouroku was successfully updated.' }
        format.json { render :show, status: :ok, location: @stouroku }
      else
        format.html { render :edit }
        format.json { render json: @stouroku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stourokus/1
  # DELETE /stourokus/1.json
  def destroy
    @stouroku.destroy
    respond_to do |format|
      format.html { redirect_to stourokus_url, notice: 'Stouroku was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stouroku
      @stouroku = Stouroku.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stouroku_params
      params.require(:stouroku).permit(:genre_id, :name, :hito, :hatsubaiday, :tenpo, :money, :tokuten, :user_id)
    end
end
