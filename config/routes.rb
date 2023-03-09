Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :places, only: %i[index show]
  resources :bookmarks, except: %i[:new, :show] do
    resources :bookmark_tags, only: %i[create]
  end

  resources :trips
  resources :bookmark_tags, only: %i[destroy]


  get 'profiles/definition', to: 'profiles#definition'
  post 'profiles/define', to: 'profiles#define'
  # patch 'profiles/switch', to: 'profiles#switch'

  get 'user/dashboard', to: 'pages#dashboard'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root to: "pages#home"
end
