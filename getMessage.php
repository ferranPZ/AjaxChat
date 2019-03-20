<?php

  $idUsuario1= $_GET['idUsuario1'];
  $idUsuario2= $_GET['idUsuario2'];

	$pdo = new PDO("mysql:dbname=achat;host=localhost", "root", "");
	$statement = $pdo->prepare("SELECT * FROM `mensaje` WHERE idUsuario1='$idUsuario1' AND idUsuario2='$idUsuario2' OR idUsuario1='$idUsuario2' AND idUsuario2='$idUsuario1'");
	$statement->execute();
	$results = $statement->fetchAll(PDO::FETCH_ASSOC);
	$json = json_encode($results);

	echo $json;
?>
