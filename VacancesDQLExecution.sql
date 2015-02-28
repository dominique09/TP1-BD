SQL> /*=======================================================================================
SQL> 	 1
SQL> 	 Produire la liste des villages vacances.
SQL> 	 Pour chaque village, indiquer dans l'ordre : nom du village, nom du pays,
SQL> 	 num‚ro de la cat‚gorie du village, description de la cat‚gorie du village,
SQL> 	 prix du transport par personne (format affichage: 174.50 $Can).
SQL> 	 Trier par pays, puis par cat‚gorie de village (no), puis par village.
SQL> /*=======================================================================================*/
SQL> SELECT
  2  	VILLAGE.NOM_VILLAGE,
  3  	VILLAGE.PAYS,
  4  	VILLAGE.NO_CATEGORIE,
  5  	CAT_VILLAGE.DESCRIPTION,
  6  	TO_CHAR(VILLAGE.PRIX_TRANSPORT, '99,999.99') || ' $Can' AS PRIX_TRANSPORT
  7  FROM
  8  	VILLAGE
  9  		INNER JOIN CATEGORIE_VILLAGE CAT_VILLAGE
 10  			ON VILLAGE.NO_CATEGORIE = CAT_VILLAGE.NO_CATEGORIE
 11  ORDER BY
 12  	VILLAGE.PAYS,
 13  	VILLAGE.NO_CATEGORIE,
 14  	VILLAGE.NOM_VILLAGE;

NOM_VILLAGE     PAYS       NO_CATEGORIE DESCRIPTION                                        PRIX_TRANSPORT               
--------------- ---------- ------------ -------------------------------------------------- ---------------              
Porto-Nuevo     Espagne               2 tennis, piscine, golf, sauna                           949.00 $Can              
Casa-Dali       Espagne               3 tennis, piscine, garderie                            1,059.00 $Can              
Cuidad Blanca   Espagne               3 tennis, piscine, garderie                              800.00 $Can              
Kouros          GrŠce                 3 tennis, piscine, garderie                            1,239.00 $Can              

SQL> /*========================================================================================================
SQL> 	2
SQL> 	Produire la liste des tarifs des nuit‚es pour chaque type de logement.
SQL> 	Pour chaque tarif, indiquer dans l'ordre : code du type de logement, description du type de logement,
SQL> 	num‚ro de la cat‚gorie du village, description de la cat‚gorie du village,
SQL> 	prix/nuit/personne en $ canadiens  (format affichage : 50.50 $Can).
SQL> 	Trier par type de logement, puis cat‚gorie de village
SQL> /*========================================================================================================*/
SQL> SELECT
  2  	TYPE_LOGEMENT.CODE_TYPE_LOGEMENT,
  3  	TYPE_LOGEMENT.DESCRIPTION,
  4  	CATEGORIE_VILLAGE.NO_CATEGORIE,
  5  	CATEGORIE_VILLAGE.DESCRIPTION,
  6  	TO_CHAR(TARIF_NUIT.TARIF_UNITAIRE, '9999.99') || ' $Can' AS TARIF_NUITE
  7  FROM
  8  	TARIF_NUIT
  9  		INNER JOIN TYPE_LOGEMENT
 10  			ON TARIF_NUIT.TYPE_LOGEMENT = TYPE_LOGEMENT.CODE_TYPE_LOGEMENT
 11  		INNER JOIN CATEGORIE_VILLAGE
 12  			ON TARIF_NUIT.CATEGORIE = CATEGORIE_VILLAGE.NO_CATEGORIE
 13  ORDER BY
 14  	TYPE_LOGEMENT.CODE_TYPE_LOGEMENT,
 15  	CATEGORIE_VILLAGE.NO_CATEGORIE;

CO DESCRIPTION                         NO_CATEGORIE DESCRIPTION                                        TARIF_NUITE      
-- ----------------------------------- ------------ -------------------------------------------------- -------------    
A1 Chambre 4 personnes avec douche                1 tennis, piscine, mini-golf, golf, sauna, garderie     45.00 $Can    
A1 Chambre 4 personnes avec douche                2 tennis, piscine, golf, sauna                          40.00 $Can    
A1 Chambre 4 personnes avec douche                3 tennis, piscine, garderie                             35.00 $Can    
A2 Chambre 4 personnes avec bain                  1 tennis, piscine, mini-golf, golf, sauna, garderie     50.00 $Can    
A2 Chambre 4 personnes avec bain                  2 tennis, piscine, golf, sauna                          45.00 $Can    
A2 Chambre 4 personnes avec bain                  3 tennis, piscine, garderie                             40.00 $Can    
A3 Chambre 2 personnes avec bain                  1 tennis, piscine, mini-golf, golf, sauna, garderie     60.00 $Can    
A3 Chambre 2 personnes avec bain                  2 tennis, piscine, golf, sauna                          50.00 $Can    
A3 Chambre 2 personnes avec bain                  3 tennis, piscine, garderie                             45.00 $Can    
A4 Chambre 1 personne avec bain                   1 tennis, piscine, mini-golf, golf, sauna, garderie     70.00 $Can    
A4 Chambre 1 personne avec bain                   2 tennis, piscine, golf, sauna                          60.00 $Can    

