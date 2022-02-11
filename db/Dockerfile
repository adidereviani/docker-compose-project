FROM postgres

USER root
ADD init-db-user.sh /docker-entrypoint-initdb.d/init-user-db.sh
RUN chmod +x /docker-entrypoint-initdb.d/init-user-db.sh

USER postgres
