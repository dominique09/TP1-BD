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
	TO_CHAR(VILLAGE.PRIX_TRANSPORT, '999.99') || ' $Can' AS PRIX_TRANSPORT
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
	TYPE_LOGEMENT.CODE_TYPE_LOGEMENT,
	TYPE_LOGEMENT.DESCRIPTION,
	CATEGORIE_VILLAGE.NO_CATEGORIE,
	CATEGORIE_VILLAGE.DESCRIPTION,
	TO_CHAR(TARIF_NUIT.TARIF_UNITAIRE, '9999.99') || ' $Can' AS TARIF_NUITE
FROM	
	TARIF_NUIT
		INNER JOIN TYPE_LOGEMENT
			ON TARIF_NUIT.TYPE_LOGEMENT = TYPE_LOGEMENT.CODE_TYPE_LOGEMENT
		INNER JOIN CATEGORIE_VILLAGE
			ON TARIF_NUIT.CATEGORIE = CATEGORIE_VILLAGE.NO_CATEGORIE
ORDER BY
	TYPE_LOGEMENT.CODE_TYPE_LOGEMENT,
	CATEGORIE_VILLAGE.NO_CATEGORIE;
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
SELECT DISTINCT
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
	CAT_VILLAGE.NO_CATEGORIE,
	CAT_VILLAGE.DESCRIPTION,
	TO_CHAR(TARIF_NUIT.TARIF_UNITAIRE, '9999.99') || ' $Can' AS TARIF_NUITE
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
SELECT
	SEJOUR.NO_LOGEMENT,
	RESERVATION.NOM_VILLAGE,
	VILLAGE.PAYS,
	LOGEMENT.CODE_TYPE_LOGEMENT,
	TYPE_LOGEMENT.DESCRIPTION,
	RESERVATION.NO_RESERVATION,
	TO_CHAR(RESERVATION.DEBUT_SEJOUR,'dd/mm/yyyy') AS DEBUT_SEJOUR,
	TO_CHAR(RESERVATION.FIN_SEJOUR,'dd/mm/yyyy') AS FIN_SEJOUR
FROM
	SEJOUR
		INNER JOIN RESERVATION
			ON SEJOUR.NO_RESERVATION = RESERVATION.NO_RESERVATION AND
			   SEJOUR.NOM_VILLAGE = RESERVATION.NOM_VILLAGE
				INNER JOIN VILLAGE
					ON RESERVATION.NOM_VILLAGE = VILLAGE.NOM_VILLAGE
		INNER JOIN LOGEMENT
			ON SEJOUR.NO_LOGEMENT = LOGEMENT.NO_LOGEMENT AND
			   SEJOUR.NOM_VILLAGE = LOGEMENT.NOM_VILLAGE
				INNER JOIN TYPE_LOGEMENT
					ON LOGEMENT.CODE_TYPE_LOGEMENT = TYPE_LOGEMENT.CODE_TYPE_LOGEMENT			
WHERE
	SEJOUR.NO_LOGEMENT = 108
	AND
	SEJOUR.NOM_VILLAGE = 'Casa-Dali'
	AND
		((EXTRACT (YEAR FROM RESERVATION.DEBUT_SEJOUR) = '2015'
			AND EXTRACT (MONTH FROM RESERVATION.DEBUT_SEJOUR) = '03')
		OR 
		(EXTRACT (YEAR FROM RESERVATION.FIN_SEJOUR) = '2015'
			AND EXTRACT (MONTH FROM RESERVATION.FIN_SEJOUR) = '03'));
/*=============================================================================================================
	7
	 Produire les confirmations pour toutes les réservations effectuées (date de réservation)
	 entre le 12 et le 20 février 2015 inclusivement. Pour chaque réservation, indiquer dans l’ordre : 
	 numéro de la réservation, nom du village, date de départ (format affichage : jj/mm/aaaa), 
	 date de retour (format affichage : jj/mm/aaaa), nombre total de personnes concernées par la réservation, 
	 numéro du client, nom du client, prénom du client. 
	 Trier par date de réservation, puis par numéro de réservation. 
/*=============================================================================================================*/
SELECT
	RESERV.NO_RESERVATION,
	RESERV.NOM_VILLAGE,
	TO_CHAR(RESERV.DEBUT_SEJOUR, 'dd/mm/yyyy') AS DATE_DEPART,
	TO_CHAR(RESERV.FIN_SEJOUR, 'dd/mm/yyyy') AS DATE_RETOUR,
	SUM(SEJOUR.NB_PERSONNES) AS NBR_TOTAL_PERSONNES,
	RESERV.NO_CLIENT,
	CLIENT.NOM AS NOM_CLIENT,
	CLIENT.PRENOM AS PRENOM_CLIENT
