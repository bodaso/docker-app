FROM mysql

ENV MYSQL_ROOT_PASSWORD root
ENV MYSQL_DATABASE users
ENV MYSQL_USER root_user
ENV MYSQL_PASSWORD abcd123

ADD setup.sql /docker-entrypoint-initdb.d

EXPOSE 3306

CMD ["mysqld"]