<?php
session_start();
// ajout des tâches dans BDD

if(array_key_exists('user', $_SESSION) == true) {


include 'application/bdd_connection.php';

$req = $dbh->prepare('INSERT INTO todos(name, comment, chosen_time, important, ID_user) VALUES(:name, :comment, :chosen_time, :important, :ID_user)');

$req->execute(array(
	'name' => $_POST['name'],
	'comment' => $_POST['comment'],
  'chosen_time' => $_POST['chosen_time'],
  'important' =>  $_POST['important'],
	'ID_user' => $_SESSION['user']['userID']));

$req->closeCursor();

header('location: index.php');

} else {
	$_SESSION['notConnected'] = '<p class=log-undone>Pour ajouter vos tâches, veuillez vous connecter ou vous inscrire</p>';
	header ('location: index.php');
}
?>