FROM
	RESERVATION RESERV
		INNER JOIN SEJOUR
			ON RESERV.NO_RESERVATION = SEJOUR.NO_RESERVATION
			AND RESERV.NOM_VILLAGE = SEJOUR.NOM_VILLAGE
		INNER JOIN CLIENT
			ON CLIENT.NO_CLIENT = RESERV.NO_CLIENT
HAVING
	RESERV.DATE_RESERVATION BETWEEN TO_DATE('12-02-2015', 'dd-mm-yyyy')
							AND TO_DATE('20-02-2015', 'dd-mm-yyyy')
GROUP BY
	RESERV.NO_RESERVATION,
	RESERV.NOM_VILLAGE,
	RESERV.DEBUT_SEJOUR,
	RESERV.FIN_SEJOUR,
	RESERV.NO_CLIENT,
	CLIENT.NOM,
	CLIENT.PRENOM,
	RESERV.DATE_RESERVATION
ORDER BY
	RESERV.DATE_RESERVATION,
	RESERV.NO_RESERVATION;
/*============================================================================================================
	8
	Produire la liste des clients de Montréal. Pour chaque client habitant Montréal, indiquer dans l’ordre : 
	numéro du client, nom du client, prénom du client, adresse du client,
	téléphone domicile du client  (format affichage : (514)412-2296) Trier par no de client. 
/*===========================================================================================================*/
SELECT
	NO_CLIENT,
	NOM,
	PRENOM,
	ADRESSE,
	'(' || SUBSTR(TEL_DOMICILE, 1, 3) || ')' || SUBSTR(TEL_DOMICILE, 4, 3) || '-' || SUBSTR(TEL_DOMICILE, -4, 4) AS TEL_DOMICILE
FROM
	CLIENT
WHERE
	LOWER(ADRESSE) LIKE '%montr_al%'
ORDER BY 
	NO_CLIENT;
/*=========================================================================================================
	9
	Calculer le tarif moyen des nuitées pour chaque catégorie de village. Pour chaque catégorie de village,
	indiquer dans l’ordre : numéro de la catégorie du village, description de la catégorie du village, 
	prix moyen par personne et par nuit des logements   (format affichage : 43.64 $Can). 
	Trier par catégorie de village. 
/*=========================================================================================================*/
SELECT
	CATEGORIE_VILLAGE.NO_CATEGORIE,
	CATEGORIE_VILLAGE.DESCRIPTION,
	TO_CHAR(AVG(TARIF_NUIT.TARIF_UNITAIRE), '999.99') || '$Can' AS PRIX_MOYEN
FROM
	CATEGORIE_VILLAGE
		INNER JOIN TARIF_NUIT
			ON CATEGORIE_VILLAGE.NO_CATEGORIE = TARIF_NUIT.CATEGORIE
GROUP BY
	CATEGORIE_VILLAGE.NO_CATEGORIE,
	CATEGORIE_VILLAGE.DESCRIPTION
ORDER BY
	CATEGORIE_VILLAGE.NO_CATEGORIE;
/*====================================================================================================
	10
	Produire un rapport d’occupation des logements du village Casa-Dali pour le mois de mars 2015.
	Pour chaque logement du village, indiquer dans l’ordre : numéro du logement, nombre de nuits occupées. 
	Trier par logement. 
/*===================================================================================================*/
SELECT
	LOGEMENT.NO_LOGEMENT,
	NVL(SUM(LEAST(RESERVATION.FIN_SEJOUR, TO_DATE('31-03-2015', 'dd-mm-yyyy')) - GREATEST(RESERVATION.DEBUT_SEJOUR, TO_DATE('01-03-2015', 'dd-mm-yyyy'))),0) AS DUREE_OCCUPATION
FROM
	SEJOUR
		INNER JOIN RESERVATION
			ON SEJOUR.NO_RESERVATION = RESERVATION.NO_RESERVATION AND
			   SEJOUR.NOM_VILLAGE = RESERVATION.NOM_VILLAGE
		RIGHT OUTER JOIN LOGEMENT
			ON SEJOUR.NO_LOGEMENT = LOGEMENT.NO_LOGEMENT AND
			   SEJOUR.NOM_VILLAGE = LOGEMENT.NOM_VILLAGE AND
			   SEJOUR.NOM_VILLAGE = 'Casa-Dali'
