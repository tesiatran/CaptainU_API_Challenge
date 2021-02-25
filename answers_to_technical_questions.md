1. How long did you spend on the code challenge? What would you add to your solution if
you had more time? If you didn't spend much time on the code challenge then use this
as an opportunity to explain what you would add.

> I spent the majority of the last 3 days working on the code challenge, and when I say working, I really mean reading documentation, watching YouTube videos, and trying to understand as much as I could about Ruby and Rails. It seemed pretty daunting, even just trying to set up my environment and installing everything, and I actually ran into a problem with things not working. I was initially going to use MySQL because I already had it and have used it, but it wasn't connecting to my app. After trying to search for a solution, I saw on a GitHub thread that it was happening to others and was likely a problem with the gem. I didn't want to waste more time, but I also repeatedly questioned my sanity when I decided to switch over to PostgreSQL late Tuesday night. But I'm happy to say that I greatly enjoyed working on this challenge so much more than I initially thought I would. I got the opportunity to start learning three brand new technologies that I really like and will keep using, as well as solidify my decision to focus on back-end development (I find it pretty fun). All this to say that if I had more time to work on the challenge, I would definitely go back and work on the controllers and the connection between data. I think I got the very basics of what goes into a controller, but I'm definitely missing a lot of pieces in there, especially in relation to when things overlap or connect to each other. For example, Assessments are attached to Players, but they're created by Users. In my Assessments controller, I just have the basic create, update, destroy methods with no relation to players or users, and it's the same throughout all my controllers. I feel like I was able to understand enough to set up the structure of this project, so I was able to write the initial routes and models and controllers, but with more time, I would get into the meat of it to make sure things are connected properly and of course that my endpoints are returning the correct responses. Another big piece I definitely want to figure out is the authentication part. I was pretty happy when I got the /login endpoint to give me a successful response, but it wasn't the correct response. I still haven't received a JWT token from that endpoint, which means I can't require authentication before making requests to the other endpoints. I'll likely continue to work on this as I think this is a really great learning experience.


2. What was the most useful feature that was added to the latest version of a language you
used? Please include a snippet of code that shows how you've used it.

> Hands down, I would have to say React Router (since React is technically JavaScript). It's not super new, but it has been super useful in the freelance project that I'm currently working on.

    import React from 'react';
    import { Switch, Route } from 'react-router-dom';
    import Landing from './landing';
    import Admin from './admin';
    import Athlete from './athlete';

    const Homepage = () => {
      return (
        <Switch>
          <Route path="./landing">
            <Landing/>
          </Route>
          <Route path="./admin">
            <Admin/>
          </Route>
          <Route path="./athlete">
            <Athlete/>
          </Route>
        </Switch>
      )
    }

    export default Homepage;


3. How would you track down a performance issue in production? Have you ever had to do
this?

> I have not had to do this yet, but I would imagine you need to know it exists first, which could be done by deciding on a primary metric that is easily loggable. You should also be able to consistently monitor that metric, so whatever action is providing that metric should be able to be performed often. For example, on a photography site, you can track the amount of time it takes for a photo to load after a user clicks on it. Since this will likely happen often, you have a reliable source of data with which you can track one aspect of performance of your site in production. You could then add more metrics similar to that, and together these might help you monitor for network delays or perhaps a database that is slowing down your system.


4. Please describe yourself using JSON

    {
      "Tesia": {
        "lastName": "Tran",
        "occupation": {
          "first": "software developer",
          "second": "dog mom"
        },
        "furBabies": {
          "Lucky": {
            "breed": "Jack Russell Terrier mix",
            "ageInMonths": 11
          },
          "Pinto": {
            "breed": "Norfolk Terrier mix",
            "ageInMonths": 6
          }
        },
        "foodie": true,
        "favoriteCities": [
          "San Diego",
          "Austin",
          "Durango"
        ],
        "hobbies": [
          "digital art",
          "video games",
          "fly fishing"
        ],
        "canWhistle": false,
        "futurePlans": {
          "gradSchool": true,
          "travelTo": ["Iceland", "Japan", "Brazil"],
          "runMarathon": true,
          "skyDive": false,
          "totalDogs": 5
        }
      }
    }
