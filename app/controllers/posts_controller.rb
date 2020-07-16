class PostsController < ApplicationController
  def index
    @posts = Item.all
  end

  def edit
  end

  

end
