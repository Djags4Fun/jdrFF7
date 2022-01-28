<!DOCTYPE html>
<?php require 'auth.php' ?>

<html>
	
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="./style.css" />
    </head> 
       
	<body> 

		<div class="header">
			
		<!-- Button to open the modal -->
		<?php if (loggedIn()) {?>
			<a href="page_compte.php"> Ma page </a>
		<?php } else { ?>
			<button onclick="document.getElementById('myModal01').style.display='block'" id="register_button" > S'enregistrer</button>
			<button onclick="document.getElementById('myModal02').style.display='block'" id="sign_in_button" > Se connecter</button>
		<?php } ?>
			
		<!-- -----------------------The Modal (pop up de l'enregistrement)------------------------------------------------ -->

			<div id="myModal01" class="modal">
			  <span onclick="document.getElementById('myModal01').style.display='none'" class="close" title="Close Modal"> X </span>
			  <form class="modal-content" >
				<div class="sign_up">
					
				  <p>Merci de renseigner ces champs afin de créer votre compte.</p>
				  
				  <hr> 
				  <label for="email">
					  <b> E-mail</b> 
				  </label>		  
				  <input type="text" placeholder="Entrer votre E-mail" name="email" required>

				  <label for="psw"> 
					  <b> Mot de passe</b> 
				  </label>	  
				  <input type="password" placeholder="Entrer votre Mot de passe" name="psw" required>

				  <label for="psw-repeat"> 
					  <b> Répéter le mot de passe</b> 
				  </label>	  
				  <input type="password" placeholder="Répéter votre Mot de passe" name="psw-repeat" required>

				  <p>En créant votre compte, vous acceptez nos <a href="#" style="color:dodgerblue" id="condition_utilisation">Conditions d'utilisations</a>.</p>

				  <div class="clearfix">
					<button type="button" onclick="document.getElementById('myModal01').style.display='none'" class="cancelbtn">Annuler</button>
					<button type="submit" class="signup">S'enregistrer</button>
				  </div>
				</div>
			  </form>
			</div> 

		<!-- -----------------------The Modal (pop up de la connexion)------------------------------------------------ -->

			<div id="myModal02" class="modal">
			  <span onclick="document.getElementById('myModal02').style.display='none'" class="close" title="Close Modal"> X </span>
			  <form class="modal-content" >
				<div class="sign_up">
					
				  <p> Merci de renseigner ces champs afin de vous connecter à votre compte.</p>
				  
				  <hr> 
				  <label for="email">
					  <b> E-mail</b> 
				  </label>
				  
				  <input type="text" placeholder="Entrer votre E-mail" name="email" required>

				  <label for="psw"> 
					  <b> Mot de passe</b> 
				  </label>
				  
				  <input type="password" placeholder="Entrer votre Mot de passe" name="psw" required>

				  <label>
					  <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Se rappeler de moi
				  </label>

				  <div class="clearfix">
					<button type="button" onclick="document.getElementById('myModal02').style.display='none'" class="cancelbtn">Annuler</button>
					<button type="submit" class="sign_in">Se connecter</button>
				  </div>
				</div>
			  </form>
			</div> 

			


		<!-- Titre de l'entête -->
			<div class="container">
				<img src="img/logo_ffvii2.png" alt="FFVII" id="logo"/>
			</div>	
				
			<form method = "post" id="headerform" enctype="multipart/form-data" >
				<h1> Final Fantasy VII - Le jeu de rôle </h1>
			</form>
				
		<!-- Barre de navigation du site -->
			<div class="top-nav">		
				<a class="active" href="page_principale.php"><span>Accueil</span></a>
				<a href="histoire.php"><span>Histoire</span></a>
				<a href="perso.php"><span>Fiches des personnages</span></a>
				<a href="codex.php"><span>Codex</span></a>
			</div> 
		</div>
			
	</body>

</html>