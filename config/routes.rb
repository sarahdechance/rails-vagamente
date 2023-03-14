Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :places, only: %i[index show] do
    resources :bookmarks, only: %i[create]
  end
  resources :bookmarks, except: %i[new create show] do
    resources :bookmark_tags, only: %i[create]
  end

  resources :trips
  resources :bookmark_tags, only: %i[destroy]

  get 'profiles/definition', to: 'profiles#definition'
  post 'profiles/define', to: 'profiles#define'
  get 'profiles/results', to: 'profiles#results'
  # patch 'profiles/switch', to: 'profiles#switch'

  get 'user/dashboard', to: 'pages#dashboard'
  # get 'trips/search', to: "trips#search"
  # post 'trips', to: 'trips#research'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root to: "pages#home"
end
