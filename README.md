# Shop

This is an E-commerce platform built with Nextjs and medusajs.

## Project Structure

```perl
shop/
├── backend/            # Medusa backend
│   ├── Dockerfile
│   ├── medusa-config.js
│   ├── ...
├── frontend/           # Next.js frontend
│   ├── Dockerfile
│   ├── next.config.js
│   ├── ...
├── docker-compose.yml  # Docker Compose configuration
├── Makefile            # Makefile for managing Docker commands
└── README.md           # Project documentation

```

### Prerequisites

Before you start, ensure you have the following installed:

* Docker
* Docker Compose
* Make

## Getting Started

1. Clone the Repository

```bash
git clone https://github.com/yourusername/your-repo-name.git
cd your-repo-name
```

2. Build and Start the Services
Use the Makefile commands to build the Docker images and start the services:

```bash
make build
make up
```

3. Access the Services
- Medusa Backend: http://localhost:9000
- Next.js Frontend: http://localhost:3000


4. View Logs
To view the logs for all services:

```bash
make logs
```

5. Stop the Services
To stop the running services:

```bash
make down
```

## Environment Variables

You can configure the environment variables for the services in the docker-compose.yml file. Ensure that your database and other service configurations are correct.

## Development

### Backend
The backend is powered by Medusa. You can modify the Medusa backend by editing the files in the `backend/` directory.

c Frontend
The frontend is built with Next.js. You can modify the Next.js app by editing the files in the `frontend/` directory.

## Docker Setup

`.dockerignore`
The `.dockerignore` files in each service directory ensure that unnecessary files are excluded from the Docker build context, making the images leaner.

`.gitignore`
The `.gitignore` file in the root of the monorepo excludes node modules, logs, and other unwanted files from being committed to the repository.

### Contributing
If you'd like to contribute, please fork the repository and use a feature branch. Pull requests are warmly welcome.

### License
This project is licensed under the MIT License.

### Contact
If you have any questions, feel free to reach out to teebarg01@gmail.com.

