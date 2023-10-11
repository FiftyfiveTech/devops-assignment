# Dockerized WordPress with Docker Compose and Dockerfile

This project demonstrates how to create a Dockerized WordPress application using Docker Compose with additional features for container health checks.

## Prerequisites

Before getting started, make sure you have the following prerequisites installed:

- Docker: [Install Docker](https://docs.docker.com/get-docker/)
- Docker Compose: [Install Docker Compose](https://docs.docker.com/compose/install/)

## Docker Compose Configuration

### `docker-compose.yml`

The Docker Compose configuration defines multiple services for WordPress, MySQL, phpMyAdmin, and more. Here's an overview of the key services:

- **wordpress**: Runs the WordPress application.
- **mysql**: Provides the MySQL database for WordPress.
- **phpmyadmin**: Provides phpMyAdmin for database management.
- **wpcli**: The WordPress Command Line Interface for managing WordPress.
- **healthcheck**: Performs container health checks using Docker Compose Wait.

Make sure to adjust the variables and ports as needed in the `docker-compose.yml` file. If you need specific versions or ports, you can customize them in the environment.

To start the services, use the following command:

```bash
docker-compose up -d

