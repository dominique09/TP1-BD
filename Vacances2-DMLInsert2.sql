/* **********************************************************
	DML Insert - SCRIPT No 2
	Schéma MRD:	"Cas Village Vacances"  VERSION 2
	Auteur:		Sylvie Monjal - Cégep de Ste-Foy  	
***********************************************************/

/* AVANT L'EXÉCUTION DE CE SCRIPT No 2:
	- EXÉCUTEZ LE SCRIPT "Vacances-DMLInsert1.sql" (commun aux VERSIONS 1 et 2)
	- ASSUREZ-VOUS D'AVOIR SUPPRIMÉ PUIS RECRÉÉ LA SÉQUENCE SEQ_NO_RESERVATION */

/* APRÈS L'EXÉCUTION DE CE SCRIPT No 2:
	- N'OUBLIEZ PAS DE FAIRE UN COMMIT */
	
/*===============================================================================
     Table RESERVATION - Table SEJOUR
/*===============================================================================*/

SAVEPOINT RESERVATIONS;

-- == Village Casa-Dali == 
SAVEPOINT DEBUT_RES;
-- debut réservation
/* réservation 2: 5 nuits - 2 logements */
INSERT INTO
	RESERVATION
		(NO_RESERVATION,
		 DATE_RESERVATION,
		 NO_CLIENT,
		 NOM_VILLAGE)
	VALUES
		(SEQ_NO_RESERVATION.NEXTVAL,
		 TO_DATE('12/02/2015','dd/mm/yyyy'),
		 2,
		 'Casa-Dali');
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('15/03/2015','dd/mm/yyyy'),
		 108,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 4);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('15/03/2015','dd/mm/yyyy'),
		 109,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('16/03/2015','dd/mm/yyyy'),
		 108,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 4);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('16/03/2015','dd/mm/yyyy'),
		 109,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('17/03/2015','dd/mm/yyyy'),
		 108,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 4);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('17/03/2015','dd/mm/yyyy'),
		 109,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('18/03/2015','dd/mm/yyyy'),
		 108,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 4);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('18/03/2015','dd/mm/yyyy'),
		 109,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('19/03/2015','dd/mm/yyyy'),
		 108,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 4);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('19/03/2015','dd/mm/yyyy'),
		 109,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
-- fin réservation
SAVEPOINT DEBUT_RES;
-- debut réservation
/* réservation 3: 6 nuits - 2 logements */
INSERT INTO
	RESERVATION
		(NO_RESERVATION,
		 DATE_RESERVATION,
		 NO_CLIENT,
		 NOM_VILLAGE)
	VALUES
		(SEQ_NO_RESERVATION.NEXTVAL,
		 TO_DATE('13/02/2015','dd/mm/yyyy'),
		 9,
		 'Casa-Dali');
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('13/03/2015','dd/mm/yyyy'),
		 18,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('13/03/2015','dd/mm/yyyy'),
		 19,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('14/03/2015','dd/mm/yyyy'),
		 18,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('14/03/2015','dd/mm/yyyy'),
		 19,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('15/03/2015','dd/mm/yyyy'),
		 18,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('15/03/2015','dd/mm/yyyy'),
		 19,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('16/03/2015','dd/mm/yyyy'),
		 18,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('16/03/2015','dd/mm/yyyy'),
		 19,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('17/03/2015','dd/mm/yyyy'),
		 18,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('17/03/2015','dd/mm/yyyy'),
		 19,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('18/03/2015','dd/mm/yyyy'),
		 18,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('18/03/2015','dd/mm/yyyy'),
		 19,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
-- fin réservation
SAVEPOINT DEBUT_RES;
-- debut réservation
/* réservation 4: sans séjour... */
INSERT INTO
	RESERVATION
		(NO_RESERVATION,
		 DATE_RESERVATION,
		 NO_CLIENT,
		 NOM_VILLAGE)
	VALUES
		(SEQ_NO_RESERVATION.NEXTVAL,
		 TO_DATE('13/01/2015','dd/mm/yyyy'),
		 4,
		 'Casa-Dali');
