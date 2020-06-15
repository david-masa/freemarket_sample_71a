Rails.application.routes.draw do
  root 'edit#index'

  resources :posts, only: :index

  resources :newreg, only: :index

  resources :log, only: :index

  resources :edit, only: :index


end