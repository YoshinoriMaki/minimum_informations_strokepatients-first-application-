Rails.application.routes.draw do
  devise_for :users
  root "users#index"
  resources :informations, only: [:index, :new, :create, :edit, :update, :show, :destroy] 
    
  resources :users, only: [:index, :edit, :new, :create, :update, :destroy]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
