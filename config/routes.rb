Rails.application.routes.draw do
  resources :games
  resources :players

  root "players#index"
end