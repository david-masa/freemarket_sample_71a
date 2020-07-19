class PostsController < ApplicationController
  def index
    @item = Item.all
    
    
  end

  def show
    @item = Item.includes(:images)
    @item = Item.find(params[:id])
    
  end




  def edit
  end


  
  

end
