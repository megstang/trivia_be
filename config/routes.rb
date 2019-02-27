Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      resources :sessions
      resources :games
      patch "/score", to: "score#update"
      get "/score", to: "score#show"
    end
  end
end
