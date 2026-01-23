# SQL Practice Sandbox

This repository is a self-contained sandbox for practicing SQL queries using PostgreSQL. It includes various sample tables, data, and practice problems, all organized into clear directories.

The environment is managed by Docker Compose, which will automatically create a PostgreSQL database named `postgresql_sandbox` and pre-load all the data for you.

## Requirements
- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/) (usually included with Docker Desktop)

## Quick Start

This sandbox can be started in two ways: with an empty database, or with the sample data pre-loaded.

**1. Launch the Database**

*   **To start an empty database:**
    Navigate to the root of this repository and run:
    ```bash
    docker-compose up -d
    ```
    This is the default and will start a PostgreSQL container with no tables.

*   **To start the database and load the sample data:**
    Use the `load-data.yml` override file. This will create all tables and insert all records from the `sample_data/` directory.
    ```bash
    docker-compose -f docker-compose.yml -f load-data.yml up -d
    ```

**2. Connect to the Database**

Use your favorite SQL client (DBeaver, DataGrip, pgAdmin, etc.) to connect to the database with the following credentials:

| Setting    | Value                 |
|------------|-----------------------|
| **Host**   | `localhost`           |
| **Port**   | `5432`                |
| **Database**| `postgresql_sandbox`  |
| **Username**| `postgres`            |
| **Password**| `mysecretpassword`    |

*(Note: The password is set in the `docker-compose.yml` file and can be changed there if desired.)*

## Verify Your Setup

If you loaded the sample data, you can ensure everything is working correctly by running the following query in your SQL client:

```sql
SELECT song, artist, country
FROM music
LIMIT 3;
```

You should see the following output:
```
| song      | artist   | country |
|-----------|----------|---------|
| Song_A    | Artist_X | USA     |
| Song_B    | Artist_Y | Canada  |
| Song_C    | Artist_Z | UK      |
```

You are now ready to explore the data and write your own queries!

## Exploring the Repository

- **`docker-compose.yml`:** The main configuration file for the Docker environment. Starts an empty database by default.
- **`load-data.yml`:** An override file for `docker-compose` that adds the configuration to load the sample data.
- **`sample_data/`:** Contains all the raw `.sql` files for creating tables (`create_...`) and inserting data (`insert_...`). This folder is used to initialize the database when using `load-data.yml`.
- **`practice_problems/`:** Contains folders for specific practice problems, each with a `question.md` and an `answer.sql`.
- **`example_queries/`:** Contains various other standalone SQL query examples.

## Managing the Environment

From the repository root directory:

- **To stop the database container (preserves data):**
  ```bash
  docker-compose stop
  ```
- **To start the database again:**
  ```bash
  docker-compose start
  ```
- **To completely delete the database and all its data:**
  This command works for both scenarios (empty or with data).
  ```bash
  docker-compose down -v
  ```