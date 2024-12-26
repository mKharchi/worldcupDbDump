#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

echo "$($PSQL "TRUNCATE TABLE games , teams") "


cat games.csv | while IFS="," read  YEAR ROUND WINNER OPPONENT WGOALS OGOALS
do
  if [[ $YEAR != 'year' ]]
  then
    existW="$($PSQL "SELECT count(*) FROM teams WHERE name = '$WINNER'  ") "
    if (( existW == 0 ))
    then
      resW="$($PSQL "INSERT INTO teams(name ) VALUES('$WINNER') ") "
    fi 
    existO="$($PSQL "SELECT count(*) FROM teams WHERE name = '$OPPONENT'  ") "
    if (( existO == 0 ))
    then
      resO="$($PSQL "INSERT INTO teams(name ) VALUES('$OPPONENT') ") "
    fi

    WID="$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER' ") "
    OID="$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT' ") "
    resF="$($PSQL "INSERT INTO games(year , round , winner_goals  , opponent_goals , winner_id , opponent_id ) VALUES($YEAR , '$ROUND' , $WGOALS , $OGOALS ,$WID ,$OID ) ") "
    
  fi
done
  


# Do not change code above this line. Use the PSQL variable above to query your database.
