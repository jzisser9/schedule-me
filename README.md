# Schedule.me

A simple and anonymous scheduling app.

## How does it work?

1. Create a new Event, choose dates, times, and duration, and receive a permalink.
2. Share the permalink with friends, colleagues, coworkers, etc. They will be able to anonymously provide their availability on the given days and time slots.
3. Check back via the permalink to see which time slots agree with everyone. In the event no time slots agree with everyone, see which slot(s) most applicants can attend.

## Project structure

This project uses `docker` and `docker-compose` to run all required services as containers.

* `backend` contains the backend server code, written in Ruby on Rails.
* `frontend` contains the front-end UI, written in React.

## Getting Started

TODO: Eventually docker-compose will start up the backend and frontend.

backend:

```
cd backend
docker-compose up -d
```
