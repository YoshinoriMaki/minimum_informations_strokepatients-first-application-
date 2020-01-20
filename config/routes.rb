Rails.application.routes.draw do
  devise_for :users
  root "informations#index2"

  resources :users, only: [:index, :edit, :new, :create, :update, :destroy]
  resources :informations, only: [:index, :new, :create, :edit, :update, :show, :destroy] 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