WHERE
	(RESERVATION.FIN_SEJOUR BETWEEN TO_DATE('01-03-2015', 'dd-mm-yyyy') AND TO_DATE('31-03-2015', 'dd-mm-yyyy')
	OR
	RESERVATION.DEBUT_SEJOUR BETWEEN TO_DATE('01-03-2015', 'dd-mm-yyyy') AND TO_DATE('31-03-2015', 'dd-mm-yyyy')
	OR
	(RESERVATION.FIN_SEJOUR > TO_DATE('31-03-2015', 'dd-mm-yyyy') AND RESERVATION.DEBUT_SEJOUR < TO_DATE('01-03-2015', 'dd-mm-yyyy'))
	OR
	(LOGEMENT.NO_LOGEMENT NOT IN (SELECT SEJOUR.NO_LOGEMENT FROM SEJOUR WHERE SEJOUR.NOM_VILLAGE = 'Casa-Dali') AND LOGEMENT.NOM_VILLAGE = 'Casa-Dali'))
GROUP BY
	LOGEMENT.NO_LOGEMENT
ORDER BY
	LOGEMENT.NO_LOGEMENT;
	
/*=========================================================================================================
	11
	Produire un rapport d’occupation des logements (nombre de nuits occupées pour une période donnée) 
	du village Casa-Dali pour la période du 7 mars au 23 mars 2015 inclusivement. Pour chaque logement 
	du village dont le taux d’occupation est inférieur à 30%, indiquer dans l’ordre : 
	taux d’occupation (format affichage : 24%), numéro du logement, code du type de logement, 
	description du type de logement. Trier par taux d’occupation
/*=========================================================================================================*/
SELECT --MANQUE LES LOGEMENTS 105 ET 107
	NVL(SUM(LEAST(RESERVATION.FIN_SEJOUR, TO_DATE('23-03-2015', 'dd-mm-yyyy')) - GREATEST(RESERVATION.DEBUT_SEJOUR, TO_DATE('07-03-2015', 'dd-mm-yyyy'))) / 16 * 100, 0) || '%' AS TAUX_OCCUPATION,
	LOGEMENT.NO_LOGEMENT,
	LOGEMENT.CODE_TYPE_LOGEMENT,
	TYPE_LOGEMENT.DESCRIPTION
FROM
	SEJOUR
		INNER JOIN RESERVATION
			ON SEJOUR.NO_RESERVATION = RESERVATION.NO_RESERVATION AND
			   SEJOUR.NOM_VILLAGE = RESERVATION.NOM_VILLAGE
		RIGHT OUTER JOIN LOGEMENT
			ON SEJOUR.NO_LOGEMENT = LOGEMENT.NO_LOGEMENT AND
			   SEJOUR.NOM_VILLAGE = LOGEMENT.NOM_VILLAGE AND
			   SEJOUR.NOM_VILLAGE = 'Casa-Dali'
				INNER JOIN TYPE_LOGEMENT
					ON LOGEMENT.CODE_TYPE_LOGEMENT = TYPE_LOGEMENT.CODE_TYPE_LOGEMENT
WHERE
	(RESERVATION.FIN_SEJOUR BETWEEN TO_DATE('07-03-2015', 'dd-mm-yyyy') AND TO_DATE('23-03-2015', 'dd-mm-yyyy')
	OR
	RESERVATION.DEBUT_SEJOUR BETWEEN TO_DATE('07-03-2015', 'dd-mm-yyyy') AND TO_DATE('23-03-2015', 'dd-mm-yyyy')
	OR
	(RESERVATION.FIN_SEJOUR >= TO_DATE('23-03-2015', 'dd-mm-yyyy') AND RESERVATION.DEBUT_SEJOUR <= TO_DATE('07-03-2015', 'dd-mm-yyyy'))
	OR
	(LOGEMENT.NO_LOGEMENT NOT IN (SELECT SEJOUR.NO_LOGEMENT FROM SEJOUR WHERE SEJOUR.NOM_VILLAGE = 'Casa-Dali') AND LOGEMENT.NOM_VILLAGE = 'Casa-Dali'))
GROUP BY
	LOGEMENT.NO_LOGEMENT,
	LOGEMENT.CODE_TYPE_LOGEMENT,
	TYPE_LOGEMENT.DESCRIPTION
HAVING
	NVL(SUM(LEAST(RESERVATION.FIN_SEJOUR, TO_DATE('23-03-2015', 'dd-mm-yyyy')) - GREATEST(RESERVATION.DEBUT_SEJOUR, TO_DATE('07-03-2015', 'dd-mm-yyyy'))) / 16 * 100, 0) < 30
ORDER BY
	TAUX_OCCUPATION;
/*=========================================================================================================
	12
	Produire la liste des logements du village Casa-Dali disponibles pour toute la période du
	17 au  23 mars 2015 inclusivement. Pour chaque logement disponible, indiquer dans l’ordre :
	numéro du logement,	code du type de logement, description du type de logement. Trier par logement.
/*=========================================================================================================*/
SELECT
	LOGEMENT.NO_LOGEMENT
