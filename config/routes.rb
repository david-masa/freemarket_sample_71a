Rails.application.routes.draw do
  root 'items#index'


  resources :posts, only: :index

  resources :newreg, only: :index

  resources :log, only: :index


  resources :items, only: [:index, :new, :create]
end