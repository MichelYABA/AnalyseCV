
-- USE DWH_EID;

DROP TABLE IF EXISTS `dim_candidat`;
CREATE TABLE IF NOT EXISTS `dim_candidat` (
  `ID_CANDIDAT` int(25) NOT NULL,
  `NOM_CANDIDAT` varchar(50) NULL,
  `PRENOM_CANDIDAT` varchar(50) NULL,
  `AGE_CANDIDAT` int(3) NULL,
  `SEXE` char(1) NULL,
  `NATIONALITE` varchar(40) NULL
);

DROP TABLE IF EXISTS `dim_competences_op`;
CREATE TABLE IF NOT EXISTS `dim_competences_op` (
  `ID_COMP_OP` varchar(35) NOT NULL,
  `NOM_COMP_OP` varchar(60) NULL,
  `DESCRIPTION_OP` varchar(100) NULL
);


DROP TABLE IF EXISTS `dim_competences_tech`;
CREATE TABLE IF NOT EXISTS `dim_competences_tech` (
  `ID_COMP_TECH` varchar(30) NOT NULL,
  `NOM_COM` varchar(50) NULL,
  `TYPE_COM` varchar(50) NULL
);

DROP TABLE IF EXISTS `dim_etablissement`;
CREATE TABLE IF NOT EXISTS `dim_etablissement` (
  `ID_ETABLISSEMENT` varchar(50) NOT NULL,
  `NOM_ETABLISSEMENT` varchar(100) NULL,
  `TYPE_ETABLISSEMENT` varchar(45) NULL
);

DROP TABLE IF EXISTS `dim_experience`;
CREATE TABLE IF NOT EXISTS `dim_experience` (
  `ID_EXP_PRO` varchar(30) NOT NULL,
  `TITRE_POSTE` varchar(100) NULL,
  `MISSIONS` varchar(150) NULL,
  `TACHES` varchar(150) NULL,
  `ID_CANDIDAT` int(25) NULL
);

DROP TABLE IF EXISTS `dim_formations`;
CREATE TABLE IF NOT EXISTS `dim_formations` (
  `CODE_FORMATION` varchar(35) NOT NULL,
  `INTITULE_FORMATION` varchar(300) NULL,
  `ID_ETABLISSEMENT` varchar(50) NULL
) ;


DROP TABLE IF EXISTS `dim_langues`;
CREATE TABLE IF NOT EXISTS `dim_langues` (
  `ID_LANGUE` int(35) NOT NULL,
  `Nom_langues` varchar(50) NULL,
  `Pays_langues` varchar(35) NULL
) ;

DROP TABLE IF EXISTS `dim_projets`;
CREATE TABLE IF NOT EXISTS `dim_projets` (
  `ID_PROJET` varchar(100) NOT NULL,
  `TITRE_PROJET` varchar(200) NULL,
  `TYPE_PROJET` varchar(50) NULL,
  `ID_CANDIDAT` varchar(30) NULL
);

DROP TABLE IF EXISTS `fait_candidatures`;
CREATE TABLE IF NOT EXISTS `fait_candidatures` (
  `ID_CANDIDAT` int(30) NULL,
  `ID_ETABLISSEMENT` int(50) NULL,
  `ID_PROJET` int(100) NULL,
  `DELAI_ENVOI` int(5) NULL,
  `EVAL_EXPERIENCE` int(1) NULL,
  `EVAL_COMP_OP` int(1) NULL,
  `EVAL_COMP_TECH` int(1) NULL,
  `EVAL_FORMATION` int(1) NULL
);

DROP TABLE IF EXISTS `dim_temps`;
CREATE TABLE IF NOT EXISTS `dim_temps` (
  `ID_TEMPS` varchar(10) NOT NULL,
  `ANNEE` char(4) NULL,
  `MOIS` char(2) NULL,
  `JOUR` char(2) NULL
);
