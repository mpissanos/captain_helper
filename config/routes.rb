Rails.application.routes.draw do

 

  resources :trips
  root 'trips#index'
  
  resources :boats do
    resources :trips, only: [:index, :show, :new]
  end

  resources :clients do 
    resources :trips, only: [:index, :show, :new]
  end

  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}

  

end
