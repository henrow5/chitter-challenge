DROP TABLE IF EXISTS users, peeps; 

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name text,
  username text,
  password text,
  email text
);

CREATE TABLE peeps (
  id SERIAL PRIMARY KEY,
  content text,
  time_posted timestamp,
  user_id int,
  constraint fk_user foreign key(user_id)
    references users(id)
    on delete cascade
);