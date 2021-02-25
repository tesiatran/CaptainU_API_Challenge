# API Endpoints

> I wasn't able to test every endpoint. The first 3 are expected to look like below, and I think it's because I don't have the authentication working properly yet.

http://localhost:3001/users
    `{
        "error": "Invalid username or password"
    }`

http://localhost:3001/login
    `{
        "data": {
            "message": "Invalid user credentials"
        }
    }`

http://localhost:3001/auto_login
    `{
      "message":"Log in to access"
    }`

http://localhost:3001/tournaments
http://localhost:3001/tournaments/{tournament_id}
http://localhost:3001/tournaments/{tournament_id}/events
http://localhost:3001/tournaments/{tournament_id}/teams

http://localhost:3001/events/{event_id}

http://localhost:3001/teams/{teams_id}

http://localhost:3001/players
http://localhost:3001/players/{player_id}
http://localhost:3001/players/{player_id}/assessments

http://localhost:3001/assessments
http://localhost:3001/assessments/{assessment_id}
http://localhost:3001/assessments/{assessment_id}
http://localhost:3001/assessments/{assessment_id}

http://localhost:3001/notes
http://localhost:3001/notes/{notes_id}
http://localhost:3001/notes/{notes_id}
