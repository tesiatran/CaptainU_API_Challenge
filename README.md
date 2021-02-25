# CaptainU API Code Challenge

Build a new API that allows coaches to login to a mobile app and proceed to see information on upcoming tournaments, attending teams, athletes, and various details about the athletes.

## Getting Started
- Tech stack: Ruby 2.7.2, Rails 6.1.3, PostgreSQL 12.6
- Gems used: 'bcrypt', 'rack-cors', 'jwt'
- Git clone the repo to your computer
- Install PostgreSQL if you don't have it
- Create & populate database locally:
  - `rails db:create`
  - `rails db:migrate`
  - `rails db:seed`
- Start Rails server:
  - `rails s` or `rails s -p 3001` (sub in preferred port)


### Possible Roadmap?
  1. /login
  2. /tournaments
  3. /tournaments/{tournament_id}
  4. /tournaments/{tournament_id}/events
  5. /tournaments/{tournament_id}/teams
  6. /events/{event.id}
  7. /teams/{teams_id}
  8. /players
  9. /players/{player_id}
  10. /players/{player_id}/assessments
  11. /assessments
  12. /assessments/{assessment_id}
  13. /notes
  14. /notes/{notes_id}
