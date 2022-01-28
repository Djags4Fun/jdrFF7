-- script d'intégration des données initiale dans la table personnage & compétence_speciale

--------------------- Lyvalna Egrim (Laetitia) ---------------------
INSERT INTO personnage (prenom, nom, origine, age, specialisation, pv_max, pv_actuel, arme1, degats_arme1, force, dexterite, endurance, intelligence, charisme, artisanat, combat_rapproche, combat_distance, connaissance_nature, connaissance_secret, courrir_sauter, discretion, /*droit,*/ esquiver, intimider, lire_ecrire, mentir_convaincre, perception, piloter, psychologie, reflexes, serrure_piege, soigner, survie, voler)
	VALUES ('Lyvalna', 'Egrim', 'Nibelheim', 23, 'Combattante', 14, 14, 'Double épée', '2d4', 16, 14, 14, 11, 10, 50, 80, 50, 50, 50, 70, 60, /*50, */60, 65, 50, 50, 50, 70, 55, 60, 45, 50, 60, 40);

INSERT INTO competence_speciale (id_personnage, nom_comp_spe, pourcentage_competence, degats)
	SELECT id_personnage, 'Frappe meurtriere', '50', '1d10+4'
	FROM personnage
	WHERE prenom = 'Lyvalna';

--------------------- Boya (Lucas) ---------------------
INSERT INTO personnage (prenom, nom, origine, age, specialisation, pv_max, pv_actuel, arme1, degats_arme1, force, dexterite, endurance, intelligence, charisme, artisanat, combat_rapproche, combat_distance, connaissance_nature, connaissance_secret, courrir_sauter, discretion, /*droit,*/ esquiver, intimider, lire_ecrire, mentir_convaincre, perception, piloter, psychologie, reflexes, serrure_piege, soigner, survie, voler)
	VALUES ('Boya', 'De Dragon', 'Midgar', 23, 'Gosse de riche', 11, 11, 'Fusil à matéria', '1d6', 10, 11, 11, 15, 15, 65, 50, 65, 65, 75, 55, 65, /*75, */65, 60, 75, 75, 75, 55, 65, 65, 55, 75, 65, 75);

INSERT INTO competence_speciale (id_personnage, nom_comp_spe, pourcentage_competence, description)
	SELECT id_personnage, 'Last hit', '100', 'Tue à coup sûr, d''un coup de fusil, une cible très affaiblie.'
	FROM personnage
	WHERE prenom = 'Boya';

--------------------- Kenzen (Kamel)---------------------
INSERT INTO personnage (prenom, nom, origine, age, specialisation, pv_max, pv_actuel, arme1, degats_arme1, force, dexterite, endurance, intelligence, charisme, artisanat, combat_rapproche, combat_distance, connaissance_nature, connaissance_secret, courrir_sauter, discretion, /*droit,*/ esquiver, intimider, lire_ecrire, mentir_convaincre, perception, piloter, psychologie, reflexes, serrure_piege, soigner, survie, voler)
	VALUES ('Kenzen', 'Highwind', 'Rocket town', 25, 'Bricoleur', 10, 10, 'Materias élémentaires', '1d6', 9, 12, 10, 17, 11, 80, 50, 70, 70, 70, 55, 55, /*70, */70, 30, 70, 45, 70, 55, 65, 70, 55, 70, 30, 30);

INSERT INTO competence_speciale (id_personnage, nom_comp_spe, pourcentage_competence, description)
	SELECT id_personnage, 'Bricolage du bled', '35', 'Bricoler quelque chose grace à des outils inapropiées.'
	FROM personnage
	WHERE prenom = 'Kenzen';
	
INSERT INTO competence_speciale (id_personnage, nom_comp_spe, pourcentage_competence, description)
	SELECT id_personnage, 'Cigarette au bec', '100', 'Fumer une cigarette pour réussir automatiquement les jets de dés liés au pilotage.'
	FROM personnage
	WHERE prenom = 'Kenzen';

--------------------- Botamo (Tam) ---------------------

INSERT INTO personnage (prenom, origine, age, specialisation, pv_max, pv_actuel, arme1, degats_arme1, arme2, degats_arme2, force, dexterite, endurance, intelligence, charisme, artisanat, combat_rapproche, combat_distance, connaissance_nature, connaissance_secret, courrir_sauter, discretion, /*droit,*/ esquiver, intimider, lire_ecrire, mentir_convaincre, perception, piloter, psychologie, reflexes, serrure_piege, soigner, survie, voler)
	VALUES ('Botamo', 'Wutai', 21, 'Voleur', 9, 9, 'Tonfa', '1d6', 'Kusarigama', '1d6', 10, 9, 9, 13, 15, 15, 60, 60, 20, 70, 45, 75, /*70, */55, 60, 35, 70, 70, 45, 55, 55, 70, 70, 55, 85);
	
INSERT INTO competence_speciale (id_personnage, nom_comp_spe, pourcentage_competence, description)
	SELECT id_personnage, 'Arnaque', '50', 'Voler la cible pendant une attaque. (Fonctionne avec Kusarigama)'
	FROM personnage
	WHERE prenom = 'Botamo';
	
INSERT INTO competence_speciale (id_personnage, nom_comp_spe, pourcentage_competence, description)
	SELECT id_personnage, 'Clutch', '1', 'Sortir d''une situation désespérée : Le désespoire de la situation et l''action du PJ influent le pourcentage de réussite'
	FROM personnage
	WHERE prenom = 'Botamo';