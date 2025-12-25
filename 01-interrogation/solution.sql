-- Question 1 : Initial Inspection
-- View the list of all suspects
SELECT * FROM dati;

-- Question 2 : Informant Clues
-- Question 2.a
-- Identify all people who left the hotel exactly at 10:50.
SELECT * 
FROM dati
WHERE field7 = "10:50:00";

-- Question 2.b
-- Identify all people with blond hair, regardless of departure time.
SELECT *
FROM dati
WHERE field9 = "biondi";

-- Question 2.c
-- Identify all people with shoe size 44, regardless of other conditions.
SELECT * 
FROM dati
where field10 = 44;

-- Question 2.d 
-- Identify people who left at 10:50 AND have blond hair
SELECT *
FROM dati
WHERE field7 = "10:50:00" AND field9 == "biondi";

-- Question 2.e
-- Identify people who simultaneously satisfy conditions (2.a), (2.b), and (2.c).
SELECT * 
FROM dati
WHERE field7 = "10:50:00"
AND field9 = "biondi"
and field10 = 44;

/* Informant Reliability:
After applying all three conditions provided by the informant
(departure time, hair color, and shoe size), no individual satisfies
all the constraints. Therefore, the informant’s information is
inconsistent with the data and cannot be considered reliable. */

-- Question 3 : Targeted Interviews
-- Question 3.a
-- Identify the person with black hair who was seen leaving at 08:10.

SELECT * 
FROM dati
WHERE field9 = "neri" 
AND field7 = "08:10:00";

-- Question 3.b
-- Identify people with black hair who were seen returning at 19:05.
SELECT *
FROM dati
WHERE field9 = "neri"
AND field8 = "19:05:00";

-- Question 3.c 
-- Identify the person with blond hair and surname “Agostini” who was known to have spoken with the victim before the crime.
SELECT * 
FROM dati
WHERE field9 = "biondi"
AND field4 = "AGOSTINI";

-- Question 4 : New Witness Statements
-- Question 4.a
-- Identify people with brown hair who must have left the hotel before 15:30.
SELECT * 
FROM dati
WHERE field9 = "castani"
AND field7 < "15:30:00";

-- Question 4.b
-- From the previous result, identify those who arrived on July 7, 2001.
SELECT * 
FROM dati
WHERE field9 = "castani"
AND field7 < "15:30:00"
AND field2 = "2001-07-07";

-- Question 4.c
-- From the remaining suspects, identify those with shoe size 40, assuming the victim’s shoe size was 36.
SELECT * 
FROM dati
WHERE field9 = "castani"
AND field7 < "15:30:00"
AND field2 = "2001-07-07"
AND field10 = 40;

-- Question 4.d
-- A witness recalls a car whose license plate starts with CBW. Without adding new filters, analyze the data to identify the most likely suspect.
SELECT * 
FROM dati
WHERE field9 = "castani"
AND field7 < "15:30:00"
AND field2 = "2001-07-07"
AND field10 = 40;
-- Analysis:
-- Among the two remaining suspects, only one has a license plate
-- starting with 'CBW'. This individual is therefore the most likely suspect.


-- After discovering that Edward Ventura has an alibi, reassess the investigation.


-- Question 5 : Final Reconstruction
-- Question 5.a
-- Identify women who:

/* 
Identify women who:
Left the hotel at 09:30
Arrived on July 7, 2001
Had red or brown hair
Had a shoe size greater than 36
Returned to the hotel at 19:30
*/
SELECT *
FROM dati
WHERE field7 = "09:30:00"
AND field2 = "2001-07-07"
AND (field9 = "rossi" OR field9 = "castani")
AND field10 > 36
AND field8 = "19:30:00";


-- Question 5.b
/*
Another witness recalls that:
The suspect retrieved boots from a car
The license plate referred to Pisa or Pesaro
The suitcase had the initials A.S.
*/
SELECT *
FROM dati
WHERE field7 = "09:30:00"
AND field2 = "2001-07-07"
AND (field9 = "rossi" OR field9 = "castani")
AND field10 > 36
AND field8 = "19:30:00"
AND (field6 = "Pisa" OR field6 = "Pesaro");






