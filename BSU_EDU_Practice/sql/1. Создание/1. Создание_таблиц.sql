create table post(
  id INTEGER PRIMARY KEY,
  title varchar(30),
  text varchar(2000),
  photo_url varchar(200),
  likes Integer,
  created_at date,
  modified_at date);
  
create table users(
  id INTEGER PRIMARY KEY,
  surname varchar(20),
  name varchar(20),
  password varchar(30),
  mail varchar(100));

create table LOG(
  id INTEGER PRIMARY KEY,
  error_message varchar(200),
  error_code Integer,
  date_at date);
  
  