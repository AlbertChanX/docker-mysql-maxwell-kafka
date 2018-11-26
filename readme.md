
## Get Started

```
// run mysql:5.7
docker run --name mysql_max -p 3306:3306 \
-v ~/mysql57/:/etc/mysql/conf.d/ \
-e MYSQL_ROOT_PASSWORD=123 -d mysql:5.7.22

// get ip
docker inspect mysql_max

mysql -umaxwell -pmax
> show variables like '%log_bin%';

docker run -it -d --name maxwell zendesk/maxwell bin/maxwell --user=root \
--password=123 --host=mysql_max --producer=stdout

docker logs -ft maxwell
docker logs -ft mysql_max

docker exec -ti redis4maxwell 
# redis-cli
> SUBSCRIBE maxwell

docker-compose up --build

docker exec -ti mysql_max bash -c "mysql < /mysql/test.sql"
```

## Refer

* [Quick Start - Maxwell's Daemon](http://maxwells-daemon.io/quickstart/)
* [seanlook/maxwell-graylog: MySQL Binlog search based on maxwell and graylog](https://github.com/seanlook/maxwell-graylog)
* [Getting Started Guide | bireme](https://hashdatainc.github.io/bireme/docs/bireme_guide.html)
* [Debezium Connector for MySQL](https://debezium.io/docs/connectors/mysql/)
* [bireme/README_zh-cn.md HashDataInc/bireme](https://github.com/HashDataInc/bireme/blob/master/README_zh-cn.md)
* [MySQL Binlog Streaming Analysis | AWS](https://amazonaws-china.com/cn/blogs/china/mysql-binlog-architecture/)
* [QuickStart · alibaba/canal Wiki](https://github.com/alibaba/canal/wiki/QuickStart)