class TopController < ApplicationController
  def index
    @items = Item.includes(:images).order('created_at DESC').page(params[:page]).per(3)
  end
end
