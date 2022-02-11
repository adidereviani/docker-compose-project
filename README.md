# docker-compose-stack
Docker compose stack with Python app and Postgres DB

## Information
This simple projects runs PostgreSQL database, with the project's team members information.  
The app is Python based, using psycopg2 for PostgreSQL connection and Flask framework for creating web application.  
In order to run the application, simply pull the project, go into the directory and run **docker-compose up -d --build**.  

### Disclaimers
We are aware that Database information is stored as plain-text and this is not production ready.  
In case of real production system deployment, we would provide such sensitive information using **environment variables**.
