class LoginController < ApplicationController

  skip_before_action :check_logined

  def index
  end  

  def auth
    usr = User.authenticate(params[:account], params[:password])
    if usr then

      reset_session

      session[:usr] = usr.id

      redirect_to params[:referer]
    else
      flash.now[:referer]
      @error = "アカウントとパスワードに誤りがあります。"
      render 'index' 
    end
  end

end