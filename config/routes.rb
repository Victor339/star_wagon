Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :spaceships do
    resources :bookings, only: [:show, :create]
  end
  resources :bookings, only: [:edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