-- fin réservation
SAVEPOINT DEBUT_RES;
-- debut réservation
/* réservation 5: 4 nuits - 1 logement */
INSERT INTO
	RESERVATION
		(NO_RESERVATION,
		 DATE_RESERVATION,
		 NO_CLIENT,
		 NOM_VILLAGE)
	VALUES
		(SEQ_NO_RESERVATION.NEXTVAL,
		 TO_DATE('15/02/2015','dd/mm/yyyy'),
		 8,
		 'Casa-Dali');
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('9/03/2015','dd/mm/yyyy'),
		 108,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 3);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('10/03/2015','dd/mm/yyyy'),
		 108,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 3);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('11/03/2015','dd/mm/yyyy'),
		 108,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 3);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('12/03/2015','dd/mm/yyyy'),
		 108,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 3);
-- fin réservation
SAVEPOINT DEBUT_RES;
-- debut réservation
/* réservation 6: 7 nuits - 5 logements */
INSERT INTO
	RESERVATION
		(NO_RESERVATION,
		 DATE_RESERVATION,
		 NO_CLIENT,
		 NOM_VILLAGE)
	VALUES
		(SEQ_NO_RESERVATION.NEXTVAL,
		 TO_DATE('24/02/2015','dd/mm/yyyy'),
		 3,
		 'Casa-Dali');
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('17/03/2015','dd/mm/yyyy'),
		 100,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('17/03/2015','dd/mm/yyyy'),
		 101,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('17/03/2015','dd/mm/yyyy'),
		 102,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('17/03/2015','dd/mm/yyyy'),
		 104,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 5);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('17/03/2015','dd/mm/yyyy'),
		 106,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 4);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('18/03/2015','dd/mm/yyyy'),
		 100,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('18/03/2015','dd/mm/yyyy'),
		 101,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('18/03/2015','dd/mm/yyyy'),
		 102,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('18/03/2015','dd/mm/yyyy'),
		 104,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 5);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('18/03/2015','dd/mm/yyyy'),
		 106,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 4);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('19/03/2015','dd/mm/yyyy'),
		 100,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('19/03/2015','dd/mm/yyyy'),
		 101,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('19/03/2015','dd/mm/yyyy'),
		 102,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('19/03/2015','dd/mm/yyyy'),
		 104,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 5);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('19/03/2015','dd/mm/yyyy'),
		 106,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 4);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('20/03/2015','dd/mm/yyyy'),
		 100,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('20/03/2015','dd/mm/yyyy'),
		 101,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('20/03/2015','dd/mm/yyyy'),
		 102,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('20/03/2015','dd/mm/yyyy'),
		 104,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 5);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('20/03/2015','dd/mm/yyyy'),
		 106,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 4);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('21/03/2015','dd/mm/yyyy'),
		 100,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('21/03/2015','dd/mm/yyyy'),
		 101,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('21/03/2015','dd/mm/yyyy'),
		 102,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('21/03/2015','dd/mm/yyyy'),
		 104,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 5);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('21/03/2015','dd/mm/yyyy'),
		 106,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 4);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('22/03/2015','dd/mm/yyyy'),
		 100,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('22/03/2015','dd/mm/yyyy'),
		 101,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('22/03/2015','dd/mm/yyyy'),
		 102,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('22/03/2015','dd/mm/yyyy'),
		 104,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 5);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('22/03/2015','dd/mm/yyyy'),
		 106,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 4);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('23/03/2015','dd/mm/yyyy'),
		 100,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('23/03/2015','dd/mm/yyyy'),
		 101,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('23/03/2015','dd/mm/yyyy'),
		 102,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('23/03/2015','dd/mm/yyyy'),
		 104,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 5);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('23/03/2015','dd/mm/yyyy'),
		 106,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 4);
-- fin réservation
SAVEPOINT DEBUT_RES;
/* réservation 7: 6 nuits - 2 logements */
-- debut réservation
INSERT INTO
	RESERVATION
		(NO_RESERVATION,
		 DATE_RESERVATION,
		 NO_CLIENT,
		 NOM_VILLAGE)
	VALUES
		(SEQ_NO_RESERVATION.NEXTVAL,
		 TO_DATE('19/02/2015','dd/mm/yyyy'),
		 6,
		 'Casa-Dali');
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('20/03/2015','dd/mm/yyyy'),
		 103,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 5);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('20/03/2015','dd/mm/yyyy'),
		 108,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 4);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('21/03/2015','dd/mm/yyyy'),
		 103,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 5);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('21/03/2015','dd/mm/yyyy'),
		 108,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 4);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('22/03/2015','dd/mm/yyyy'),
		 103,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 5);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('22/03/2015','dd/mm/yyyy'),
		 108,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 4);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('23/03/2015','dd/mm/yyyy'),
		 103,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 5);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('23/03/2015','dd/mm/yyyy'),
		 108,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 4);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('24/03/2015','dd/mm/yyyy'),
		 103,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 5);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('24/03/2015','dd/mm/yyyy'),
		 108,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 4);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('25/03/2015','dd/mm/yyyy'),
		 103,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 5);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('25/03/2015','dd/mm/yyyy'),
		 108,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 4);
