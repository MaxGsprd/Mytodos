<?php
session_start();

// recupération des tables

if(array_key_exists('user', $_SESSION) == true) {

  include 'application/bdd_connection.php';

  if (isset($_POST))
  $response = $dbh->prepare(
    'SELECT todos.ID, name, comment, chosen_time, important, ID_user, users.userID
    FROM todos
    INNER JOIN users
    ON users.userID = todos.ID_user
    WHERE ID_user = ?
    ORDER BY todos.ID
    DESC'
  );
  $response->execute([$_SESSION['user']['userID']]);

  $data = $response->fetchAll(PDO::FETCH_ASSOC);

  $response->closeCursor();
}

// Affichage dynamique et en français des jours et mois

function dayFr(){
  date_default_timezone_set('Europe/Paris');
  setlocale(LC_TIME, 'fr_FR.utf8','fra');// OK
  return strftime("%A %d %B %Y");
}

function monthFr(){
	date_default_timezone_set('Europe/Paris');
  setlocale(LC_TIME, 'fr_FR.utf8','fra');// OK
  return strftime("%B");
}

$day = dayFr();
$week = date("W");
$month = monthFr();
$year = date("Y");

include 'index.phtml';
 ?>
