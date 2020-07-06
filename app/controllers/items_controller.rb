class ItemsController < ApplicationController
  def index
    @items = Item.includes(:images).order('created_at DESC').page(params[:page]).per(5)
  end

  def new
    # binding.pry
    @item = Item.new
    @item.images.new
  
    def get_category_children
      @category_children = Category.find_by(id: "#{params[:parent_id]}", ancestry: nil).children
    end

    def get_category_grandchildren
      @category_grandchildren = Category.find("#{params[:child_id]}").children
    end
  end

  def create
    # binding.pry
    @item = Item.create!(item_params)
    if @item.save
      redirect_to items_path, notice: "出品しました"
    else
      redirect_to new_item_path, notice: "出品できません。入力必須項目を確認してください"
    end
  end



  def edit
  end  

  def update
    if @item.update(item_params)
      redirect_to item_path(@item.id), notice: "商品情報を編集しました"
    else
      redirect_to edit_item_path, notice: "編集できません。入力必須項目を確認してください"
    end
  end

  def destroy
    if @item.destroy
      redirect_to items_path, notice: "商品を削除しました"
    else
      redirect_to item_path, notice: "商品を削除できませんでした"
    end
  end

  def show
    @item = Item.includes(:images)
    @item = Item.find(params[:id])
    @comment = Comment.new
    @comments = @item.comments.includes(:user)
  end

  def top
    @items = Item.includes(:images).order('created_at DESC').limit(3)
    @category = Item.where(category_id: [1...200]).includes(:images).order('created_at DESC').limit(3)
  end

  private
  def item_params
    params.require(:item).permit(:name, :detail, :brand, :category_id, :price, :condition_id, :shipping_area_id, :shipping_days, :shipping_cost, :costomer, images_attributes: [:src, :_destroy, :id])
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def move_to_root
    redirect_to root_path unless user_signed_in?
  end
  def correct_user
    if @current_user.id !=  @item.user_id
     redirect_to root_path
    end
  end
end