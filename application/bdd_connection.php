<?php
$host_name = 'localhost';
$database = 'todo';
$user_name = 'root';
$password = 'root';

$dbh = null;
try {
  $dbh = new PDO("mysql:host=$host_name;port=8889;dbname=$database;", $user_name, $password);
  $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

  }
  catch (PDOException $e)
  {
  echo "Erreur!: " . $e->getMessage() . "<br/>";
  die();
  }
?>
