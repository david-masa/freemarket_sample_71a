Rails.application.routes.draw do
  root 'top#index'

  resources :posts, only: :index

  resources :newreg, only: :index

  resources :log, only: :index

  resources :edit, only: :index

  resources :purchase, only: :index

  resources :users, only: :index

  resources :logout, only: :index

  resources :cards, only: [:index, :new]

end