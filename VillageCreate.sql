/* **********************************************************
	DDL Create
	Schéma MRD:	"Village Vacances VERSION 1"
	Auteur:		Dominique Septembre + Charles-Edouard Beaudet - Cégep de Ste-Foy  	
***********************************************************/

/*
	Suppression des tables et séquences
*/
DROP TABLE LOGEMENT;
DROP TABLE VILLAGE;

/*
	Création des tables et séquences
*/
/***********************************************************
	Table "VILLAGE"
***********************************************************/
CREATE TABLE VILLAGE
(
	NOM_VILLAGE 	VARCHAR2(15)	NOT NULL,
	NO_CATEGORIE	SMALLINT		NOT NULL,
	VILLE 			VARCHAR2(10) 	NOT NULL,
	PAYS 			VARCHAR2(10)	NOT NULL,
	PRIX_TRANSPORT	NUMERIC(6;2)	NOT NULL,
	CONSTRAINT PK_VILLAGE
					PRIMARY KEY(NOM_VILLAGE),
	CONSTRAINT FK1_CATEGORIE_VILLAGE
					FOREIGN KEY (NO_CATEGORIE)
					REFERENCES CATEGORIE_VILLAGE (NO_CATEGORIE)
);

/***********************************************************
	Table "LOGEMENT"
***********************************************************/
CREATE TABLE LOGEMENT
(
	NO_LOGEMENT			SMALLINT		NOT NULL,
	NOM_VILLAGE			VARCHAR2(15)	NOT NULL,
	CODE_TYPE_LOGEMENT	VARCHAR2(2)		NOT NULL,
	COMMENTAIRE			VARCHAR2(75)	NULL,
	CONSTRAINT PK_LOGEMENT
					PRIMARY KEY (NO_LOGEMENT, NOM_VILLAGE),
	CONSTRAINT FK1_TYPE_LOGEMENT
					FOREIGN KEY (CODE_TYPE_LOGEMENT)
					REFERENCES TYPE_LOGEMENT (CODE_TYPE_LOGEMENT)
	CONSTRAINT FK3_VILLAGE
					FOREIGN KEY (NOM_VILLAGE)
					REFERENCES VILLAGE (NOM_VILLAGE)
);
