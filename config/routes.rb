Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resources :tweets do
    resources :comments, only: [:create,:destroy,:edit,:update]        
    resources :stars, only: [:create, :destroy]
          
  end
  resources :users, only: [:show]
end
