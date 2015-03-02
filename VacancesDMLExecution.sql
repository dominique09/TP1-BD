SQL> /*=======================================================================================
SQL> 	16
SQL> 	Augmenter de 5,5% tous les tarifs des nuit‚es pour les villages de cat‚gorie 1 et 2.
SQL> ========================================================================================*/
SQL> UPDATE TARIF_NUIT
  2  	SET TARIF_UNITAIRE = TARIF_UNITAIRE * 1.055
  3  WHERE
  4  	CATEGORIE = 1 OR CATEGORIE = 2;

22 rows updated.

SQL> 
SQL> /*=======================================================================================
SQL> 	17
SQL> 	Supprimer la r‚servation num‚ro 16.
SQL> ========================================================================================*/
SQL> DELETE
  2  	SEJOUR
  3  WHERE
  4  	NO_RESERVATION = 16;

4 rows deleted.

SQL> DELETE
  2  	RESERVATION
  3  WHERE
  4  	NO_RESERVATION = 16;

1 row deleted.

SQL> 
SQL> 
SQL> /*=======================================================================================
SQL> 	18
SQL> 	D‚placer tous les s‚jours de 2 personnes des suites 11 et 19 du village Casa-Dali
SQL> 	dans la suite 8.	Pour simplifier, on considŠre que la disponibilit‚ de ce
SQL> 	logement est assur‚e.
SQL> ========================================================================================*/
SQL> UPDATE
  2  	SEJOUR
  3  SET
  4  	NO_LOGEMENT = 8
  5  WHERE
  6  	(NO_LOGEMENT = 11
  7  	OR NO_LOGEMENT = 19)
  8  	AND NOM_VILLAGE = 'Casa-Dali'
  9  	AND NB_PERSONNES = 2;

2 rows updated.

SQL> 
SQL> SPOOL OFF;
