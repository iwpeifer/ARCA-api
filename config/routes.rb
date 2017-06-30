Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :letters
      resources :rooms
      resources :friendships
      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'
    end
  end
end
