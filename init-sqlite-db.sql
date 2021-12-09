/**
 * Data sourced from https://vaers.hhs.gov/data/datasets.html
 * 1. Download the zip file of "All Years Data"
 * 2. Unzip the zip file
 * 3. In that directory, run sqlite3 VAERS_ALL.db
 * 4. Copy and paste the below to populate that database
 */
.header ON
.mode csv
 
CREATE TABLE vaers_data(
      "vaers_id" INTEGER PRIMARY KEY NOT NULL,
      "recvdate" DATE NOT NULL,
      "state" text NOT NULL,
      "age_yrs" INTEGER,
      "cage_yr" INTEGER,
      "cage_mo" FLOAT,
      "sex" text,
      "rpt_date" DATE,
      "symptom_text" text,
      "died" BOOLEAN,
      "datedied" DATE,
      "l_threat" BOOLEAN,
      "er_visit" BOOLEAN,
      "hospital" BOOLEAN,
      "hospdays" INTEGER,
      "x_stay" BOOLEAN,
      "disable" BOOLEAN,
      "recovd" text,
      "vax_date" DATE,
      "onset_date" DATE,
      "numdays" INTEGER,
      "lab_data" text,
      "v_adminby" text,
      "v_fundby" text,
      "other_meds" text,
      "cur_ill" text,
      "history" text,
      "prior_vax" text,
      "splttype" text,
      "form_vers" text,
      "todays_date" text,
      "birth_defect" text,
      "ofc_visit" text,
      "er_ed_visit" text,
      "allergies" text
);
CREATE TABLE vaers_symptoms(
      "vaers_id" INTEGER,
      "symptom1" text,
      "symptomversion1" text,
      "symptom2" text,
      "symptomversion2" text,
      "symptom3" text,
      "symptomversion3" text,
      "symptom4" text,
      "symptomversion4" text,
      "symptom5" text,
      "symptomversion5" text
);
/* Because the schema for symptoms is awful */
CREATE TABLE vaers_symptom(
      "vaers_id" INTEGER,
      "symptom" text,
      "symptomversion" FLOAT
);
CREATE TABLE vaers_vax(
      "vaers_id" INTEGER,
      "vax_type" text,
      "vax_manu" text,
      "vax_lot" text,
      "vax_dose_series" text,
      "vax_route" text,
      "vax_site" text,
      "vax_name" text
);
 
 
.import ./1990VAERSDATA.csv vaers_data
.import ./1990VAERSSYMPTOMS.csv vaers_symptoms
.import ./1990VAERSVAX.csv vaers_vax
.import ./1991VAERSDATA.csv vaers_data
.import ./1991VAERSSYMPTOMS.csv vaers_symptoms
.import ./1991VAERSVAX.csv vaers_vax
.import ./1992VAERSDATA.csv vaers_data
.import ./1992VAERSSYMPTOMS.csv vaers_symptoms
.import ./1992VAERSVAX.csv vaers_vax
.import ./1993VAERSDATA.csv vaers_data
.import ./1993VAERSSYMPTOMS.csv vaers_symptoms
.import ./1993VAERSVAX.csv vaers_vax
.import ./1994VAERSDATA.csv vaers_data
.import ./1994VAERSSYMPTOMS.csv vaers_symptoms
.import ./1994VAERSVAX.csv vaers_vax
.import ./1995VAERSDATA.csv vaers_data
.import ./1995VAERSSYMPTOMS.csv vaers_symptoms
.import ./1995VAERSVAX.csv vaers_vax
.import ./1996VAERSDATA.csv vaers_data
.import ./1996VAERSSYMPTOMS.csv vaers_symptoms
.import ./1996VAERSVAX.csv vaers_vax
.import ./1997VAERSDATA.csv vaers_data
.import ./1997VAERSSYMPTOMS.csv vaers_symptoms
.import ./1997VAERSVAX.csv vaers_vax
.import ./1998VAERSDATA.csv vaers_data
.import ./1998VAERSSYMPTOMS.csv vaers_symptoms
.import ./1998VAERSVAX.csv vaers_vax
.import ./1999VAERSDATA.csv vaers_data
.import ./1999VAERSSYMPTOMS.csv vaers_symptoms
.import ./1999VAERSVAX.csv vaers_vax
.import ./2000VAERSDATA.csv vaers_data
.import ./2000VAERSSYMPTOMS.csv vaers_symptoms
.import ./2000VAERSVAX.csv vaers_vax
.import ./2001VAERSDATA.csv vaers_data
.import ./2001VAERSSYMPTOMS.csv vaers_symptoms
.import ./2001VAERSVAX.csv vaers_vax
.import ./2002VAERSDATA.csv vaers_data
.import ./2002VAERSSYMPTOMS.csv vaers_symptoms
.import ./2002VAERSVAX.csv vaers_vax
.import ./2003VAERSDATA.csv vaers_data
.import ./2003VAERSSYMPTOMS.csv vaers_symptoms
.import ./2003VAERSVAX.csv vaers_vax
.import ./2004VAERSDATA.csv vaers_data
.import ./2004VAERSSYMPTOMS.csv vaers_symptoms
.import ./2004VAERSVAX.csv vaers_vax
.import ./2005VAERSDATA.csv vaers_data
.import ./2005VAERSSYMPTOMS.csv vaers_symptoms
.import ./2005VAERSVAX.csv vaers_vax
.import ./2006VAERSDATA.csv vaers_data
.import ./2006VAERSSYMPTOMS.csv vaers_symptoms
.import ./2006VAERSVAX.csv vaers_vax
.import ./2007VAERSDATA.csv vaers_data
.import ./2007VAERSSYMPTOMS.csv vaers_symptoms
.import ./2007VAERSVAX.csv vaers_vax
.import ./2008VAERSDATA.csv vaers_data
.import ./2008VAERSSYMPTOMS.csv vaers_symptoms
.import ./2008VAERSVAX.csv vaers_vax
.import ./2009VAERSDATA.csv vaers_data
.import ./2009VAERSSYMPTOMS.csv vaers_symptoms
.import ./2009VAERSVAX.csv vaers_vax
.import ./2010VAERSDATA.csv vaers_data
.import ./2010VAERSSYMPTOMS.csv vaers_symptoms
.import ./2010VAERSVAX.csv vaers_vax
.import ./2011VAERSDATA.csv vaers_data
.import ./2011VAERSSYMPTOMS.csv vaers_symptoms
.import ./2011VAERSVAX.csv vaers_vax
.import ./2012VAERSDATA.csv vaers_data
.import ./2012VAERSSYMPTOMS.csv vaers_symptoms
.import ./2012VAERSVAX.csv vaers_vax
.import ./2013VAERSDATA.csv vaers_data
.import ./2013VAERSSYMPTOMS.csv vaers_symptoms
.import ./2013VAERSVAX.csv vaers_vax
.import ./2014VAERSDATA.csv vaers_data
.import ./2014VAERSSYMPTOMS.csv vaers_symptoms
.import ./2014VAERSVAX.csv vaers_vax
.import ./2015VAERSDATA.csv vaers_data
.import ./2015VAERSSYMPTOMS.csv vaers_symptoms
.import ./2015VAERSVAX.csv vaers_vax
.import ./2016VAERSDATA.csv vaers_data
.import ./2016VAERSSYMPTOMS.csv vaers_symptoms
.import ./2016VAERSVAX.csv vaers_vax
.import ./2017VAERSDATA.csv vaers_data
.import ./2017VAERSSYMPTOMS.csv vaers_symptoms
.import ./2017VAERSVAX.csv vaers_vax
.import ./2018VAERSDATA.csv vaers_data
.import ./2018VAERSSYMPTOMS.csv vaers_symptoms
.import ./2018VAERSVAX.csv vaers_vax
.import ./2019VAERSDATA.csv vaers_data
.import ./2019VAERSSYMPTOMS.csv vaers_symptoms
.import ./2019VAERSVAX.csv vaers_vax
.import ./2020VAERSDATA.csv vaers_data
.import ./2020VAERSSYMPTOMS.csv vaers_symptoms
.import ./2020VAERSVAX.csv vaers_vax
.import ./2021VAERSDATA.csv vaers_data
.import ./2021VAERSSYMPTOMS.csv vaers_symptoms
.import ./2021VAERSVAX.csv vaers_vax
 
