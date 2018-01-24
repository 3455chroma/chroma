class HomeController < ApplicationController

  def kari  

    @book    = Genre.where(name: "本")
    @cd      = Genre.where(name: "CD")
    @dvd     = Genre.where(name: "DVD")
    @tsuchi1  = Stouroku.where("hatsubaiday = ? and hatsubaiday <= ? and user_id = ?",Date.today-3,Date.today-3,@usr).order(hatsubaiday: :desc)
    @tsuchi2  = Stouroku.where("hatsubaiday >= ? and hatsubaiday <= ? and user_id = ?",Date.today-2,Date.today-2,@usr).order(hatsubaiday: :desc)
    @tsuchi3  = Stouroku.where("hatsubaiday >= ? and hatsubaiday <= ? and user_id = ?",Date.today-1,Date.today-1,@usr).order(hatsubaiday: :desc)
    @tsuchi4  = Stouroku.where("hatsubaiday >= ? and hatsubaiday <= ? and user_id = ?",Date.today-0,Date.today-0,@usr).order(hatsubaiday: :desc)
    @tsuchi5  = Stouroku.where("hatsubaiday >= ? and hatsubaiday <= ? and user_id = ?",Date.today+1,Date.today+1,@usr).order(hatsubaiday: :desc)
    @tsuchi6  = Stouroku.where("hatsubaiday >= ? and hatsubaiday <= ? and user_id = ?",Date.today+2,Date.today+2,@usr).order(hatsubaiday: :desc)
    @tsuchi7  = Stouroku.where("hatsubaiday >= ? and hatsubaiday <= ? and user_id = ?" ,Date.today+3,Date.today+3,@usr).order(hatsubaiday: :desc)
    
  end
  
end
