Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations' } 
  resources :users 

  resources :tracks, only: [:index]

  resources :stations, only: [:index,:show] do
    resources :posts, only: [:show,:new,:create]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
