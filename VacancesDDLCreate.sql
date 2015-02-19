/* **********************************************************
	DDL Create
	Schéma MRD:	"Village Vacances VERSION 1"
	Auteur:		Dominique Septembre + Charles-Edouard Beaudet - Cégep de Ste-Foy  	
***********************************************************/
/*
	Création des tables et séquences
*/
/***********************************************************
	Table "CATEGORIE_VILLAGE"
***********************************************************/
CREATE TABLE CATEGORIE_VILLAGE
(
	NO_CATEGORIE 	SMALLINT 		NOT NULL,
	DESCRIPTION 	VARCHAR2(50)	NOT NULL,
	CONSTRAINT PK_CATEGORIE_VILLAGE
					PRIMARY KEY(NO_CATEGORIE),
	CONSTRAINT U1_DESCRIPTION_CATEGORIE_VILLAGE
					UNIQUE (DESCRIPTION)
	CONSTRAINT NO_CATEGORIE_MIN_MAX
				CHECK (NO_CATEGORIE BETWEEN 1 AND 5)

);
/***********************************************************
	Table "TYPE_LOGEMENT"
***********************************************************/
CREATE TABLE TYPE_LOGEMENT
(
	CODE_TYPE_LOGEMENT	VARCHAR2(2)		NOT NULL,
	DESCRIPTION 		VARCHAR2(35)	NOT NULL,
	NB_MAX_PERSONNES	SMALLINT 		NOT NULL,
	CONSTRAINT PK_TYPE_LOGEMENT
						PRIMARY KEY (CODE_TYPE_LOGEMENT),
	CONSTRAINT U1_DESCRIPTION_TYPE_LOGEMENT
					UNIQUE (DESCRIPTION),
	CONSTRAINT TYPE_LOGEMENT_FORMAT
					CHECK (), -- À COMPLÉTER
	CONSTRAINT MAX_NB_MAX_PERSONNES
					CHECK (NB_MAX_PERSONNES <= 10)
);
/***********************************************************
	Table "TARIF_NUIT"
***********************************************************/
CREATE TABLE TARIF_NUIT
(
	CATEGORIE 			SMALLINT		NOT NULL,
	TYPE_LOGEMENT 		VARCHAR2(2)		NOT NULL,
	TARIF_UNITAIRE 		NUMERIC(5;2)	NOT NULL,
	CONSTRAINT PK_TARIF_NUIT
					PRIMARY KEY (CATEGORIE, TYPE_LOGEMENT),
	CONSTRAINT MIN_MAX_TARIF_UNITAIRE
					CHECK (TARIF_UNITAIRE BETWEEN 20 AND 300);
);
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
/***********************************************************
	Table "CLIENT"
***********************************************************/
CREATE TABLE CLIENT
(
	NO_CLIENT 			NUMERIC(6;0)	NOT NULL, --sequence SEQ_NO_CLIENT
	NOM 				VARCHAR2(15)	NOT NULL,
	PRENOM 				VARCHAR2(10)	NOT NULL,
	SEXE				CHAR(1) 		NOT NULL,
	TEL_DOMICILE 		NUMERIC(10;0)	NOT NULL,
	ADRESSE				VARCAHR2(50) 	NULL,
	TEL_BUREAU 			NUMERIC(10;0) 	NULL,
	CONSTRAINT PK_CLIENT
					PRIMARY KEY (NO_CLIENT),
	CONSTRAINT SEXE_M_OR_F
					CHECK (SEXE = 'F' OR SEXE = 'M')
);
/***********************************************************
	Séquence "SEQ_NO_RESERVATION"
***********************************************************/
CREATE SEQUENCE SEQ_NO_CLIENT
			 START WITH 1
			 INCREMENT BY 1
			 MAXVALUE 999999;
/***********************************************************
	Table "RESERVATION"
***********************************************************/
CREATE TABLE RESERVATION
(
	NO_RESERVATION		NUMERIC(6;0)	NOT NULL, --sequence SEQ_NO_RESERVATION
	DATE_RESERVATION	DATE 			DEFAULT SYSDATE		NOT NULL,
	NO_CLIENT			NUMERIC(6;0)	NOT NULL,
	NOM_VILLAGE			VARCHAR2(15)	NOT NULL,
	DEBUT_SEJOUR		DATE 			NOT NULL,
	FIN_SEJOUR 			DATE 			NOT NULL,
	CONSTRAINT PK_RESERVATION
					PRIMARY KEY (NO_RESERVATION),
	CONSTRAINT FK1_NO_CLIENT
					FOREIGN KEY (NO_CLIENT)
					REFERENCES CLIENT (NO_CLIENT),
	CONSTRAINT FK2_NOM_VILLAGE
					FOREIGN KEY (NOM_VILLAGE)
					REFERENCES VILLAGE (NOM_VILLAGE)
	CONSTRAINT DEBUT_EST_AVANT_FIN
					CHECK (DEBUT_SEJOUR < FIN_SEJOUR)
);

/***********************************************************
	Séquence "SEQ_NO_RESERVATION"
***********************************************************/
CREATE SEQUENCE SEQ_NO_RESERVATION
			 START WITH 1
			 INCREMENT BY 1
			 MAXVALUE 999999;