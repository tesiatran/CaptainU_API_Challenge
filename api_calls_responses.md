http://localhost:3001/auto_login/auto_login

http:./tournaments", to: "tournament#index"
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

  post "/notes", to: "notes#create"
  patch "/notes/{notes_id}", to: "notes#update"
  delete "/notes/{notes_id}", to: "notes#destroy"
