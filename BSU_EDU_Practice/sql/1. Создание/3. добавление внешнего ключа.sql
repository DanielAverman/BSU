alter table post add CONSTRAINT fk_post_author FOREIGN KEY (author) REFERENCES users(id)
  
  