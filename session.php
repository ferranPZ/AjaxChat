<?php
    session_start();
    $usuario = $_SESSION['usuario'];



  	$pdo = new PDO("mysql:dbname=achat;host=localhost", "root", "");
  	$statement = $pdo->prepare("SELECT idUsuarios FROM `usuarios` WHERE nombre='$usuario'");
  	$statement->execute();
  	$results = $statement->fetchAll(PDO::FETCH_ASSOC);
  	$json = json_encode($results);

  	echo $json;




     ?>
