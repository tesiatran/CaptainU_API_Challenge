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

  ## Are options 1 & 2 the same? If yes, why nest, and how much nesting is okay?

  # option 2
  # resources :tournaments, only: [:show, :index]
  # resources :teams, only: [:show]#
  # resources :players, only: [:show, :index]
  # resources :assessments, only: [:create, :show, :update, :destroy]
  # resources :notes, only: [:show, :update, :destroy]

  ## Or maybe option 3 is the only correct answer??

  # option 3
  get "/tournaments", to: "tournament#index"
  get "/tournaments/{tournament_id}", to: "tournament#one_tournament"
  get "/tournaments/{tournament_id}/events", to: "tournament#tournament_events"
  get "/tournaments/{tournament_id}/teams", to: "tournament#tournament_teams"

  get "/events/{event_id}", to: "events#show"

  get "/teams/{teams_id}", to: "teams#show"

  get "/players", to: "players#index"
  get "/players/{player_id}", to: "players#show"
  get "/players/{player_id}/assessments", to: "players#player_assessments"

  post "/assessments", to: "assessments#create"
  get "/assessments/{assessment_id}", to: "assessments#show"
  patch "/assessments/{assessment_id}", to: "assessments#update"
  delete "/assessments/{assessment_id}", to: "assessments#destroy"

end
