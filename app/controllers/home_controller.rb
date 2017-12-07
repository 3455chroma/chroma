class HomeController < ApplicationController
  def kari
    @book = Genre.where(name: "本")
    @cd = Genre.where(name: "CD")
    @dvd = Genre.where(name: "DVD")
  end
end
