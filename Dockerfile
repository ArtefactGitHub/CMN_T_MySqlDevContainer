FROM mysql:5.7.34

ENV MYSQL_ROOT_PASSWORD rootpass
ENV MYSQL_DATABASE test
ENV MYSQL_USER testuser
ENV MYSQL_PASSWORD testpass

COPY ./config/my.conf /etc/mysql/conf.d/my.cnf

# docker build -t docker-mysql-5-7:1 -f Dockerfile .
# docker run --name docker-mysql-5-7 -d -v $PWD/db-5-7:/var/lib/mysql -p 23306:3306 docker-mysql-5-7:1
# docker exec -it docker-mysql-5-7 bash