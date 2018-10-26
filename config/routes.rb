Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/login', to: 'auth#create'
      post '/logout', to: 'auth#logout'

      resources :users, only: [:index, :create]
      get '/profile', to: 'users#profile'

      resources :recipes, only: [:index, :create]

      resources :recipe_ingredients, only: [:index, :create]

      resources :ingredients, only: [:index, :create]
    end
  end
end
