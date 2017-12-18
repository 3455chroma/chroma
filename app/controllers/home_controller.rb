class HomeController < ApplicationController

  def kari  

    @book    = Genre.where(name: "本")
    @cd      = Genre.where(name: "CD")
    @dvd     = Genre.where(name: "DVD")
    @tsuchi  = Stouroku.where("hatsubaiday >= ? and hatsubaiday <= ?",Date.today-3,Date.today+3).order(hatsubaiday: :desc)
    
  end
  
end
