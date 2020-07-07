class UsersController < ApplicationController
  before_action :set_user_params, only: [:show, :edit, :update]
  # before_action :set_user_current, only: [:index, :edit_detail, :update_detail]
  def index
    @items = @user.items
  end
  def show
    @items = @user.items
  end
end
