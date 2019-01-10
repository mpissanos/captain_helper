Rails.application.routes.draw do

  resources :clients
  resources :trips
  
  resources :boats do
    resources :trips, only: [:index, :show, :new]
  end

  devise_for :users

end
