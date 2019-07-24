Rails.application.routes.draw do
  devise_for :users
    root 'tweets#index'
  else
  resources :tweets do
    
    resources :comments, only: [:create,:destroy,:edit,:update]        
    resources :stars, only: [:create, :destroy]
  end
  resources :categories,only:[:index,:new]
    
  resources :users, only: [:show] do
    collection do
      get 'search'
    end
  end
  
end
