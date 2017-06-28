Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :letters
      resources :rooms
      resources :friendships
    end
  end
end