CO DESCRIPTION                         NO_CATEGORIE DESCRIPTION                                        TARIF_NUITE      
-- ----------------------------------- ------------ -------------------------------------------------- -------------    
A4 Chambre 1 personne avec bain                   3 tennis, piscine, garderie                             55.00 $Can    
B1 Suite 1 personne                               1 tennis, piscine, mini-golf, golf, sauna, garderie     75.00 $Can    
B1 Suite 1 personne                               2 tennis, piscine, golf, sauna                          65.00 $Can    
B1 Suite 1 personne                               3 tennis, piscine, garderie                             60.00 $Can    
B2 Suite 2 personnes                              1 tennis, piscine, mini-golf, golf, sauna, garderie     85.00 $Can    
B2 Suite 2 personnes                              2 tennis, piscine, golf, sauna                          75.00 $Can    
B2 Suite 2 personnes                              3 tennis, piscine, garderie                             70.00 $Can    
C1 Bungalow 4 personnes                           1 tennis, piscine, mini-golf, golf, sauna, garderie     40.00 $Can    
C1 Bungalow 4 personnes                           2 tennis, piscine, golf, sauna                          30.00 $Can    
C1 Bungalow 4 personnes                           3 tennis, piscine, garderie                             25.00 $Can    
C2 Bungalow 2 personnes                           1 tennis, piscine, mini-golf, golf, sauna, garderie     35.00 $Can    

CO DESCRIPTION                         NO_CATEGORIE DESCRIPTION                                        TARIF_NUITE      
-- ----------------------------------- ------------ -------------------------------------------------- -------------    
C2 Bungalow 2 personnes                           2 tennis, piscine, golf, sauna                          40.00 $Can    
C2 Bungalow 2 personnes                           3 tennis, piscine, garderie                             35.00 $Can    
D1 Chalet 6 personnes                             1 tennis, piscine, mini-golf, golf, sauna, garderie     40.00 $Can    
D1 Chalet 6 personnes                             2 tennis, piscine, golf, sauna                          30.00 $Can    
D1 Chalet 6 personnes                             3 tennis, piscine, garderie                             25.00 $Can    
D2 Chalet 4 personnes                             1 tennis, piscine, mini-golf, golf, sauna, garderie     50.00 $Can    
D2 Chalet 4 personnes                             2 tennis, piscine, golf, sauna                          40.00 $Can    
D2 Chalet 4 personnes                             3 tennis, piscine, garderie                             35.00 $Can    
D3 Chalet 2 personnes                             1 tennis, piscine, mini-golf, golf, sauna, garderie     80.00 $Can    
D3 Chalet 2 personnes                             2 tennis, piscine, golf, sauna                          60.00 $Can    
D3 Chalet 2 personnes                             3 tennis, piscine, garderie                             55.00 $Can    

33 rows selected.

SQL> /*=================================================================================================
SQL> 	3
SQL> 	Produire la liste des logements pour le village Casa-Dali.
SQL> 	Pour chaque logement, indiquer dans l'ordre : code du type de logement, num‚ro du logement.
SQL> 	Trier par type de logement
SQL> /*================================================================================================*/
SQL> SELECT
  2  	CODE_TYPE_LOGEMENT,
  3  	NO_LOGEMENT
  4  FROM
  5  	LOGEMENT
  6  WHERE
  7  	NOM_VILLAGE = 'Casa-Dali'
  8  ORDER BY
  9  	NO_LOGEMENT;

CO NO_LOGEMENT                                                                                                          
-- -----------                                                                                                          
B2           8                                                                                                          
B2           9                                                                                                          
B2          11                                                                                                          
B2          18                                                                                                          
B2          19                                                                                                          
C2         100                                                                                                          
C2         101                                                                                                          
C2         102                                                                                                          
D1         103                                                                                                          
D1         104                                                                                                          
D2         105                                                                                                          

CO NO_LOGEMENT                                                                                                          
-- -----------                                                                                                          
D2         106                                                                                                          
D2         107                                                                                                          
D2         108                                                                                                          
D2         109                                                                                                          

15 rows selected.

SQL> /*=======================================================================================
SQL> 	4
SQL> 	Produire la liste des types de logement propos‚s dans le village Kouros.
SQL> 	Pour chaque type de logement, indiquer dans l'ordre : le code du type de logement,
SQL> 	la description du type de logement. Trier par code de type de logement.
SQL> /*=======================================================================================*/
SQL> SELECT DISTINCT
  2  	TYPE_LOGEMENT.CODE_TYPE_LOGEMENT,
  3  	TYPE_LOGEMENT.DESCRIPTION
  4  FROM
  5  	TYPE_LOGEMENT
  6  		INNER JOIN LOGEMENT
  7  			ON TYPE_LOGEMENT.CODE_TYPE_LOGEMENT = LOGEMENT.CODE_TYPE_LOGEMENT
  8  WHERE
  9  	LOGEMENT.NOM_VILLAGE = 'Kouros'
 10  ORDER BY
 11  	TYPE_LOGEMENT.CODE_TYPE_LOGEMENT;

