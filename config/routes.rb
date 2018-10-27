Rails.application.routes.draw do
  devise_for :users

  resources :cards, only: [:index, :create]
  resources :interactive, only: [:index, :create, :show]
end
