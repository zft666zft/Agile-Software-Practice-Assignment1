
# Movie API Dockerized Application

## Project Overview
This Dockerized application integrates a Movie API with MongoDB, Redis, and Mongo Express to provide a robust environment for film data management. The application architecture leverages Docker Compose for service integration, ensuring container isolation and straightforward deployment. Below is the breakdown of each component's role within the system:

- **Movies API**: Serves as the backend, providing endpoints for accessing and managing movie information stored in MongoDB.
- **MongoDB**: Acts as the primary data store for movie details.
- **Redis**: Enhances performance by caching responses from the Movies API and handling rate limiting to improve the efficiency of the "Get All Movies" endpoint.
- **Mongo Express**: Offers a web-based MongoDB admin interface, making it easier to manage and visualize the database contents directly through a browser.

## Project Structure
```plaintext
.
├── .dockerignore      # Specifies files to ignore in Docker builds
├── .env               # Environment variables for Docker containers
├── .gitignore         # Specifies intentionally untracked files to ignore
├── docker-compose.yml # Defines and configures the application's services
├── Dockerfile         # Instructions for building the application's Docker image
├── README.md          # Provides project documentation
├── package.json       # Defines npm dependencies for the Node.js application
├── package-lock.json  # Provides version information for all packages installed
├── seed.js            # Script for seeding the MongoDB database
└── seeding.json       # JSON file containing initial data for seeding
```

## Getting Started

### Prerequisites
Ensure Docker and Docker Compose are installed on your system to run the services encapsulated in containers.

### Running the Application
1. Clone the repository to your local machine.
2. Navigate to the project directory.
3. Run the following command to start all services:
   ```sh
   docker-compose up --build
   ```
4. Once the services are up and running, you can access:
   - Movies API at `http://localhost:9000/`
   - Mongo Express at `http://localhost:8081/`

### Seeding the Database
The `seed.js` script is used to populate the MongoDB database with initial movie data from `seeding.json`. This script runs automatically when the MongoDB container is set up, ensuring the database is ready for use right away.

### Using Redis for Caching
Redis is pre-configured for caching API responses, which reduces load times and database query frequency when accessing frequently requested data.

## Container Isolation
Each service runs in its own container, ensuring isolated environments that prevent conflicts between dependencies and configurations across services.


