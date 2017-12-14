class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :check_logined
  private
  
  def check_logined
    if session[:usr] then
      begin
        @usr = User.find(session[:usr])
      rescue ActiveRecord::RecordNotFound
        reset_session
      end
    end

    def delete
      reset_user_session
      redirect_to session_index_url
    end
    

    unless @usr
      flash[:referer] = request.fullpath
      redirect_to controller: :login, action: :index
    end

    
  end

  

  private
  

end
