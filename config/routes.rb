Rails.application.routes.draw do
  root to: 'home#index'
  resources :images
  resources :users, only:[:create, :new]
  get '/sessions/new'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
