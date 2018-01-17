class MemoController < ApplicationController
  def top
    @bundoki = Genre.where(name: "本")
    @seisan = Genre.where(name: "CD")
    @sankaku = Genre.where(name: "DVD")
  end
end
