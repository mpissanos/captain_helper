Rails.application.routes.draw do
  
  resources :trips
  
  resources :boats do
    resources :trips, only: [:index, :show, :new]
  end

  resources :clients do 
    resources :trips, only: [:index, :show, :new]
  end

  
  devise_for :clients
  devise_for :users, controllers: {omniauth}

end
