<!DOCTYPE html>
<html>
	<head>
		<title>Mon JDR Final Fantasy VII</title>
		<meta charset="utf-8" />
	</head>

	<?php
		// affichage de l'entete
		require_once("header.php");
	?>

	<body>
	<!-- Contenu principal -->
		<div class="presentation">
				<p> Partez à la découverte de l'univers de FF7 à travers ce merveilleux jeu de rôle !</p>
		</div>

		<div class="row">
			<div class="column" >
				<img src="img/Final-fantasy-VII-remake-story3.jpg" class="img"> 
				<div class="overlay">
					<a href="histoire.php"> <div class="text">Découvrez l'histoire du jeu de rôle inspiré de Final Fantasy VII</div> </a>
				</div>
			</div>
				
			<div class="column">
				<img src="img/final-fantasy-7-remake-characters3.jpg" class="img"> 
				<div class="overlay">
					<a href="perso.php"> <div class="text">Découvrez les personnages des joueurs </div> </a>
				</div>
			</div>
				
			<div class="column">
				<img src="img/flower3.png" class="img" > 		    
				<div class="overlay">
					<a href="codex.php"> <div class="text">Découvrez les lieux et les habitants de Midgar </div> </a>		
				</div>
			</div>
		</div>
	</body>

	<?php
	// affichage de l'entete
	require_once("footer.php");
	?>

</html>
