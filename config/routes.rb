Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show]
      resources :letters, only: [:index, :show, :create, :update, :destroy]
      resources :rooms, only: [:index, :show]
      resources :friendships, only: [:index, :show, :update, :create, :destroy]
      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'
    end
  end
end