-- fin réservation
SAVEPOINT DEBUT_RES;
-- debut réservation
/* réservation 8: 4 nuits - 1 logement */
INSERT INTO
	RESERVATION
		(NO_RESERVATION,
		 DATE_RESERVATION,
		 NO_CLIENT,
		 NOM_VILLAGE)
	VALUES
		(SEQ_NO_RESERVATION.NEXTVAL,
		 TO_DATE('31/01/2015','dd/mm/yyyy'),
		 13,
		 'Casa-Dali');
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('06/03/2015','dd/mm/yyyy'),
		 19,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('07/03/2015','dd/mm/yyyy'),
		 19,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('08/03/2015','dd/mm/yyyy'),
		 19,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('09/03/2015','dd/mm/yyyy'),
		 19,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
-- fin réservation
SAVEPOINT DEBUT_RES;
/* réservation 9: 4 nuits - 1 logement+tous les logements de type C2 du village */
-- debut réservation
INSERT INTO
	RESERVATION
		(NO_RESERVATION,
		 DATE_RESERVATION,
		 NO_CLIENT,
		 NOM_VILLAGE)
	VALUES
		(SEQ_NO_RESERVATION.NEXTVAL,
		 TO_DATE('12/12/2014','dd/mm/yyyy'),
		 10,
		 'Casa-Dali');
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	SELECT
		TO_DATE('26/03/2015','dd/mm/yyyy'),
		LOGEMENT.NO_LOGEMENT,
		LOGEMENT.NOM_VILLAGE,
		SEQ_NO_RESERVATION.CURRVAL,
		2
	FROM
		LOGEMENT
	WHERE
		LOGEMENT.NOM_VILLAGE = 'Casa-Dali'
		AND
		CODE_TYPE_LOGEMENT = 'C2';
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('26/03/2015','dd/mm/yyyy'),
		 106,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 4);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	SELECT
		TO_DATE('27/03/2015','dd/mm/yyyy'),
		LOGEMENT.NO_LOGEMENT,
		LOGEMENT.NOM_VILLAGE,
		SEQ_NO_RESERVATION.CURRVAL,
		2
	FROM
		LOGEMENT
	WHERE
		LOGEMENT.NOM_VILLAGE = 'Casa-Dali'
		AND
		CODE_TYPE_LOGEMENT = 'C2';
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('27/03/2015','dd/mm/yyyy'),
		 106,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 4);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	SELECT
		TO_DATE('28/03/2015','dd/mm/yyyy'),
		LOGEMENT.NO_LOGEMENT,
		LOGEMENT.NOM_VILLAGE,
		SEQ_NO_RESERVATION.CURRVAL,
		2
	FROM
		LOGEMENT
	WHERE
		LOGEMENT.NOM_VILLAGE = 'Casa-Dali'
		AND
		CODE_TYPE_LOGEMENT = 'C2';
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('28/03/2015','dd/mm/yyyy'),
		 106,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 4);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	SELECT
		TO_DATE('29/03/2015','dd/mm/yyyy'),
		LOGEMENT.NO_LOGEMENT,
		LOGEMENT.NOM_VILLAGE,
		SEQ_NO_RESERVATION.CURRVAL,
		2
	FROM
		LOGEMENT
	WHERE
		LOGEMENT.NOM_VILLAGE = 'Casa-Dali'
		AND
		CODE_TYPE_LOGEMENT = 'C2';
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('29/03/2015','dd/mm/yyyy'),
		 106,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 4);

