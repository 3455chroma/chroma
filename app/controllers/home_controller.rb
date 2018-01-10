class HomeController < ApplicationController

  def kari  

    @book    = Genre.where(name: "本")
    @cd      = Genre.where(name: "CD")
    @dvd     = Genre.where(name: "DVD")
    @tsuchi1  = Stouroku.where("hatsubaiday = ? and hatsubaiday <= ?",Date.today-3,Date.today-3).order(hatsubaiday: :desc)
    @tsuchi2  = Stouroku.where("hatsubaiday >= ? and hatsubaiday <= ?",Date.today-2,Date.today-2).order(hatsubaiday: :desc)
    @tsuchi3  = Stouroku.where("hatsubaiday >= ? and hatsubaiday <= ?",Date.today-1,Date.today-1).order(hatsubaiday: :desc)
    @tsuchi4  = Stouroku.where("hatsubaiday >= ? and hatsubaiday <= ?",Date.today-0,Date.today-0).order(hatsubaiday: :desc)
    @tsuchi5  = Stouroku.where("hatsubaiday >= ? and hatsubaiday <= ?",Date.today+1,Date.today+1).order(hatsubaiday: :desc)
    @tsuchi6  = Stouroku.where("hatsubaiday >= ? and hatsubaiday <= ?",Date.today+2,Date.today+2).order(hatsubaiday: :desc)
    @tsuchi7  = Stouroku.where("hatsubaiday >= ? and hatsubaiday <= ?",Date.today+3,Date.today+3).order(hatsubaiday: :desc)
    
  end
  
end
