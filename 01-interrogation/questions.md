# Exercise 1 – Yellow in the Mountains (Interrogation Database)

## Objective
This exercise focuses on practicing basic SQL querying techniques such as filtering,
logical conditions, and progressive constraint refinement using a single-table database.
The goal is to support a criminal investigation by extracting relevant information
from interrogation data.

---

## Database Description
The database `interrogation` consists of **one table** named `data`, which contains
information collected during police interrogations of tourists.

Each record represents one person and includes the following attributes:

- ID: unique identifier of the record
- DATE: date of arrival at the hotel
- NAME, SURNAME: first and last name
- TARGA_AUTO: car license plate
- CITY: city of origin
- DEPARTURE: time the person left the hotel on the day of the crime
- RETURN: time the person returned to the hotel
- HAIR: hair color
- SHOE_MEASUREMENT: shoe size

The table contains **75 valid records** (one additional record with only NULL values
must be ignored).

---

## Question 1 – Initial Inspection
1. Display the complete list of suspects contained in the database.

---

## Question 2 – Informant Clues
Inspector Bianchi received partial information from an informant.
Write SQL queries to verify the following clues:

2.a. Identify all people who left the hotel **exactly at 10:50**.  
2.b. Identify all people with **blond hair**, regardless of departure time.  
2.c. Identify all people with **shoe size 44**, regardless of other conditions.  
2.d. Identify people who **left at 10:50 AND have blond hair**.  
2.e. Identify people who **simultaneously satisfy conditions (2.a), (2.b), and (2.c)**.  
Based on the result, evaluate whether the informant is reliable.

---

## Question 3 – Targeted Interviews
The investigation continues and the inspector wants to interview specific individuals:

3.a. Identify the person with **black hair** who was seen leaving at **08:10**.  
3.b. Identify people with **black hair** who were seen **returning at 19:05**.  
3.c. Identify the person with **blond hair** and **surname “Agostini”** who was known
to have spoken with the victim before the crime.

---

## Question 4 – New Witness Statements
Additional clues were collected in the following days:

4.a. Identify people with **brown hair** who must have left the hotel **before 15:30**.  
4.b. From the previous result, identify those who **arrived on July 7, 2001**.  
4.c. From the remaining suspects, identify those with **shoe size 40**, assuming
the victim’s shoe size was 36.  
4.d. A witness recalls a car whose license plate starts with **CBW**.
Without adding new filters, analyze the data to identify the most likely suspect.  
4.e. After discovering that **Edward Ventura has an alibi**, reassess the investigation.

---

## Question 5 – Final Reconstruction
Two new witnesses provide revised statements:

5.a. Identify women who:
- Left the hotel at **09:30**
- Arrived on **July 7, 2001**
- Had **red or brown hair**
- Had a shoe size **greater than 36**
- Returned to the hotel at **19:30**

5.b. Another witness recalls that:
- The suspect retrieved boots from a car
- The license plate referred to **Pisa or Pesaro**
- The suitcase had the initials **A.S.**

Combine the clues from (5.a) and (5.b) to identify the murderer.
Do **not** add extra constraints on name initials.

