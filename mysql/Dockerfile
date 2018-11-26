FROM mysql:5.7.22

ENV MYSQL_ALLOW_EMPTY_PASSWORD yes

COPY setup.sh /mysql/setup.sh
COPY schema.sql /mysql/schema.sql
COPY test.sql /mysql/test.sql
# COPY mysql/master.cnf /etc/mysql/conf.d/
COPY privileges.sql /mysql/privileges.sql

# 如果Dockerfile中有多个CMD指令(包括继承上层images的CMD命令)，只有最后一个CMD有效。
# [mysql/Dockerfile](https://github.com/docker-library/mysql/blob/696fc899126ae00771b5d87bdadae836e704ae7d/5.7/Dockerfile)
# docker run ... /bin/bash -c "composer update; php start.php;"
# CMD ["bash", "/mysql/setup.sh"]
# RUN sh /mysql/setup.sh