-- fin réservation
SAVEPOINT DEBUT_RES;
-- debut réservation
/* réservation 10: 3 nuits - tous les logements de type D2 du village */
INSERT INTO
	RESERVATION
		(NO_RESERVATION,
		 DATE_RESERVATION,
		 NO_CLIENT,
		 NOM_VILLAGE)
	VALUES
		(SEQ_NO_RESERVATION.NEXTVAL,
		 TO_DATE('01/11/2014','dd/mm/yyyy'),
		 7,
		 'Casa-Dali');
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	SELECT
		TO_DATE('26/02/2015','dd/mm/yyyy'),
		LOGEMENT.NO_LOGEMENT,
		LOGEMENT.NOM_VILLAGE,
		SEQ_NO_RESERVATION.CURRVAL,
		4
	FROM
		LOGEMENT
	WHERE
		LOGEMENT.NOM_VILLAGE = 'Casa-Dali'
		AND
		CODE_TYPE_LOGEMENT = 'D2';
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	SELECT
		TO_DATE('27/02/2015','dd/mm/yyyy'),
		LOGEMENT.NO_LOGEMENT,
		LOGEMENT.NOM_VILLAGE,
		SEQ_NO_RESERVATION.CURRVAL,
		4
	FROM
		LOGEMENT
	WHERE
		LOGEMENT.NOM_VILLAGE = 'Casa-Dali'
		AND
		CODE_TYPE_LOGEMENT = 'D2';
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	SELECT
		TO_DATE('28/02/2015','dd/mm/yyyy'),
		LOGEMENT.NO_LOGEMENT,
		LOGEMENT.NOM_VILLAGE,
		SEQ_NO_RESERVATION.CURRVAL,
		4
	FROM
		LOGEMENT
	WHERE
		LOGEMENT.NOM_VILLAGE = 'Casa-Dali'
		AND
		CODE_TYPE_LOGEMENT = 'D2';
-- fin réservation
SAVEPOINT DEBUT_RES;
-- debut réservation
/* réservation 11: 6 nuits - 1 logement */
INSERT INTO
	RESERVATION
		(NO_RESERVATION,
		 DATE_RESERVATION,
		 NO_CLIENT,
		 NOM_VILLAGE)
	VALUES
		(SEQ_NO_RESERVATION.NEXTVAL,
		 TO_DATE('19/02/2015','dd/mm/yyyy'),
		 8,
		 'Casa-Dali');
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('31/03/2015','dd/mm/yyyy'),
		 105,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 6);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('01/04/2015','dd/mm/yyyy'),
		 105,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 6);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('02/04/2015','dd/mm/yyyy'),
		 105,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 6);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('03/04/2015','dd/mm/yyyy'),
		 105,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 6);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('04/04/2015','dd/mm/yyyy'),
		 105,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 6);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('05/04/2015','dd/mm/yyyy'),
		 105,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 6);
-- fin réservation
/* réservation 12 : 2 nuits - 1 logement */
INSERT INTO
	RESERVATION
		(NO_RESERVATION,
		 DATE_RESERVATION,
		 NO_CLIENT,
		 NOM_VILLAGE)
	VALUES
		(SEQ_NO_RESERVATION.NEXTVAL,
		 TO_DATE('31/01/2015','dd/mm/yyyy'),
		 13,
		 'Casa-Dali');
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('03/04/2015','dd/mm/yyyy'),
		 108,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('04/04/2015','dd/mm/yyyy'),
		 108,
		 'Casa-Dali',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
-- fin réservation */

SAVEPOINT DEBUT_RES;
-- debut réservation
/* réservation 13: 37 nuits - 1 logement */
INSERT INTO
	RESERVATION
		(NO_RESERVATION,
		 DATE_RESERVATION,
		 NO_CLIENT,
		 NOM_VILLAGE)
	VALUES
		(SEQ_NO_RESERVATION.NEXTVAL,
		 TO_DATE('02/01/2015','dd/mm/yyyy'),
		 15,
		 'Casa-Dali');

DECLARE
	DATE_SEJ DATE := TO_DATE('24/02/2015','dd/mm/yyyy');
BEGIN	
	FOR JOUR IN 1 .. (TO_DATE('02/04/2015','dd/mm/yyyy') - TO_DATE('24/02/2015','dd/mm/yyyy')) LOOP
		INSERT INTO
		SEJOUR
			(DATE_SEJOUR,
			 NO_LOGEMENT,
			 NOM_VILLAGE,
			 NO_RESERVATION,
			 NB_PERSONNES)
		VALUES
			(DATE_SEJ,
			 9,
			 'Casa-Dali',
			 SEQ_NO_RESERVATION.CURRVAL,
			 2);
		DATE_SEJ := DATE_SEJ + 1;
	END LOOP;
