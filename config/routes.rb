Rails.application.routes.draw do
  devise_for :captains, path: 'captains'
  devise_for :users, path: 'users'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