CO DESCRIPTION                                                                                                          
-- -----------------------------------                                                                                  
A1 Chambre 4 personnes avec douche                                                                                      
A3 Chambre 2 personnes avec bain                                                                                        
A4 Chambre 1 personne avec bain                                                                                         
B2 Suite 2 personnes                                                                                                    
C1 Bungalow 4 personnes                                                                                                 
C2 Bungalow 2 personnes                                                                                                 
D1 Chalet 6 personnes                                                                                                   
D2 Chalet 4 personnes                                                                                                   

8 rows selected.

SQL> /*=======================================================================================
SQL> 	5
SQL> 	Produire la liste des tarifs des nuit‚es pour le type de logement D3.
SQL> 	Pour chaque prix, indiquer dans l'ordre : code du type de logement,
SQL> 	description du type de logement, num‚ro de la cat‚gorie du village,
SQL> 	description de la cat‚gorie du village,
SQL> 	prix/nuit/personne en $ canadiens   (format affichage : 50.00 $Can).
SQL> 	Trier par cat‚gorie de village.
SQL> /*=======================================================================================*/
SQL> SELECT
  2  	TARIF_NUIT.TYPE_LOGEMENT,
  3  	TYPE_LOGEMENT.DESCRIPTION,
  4  	CAT_VILLAGE.NO_CATEGORIE,
  5  	CAT_VILLAGE.DESCRIPTION,
  6  	TO_CHAR(TARIF_NUIT.TARIF_UNITAIRE, '9999.99') || ' $Can' AS TARIF_NUITE
  7  FROM
  8  	TARIF_NUIT
  9  		INNER JOIN TYPE_LOGEMENT
 10  			ON TARIF_NUIT.TYPE_LOGEMENT = TYPE_LOGEMENT.CODE_TYPE_LOGEMENT
 11  		INNER JOIN CATEGORIE_VILLAGE CAT_VILLAGE
 12  			ON TARIF_NUIT.CATEGORIE = CAT_VILLAGE.NO_CATEGORIE
 13  WHERE
 14  	TARIF_NUIT.TYPE_LOGEMENT = 'D3'
 15  ORDER BY
 16  	TARIF_NUIT.CATEGORIE;

TY DESCRIPTION                         NO_CATEGORIE DESCRIPTION                                        TARIF_NUITE      
-- ----------------------------------- ------------ -------------------------------------------------- -------------    
D3 Chalet 2 personnes                             1 tennis, piscine, mini-golf, golf, sauna, garderie     80.00 $Can    
D3 Chalet 2 personnes                             2 tennis, piscine, golf, sauna                          60.00 $Can    
D3 Chalet 2 personnes                             3 tennis, piscine, garderie                             55.00 $Can    

SQL> /*=============================================================================================================
SQL> 	6
SQL> 	Produire le calendrier d'occupation du logement 108 du village Casa Dali pour le mois de mars 2015.
SQL> 	Indiquer dans l'ordre : num‚ro du logement, nom du village, nom du pays, code du type de logement,
SQL> 	description du type de logement,
SQL> 	Version 1 : pour chaque r‚servation concernant le logement : num‚ro de la r‚servation,
SQL> 	date de la premiŠre nuit (format affichage : jj/mm/aaaa), date de la derniŠre nuit (format affichage : jj/mm/aaaa).
SQL> 	Version 2 : pour chaque date de s‚jour concernant le logement : num‚ro de la r‚servation,
SQL> 	date du s‚jour (de la nuit occup‚e) (format affichage : jj/mm/aaaa). Trier par date(s).
SQL> /*=============================================================================================================*/
SQL> SELECT
  2  	SEJOUR.NO_LOGEMENT,
  3  	RESERVATION.NOM_VILLAGE,
  4  	VILLAGE.PAYS,
  5  	LOGEMENT.CODE_TYPE_LOGEMENT,
  6  	TYPE_LOGEMENT.DESCRIPTION,
  7  	RESERVATION.NO_RESERVATION,
  8  	TO_CHAR(RESERVATION.DEBUT_SEJOUR,'dd/mm/yyyy') AS DEBUT_SEJOUR,
  9  	TO_CHAR(RESERVATION.FIN_SEJOUR,'dd/mm/yyyy') AS FIN_SEJOUR
 10  FROM
 11  	SEJOUR
 12  		INNER JOIN RESERVATION
 13  			ON SEJOUR.NO_RESERVATION = RESERVATION.NO_RESERVATION AND
 14  			   SEJOUR.NOM_VILLAGE = RESERVATION.NOM_VILLAGE
 15  				INNER JOIN VILLAGE
 16  					ON RESERVATION.NOM_VILLAGE = VILLAGE.NOM_VILLAGE
 17  		INNER JOIN LOGEMENT
 18  			ON SEJOUR.NO_LOGEMENT = LOGEMENT.NO_LOGEMENT AND
 19  			   SEJOUR.NOM_VILLAGE = LOGEMENT.NOM_VILLAGE
 20  				INNER JOIN TYPE_LOGEMENT
 21  					ON LOGEMENT.CODE_TYPE_LOGEMENT = TYPE_LOGEMENT.CODE_TYPE_LOGEMENT
 22  WHERE
 23  	SEJOUR.NO_LOGEMENT = 108
 24  	AND
 25  	SEJOUR.NOM_VILLAGE = 'Casa-Dali'
 26  	AND
 27  		((EXTRACT (YEAR FROM RESERVATION.DEBUT_SEJOUR) = '2015'
 28  			AND EXTRACT (MONTH FROM RESERVATION.DEBUT_SEJOUR) = '03')
 29  		OR
 30  		(EXTRACT (YEAR FROM RESERVATION.FIN_SEJOUR) = '2015'
 31  			AND EXTRACT (MONTH FROM RESERVATION.FIN_SEJOUR) = '03'));

