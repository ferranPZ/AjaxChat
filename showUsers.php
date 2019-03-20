<?php

	$pdo = new PDO("mysql:dbname=achat;host=localhost", "root", "");
	$statement = $pdo->prepare("SELECT * FROM Usuarios");
	$statement->execute();
	$results = $statement->fetchAll(PDO::FETCH_ASSOC);
	$json = json_encode($results);

	echo $json;
?>
