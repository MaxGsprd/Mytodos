<?php
session_start();

include 'application/lib.php';

if(empty($_POST) == false) {

  include 'application/bdd_connection.php';

  $query = $dbh->prepare
  (
    'SELECT
    *
    FROM
    users
    WHERE userName = ?'
  );
  $query->execute([$_POST['login']]);

  $user = $query->fetch(PDO::FETCH_ASSOC);

   if(verifyPassword($_POST['pass'],$user['password']) && $user != false ) {

      $_SESSION['user']['userName'] = $user['userName'];
      $_SESSION['user']['userID'] = $user['userID'];

      $query->closeCursor();
      header('Location: index.php');
      exit();

    } else {

     $_SESSION['error'] = $error;
     header('Location: index.php');
  }
}

?>