NO_LOGEMENT NOM_VILLAGE     PAYS       CO DESCRIPTION                         NO_RESERVATION DEBUT_SEJO FIN_SEJOUR      
----------- --------------- ---------- -- ----------------------------------- -------------- ---------- ----------      
        108 Casa-Dali       Espagne    D2 Chalet 4 personnes                               2 15/03/2015 20/03/2015      
        108 Casa-Dali       Espagne    D2 Chalet 4 personnes                               5 09/03/2015 13/03/2015      
        108 Casa-Dali       Espagne    D2 Chalet 4 personnes                               7 20/03/2015 26/03/2015      
        108 Casa-Dali       Espagne    D2 Chalet 4 personnes                              10 26/02/2015 01/03/2015      

SQL> /*=============================================================================================================
SQL> 	7
SQL> 	 Produire les confirmations pour toutes les r‚servations effectu‚es (date de r‚servation)
SQL> 	 entre le 12 et le 20 f‚vrier 2015 inclusivement. Pour chaque r‚servation, indiquer dans l'ordre :
SQL> 	 num‚ro de la r‚servation, nom du village, date de d‚part (format affichage : jj/mm/aaaa),
SQL> 	 date de retour (format affichage : jj/mm/aaaa), nombre total de personnes concern‚es par la r‚servation,
SQL> 	 num‚ro du client, nom du client, pr‚nom du client.
SQL> 	 Trier par date de r‚servation, puis par num‚ro de r‚servation.
SQL> /*=============================================================================================================*/
SQL> SELECT
  2  	RESERV.NO_RESERVATION,
  3  	RESERV.NOM_VILLAGE,
  4  	TO_CHAR(RESERV.DEBUT_SEJOUR, 'dd/mm/yyyy') AS DATE_DEPART,
  5  	TO_CHAR(RESERV.FIN_SEJOUR, 'dd/mm/yyyy') AS DATE_RETOUR,
  6  	SUM(SEJOUR.NB_PERSONNES) AS NBR_TOTAL_PERSONNES,
  7  	RESERV.NO_CLIENT,
  8  	CLIENT.NOM AS NOM_CLIENT,
  9  	CLIENT.PRENOM AS PRENOM_CLIENT
 10  FROM
 11  	RESERVATION RESERV
 12  		INNER JOIN SEJOUR
 13  			ON RESERV.NO_RESERVATION = SEJOUR.NO_RESERVATION
 14  			AND RESERV.NOM_VILLAGE = SEJOUR.NOM_VILLAGE
 15  		INNER JOIN CLIENT
 16  			ON CLIENT.NO_CLIENT = RESERV.NO_CLIENT
 17  HAVING
 18  	RESERV.DATE_RESERVATION BETWEEN TO_DATE('12-02-2015', 'dd-mm-yyyy')
 19  							AND TO_DATE('20-02-2015', 'dd-mm-yyyy')
 20  GROUP BY
 21  	RESERV.NO_RESERVATION,
 22  	RESERV.NOM_VILLAGE,
 23  	RESERV.DEBUT_SEJOUR,
 24  	RESERV.FIN_SEJOUR,
 25  	RESERV.NO_CLIENT,
 26  	CLIENT.NOM,
 27  	CLIENT.PRENOM,
 28  	RESERV.DATE_RESERVATION
 29  ORDER BY
 30  	RESERV.DATE_RESERVATION,
 31  	RESERV.NO_RESERVATION;

NO_RESERVATION NOM_VILLAGE     DATE_DEPAR DATE_RETOU NBR_TOTAL_PERSONNES  NO_CLIENT NOM_CLIENT      PRENOM_CLI          
-------------- --------------- ---------- ---------- ------------------- ---------- --------------- ----------          
             2 Casa-Dali       15/03/2015 20/03/2015                   6          2 Daho            tienne             
             3 Casa-Dali       13/03/2015 19/03/2015                   4          9 Plante          Jos‚e               
             5 Casa-Dali       09/03/2015 13/03/2015                   3          8 St-Onge         ric                
            16 Porto-Nuevo     02/03/2016 07/03/2016                   8          4 Gosselin        Yvonne              
             7 Casa-Dali       20/03/2015 26/03/2015                   9          6 Par‚            Marine              
            11 Casa-Dali       31/03/2015 06/04/2015                   6          8 St-Onge         ric                
            19 Porto-Nuevo     01/03/2015 02/03/2015                   3          5 Dupuis          Pierre              