END;
/
-- fin réservation

-- == Village Porto-Nuevo == 
SAVEPOINT DEBUT_RES;
-- debut réservation
/* réservation 14: 7 nuits - tous les logements village */
INSERT INTO
	RESERVATION
		(NO_RESERVATION,
		 DATE_RESERVATION,
		 NO_CLIENT,
		 NOM_VILLAGE)
	VALUES
		(SEQ_NO_RESERVATION.NEXTVAL,
		 TO_DATE('15/09/2014','dd/mm/yyyy'),
		 2,
		 'Porto-Nuevo');
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	SELECT
		TO_DATE('27/12/2014','dd/mm/yyyy'),
		LOGEMENT.NO_LOGEMENT,
		LOGEMENT.NOM_VILLAGE,
		SEQ_NO_RESERVATION.CURRVAL,
		2
	FROM
		LOGEMENT
	WHERE
		LOGEMENT.NOM_VILLAGE = 'Porto-Nuevo';
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	SELECT
		TO_DATE('28/12/2014','dd/mm/yyyy'),
		LOGEMENT.NO_LOGEMENT,
		LOGEMENT.NOM_VILLAGE,
		SEQ_NO_RESERVATION.CURRVAL,
		2
	FROM
		LOGEMENT
	WHERE
		LOGEMENT.NOM_VILLAGE = 'Porto-Nuevo';
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	SELECT
		TO_DATE('29/12/2014','dd/mm/yyyy'),
		LOGEMENT.NO_LOGEMENT,
		LOGEMENT.NOM_VILLAGE,
		SEQ_NO_RESERVATION.CURRVAL,
		2
	FROM
		LOGEMENT
	WHERE
		LOGEMENT.NOM_VILLAGE = 'Porto-Nuevo';
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	SELECT
		TO_DATE('30/12/2014','dd/mm/yyyy'),
		LOGEMENT.NO_LOGEMENT,
		LOGEMENT.NOM_VILLAGE,
		SEQ_NO_RESERVATION.CURRVAL,
		2
	FROM
		LOGEMENT
	WHERE
		LOGEMENT.NOM_VILLAGE = 'Porto-Nuevo';
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	SELECT
		TO_DATE('31/12/2014','dd/mm/yyyy'),
		LOGEMENT.NO_LOGEMENT,
		LOGEMENT.NOM_VILLAGE,
		SEQ_NO_RESERVATION.CURRVAL,
		2
	FROM
		LOGEMENT
	WHERE
		LOGEMENT.NOM_VILLAGE = 'Porto-Nuevo';
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	SELECT
		TO_DATE('01/01/2015','dd/mm/yyyy'),
		LOGEMENT.NO_LOGEMENT,
		LOGEMENT.NOM_VILLAGE,
		SEQ_NO_RESERVATION.CURRVAL,
		2
	FROM
		LOGEMENT
	WHERE
		LOGEMENT.NOM_VILLAGE = 'Porto-Nuevo';
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	SELECT
		TO_DATE('02/01/2015','dd/mm/yyyy'),
		LOGEMENT.NO_LOGEMENT,
		LOGEMENT.NOM_VILLAGE,
		SEQ_NO_RESERVATION.CURRVAL,
		2
	FROM
		LOGEMENT
	WHERE
		LOGEMENT.NOM_VILLAGE = 'Porto-Nuevo';
-- fin réservation
SAVEPOINT DEBUT_RES;
-- debut réservation
/* réservation 15: sans séjour... */
INSERT INTO
	RESERVATION
		(NO_RESERVATION,
		 DATE_RESERVATION,
		 NO_CLIENT,
		 NOM_VILLAGE)
	VALUES
		(SEQ_NO_RESERVATION.NEXTVAL,
		 TO_DATE('17/02/2015','dd/mm/yyyy'),
		 4,
		 'Porto-Nuevo');
