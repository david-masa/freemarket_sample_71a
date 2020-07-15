class TopController < ApplicationController
  def index
    @items = Item.includes(:images).order('id DESC').page(params[:page]).per(3)
  end
end
