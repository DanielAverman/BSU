create table post(
  id int not null PRIMARY KEY,
  title varchar(30) not null,
  text varchar(2000) not null,
  photo_url varchar(200),
  likes int default 0,
  created_at date not null,
  modified_at date not null,
  author int
);

create table users(
  id int not null PRIMARY KEY,
  surname varchar(20) not null,
  name varchar(20) not null,
  password varchar(30) not null,
  mail varchar(100)
);

create table log(
  id int not null PRIMARY KEY,
  error_message varchar(200) not null,
  error_code int not null,
  date_at date
);

ALTER TABLE post ADD FOREIGN KEY ( author ) REFERENCES users( id ) ;

INSERT INTO users (ID,surname,name,password,mail) VALUES
('2', 'Смирнов', 'Сергей', 'паролистый пароль', 'почтовый почтовик'),
('3', 'Иванов', 'Алексей', 'Пароль паролистый', 'box@mail.ru'),
('1', 'Сидоров', 'Михаил', 'qwewqeqwe', 'email@gmail.com');

INSERT INTO post (ID,title,text,photo_url,likes,created_at,modified_at,author) VALUES
('1', 'title1', 'text1', 'wqe123131e1dqwd2', '123', '1-1-1', '2-1-1', '1'),
('2', 'title2', 'text2', 'wqe123131e1dqwd3', '345', '2-2-2', '2-1-1', '3'),
('3', 'title3', 'text3', 'wqe123131e1dqwd4', '865', '3-3-3', '2-1-1', '2');



  
  