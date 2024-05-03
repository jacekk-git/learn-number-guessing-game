#!/bin/bash


PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

function getUserId()
{
  $PSQL "select user_id from users where user_name = '$USERNAME'"
}

function getUserDetails()
{
  $PSQL "select count(1), min(number_of_guesses) from games where user_id = $USER_ID"
}

function saveUser()
{
  $PSQL "INSERT INTO users(user_name) VALUES ('$USERNAME')" >/dev/null
  $PSQL "select user_id from users where user_name = '$USERNAME'"
}

function saveGame()
{
  $PSQL "INSERT INTO games(user_id, number_of_guesses) VALUES ($USER_ID, $TRIES)" >/dev/null
}

# Main function
echo Enter your username:
read USERNAME

USER_ID=$(getUserId)

if [[ "$USER_ID" == "" ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  DETAILS=$(getUserDetails)
  GAMES_PLAYED=$(echo "$DETAILS" | cut -d "|" -f1)
  BEST_GAME=$(echo "$DETAILS" | cut -d "|" -f2)
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi


echo Guess the secret number between 1 and 1000:
SECRET=$RANDOM
let "SECRET %= 1000"

GUESS=

TRIES=0

number_re='^[1-9][0-9]*$'

while [[ "$SECRET" -ne "$GUESS" ]]
do
  read GUESS
  if ! [[ "$GUESS" =~ $number_re ]] ; then
    echo "That is not an integer, guess again:"
  elif [[ "$SECRET" -lt "$GUESS" ]]
  then
    echo "It's lower than that, guess again:"
  elif [[ "$SECRET" -gt "$GUESS" ]]
  then
    echo "It's higher than that, guess again:"
  fi

  TRIES=$(( TRIES + 1 ))
done

echo "You guessed it in $TRIES tries. The secret number was $SECRET. Nice job!"

if [[ "$USER_ID" == "" ]]
then
  USER_ID=$(saveUser)
fi

saveGame