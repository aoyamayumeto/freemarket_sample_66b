Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  resources :items, except: :index
  resources :users, only: :show do
    resources :cards, only: [:index, :new, :create, :destroy]
  end
end
