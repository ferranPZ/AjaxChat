<?php

  $usuario= $_POST['usuario'];
  $clave= $_POST['clave'];

  session_start();
  $_SESSION['usuario'] = $usuario ;




	$pdo = new PDO("mysql:dbname=achat;host=localhost", "root", "");
	$statement = $pdo->prepare("SELECT * FROM `usuarios` WHERE nombre='$usuario' AND pass='$clave'");
	$statement->execute();

  $row = $statement->rowCount();
  if ($row>0){
    header("location:../index.php");
  }else {
    header("location:error.html");

  }
?>
