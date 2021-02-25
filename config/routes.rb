Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"

  # option 1
  # resources :tournaments, only: [:show, :index] do
  #   resources :teams, only: [:show, :index] do
  #     resources :players, only: [:show, :index] do
  #       resources :assessments, only: [:create, :show, :update, :destroy]
  #       resources :notes, only: [:show, :update, :destroy]
  #     end
  #   end
  # end

  # option 2
  resources :tournaments, only: [:show, :index]
  resources :teams, only: [:show]
  resources :players, only: [:show, :index]
  resources :assessments, only: [:create, :show, :update, :destroy]
  resources :notes, only: [:show, :update, :destroy]

  ## Are options 1 & 2 the same? If yes, why nest, and how much nesting is okay?

end
