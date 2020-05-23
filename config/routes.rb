Rails.application.routes.draw do
  root 'top#index'
  root "purchase#index"
end
