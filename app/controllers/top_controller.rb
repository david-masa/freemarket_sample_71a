class TopController < ApplicationController
  def index
    @items = Item.includes(:images).order('created_at DESC').page(params[:page]).per(3)
    
    @category_parent_array = []
    Category.where(ancestry: nil).each do |parent|
      @category_parent_array << parent
    end
  end
end