7 rows selected.

SQL> /*============================================================================================================
SQL> 	8
SQL> 	Produire la liste des clients de Montr‚al. Pour chaque client habitant Montr‚al, indiquer dans l'ordre :
SQL> 	num‚ro du client, nom du client, pr‚nom du client, adresse du client,
SQL> 	t‚l‚phone domicile du client  (format affichage : (514)412-2296) Trier par no de client.
SQL> /*===========================================================================================================*/
SQL> SELECT
  2  	NO_CLIENT,
  3  	NOM,
  4  	PRENOM,
  5  	ADRESSE,
  6  	'(' || SUBSTR(TEL_DOMICILE, 1, 3) || ')' || SUBSTR(TEL_DOMICILE, 4, 3) || '-' || SUBSTR(TEL_DOMICILE, -4, 4) AS TEL_DOMICILE
  7  FROM
  8  	CLIENT
  9  WHERE
 10  	LOWER(ADRESSE) LIKE '%montr_al%'
 11  ORDER BY
 12  	NO_CLIENT;

 NO_CLIENT NOM             PRENOM     ADRESSE                                            TEL_DOMICILE                   
---------- --------------- ---------- -------------------------------------------------- -------------                  
         2 Daho            tienne    Montr‚al                                           (450)345-2511                  
         3 Fiset           Raymond    159, Av Turcotte, G1K 4X6, Montr‚al                (514)345-6513                  
         5 Dupuis          Pierre     Des rables, MONTRAL                              (514)345-2511                  
         7 Caron           L‚o        12, ROYALE, MONTREAL                               (514)412-2296                  
         8 St-Onge         ric       181, St-Louis, Montr‚al                            (514)679-6600                  
         9 Plante          Jos‚e      471, Veillon, Montr‚al, Qc                         (514)236-5510                  
        11 Plante          Jos‚e      471, Veillon, Montr‚al, Qc                         (514)238-5510                  
        12 St-Onge         ric       12, ROYALE, MONTREAL                               (514)412-2296                  
        14 Roy             Paul       200, St-jean, montreal                             (514)772-6757                  

9 rows selected.

SQL> /*=========================================================================================================
SQL> 	9
SQL> 	Calculer le tarif moyen des nuit‚es pour chaque cat‚gorie de village. Pour chaque cat‚gorie de village,
SQL> 	indiquer dans l'ordre : num‚ro de la cat‚gorie du village, description de la cat‚gorie du village,
SQL> 	prix moyen par personne et par nuit des logements   (format affichage : 43.64 $Can).
SQL> 	Trier par cat‚gorie de village.
SQL> /*=========================================================================================================*/
SQL> SELECT
  2  	CATEGORIE_VILLAGE.NO_CATEGORIE,
  3  	CATEGORIE_VILLAGE.DESCRIPTION,
  4  	TO_CHAR(AVG(TARIF_NUIT.TARIF_UNITAIRE), '999.99') || '$Can' AS PRIX_MOYEN
  5  FROM
  6  	CATEGORIE_VILLAGE
  7  		INNER JOIN TARIF_NUIT
  8  			ON CATEGORIE_VILLAGE.NO_CATEGORIE = TARIF_NUIT.CATEGORIE
  9  GROUP BY
 10  	CATEGORIE_VILLAGE.NO_CATEGORIE,
 11  	CATEGORIE_VILLAGE.DESCRIPTION
 12  ORDER BY
 13  	CATEGORIE_VILLAGE.NO_CATEGORIE;

NO_CATEGORIE DESCRIPTION                                        PRIX_MOYEN                                              
------------ -------------------------------------------------- -----------                                             
           1 tennis, piscine, mini-golf, golf, sauna, garderie    57.27$Can                                             
           2 tennis, piscine, golf, sauna                         48.64$Can                                             
           3 tennis, piscine, garderie                            43.64$Can                                             

