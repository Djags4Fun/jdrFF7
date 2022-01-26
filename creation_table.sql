BEGIN

-- suppresion des tables si elles existent.

DROP TABLE IF EXISTS Personnage;
DROP TABLE IF EXISTS Competence_speciale;

-- suppression des séquences si elles existent.

DROP SEQUENCE IF EXISTS seq_personnage;
DROP SEQUENCE IF EXISTS seq_competence_spe;

-- création des séquences.

CREATE SEQUENCE seq_personnage;
CREATE SEQUENCE seq_competence_spe;

-- script de création des tables personnage et competence_speciale

CREATE TABLE Personnage (
	id_personnage		integer NOT NULL DEFAULT NEXTVAL('seq_id_personnage'),
	prenom 				varchar(20) NOT NULL,
	nom					varchar(20),
	origine				varchar(20),
	age 				integer,
	specialisation		varchar(20),
	pv_max				integer NOT NULL,
	pv_actuel			integer NOT NULL,
	blessure			integer NOT NULL DEFAULT 0,
	protection			integer DEFAULT 0,
	arme1				varchar(20),
	degats_arme1		varchar(8),
	arme2				varchar(20),
	degats_arme2		varchar(8),
	arme3				varchar(20),
	degats_arme3		varchar(8),
	force				integer NOT NULL,
	dexterite			integer NOT NULL,
	endurance			integer NOT NULL,
	intelligence		integer NOT NULL,
	charisme			integer NOT NULL,
	artisanat			integer NOT NULL,
	combat_rapproche	integer NOT NULL,
	combat_distance		integer NOT NULL,
	connaissance_nature	integer NOT NULL,
	connaissance_secret	integer NOT NULL,
	courir_sauter		integer NOT NULL,
	discretion			integer NOT NULL,
--	droit				integer NOT NULL,
	esquiver			integer NOT NULL,
	intimider			integer NOT NULL,
	lire_ecrire			integer NOT NULL,
	mentir_convaincre	integer NOT NULL,
	perception			integer NOT NULL,
	piloter				integer NOT NULL,
	psychologie			integer NOT NULL,
	reflexes			integer NOT NULL,
	serrure_piege		integer NOT NULL,
	soigner				integer NOT NULL,
	survie				integer NOT NULL,
	voler				integer NOT NULL,
	CONSTRAINTS PK_id_personnage PRIMARY KEY (id_personnage)
);

CREATE TABLE Competence_speciale
(
	id_competence_spe		integer NOT NULL DEFAULT NEXTVAL('seq_competence_spe'),
	id_personnage			integer,
	nom_comp_spe			varchar(20) NOT NULL,
	pourcentage_competence	integer,
	degats                  varchar(8) DEFAULT 0,
	description				text,
	CONSTRAINTS PK_id_competence_spe PRIMARY KEY (id_competence_spe);
);

ALTER TABLE Competence_speciale
ADD CONSTRAINTS FK_Competence_speciale_Personnage
FOREIGN KEY (id_personnage)
REFERENCES Personnage (id_personnage);

END