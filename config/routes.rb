Rails.application.routes.draw do
  resources :game_cards
  resources :games
  resources :users, only: [:create]
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  post "/create", to: "users#create"
  post "/games", to: "games#create"
  post "/gamecards", to: "game_cards#create"
  get "/me", to:  "users#show"
end
