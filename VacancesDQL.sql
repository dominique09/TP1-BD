/***********************************************************
	DQL Select
	Schéma MRD:	"Village Vacances VERSION 1"
	Auteur:		Dominique Septembre + Charles-Edouard Beaudet - Cégep de Ste-Foy  	
***********************************************************/

/*=======================================================================================
	 1
	 Produire la liste des villages vacances.
	 Pour chaque village, indiquer dans l’ordre : nom du village, nom du pays, 
	 numéro de la catégorie du village, description de la catégorie du village, 
	 prix du transport par personne (format affichage: 174.50 $Can). 
	 Trier par pays, puis par catégorie de village (no), puis par village.
/*=======================================================================================*/
SELECT
	VILLAGE.NOM_VILLAGE,
	VILLAGE.PAYS,
	VILLAGE.NO_CATEGORIE,
	CAT_VILLAGE.DESCRIPTION,
	VILLAGE.PRIX_TRANSPORT || ' $Can' AS PRIX_TRANSPORT
FROM
	VILLAGE
		INNER JOIN CATEGORIE_VILLAGE CAT_VILLAGE
			ON VILLAGE.NO_CATEGORIE = CAT_VILLAGE.NO_CATEGORIE
ORDER BY
	VILLAGE.PAYS,
	VILLAGE.NO_CATEGORIE,
	VILLAGE.NOM_VILLAGE;


/*========================================================================================================
	2
	Produire la liste des tarifs des nuitées pour chaque type de logement.
	Pour chaque tarif, indiquer dans l’ordre : code du type de logement, description du type de logement, 
	numéro de la catégorie du village, description de la catégorie du village, 
	prix/nuit/personne en $ canadiens  (format affichage : 50.50 $Can). 
	Trier par type de logement, puis catégorie de village 
/*========================================================================================================*/
SELECT	
	LOGEMENT.CODE_TYPE_LOGEMENT,
	TYPE_LOGEMENT.DESCRIPTION,
	VILLAGE.NO_CATEGORIE,
	CATEGORIE_VILLAGE.DESCRIPTION,
	TARIF_NUIT.TARIF_UNITAIRE || ' $Can'
FROM	
	LOGEMENT
		INNER JOIN VILLAGE
			ON LOGEMENT.NOM_VILLAGE = VILLAGE.NOM_VILLAGE
				INNER JOIN CATEGORIE_VILLAGE
					ON VILLAGE.NO_CATEGORIE = CATEGORIE_VILLAGE.NO_CATEGORIE
		INNER JOIN TYPE_LOGEMENT
			ON LOGEMENT.CODE_TYPE_LOGEMENT = TYPE_LOGEMENT.CODE_TYPE_LOGEMENT
				INNER JOIN TARIF_NUIT
					ON TYPE_LOGEMENT.CODE_TYPE_LOGEMENT = TARIF_NUIT.CODE_TYPE_LOGEMENT
					AND VILLAGE.NO_CATEGORIE = TARIF_NUIT.CATEGORIE
ORDER BY
	LOGEMENT.TYPE_LOGEMENT,
	VILLAGE.NO_CATEGORIE;
					


/*=================================================================================================
	3
	Produire la liste des logements pour le village Casa-Dali. 
	Pour chaque logement, indiquer dans l’ordre : code du type de logement, numéro du logement. 
	Trier par type de logement
/*================================================================================================*/
SELECT
	CODE_TYPE_LOGEMENT,
	NO_LOGEMENT
FROM
	LOGEMENT
WHERE
	NOM_VILLAGE = 'Casa-Dali'
ORDER BY
	NO_LOGEMENT;

/*=======================================================================================
	4
	Produire la liste des types de logement proposés dans le village Kouros. 
	Pour chaque type de logement, indiquer dans l’ordre : le code du type de logement, 
	la description du type de logement. Trier par code de type de logement. 
/*=======================================================================================*/
SELECT
	TYPE_LOGEMENT.CODE_TYPE_LOGEMENT,
	TYPE_LOGEMENT.DESCRIPTION
FROM	
	TYPE_LOGEMENT
		INNER JOIN LOGEMENT
			ON TYPE_LOGEMENT.CODE_TYPE_LOGEMENT = LOGEMENT.CODE_TYPE_LOGEMENT
WHERE
	LOGEMENT.NOM_VILLAGE = 'Kouros'
ORDER BY
	TYPE_LOGEMENT.CODE_TYPE_LOGEMENT;	

/*=======================================================================================
	5
	Produire la liste des tarifs des nuitées pour le type de logement D3.
	Pour chaque prix, indiquer dans l’ordre : code du type de logement, 
	description du type de logement, numéro de la catégorie du village, 
	description de la catégorie du village, 
	prix/nuit/personne en $ canadiens   (format affichage : 50.00 $Can). 
	Trier par catégorie de village. 
/*=======================================================================================*/
SELECT
	TARIF_NUIT.TYPE_LOGEMENT,
	TYPE_LOGEMENT.DESCRIPTION,
	CAT_VILLAGE.CATEGORIE,
	CAT_VILLAGE.DESCRIPTION,
	TARIF_NUIT.TARIF_UNITAIRE || ' $Can'
