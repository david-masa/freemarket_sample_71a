class CardsController < ApplicationController
  require "payjp"
  before_action :set_card, only: [:destroy, :show]
  before_action :set_category

  def new
    card = Card.where(user_id: current_user.id)
    redirect_to action: "show" if card.exists?
  end

  def pay
    Payjp.api_key = Rails.application.credentials[:payjp][:secret_key]
    if params['card_token'].blank?
      redirect_to action: "new"
    else
      customer = Payjp::Customer.create(
        card: params[:card_token],
        metadata: {user_id: current_user.id}
      )
      @card = Card.new(
        card_id: customer.default_card,
        customer_id: customer.id,
        user_id: current_user.id
      )
      unless @card.save
        redirect_to action: "pay"
      end
    end
  end

  def destory
    unless @card.blank?
      Payjp.api_key = Rails.application.secrets.payjp_private_key
      customer = Payjp::Customer.retrieve(@card.customer_id)
      customer.delete
      @card.delete
    end
  end

  def show
    if @card.blank?
      redirect_to action: "new" 
    else
      Payjp.api_key = Rails.application.secrets.payjp_private_key
      customer = Payjp::Customer.retrieve(@card.customer_id)
      @default_card_information = customer.cards.retrieve(@card.card_id)
    end
  end

  private

  def set_card
    @card = Card.where(user_id: current_user.id).first if Card.where(user_id: current_user.id).present?
  end


end
