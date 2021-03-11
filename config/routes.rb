Rails.application.routes.draw do

  get "/" => "application#home", as: "home"
  devise_for :users, controllers: { registrations: 'registrations', omniauth_callbacks: 'omniauth' } 
  resources :users, only: [:index]

  resources :tracks, only: [:index,:show]

  resources :stations, only: [:index,:show] do
    resources :posts, only: [:show,:new,:create] do
      resources :comments, only: [:show,:new,:create]
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
