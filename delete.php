<?php
session_start();
//suppression des tâches
include 'application/bdd_connection.php';

$req = $dbh->prepare('DELETE
  FROM todos
  WHERE
    	ID = ?'
);
$req->execute([$_GET['ID']]);


$req->closeCursor();

header('location: index.php');
 ?>