-- fin réservation
SAVEPOINT DEBUT_RES;
-- debut réservation
/* réservation 16: 5 nuits - tous les logements village */
INSERT INTO
	RESERVATION
		(NO_RESERVATION,
		 DATE_RESERVATION,
		 NO_CLIENT,
		 NOM_VILLAGE)
	VALUES
		(SEQ_NO_RESERVATION.NEXTVAL,
		 TO_DATE('17/02/2015','dd/mm/yyyy'),
		 4,
		 'Porto-Nuevo');
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	SELECT
		TO_DATE('02/03/2016','dd/mm/yyyy'),
		LOGEMENT.NO_LOGEMENT,
		LOGEMENT.NOM_VILLAGE,
		SEQ_NO_RESERVATION.CURRVAL,
		2
	FROM
		LOGEMENT
	WHERE
		LOGEMENT.NOM_VILLAGE = 'Porto-Nuevo';
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	SELECT
		TO_DATE('03/03/2016','dd/mm/yyyy'),
		LOGEMENT.NO_LOGEMENT,
		LOGEMENT.NOM_VILLAGE,
		SEQ_NO_RESERVATION.CURRVAL,
		2
	FROM
		LOGEMENT
	WHERE
		LOGEMENT.NOM_VILLAGE = 'Porto-Nuevo';
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	SELECT
		TO_DATE('04/03/2016','dd/mm/yyyy'),
		LOGEMENT.NO_LOGEMENT,
		LOGEMENT.NOM_VILLAGE,
		SEQ_NO_RESERVATION.CURRVAL,
		2
	FROM
		LOGEMENT
	WHERE
		LOGEMENT.NOM_VILLAGE = 'Porto-Nuevo';
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	SELECT
		TO_DATE('05/03/2016','dd/mm/yyyy'),
		LOGEMENT.NO_LOGEMENT,
		LOGEMENT.NOM_VILLAGE,
		SEQ_NO_RESERVATION.CURRVAL,
		2
	FROM
		LOGEMENT
	WHERE
		LOGEMENT.NOM_VILLAGE = 'Porto-Nuevo';
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	SELECT
		TO_DATE('06/03/2016','dd/mm/yyyy'),
		LOGEMENT.NO_LOGEMENT,
		LOGEMENT.NOM_VILLAGE,
		SEQ_NO_RESERVATION.CURRVAL,
		2
	FROM
		LOGEMENT
	WHERE
		LOGEMENT.NOM_VILLAGE = 'Porto-Nuevo';
-- fin réservation
SAVEPOINT DEBUT_RES;
-- debut réservation
/* réservation 17:3 nuits - 1 logement */
INSERT INTO
	RESERVATION
		(NO_RESERVATION,
		 DATE_RESERVATION,
		 NO_CLIENT,
		 NOM_VILLAGE)
	VALUES
		(SEQ_NO_RESERVATION.NEXTVAL,
		 TO_DATE('28/02/2015','dd/mm/yyyy'),
		 2,
		 'Porto-Nuevo');
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('07/03/2015','dd/mm/yyyy'),
		 1,
		 'Porto-Nuevo',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('08/03/2015','dd/mm/yyyy'),
		 1,
		 'Porto-Nuevo',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('09/03/2015','dd/mm/yyyy'),
		 1,
		 'Porto-Nuevo',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
-- fin réservation
SAVEPOINT DEBUT_RES;
-- debut réservation
/* réservation 18: 6 nuits - 2 logements */
INSERT INTO
	RESERVATION
		(NO_RESERVATION,
		 DATE_RESERVATION,
		 NO_CLIENT,
		 NOM_VILLAGE)
	VALUES
		(SEQ_NO_RESERVATION.NEXTVAL,
		 TO_DATE('28/02/2015','dd/mm/yyyy'),
		 9,
		 'Porto-Nuevo');
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('09/03/2015','dd/mm/yyyy'),
		 2,
		 'Porto-Nuevo',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('09/03/2015','dd/mm/yyyy'),
		 3,
		 'Porto-Nuevo',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('10/03/2015','dd/mm/yyyy'),
		 2,
		 'Porto-Nuevo',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('10/03/2015','dd/mm/yyyy'),
		 3,
		 'Porto-Nuevo',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('11/03/2015','dd/mm/yyyy'),
		 2,
		 'Porto-Nuevo',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('11/03/2015','dd/mm/yyyy'),
		 3,
		 'Porto-Nuevo',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);		 
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('12/03/2015','dd/mm/yyyy'),
		 2,
		 'Porto-Nuevo',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('12/03/2015','dd/mm/yyyy'),
		 3,
		 'Porto-Nuevo',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('13/03/2015','dd/mm/yyyy'),
		 2,
		 'Porto-Nuevo',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('13/03/2015','dd/mm/yyyy'),
		 3,
		 'Porto-Nuevo',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('14/03/2015','dd/mm/yyyy'),
		 2,
		 'Porto-Nuevo',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('14/03/2015','dd/mm/yyyy'),
		 3,
		 'Porto-Nuevo',
		 SEQ_NO_RESERVATION.CURRVAL,
		 2);		 
