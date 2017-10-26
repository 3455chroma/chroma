class YoyakusController < ApplicationController
  before_action :set_yoyaku, only: [:show, :edit, :update, :destroy]

  # GET /yoyakus
  # GET /yoyakus.json
  def index
    @yoyakus = Yoyaku.all
  end

  # GET /yoyakus/1
  # GET /yoyakus/1.json
  def show
  end

  # GET /yoyakus/new
  def new
    @yoyaku = Yoyaku.new
  end

  # GET /yoyakus/1/edit
  def edit
  end

  # POST /yoyakus
  # POST /yoyakus.json
  def create
   @yoyaku = Yoyaku.new#(yoyaku_params)
   

   @yoyaku.name = params[:yoyaku][:name]
   @yoyaku.url = params[:yoyaku][:url]

   if @yoyaku.save
    redirect_to yoyakus_path
   else
    render :new
   end


    #respond_to do |format|
    #  if @yoyaku.save
    #    format.html { redirect_to @yoyaku, notice: 'Yoyaku was successfully created.' }
    #    format.json { render :show, status: :created, location: @yoyaku }
    #  else
    #    format.html { render :new }
    #    format.json { render json: @yoyaku.errors, status: :unprocessable_entity }
    #  end
    #end
  end

  # PATCH/PUT /yoyakus/1
  # PATCH/PUT /yoyakus/1.json
  def update
    @yoyaku = Yoyaku.find(params[:id])

    @yoyaku.name = params[:yoyaku][:name]
    @yoyaku.url = params[:yoyaku][:url]
 
    if @yoyaku.save
     redirect_to yoyakus_path
    else
     render :edit
    end
    #respond_to do |format|
    #  if @yoyaku.update(yoyaku_params)
    #    format.html { redirect_to @yoyaku, notice: 'Yoyaku was successfully updated.' }
    #    format.json { render :show, status: :ok, location: @yoyaku }
    #  else
    #    format.html { render :edit }
    #    format.json { render json: @yoyaku.errors, status: :unprocessable_entity }
    #  end
    #end
  end

  # DELETE /yoyakus/1
  # DELETE /yoyakus/1.json
  def destroy
    @yoyaku.destroy
    respond_to do |format|
      format.html { redirect_to yoyakus_url, notice: 'Yoyaku was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yoyaku
      @yoyaku = Yoyaku.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yoyaku_params
      params.require(:yoyaku).permit(:amazon, :rakuten, :url)
    end
end
