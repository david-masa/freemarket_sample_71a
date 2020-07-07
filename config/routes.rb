Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'users/new_addresses', to: 'users/registrations#new_address'
    
    post 'addresses', to: 'users/registrations#create_address'
  end


  root 'top#index'
  resources :top, only: [:new, :create, :show, :edit, :update, :destroy]

  resources :posts, only: :index

  resources :newreg, only: :index

  resources :log, only: :index


  resources :items, only: [:index, :new]

  resources :purchase, only: :index

  resources :users,     only: [:show, :index, :edit, :update] do
    get 'edit_detail', to: 'users#edit_detail'
    patch 'update_detail', to: 'users#update_detail'
  end

  resources :logout, only: :index

  resources :cards, only: [:index, :new]

end
