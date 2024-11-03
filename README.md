# Movie API Dockerized Application

## Project Overview
This Dockerized application integrates a Movie API with MongoDB, Redis, and Mongo Express to provide a robust environment for film data management. The application leverages Docker Compose for service integration, ensuring container isolation and straightforward deployment across different environments (development and production).

### Components
- **Movies API**: Serves as the backend, providing endpoints for accessing and managing movie information stored in MongoDB.
- **MongoDB**: Acts as the primary data store for movie details.
- **Redis**: Enhances performance by caching responses from the Movies API and handling rate limiting to improve the efficiency of the "Get All Movies" endpoint.
- **Mongo Express**: Provides a web-based MongoDB admin interface for easier management and visualization of the database contents.

## Project Structure
```plaintext
.
├── .dockerignore      # Specifies files to ignore in Docker builds
├── .env.dev           # Environment variables for the development setup
├── .env.prod          # Environment variables for the production setup
├── .gitignore         # Specifies intentionally untracked files to ignore
├── docker-compose.yml # Defines and configures the application's services
├── Dockerfile         # Instructions for building the application's Docker image
├── package.json       # Defines npm dependencies for the Node.js application
├── package-lock.json  # Provides version information for all packages installed
├── README.md          # Provides project documentation
├── seed.js            # Script for seeding the MongoDB database
└── seeding.json       # JSON file containing initial data for seeding
```

## Getting Started

### Prerequisites
Ensure Docker and Docker Compose are installed on your system to run the services encapsulated in containers.

### Running the Application
1. Clone the repository to your local machine.
2. Navigate to the project directory.
3. Use the appropriate `.env` file based on your environment:
   - **Development Environment**: 
     ```sh
     docker-compose --env-file .env.dev up --build
     ```
   - **Production Environment**: 
     ```sh
     docker-compose --env-file .env.prod up --build
     ```
4. Access the application:
   - **Movies API**: `http://localhost:9000/`
   - **Mongo Express**: `http://localhost:8081/`

### Seeding the Database
The `seed.js` script populates the MongoDB database with initial movie data from `seeding.json` and runs automatically when the MongoDB container is set up, ensuring the database is ready for immediate use.

### Using Redis for Caching
Redis is configured to cache API responses, which reduces load times and database query frequency when accessing frequently requested data.

## Container Isolation
Each service runs in its own container, ensuring isolated environments that prevent conflicts between dependencies and configurations across services. This setup helps maintain a clean separation between development and production settings, reducing the risk of configuration leaks or conflicts.

