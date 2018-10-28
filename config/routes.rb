Rails.application.routes.draw do
  devise_for :users

  resources :cards, only: %i[index create]
  resources :interactive, only: %i[index create show] do
    member do
      post :join_active
      post :add_card
      post :afford_card
    end
  end
end