FROM
	SEJOUR
		INNER JOIN RESERVATION
			ON SEJOUR.NO_RESERVATION = RESERVATION.NO_RESERVATION AND
			   SEJOUR.NOM_VILLAGE = RESERVATION.NOM_VILLAGE
		RIGHT OUTER JOIN LOGEMENT
			ON SEJOUR.NO_LOGEMENT = LOGEMENT.NO_LOGEMENT AND
			   SEJOUR.NOM_VILLAGE = LOGEMENT.NOM_VILLAGE AND
			   SEJOUR.NOM_VILLAGE = 'Casa-Dali'
WHERE
	(RESERVATION.FIN_SEJOUR < TO_DATE('17-03-2015', 'dd-mm-yyyy') AND RESERVATION.DEBUT_SEJOUR > TO_DATE('23-03-2015', 'dd-mm-yyyy'))
	OR
	(LOGEMENT.NO_LOGEMENT NOT IN (SELECT SEJOUR.NO_LOGEMENT FROM SEJOUR WHERE SEJOUR.NOM_VILLAGE = 'Casa-Dali') AND LOGEMENT.NOM_VILLAGE = 'Casa-Dali')
ORDER BY
	LOGEMENT.NO_LOGEMENT;
/*=========================================================================================================
	13
	Produire la liste des réservations sans séjour. Pour chaque réservation, indiquer dans l’ordre : 
	numéro de la réservation, date de la réservation (format affichage : jj/mm/aaaa), nom du client, 
	prénom du client. Trier par réservation (numéro).
/*=========================================================================================================*/
SELECT
	RESERVATION.NO_RESERVATION,
	TO_CHAR(DATE_RESERVATION, 'dd/mm/yyyy') AS DATE_RESERVATION,
	CLIENT.NOM AS NOM_CLIENT,
	CLIENT.PRENOM AS PRENOM_CLIENT
FROM
	RESERVATION
		INNER JOIN CLIENT
			ON RESERVATION.NO_CLIENT = CLIENT.NO_CLIENT
WHERE
	NO_RESERVATION NOT IN (SELECT DISTINCT NO_RESERVATION FROM SEJOUR)
ORDER BY
	RESERVATION.NO_RESERVATION;
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
SELECT
	RESERVATION.NO_RESERVATION,
	RESERVATION.DATE_RESERVATION,
	TO_CHAR((VILLAGE.PRIX_TRANSPORT * SUM(SEJOUR.NB_PERSONNES)) + SUM((RESERVATION.FIN_SEJOUR - RESERVATION.DEBUT_SEJOUR) * SEJOUR.NB_PERSONNES * TARIF_NUIT.TARIF_UNITAIRE), '999999.99') || '$Can' AS MONTANT_FACTURE,
	VILLAGE.PAYS,
	VILLAGE.NOM_VILLAGE
FROM 
	RESERVATION
		INNER JOIN VILLAGE
			ON RESERVATION.NOM_VILLAGE = VILLAGE.NOM_VILLAGE
			INNER JOIN CATEGORIE_VILLAGE
				ON VILLAGE.NO_CATEGORIE = CATEGORIE_VILLAGE.NO_CATEGORIE
		INNER JOIN SEJOUR
			ON RESERVATION.NO_RESERVATION = SEJOUR.NO_RESERVATION
			AND RESERVATION.NOM_VILLAGE = SEJOUR.NOM_VILLAGE
			INNER JOIN LOGEMENT
				ON SEJOUR.NO_LOGEMENT = LOGEMENT.NO_LOGEMENT
				AND SEJOUR.NOM_VILLAGE = LOGEMENT.NOM_VILLAGE
				INNER JOIN TYPE_LOGEMENT
					ON LOGEMENT.CODE_TYPE_LOGEMENT = TYPE_LOGEMENT.CODE_TYPE_LOGEMENT
			INNER JOIN TARIF_NUIT
				ON TYPE_LOGEMENT.CODE_TYPE_LOGEMENT = TARIF_NUIT.TYPE_LOGEMENT
				AND CATEGORIE_VILLAGE.NO_CATEGORIE = TARIF_NUIT.CATEGORIE
HAVING
	EXTRACT (YEAR FROM DATE_RESERVATION) = '2015' AND
	EXTRACT (MONTH FROM DATE_RESERVATION) = '02'
GROUP BY
	RESERVATION.NO_RESERVATION,
	RESERVATION.DATE_RESERVATION,
	VILLAGE.PAYS,
	VILLAGE.NOM_VILLAGE,
	VILLAGE.PRIX_TRANSPORT
ORDER BY
	RESERVATION.NO_RESERVATION;
/*=======================================================================================
	15
	Le ou les villages avec le plus grand nombre de nuitées vendues pour le mois de mars 2015. 
	Une nuitée représente l’hébergement d’une personne pour une nuit.  Indiquer dans l’ordre : 
	pays, nom village, nombre de nuitées.
/*=======================================================================================*/