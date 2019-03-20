<?php

  $idUsuario1=$_GET['idUsuario1'];
  $idUsuario2=$_GET['idUsuario2'];
  $texto=$_GET['texto'];


	$pdo = new PDO("mysql:dbname=achat;host=localhost", "root", "");
	$statement = $pdo->prepare(
		"INSERT INTO `mensaje` (`idMensaje`, `idUsuario1`, `idUsuario2`, `texto`) VALUES (NULL, '$idUsuario1', '$idUsuario2', '$texto');"
	);
	$statement->execute();
?>
