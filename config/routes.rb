Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :places, only: %i[index show new create]
  resources :trips
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root to: "pages#home"
end
