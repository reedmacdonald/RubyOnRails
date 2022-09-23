Rails.application.routes.draw do
  resources :bayern_players
  #get 'home/index'
  root 'home#index'
  get 'home/about'
  get 'bayern_players/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
