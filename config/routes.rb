Rails.application.routes.draw do
  get 'tournaments/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
  get "/tournaments", to: "tournaments#index"
end
