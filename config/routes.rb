Rails.application.routes.draw do
  get 'login', to: 'sessions#new'
  post 'sessions/create'

  resources :guests, only: [:index, :new, :create, :show]
  resources :episodes, only: [:index, :show]
  resources :appearances, only: [:new, :create, :show]
end
