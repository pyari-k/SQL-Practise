# SQL Practice Sandbox

This repository is a self-contained sandbox for practicing SQL queries using PostgreSQL. It includes various sample tables, data, and practice problems.

The environment is managed by Docker Compose, which will automatically create a PostgreSQL database and pre-load all the data for you.

## Requirements
- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/) (usually included with Docker Desktop)

## Quick Start

**1. Launch the Database**

Navigate to the root of this repository in your terminal and run the following command:
```bash
docker-compose up -d
```
This command will start a PostgreSQL container in the background, create a database named `interview_prep_db`, and automatically run all the `.sql` scripts in the `db_init/` directory to create and populate your tables.

**2. Connect to the Database**

Use your favorite SQL client (DBeaver, DataGrip, pgAdmin, etc.) to connect to the database with the following credentials:

| Setting    | Value                 |
|------------|-----------------------|
| **Host**   | `localhost`           |
| **Port**   | `5432`                |
| **Database**| `interview_prep_db`  |
| **Username**| `postgres`            |
| **Password**| `mysecretpassword`    |

*(Note: The password is set in the `docker-compose.yml` file and can be changed there if desired.)*

## Verify Your Setup

To ensure everything is working correctly, run the following query in your SQL client:

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

- **`tables/`:** Contains all the raw `.sql` files for creating tables, inserting data, and practice queries. This is where you'll find the SQL code for all the data models and solutions.
- **`db_init/`:** A helper directory containing numbered copies of all `.sql` files from the `tables/` directory. The PostgreSQL database uses these scripts on its first launch to automatically initialize and populate itself.
- **`docker-compose.yml`:** The configuration file for the Docker environment, defining how your PostgreSQL database runs.

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
  ```bash
  docker-compose down -v
  ```