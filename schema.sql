/* Database schema to keep the structure of entire database. */

CREATE TABLE animals(
   id integer NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY
, name varchar(100), date_of_birth date, escape_attempts integer, 
	neutered boolean, weight_kg decimal); 

/* Add column into animals table */
ALTER TABLE animals
  ADD species varchar(40);
