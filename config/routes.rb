Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  resources :bayern_players
  root 'home#index'
  get 'bayern_players/index'
end
