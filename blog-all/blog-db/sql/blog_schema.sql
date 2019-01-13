drop database if exists blogs;
drop user if exists 'blogs'@'localhost';
create database blogs;
use blogs;
create user 'blogs'@'localhost' identified by 'blogs123456';
grant all privileges on blogs.* to 'blogs'@'localhost';
flush privileges;