-- fin réservation
----**********
SAVEPOINT DEBUT_RES;
-- debut réservation
/* réservation 19: 1 nuit - 1 logement */
INSERT INTO
	RESERVATION
		(NO_RESERVATION,
		 DATE_RESERVATION,
		 NO_CLIENT,
		 NOM_VILLAGE)
	VALUES
		(SEQ_NO_RESERVATION.NEXTVAL,
		 TO_DATE('19/02/2015','dd/mm/yyyy'),
		 5,
		 'Porto-Nuevo');
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('01/03/2015','dd/mm/yyyy'),
		 108,
		 'Porto-Nuevo',
		 SEQ_NO_RESERVATION.CURRVAL,
		 3);
-- fin réservation

-- == Village Kouros == 
SAVEPOINT DEBUT_RES;
-- debut réservation
/* réservation 20: 4 nuits - 1 logement */
INSERT INTO
	RESERVATION
		(NO_RESERVATION,
		 DATE_RESERVATION,
		 NO_CLIENT,
		 NOM_VILLAGE)
	VALUES
		(SEQ_NO_RESERVATION.NEXTVAL,
		 TO_DATE('24/02/2015','dd/mm/yyyy'),
		 10,
		 'Kouros');
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('17/03/2015','dd/mm/yyyy'),
		 19,
		 'Kouros',
		 SEQ_NO_RESERVATION.CURRVAL,
		 1);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('18/03/2015','dd/mm/yyyy'),
		 19,
		 'Kouros',
		 SEQ_NO_RESERVATION.CURRVAL,
		 1);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('19/03/2015','dd/mm/yyyy'),
		 19,
		 'Kouros',
		 SEQ_NO_RESERVATION.CURRVAL,
		 1);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('20/03/2015','dd/mm/yyyy'),
		 19,
		 'Kouros',
		 SEQ_NO_RESERVATION.CURRVAL,
		 1);
-- fin réservation
/* réservation 21: 3 nuits - 2 logements */
INSERT INTO
	RESERVATION
		(NO_RESERVATION,
		 DATE_RESERVATION,
		 NO_CLIENT,
		 NOM_VILLAGE)
	VALUES
		(SEQ_NO_RESERVATION.NEXTVAL,
		 TO_DATE('25/02/2015','dd/mm/yyyy'),
		 14,
		 'Kouros');
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('18/03/2015','dd/mm/yyyy'),
		 8,
		 'Kouros',
		 SEQ_NO_RESERVATION.CURRVAL,
		 1);		 
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('19/03/2015','dd/mm/yyyy'),
		 8,
		 'Kouros',
		 SEQ_NO_RESERVATION.CURRVAL,
		 1);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('20/03/2015','dd/mm/yyyy'),
		 8,
		 'Kouros',
		 SEQ_NO_RESERVATION.CURRVAL,
		 1);	
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('18/03/2015','dd/mm/yyyy'),
		 107,
		 'Kouros',
		 SEQ_NO_RESERVATION.CURRVAL,
		 4);		 
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('19/03/2015','dd/mm/yyyy'),
		 107,
		 'Kouros',
		 SEQ_NO_RESERVATION.CURRVAL,
		 4);
INSERT INTO
	SEJOUR
		(DATE_SEJOUR,
		 NO_LOGEMENT,
		 NOM_VILLAGE,
		 NO_RESERVATION,
		 NB_PERSONNES)
	VALUES
		(TO_DATE('20/03/2015','dd/mm/yyyy'),
		 107,
		 'Kouros',
		 SEQ_NO_RESERVATION.CURRVAL,
		 4);			 
-- fin réservation
----**********