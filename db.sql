-- sh
psql --username=freecodecamp --dbname=postgres

create database number_guess;

create table users(
  user_id SERIAL NOT NULL,
  user_name VARCHAR(22) NOT NULL,
  PRIMARY KEY(user_id)
);

create table games(
  game_id SERIAL NOT NULL,
  user_id INT NOT NULL,
  number_of_guesses INT NOT NULL,
  played_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY(game_id),
  CONSTRAINT fk_users
    FOREIGN KEY(user_id)
      REFERENCES users(user_id)
);
