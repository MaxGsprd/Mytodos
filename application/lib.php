<?php
//FONCTION POUR CRYPTER LES MDP
function hashPassword($password)
    {
      $salt = '$2y$11$'.substr(bin2hex(openssl_random_pseudo_bytes(32)), 0, 22);
      return crypt($password, $salt);
    }

function verifyPassword($password, $hashedPassword)
{
    return crypt($password, $hashedPassword) == $hashedPassword;
}

?>
