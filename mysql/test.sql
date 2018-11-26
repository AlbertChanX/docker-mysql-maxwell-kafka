CREATE DATABASE test;
use test;
create table test(id int not null, name varchar(100));
insert into test values(1, 'from master');
-- update test set name="from master changed" where id=1;
-- delete from test where id=1;
select * from test;