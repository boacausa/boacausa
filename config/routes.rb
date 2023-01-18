Rails.application.routes.draw do
  devise_for :users
  resources :pets
  resources :organizations
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "organizations#index"
end
