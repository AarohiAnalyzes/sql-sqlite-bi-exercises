# Exercise 2: Libraries – Database Analysis

## Part:1 Schema Inspection
### Purpose
The `librerie` database is designed for a **Bookstore/Library Management System**. Its primary goal is to track inventory, authorship, and publishing details for a collection of books.

### How Tables are Connected
The schema uses a relational structure where data is distributed across specialized tables to avoid redundancy:

* **One-to-Many Relationships:** * Each book belongs to one **Publisher** (`editori`) and has one **Format** (`formato`).
* **Many-to-Many Relationships:** * **Authors & Books:** Linked via the `hascritto` junction table (since one book can have multiple authors, and one author can write multiple books).
    * **Stores & Books:** Linked via the `scorte` junction table to track stock levels (`num_copie_disponibili`) across different locations.

---

## Table Identification (Keys)

The following table identifies the **Primary Keys (PK)** used for unique identification and **Foreign Keys (FK)** used for linking data between tables.

| Table Name | Primary Key (PK) | Foreign Keys (FK) | References |
| :--- | :--- | :--- | :--- |
| **autori** | `codice_autore` | *None* | - |
| **editori** | `codice` | *None* | - |
| **formato** | `codice` | *None* | - |
| **negozi** | `codice_negozio` | *None* | - |
| **libri** | `codice` | `codice_editore`, `cod_format` | `editori(codice)`, `formato(codice)` |
| **hascritto** | `(codice_libro, codice_autore)` | `codice_libro`, `codice_autore` | `libri(codice)`, `autori(codice_autore)` |
| **scorte** | `(codice_negozio, codice_libro)` | `codice_negozio`, `codice_libro` | `negozi(codice_negozio)`, `libri(codice)` |

---

## Technical Notes
* **Junction Tables:** `hascritto` and `scorte` use **Composite Primary Keys** (a combination of two columns) to ensure that the relationship between a specific book and author/store is unique.
* **Data Types:** The schema uses `CHAR` for fixed-length codes (like `codice`) and `DECIMAL` for financial accuracy in the `prezzo` column.
