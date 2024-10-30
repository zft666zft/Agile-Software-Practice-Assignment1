## Agile Software Practice - Assignment 1.
# Movie API Dockerized Application

## Project overview
This project uses Docker Compose to integrate a Movie API application with a MongoDB database, Redis caching service, and Mongo Express management interface. The following are the uses of each service:
- **Movies API**: Provides an API for film information, stored in a MongoDB database.
- **Redis**: Caching of Movies API responses and request rate limiting for the "Get All Movies" interface.
- **MongoDB**: Store film data.
- **Mongo Express**: Web interface for managing MongoDB.

## Project structure
```plaintext
.
├── .dockerignore
├── .env
├── .gitignore
├── docker-compose.yml
├── README.md
└── seeding.json
