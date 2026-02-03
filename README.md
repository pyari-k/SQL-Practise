## SQL Practice Sandbox

Let's be honest: AI writes most of our SQL now. Still, we constantly need a sandbox to run and verify things—a process where the setup is always the most tedious part.

This tiny SQL sandbox is made to eliminate the "setup headache" and provides a quick, zero-friction environment for SQL testing.

### Getting Started

1.  **Install Docker Desktop:** Make sure you have [Docker Desktop](https://docs.docker.com/get-docker/) installed and running on your system.
2.  **Run Docker Compose:** Navigate to the root of this repository and run the following command to start your PostgreSQL sandbox:
    ```bash
    docker-compose up -d
    ```
    If you want to load sample data for practice, use:
    ```bash
    docker-compose -f docker-compose.yml -f load-data.yml up -d
    ```

### SQL Cheatsheets

Explore the `cheatsheets/` directory for various SQL query examples and common patterns.

### Credits

This sandbox was inspired by the popular [Northwind for PostgreSQL](https://github.com/pthom/northwind_psql) repository.
