FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD=Senha123
ENV MYSQL_DATABASE=meubanco
ENV MYSQL_USER=meuuser
ENV MYSQL_PASSWORD=Senha123


COPY sql.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