SQL> /*====================================================================================================
SQL> 	10
SQL> 	Produire un rapport d'occupation des logements du village Casa-Dali pour le mois de mars 2015.
SQL> 	Pour chaque logement du village, indiquer dans l'ordre : num‚ro du logement, nombre de nuits occup‚es.
SQL> 	Trier par logement.
SQL> /*===================================================================================================*/
SQL> SELECT
  2  	LOGEMENT.NO_LOGEMENT,
  3  	NVL(SUM(GREATEST(LEAST(RESERVATION.FIN_SEJOUR, TO_DATE('31-03-2015', 'dd-mm-yyyy')), TO_DATE('01-03-2015', 'dd-mm-yyyy')) - LEAST(GREATEST(RESERVATION.DEBUT_SEJOUR, TO_DATE('01-03-2015', 'dd-mm-yyyy')), TO_DATE('31-03-2015', 'dd-mm-yyyy'))), 0) AS DUREE_OCCUPATION
  4  FROM
  5  	SEJOUR
  6  		INNER JOIN RESERVATION
  7  			ON SEJOUR.NO_RESERVATION = RESERVATION.NO_RESERVATION AND
  8  			   SEJOUR.NOM_VILLAGE = RESERVATION.NOM_VILLAGE
  9  		RIGHT OUTER JOIN LOGEMENT
 10  			ON SEJOUR.NO_LOGEMENT = LOGEMENT.NO_LOGEMENT AND
 11  			   SEJOUR.NOM_VILLAGE = LOGEMENT.NOM_VILLAGE AND
 12  			   SEJOUR.NOM_VILLAGE = 'Casa-Dali'
 13  WHERE
 14  	LOGEMENT.NO_LOGEMENT IN (SELECT NO_LOGEMENT FROM LOGEMENT WHERE NOM_VILLAGE = 'Casa-Dali') AND LOGEMENT.NOM_VILLAGE = 'Casa-Dali'
 15  GROUP BY
 16  	LOGEMENT.NO_LOGEMENT
 17  ORDER BY
 18  	LOGEMENT.NO_LOGEMENT;

NO_LOGEMENT DUREE_OCCUPATION                                                                                            
----------- ----------------                                                                                            
          8                0                                                                                            
          9               30                                                                                            
         11                0                                                                                            
         18                6                                                                                            
         19               10                                                                                            
        100               11                                                                                            
        101               11                                                                                            
        102               11                                                                                            
        103                6                                                                                            
        104                7                                                                                            
        105                0                                                                                            

NO_LOGEMENT DUREE_OCCUPATION                                                                                            
----------- ----------------                                                                                            
        106               11                                                                                            
        107                0                                                                                            
        108               15                                                                                            
        109                5                                                                                            

15 rows selected.

SQL> 
SQL> /*=========================================================================================================
SQL> 	11
SQL> 	Produire un rapport d'occupation des logements (nombre de nuits occup‚es pour une p‚riode donn‚e)
SQL> 	du village Casa-Dali pour la p‚riode du 7 mars au 23 mars 2015 inclusivement. Pour chaque logement
SQL> 	du village dont le taux d'occupation est inf‚rieur … 30%, indiquer dans l'ordre :
SQL> 	taux d'occupation (format affichage : 24%), num‚ro du logement, code du type de logement,
SQL> 	description du type de logement. Trier par taux d'occupation
SQL> /*=========================================================================================================*/
SQL> SELECT
  2  	NVL(SUM(GREATEST(LEAST(RESERVATION.FIN_SEJOUR, TO_DATE('23-03-2015', 'dd-mm-yyyy')), TO_DATE('07-03-2015', 'dd-mm-yyyy')) - LEAST(GREATEST(RESERVATION.DEBUT_SEJOUR, TO_DATE('07-03-2015', 'dd-mm-yyyy')), TO_DATE('23-03-2015', 'dd-mm-yyyy'))) / 16 * 100, 0) || '%' AS TAUX_OCCUPATION,
  3  	LOGEMENT.NO_LOGEMENT,
  4  	LOGEMENT.CODE_TYPE_LOGEMENT,
  5  	TYPE_LOGEMENT.DESCRIPTION
  6  FROM
  7  	SEJOUR
  8  		INNER JOIN RESERVATION
  9  			ON SEJOUR.NO_RESERVATION = RESERVATION.NO_RESERVATION AND
 10  			   SEJOUR.NOM_VILLAGE = RESERVATION.NOM_VILLAGE
 11  		RIGHT OUTER JOIN LOGEMENT
 12  			ON SEJOUR.NO_LOGEMENT = LOGEMENT.NO_LOGEMENT AND
 13  			   SEJOUR.NOM_VILLAGE = LOGEMENT.NOM_VILLAGE AND
 14  			   SEJOUR.NOM_VILLAGE = 'Casa-Dali'
 15  				INNER JOIN TYPE_LOGEMENT
 16  					ON LOGEMENT.CODE_TYPE_LOGEMENT = TYPE_LOGEMENT.CODE_TYPE_LOGEMENT
 17  WHERE
 18  	LOGEMENT.NO_LOGEMENT IN (SELECT NO_LOGEMENT FROM LOGEMENT WHERE NOM_VILLAGE = 'Casa-Dali') AND LOGEMENT.NOM_VILLAGE = 'Casa-Dali'
 19  GROUP BY
 20  	LOGEMENT.NO_LOGEMENT,
 21  	LOGEMENT.CODE_TYPE_LOGEMENT,
 22  	TYPE_LOGEMENT.DESCRIPTION
 23  HAVING
 24  	NVL(SUM(GREATEST(LEAST(RESERVATION.FIN_SEJOUR, TO_DATE('23-03-2015', 'dd-mm-yyyy')), TO_DATE('07-03-2015', 'dd-mm-yyyy')) - LEAST(GREATEST(RESERVATION.DEBUT_SEJOUR, TO_DATE('07-03-2015', 'dd-mm-yyyy')), TO_DATE('23-03-2015', 'dd-mm-yyyy'))) / 16 * 100, 0) < 30
 25  ORDER BY
 26  	TAUX_OCCUPATION;