FROM
	TARIF_NUIT
		INNER JOIN TYPE_LOGEMENT
			ON TARIF_NUIT.TYPE_LOGEMENT = TYPE_LOGEMENT.CODE_TYPE_LOGEMENT
		INNER JOIN CATEGORIE_VILLAGE CAT_VILLAGE
			ON TARIF_NUIT.CATEGORIE = CAT_VILLAGE.NO_CATEGORIE
WHERE
	TARIF_NUIT.TYPE_LOGEMENT = 'D3'
ORDER BY
	TARIF_NUIT.CATEGORIE;

/*=============================================================================================================
	6
	Produire le calendrier d’occupation du logement 108 du village Casa Dali pour le mois de mars 2015. 
	Indiquer dans l’ordre : numéro du logement, nom du village, nom du pays, code du type de logement, 
	description du type de logement, 
	Version 1 : pour chaque réservation concernant le logement : numéro de la réservation,
	date de la première nuit (format affichage : jj/mm/aaaa), date de la dernière nuit (format affichage : jj/mm/aaaa).
	Version 2 : pour chaque date de séjour concernant le logement : numéro de la réservation, 
	date du séjour (de la nuit occupée) (format affichage : jj/mm/aaaa). Trier par date(s).
/*=============================================================================================================*/



/*=============================================================================================================
	7
	 Produire les confirmations pour toutes les réservations effectuées (date de réservation)
	 entre le 12 et le 20 février 2015 inclusivement. Pour chaque réservation, indiquer dans l’ordre : 
	 numéro de la réservation, nom du village, date de départ (format affichage : jj/mm/aaaa), 
	 date de retour (format affichage : jj/mm/aaaa), nombre total de personnes concernées par la réservation, 
	 numéro du client, nom du client, prénom du client. 
	 Trier par date de réservation, puis par numéro de réservation. 
/*=============================================================================================================*/



/*============================================================================================================
	8
	Produire la liste des clients de Montréal. Pour chaque client habitant Montréal, indiquer dans l’ordre : 
	numéro du client, nom du client, prénom du client, adresse du client,
	téléphone domicile du client  (format affichage : (514)412-2296) Trier par no de client. 
/*===========================================================================================================*/



/*=========================================================================================================
	9
	Calculer le tarif moyen des nuitées pour chaque catégorie de village. Pour chaque catégorie de village,
	indiquer dans l’ordre : numéro de la catégorie du village, description de la catégorie du village, 
	prix moyen par personne et par nuit des logements   (format affichage : 43.64 $Can). 
	Trier par catégorie de village. 
/*=========================================================================================================*/



/*====================================================================================================
	10
	Produire un rapport d’occupation des logements du village Casa-Dali pour le mois de mars 2015.
	Pour chaque logement du village, indiquer dans l’ordre : numéro du logement, nombre de nuits occupées. 
	Trier par logement. 
/*===================================================================================================*/



/*=========================================================================================================
	11
	Produire un rapport d’occupation des logements (nombre de nuits occupées pour une période donnée) 
	du village Casa-Dali pour la période du 7 mars au 23 mars 2015 inclusivement. Pour chaque logement 
	du village dont le taux d’occupation est inférieur à 30%, indiquer dans l’ordre : 
	taux d’occupation (format affichage : 24%), numéro du logement, code du type de logement, 
	description du type de logement. Trier par taux d’occupation
/*=========================================================================================================*/



/*=========================================================================================================
	12
	Produire la liste des logements du village Casa-Dali disponibles pour toute la période du
	17 au  23 mars 2015 inclusivement. Pour chaque logement disponible, indiquer dans l’ordre :
	numéro du logement,	code du type de logement, description du type de logement. Trier par logement.
/*=========================================================================================================*/



/*=========================================================================================================
	13
	Produire la liste des réservations sans séjour. Pour chaque réservation, indiquer dans l’ordre : 
	numéro de la réservation, date de la réservation (format affichage : jj/mm/aaaa), nom du client, 
	prénom du client. Trier par réservation (numéro).
/*=========================================================================================================*/



/*===============================================================================================================
	14
	Calculer le montant total hors taxes à facturer pour les réservations effectuées au mois de février 2015 
	date de la réservation). Le montant facturé est calculé ainsi : 
	(Prix transport/personne * nombre total personnes) + [pour chaque logement] (nombre nuits * nombre personnes * tarif/nuit/personne)
	Ainsi, le montant facturé pour la réservation no 2, 5 nuits et 2 logements (108 et 109) dans le village
	Casa-Dali, est de 7404 $. Pour chaque réservation, indiquer dans l’ordre : numéro de la réservation, 
	date de la réservation (format affichage : jj/mm/aaaa), montant hors taxes à facturer  (format affichage : 2138.00 $Can), 
	nom du pays, nom du village. Trier par réservation. 
/*===============================================================================================================*/



/*=======================================================================================
	15
	Le ou les villages avec le plus grand nombre de nuitées vendues pour le mois de mars 2015. 
	Une nuitée représente l’hébergement d’une personne pour une nuit.  Indiquer dans l’ordre : 
	pays, nom village, nombre de nuitées.
/*=======================================================================================*/
