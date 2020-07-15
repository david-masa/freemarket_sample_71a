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
  
  resources :posts, only: [:index, :edit]

  resources :newreg, only: :index

  resources :log, only: :index


  resources :items, only: [:index, :new, :create]

  resources :purchase, only: :index

  resources :users, only: :index

  resources :logout, only: :index

  resources :cards, only: [:index, :new]

end