TAUX_OCCUPATION                           NO_LOGEMENT CO DESCRIPTION                                                    
----------------------------------------- ----------- -- -----------------------------------                            
0%                                                107 D2 Chalet 4 personnes                                             
0%                                                 11 B2 Suite 2 personnes                                              
0%                                                  8 B2 Suite 2 personnes                                              
0%                                                105 D2 Chalet 4 personnes                                             
18.75%                                            103 D1 Chalet 6 personnes                                             

SQL> /*=========================================================================================================
SQL> 	12
SQL> 	Produire la liste des logements du village Casa-Dali disponibles pour toute la p‚riode du
SQL> 	17 au  23 mars 2015 inclusivement. Pour chaque logement disponible, indiquer dans l'ordre :
SQL> 	num‚ro du logement,	code du type de logement, description du type de logement. Trier par logement.
SQL> /*=========================================================================================================*/
SQL> SELECT
  2  	LOGEMENT.NO_LOGEMENT,
  3  	LOGEMENT.CODE_TYPE_LOGEMENT,
  4  	TYPE_LOGEMENT.DESCRIPTION
  5  FROM
  6  	SEJOUR
  7  		INNER JOIN RESERVATION
  8  			ON SEJOUR.NO_RESERVATION = RESERVATION.NO_RESERVATION AND
  9  			   SEJOUR.NOM_VILLAGE = RESERVATION.NOM_VILLAGE
 10  		RIGHT OUTER JOIN LOGEMENT
 11  			ON SEJOUR.NO_LOGEMENT = LOGEMENT.NO_LOGEMENT AND
 12  			   SEJOUR.NOM_VILLAGE = LOGEMENT.NOM_VILLAGE AND
 13  			   SEJOUR.NOM_VILLAGE = 'Casa-Dali'
 14  			    INNER JOIN TYPE_LOGEMENT
 15  					ON LOGEMENT.CODE_TYPE_LOGEMENT = TYPE_LOGEMENT.CODE_TYPE_LOGEMENT
 16  WHERE
 17  	LOGEMENT.NO_LOGEMENT IN (SELECT NO_LOGEMENT FROM LOGEMENT WHERE NOM_VILLAGE = 'Casa-Dali') AND LOGEMENT.NOM_VILLAGE = 'Casa-Dali'
 18  GROUP BY
 19  	LOGEMENT.NO_LOGEMENT,
 20  	LOGEMENT.CODE_TYPE_LOGEMENT,
 21  	TYPE_LOGEMENT.DESCRIPTION
 22  HAVING
 23  	NVL(SUM(GREATEST(LEAST(RESERVATION.FIN_SEJOUR, TO_DATE('23-03-2015', 'dd-mm-yyyy')), TO_DATE('17-03-2015', 'dd-mm-yyyy')) - LEAST(GREATEST(RESERVATION.DEBUT_SEJOUR, TO_DATE('17-03-2015', 'dd-mm-yyyy')), TO_DATE('23-03-2015', 'dd-mm-yyyy'))), 0) = 0
 24  ORDER BY
 25  	LOGEMENT.NO_LOGEMENT;

NO_LOGEMENT CO DESCRIPTION                                                                                              
----------- -- -----------------------------------                                                                      
          8 B2 Suite 2 personnes                                                                                        
         11 B2 Suite 2 personnes                                                                                        
        105 D2 Chalet 4 personnes                                                                                       
        107 D2 Chalet 4 personnes                                                                                       

SQL> /*=========================================================================================================
SQL> 	13
SQL> 	Produire la liste des r‚servations sans s‚jour. Pour chaque r‚servation, indiquer dans l'ordre :
SQL> 	num‚ro de la r‚servation, date de la r‚servation (format affichage : jj/mm/aaaa), nom du client,
SQL> 	pr‚nom du client. Trier par r‚servation (num‚ro).
SQL> /*=========================================================================================================*/
SQL> SELECT
  2  	RESERVATION.NO_RESERVATION,
  3  	TO_CHAR(DATE_RESERVATION, 'dd/mm/yyyy') AS DATE_RESERVATION,
  4  	CLIENT.NOM AS NOM_CLIENT,
  5  	CLIENT.PRENOM AS PRENOM_CLIENT
  6  FROM
  7  	RESERVATION
  8  		INNER JOIN CLIENT
  9  			ON RESERVATION.NO_CLIENT = CLIENT.NO_CLIENT
 10  WHERE
 11  	NO_RESERVATION NOT IN (SELECT DISTINCT NO_RESERVATION FROM SEJOUR)
 12  ORDER BY
 13  	RESERVATION.NO_RESERVATION;

NO_RESERVATION DATE_RESER NOM_CLIENT      PRENOM_CLI                                                                    
-------------- ---------- --------------- ----------                                                                    
             4 13/01/2015 Gosselin        Yvonne                                                                        
            15 17/02/2015 Gosselin        Yvonne                                                                        

