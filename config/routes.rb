Rails.application.routes.draw do
  devise_for :users
  resources :users, only:[:index,:show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
resources :events




  # Defines the root path route ("/")
  # root "articles#index"
  root "events#index"
end
