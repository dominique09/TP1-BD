/***********************************************************
	DQL Update
	Sch�ma MRD:	"Village Vacances VERSION 1"
	Auteur:		Dominique Septembre + Charles-Edouard Beaudet - C�gep de Ste-Foy  	
***********************************************************/
SPOOL 'C:\SPOOL_UPDATE.txt';
/*=======================================================================================
	16
	Augmenter de 5,5% tous les tarifs des nuit�es pour les villages de cat�gorie 1 et 2. 
========================================================================================*/
UPDATE TARIF_NUIT
	SET TARIF_UNITAIRE = TARIF_UNITAIRE * 1.055
WHERE
	CATEGORIE = 1 OR CATEGORIE = 2;

/*=======================================================================================
	17
	Supprimer la r�servation num�ro 16.  
========================================================================================*/
DELETE
	SEJOUR
WHERE
	NO_RESERVATION = 16;
DELETE
	RESERVATION
WHERE
	NO_RESERVATION = 16;


/*=======================================================================================
	18
	D�placer tous les s�jours de 2 personnes des suites 11 et 19 du village Casa-Dali
	dans la suite 8.	Pour simplifier, on consid�re que la disponibilit� de ce
	logement est assur�e. 
========================================================================================*/
UPDATE
	SEJOUR
SET
	NO_LOGEMENT = 8
WHERE
	(NO_LOGEMENT = 11
	OR NO_LOGEMENT = 19)
	AND NOM_VILLAGE = 'Casa-Dali'
	AND NB_PERSONNES = 2;
	
SPOOL OFF;