SQL> /*===============================================================================================================
SQL> 	14
SQL> 	Calculer le montant total hors taxes … facturer pour les r‚servations effectu‚es au mois de f‚vrier 2015
SQL> 	date de la r‚servation). Le montant factur‚ est calcul‚ ainsi :
SQL> 	(Prix transport/personne * nombre total personnes) + [pour chaque logement] (nombre nuits * nombre personnes * tarif/nuit/personne)
SQL> 	Ainsi, le montant factur‚ pour la r‚servation no 2, 5 nuits et 2 logements (108 et 109) dans le village
SQL> 	Casa-Dali, est de 7404 $. Pour chaque r‚servation, indiquer dans l'ordre : num‚ro de la r‚servation,
SQL> 	date de la r‚servation (format affichage : jj/mm/aaaa), montant hors taxes … facturer  (format affichage : 2138.00 $Can),
SQL> 	nom du pays, nom du village. Trier par r‚servation.
SQL> /*===============================================================================================================*/
SQL> SELECT
  2  	RESERVATION.NO_RESERVATION,
  3  	RESERVATION.DATE_RESERVATION,
  4  	TO_CHAR((VILLAGE.PRIX_TRANSPORT * SUM(SEJOUR.NB_PERSONNES)) + SUM((RESERVATION.FIN_SEJOUR - RESERVATION.DEBUT_SEJOUR) * SEJOUR.NB_PERSONNES * TARIF_NUIT.TARIF_UNITAIRE), '999999.99') || '$Can' AS MONTANT_FACTURE,
  5  	VILLAGE.PAYS,
  6  	VILLAGE.NOM_VILLAGE
  7  FROM
  8  	RESERVATION
  9  		INNER JOIN VILLAGE
 10  			ON RESERVATION.NOM_VILLAGE = VILLAGE.NOM_VILLAGE
 11  			INNER JOIN CATEGORIE_VILLAGE
 12  				ON VILLAGE.NO_CATEGORIE = CATEGORIE_VILLAGE.NO_CATEGORIE
 13  		INNER JOIN SEJOUR
 14  			ON RESERVATION.NO_RESERVATION = SEJOUR.NO_RESERVATION
 15  			AND RESERVATION.NOM_VILLAGE = SEJOUR.NOM_VILLAGE
 16  			INNER JOIN LOGEMENT
 17  				ON SEJOUR.NO_LOGEMENT = LOGEMENT.NO_LOGEMENT
 18  				AND SEJOUR.NOM_VILLAGE = LOGEMENT.NOM_VILLAGE
 19  				INNER JOIN TYPE_LOGEMENT
 20  					ON LOGEMENT.CODE_TYPE_LOGEMENT = TYPE_LOGEMENT.CODE_TYPE_LOGEMENT
 21  			INNER JOIN TARIF_NUIT
 22  				ON TYPE_LOGEMENT.CODE_TYPE_LOGEMENT = TARIF_NUIT.TYPE_LOGEMENT
 23  				AND CATEGORIE_VILLAGE.NO_CATEGORIE = TARIF_NUIT.CATEGORIE
 24  HAVING
 25  	EXTRACT (YEAR FROM DATE_RESERVATION) = '2015' AND
 26  	EXTRACT (MONTH FROM DATE_RESERVATION) = '02'
 27  GROUP BY
 28  	RESERVATION.NO_RESERVATION,
 29  	RESERVATION.DATE_RESERVATION,
 30  	VILLAGE.PAYS,
 31  	VILLAGE.NOM_VILLAGE,
 32  	VILLAGE.PRIX_TRANSPORT
 33  ORDER BY
 34  	RESERVATION.NO_RESERVATION;

NO_RESERVATION DATE_RESE MONTANT_FACTUR PAYS       NOM_VILLAGE                                                          
-------------- --------- -------------- ---------- ---------------                                                      
             2 12-FEB-15    7404.00$Can Espagne    Casa-Dali                                                            
             3 13-FEB-15    5916.00$Can Espagne    Casa-Dali                                                            
             5 15-FEB-15    3597.00$Can Espagne    Casa-Dali                                                            
             6 24-FEB-15   19210.00$Can Espagne    Casa-Dali                                                            
             7 19-FEB-15   11121.00$Can Espagne    Casa-Dali                                                            
            11 19-FEB-15    7614.00$Can Espagne    Casa-Dali                                                            
            16 17-FEB-15    9192.00$Can Espagne    Porto-Nuevo                                                          
            17 28-FEB-15    2138.00$Can Espagne    Porto-Nuevo                                                          
            18 28-FEB-15    4756.00$Can Espagne    Porto-Nuevo                                                          
            19 19-FEB-15    2967.00$Can Espagne    Porto-Nuevo                                                          
            20 24-FEB-15    1519.00$Can GrŠce      Kouros                                                               

NO_RESERVATION DATE_RESE MONTANT_FACTUR PAYS       NOM_VILLAGE                                                          
-------------- --------- -------------- ---------- ---------------                                                      
            21 25-FEB-15    6705.00$Can GrŠce      Kouros                                                               

12 rows selected.

SQL> SPOOL OFF;
