class StourokusController < ApplicationController
  before_action :set_stouroku, only: [:show, :edit, :update, :destroy]
  before_action :set_all
  # GET /stourokus
  # GET /stourokus.json
  def index
  #  @stourokus1 = Stouroku.where(cd:false)
  #  @stourokus2 = Stouroku.where(cd:true)

    if params[:genre_id].present? && params[:genre_id].to_i != 0
      @stourokus1 = Stouroku.where(cd: false). where(dvd:false,genre_id: params[:genre_id],user_id: session[:usr])
      @stourokus2 = Stouroku.where(cd: true, genre_id: params[:genre_id],user_id: session[:usr])
      @stourokus3 = Stouroku.where(cd: false). where(dvd:true, genre_id: params[:genre_id],user_id: session[:usr])
      @genre_id = params[:genre_id]
    else 
      @stourokus1 = Stouroku.where(cd: false). where(dvd: false,user_id: session[:usr])
      @stourokus2 = Stouroku.where(cd: true, user_id: session[:usr])
      @stourokus3 = Stouroku.where(cd: false). where(dvd:true, user_id: session[:usr])
      @genre_id = 0
    end
    
  end

  # GET /stourokus/1
  # GET /stourokus/1.json
  def show
    @yoyaku = Yoyaku.all
    @genre = Genre.all

  end

  # GET /stourokus/new
  def new
    @stouroku = Stouroku.new
  end

  # GET /stourokus/1/edit
  def edit
    if params[:genre_id].present?
      @genre_id = params[:genre_id]
    else 
      @genre_id = 0
    end  
  end

  # POST /stourokus
  # POST /stourokus.json
  def create
#    @stouroku = Stouroku.new(stouroku_params)

#    respond_to do |format|
#      if @stouroku.save
#        format.html { redirect_to @stouroku, notice: 'Stouroku was successfully created.' }
#        format.json { render :show, status: :created, location: @stouroku }
#      else
#        format.html { render :new }
#        format.json { render json: @stouroku.errors, status: :unprocessable_entity }
#      end
#    end
#  end

    @stouroku               = Stouroku.new
    @stouroku.name          = params[:stouroku][:name]
    @stouroku.genre_id      = params[:stouroku][:genre_id]    
    @stouroku.hito          = params[:stouroku][:hito]
    @stouroku.hatsubaiday   =
              Date.new(params[:stouroku][:'hatsubaiday(1i)'].to_i,
                       params[:stouroku][:'hatsubaiday(2i)'].to_i,
                       params[:stouroku][:'hatsubaiday(3i)'].to_i,)
    @stouroku.tenpo         = params[:stouroku][:tenpo]
    @stouroku.money         = params[:stouroku][:money]
    @stouroku.tokuten       = params[:stouroku][:tokuten]
    @stouroku.user_id       = session[:usr]      
    @stouroku.cd       = params[:stouroku][:cd]
    @stouroku.dvd       = params[:stouroku][:dvd]
    

    if @stouroku.save
      redirect_to @stouroku
    else
      render :new
    end
  end
 

  # PATCH/PUT /stourokus/1
  # PATCH/PUT /stourokus/1.json
  def update
#    respond_to do |format|
#      if @stouroku.update(stouroku_params)
#        format.html { redirect_to @stouroku, notice: 'Stouroku was successfully updated.' }
#        format.json { render :show, status: :ok, location: @stouroku }
#      else
#        format.html { render :edit }
#        format.json { render json: @stouroku.errors, status: :unprocessable_entity }
#      end
#    end
#  end

  @stouroku.name          = params[:stouroku][:name]
  @stouroku.genre_id      = params[:stouroku][:genre_id]    
  @stouroku.hito          = params[:stouroku][:hito]
  @stouroku.hatsubaiday   = 
            Date.new(params[:stouroku][:'hatsubaiday(1i)'].to_i,
                     params[:stouroku][:'hatsubaiday(2i)'].to_i,
                     params[:stouroku][:'hatsubaiday(3i)'].to_i,)
  @stouroku.tenpo         = params[:stouroku][:tenpo]
  @stouroku.money         = params[:stouroku][:money]
  @stouroku.tokuten       = params[:stouroku][:tokuten] 
  @stouroku.user_id       = session[:usr]   
  @stouroku.cd       = params[:stouroku][:cd]
  @stouroku.dvd       = params[:stouroku][:dvd]
  @genre_id       = params[:search_genre_id]
  

  if @stouroku.save
    
    if @genre_id != 0
    redirect_to stourokus_path(:genre_id => @genre_id)
    else
    redirect_to stourokus_path
    end
    
  else
    render :edit
  end
end

  # DELETE /stourokus/1
  # DELETE /stourokus/1.json
  def destroy
    @stouroku.destroy
    respond_to do |format|
      format.html { redirect_to stourokus_url(:all=>@all), notice: '消去完了' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stouroku
      @stouroku = Stouroku.find(params[:id])
    end
    def set_all
      if params[:all].present?
        @all = true
      else
        @all = false
      end
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def stouroku_params
      params.require(:stouroku).permit(:genre_id, :name, :hito, :hatsubaiday, :tenpo, :money, :tokuten, :user_id, :cd, :dvd)
    end
end
