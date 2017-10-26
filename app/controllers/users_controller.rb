class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  skip_before_action :check_logined

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
  #  @user = User.new(user_params)
  @user = User.new
    @user.name = params[:user][:name]
    @user.password = params[:user][:password]
    @user.account = params[:user][:account]

    if params[:user][:imagename].present?
      @user.imagename = params[:user][:imagename].original_filename
      @user.imagetype = params[:user][:imagename].content_type
      @user.imagedate = params[:user][:imagename].read
    end

    if @user.save
      redirect_to users_path
    else
      render :new
    end

  end
   # respond_to do |format|
     # if @user.save
       # format.html { redirect_to @user, notice: 'User was successfully created.' }
        #format.json { render :show, status: :created, location: @user }
      #else
        #format.html { render :new }
        #format.json { render json: @user.errors, status: :unprocessable_entity }
 #     end
 #   end
 # end

  ## PATCH/PUT /users/1
  ## PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])

    @user.name = params[:user][:name]
    if params[:user][:password].present?
      @user.password = params[:user][:password]
    end      
    @user.account = params[:user][:account]

    if params[:user][:imagename].present?
      @user.imagename = params[:user][:imagename].original_filename
      @user.imagetype = params[:user][:imagename].content_type
      @user.imagedate = params[:user][:imagename].read
    end

    if @user.save
      redirect_to users_path
    else
      render :edit
    end
  end
#    respond_to do |format|
#      if @user.update(user_params)
#        format.html { redirect_to @user, notice: 'User was successfully updated.' }
#        format.json { render :show, status: :ok, location: @user }
#      else
#        format.html { render :edit }
#        format.json { render json: @user.errors, status: :unprocessable_entity }
#      end
#      end
#    end
#  end

  def show_image
    @user = User.find(params[:id])
    send_data @user.imagedate, :filename => @user.imagename, :type => @user.imagetype, :disposition => 'inline'
  end

#  # DELETE /users/1
#  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: '削除されました。' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :account, :password, :imagename, :imagetype, :imagedate)
    end
end
