<?php
session_start();

include 'application/bdd_connection.php';
include 'application/lib.php';

if(isset($_POST['userName']) && !empty($_POST['userName'])){

    $hashPassword = hashPassword($_POST['password']);
    $username = $_POST['userName'];
    // vérification disponibilité de l'identifiant
    $stmt = $dbh->prepare("SELECT userName FROM users WHERE userName = :name");
    $stmt->bindParam(':name', $username);
    $stmt->execute();

    if($stmt->rowCount() > 0){

        $_SESSION['userExist'] = 'Cet identifiant est déjà utilisé. Veuillez recommencer.';
        header('location: index.php');

    } else {
      // enregistrement utilisateur
      $query= $dbh->prepare
      (
        ' INSERT INTO
        users
        (userName, password)
        VALUES
        (?, ?)'
      );
      $query->execute([$username, $hashPassword]);

      $query->closeCursor();
      $_SESSION['welcome'] = 'Bienvenu sur My To do\'s vous pouvez à présent vous connecter !';
      header('location: index.php');

      exit();
    }
}











?>
