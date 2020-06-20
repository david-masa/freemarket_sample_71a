class TopController < ApplicationController

  def index
    # @items = Item.includes(:item_images).order('created_at DESC').limit(3)
    # @item_images = ItemImage.all
  end

end
