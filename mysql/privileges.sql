use mysql;
select host, user from user;

-- mysql 8 
create user maxwell IDENTIFIED BY 'max';

-- http://maxwells-daemon.io/quickstart/
GRANT ALL on maxwell.* to 'maxwell'@'%';
GRANT SELECT, REPLICATION CLIENT, REPLICATION SLAVE on *.* to 'maxwell'@'%';

flush privileges;