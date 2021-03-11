Rails.application.routes.draw do

  root 'tracks#index'

  devise_for :users, controllers: { registrations: 'registrations', omniauth_callbacks: 'omniauth' } 
  resources :users 

  resources :tracks, only: [:index,:show]

  resources :stations, only: [:index,:show] do
    resources :posts, only: [:show,:new,:create]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