DELETE FROM vaers_vax WHERE vaers_id='vaers_id';
DELETE FROM vaers_symptoms WHERE vaers_id='vaers_id';
DELETE FROM vaers_data WHERE vaers_id='vaers_id';
 
CREATE INDEX vaers_data_vaers_id ON vaers_data (vaers_id);
CREATE INDEX vaers_symptom_vaers_id ON vaers_symptom (vaers_id);
CREATE INDEX vaers_vax_vaers_id ON vaers_vax (vaers_id);
CREATE INDEX vaers_vax_vax_type ON vaers_vax (vax_type);
 
UPDATE vaers_data
SET died = CASE WHEN died = 'Y' THEN 1 ELSE 0 END,
    l_threat = CASE WHEN l_threat = 'Y' THEN 1 ELSE 0 END,
    er_visit = CASE WHEN er_visit = 'Y' THEN 1 ELSE 0 END,
    hospital = CASE WHEN hospital = 'Y' THEN 1 ELSE 0 END,
    x_stay = CASE WHEN x_stay = 'Y' THEN 1 ELSE 0 END,
    disable = CASE WHEN disable = 'Y' THEN 1 ELSE 0 END;
 
INSERT INTO vaers_symptom (vaers_id, symptom, symptomversion)
SELECT vaers_id, symptom1, symptomversion1 FROM vaers_symptoms WHERE symptomversion1 != '';
INSERT INTO vaers_symptom (vaers_id, symptom, symptomversion)
SELECT vaers_id, symptom2, symptomversion2 FROM vaers_symptoms WHERE symptomversion2 != '';
INSERT INTO vaers_symptom (vaers_id, symptom, symptomversion)
SELECT vaers_id, symptom3, symptomversion3 FROM vaers_symptoms WHERE symptomversion3 != '';
INSERT INTO vaers_symptom (vaers_id, symptom, symptomversion)
SELECT vaers_id, symptom4, symptomversion4 FROM vaers_symptoms WHERE symptomversion4 != '';
INSERT INTO vaers_symptom (vaers_id, symptom, symptomversion)
SELECT vaers_id, symptom5, symptomversion5 FROM vaers_symptoms WHERE symptomversion5 != '';
DROP TABLE vaers_symptoms;
 
/* From here, the data should be in good enough shape to query it. */
 
/* For example, look at the number of reported deaths by age */
WITH covid_vax AS (
    SELECT DISTINCT vaers_id
    FROM vaers_vax
    WHERE vax_type='COVID19'
),
covid_vax_deaths AS (
    SELECT
        vaers_data.*
    FROM covid_vax JOIN vaers_data ON covid_vax.vaers_id = vaers_data.vaers_id
    WHERE vaers_data.died = 1
)
SELECT age_yrs, COUNT(*)
FROM covid_vax_deaths
GROUP BY age_yrs;
 
/* Or look at the most common symptoms associated with death */
SELECT
    s.symptom,
    COUNT(DISTINCT d.vaers_id) AS n_cases,
    COUNT(DISTINCT CASE WHEN d.died = 1 THEN d.vaers_id ELSE NULL END) AS n_deaths
FROM vaers_data d
    JOIN vaers_symptom s ON d.vaers_id = s.vaers_id
    JOIN vaers_vax v ON d.vaers_id = v.vaers_id
WHERE v.vax_type = 'COVID19'
GROUP BY s.symptom
HAVING n_cases > 100
ORDER BY 1.0 * n_deaths / n_cases DESC
L
IMIT 10;
