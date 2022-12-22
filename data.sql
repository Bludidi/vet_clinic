/* Populate database with sample data. */

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES 
 (1, 'Agumon', '2020/02/03', 0, 'True', 10.23),
 (2, 'Gabumon', '2018/11/18', 2, 'True', 8),
  (3, 'Pikachu', '2021/01/07', 1, 'False', 15.04),
  (4, 'Devimon', '2017/05/12', 5, 'True', 11);

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES 
  (5, 'Charmander', '2020/02/08', 0, 'False', 11),
  (6, 'Plantmon', '2021/11/15', 2, 'True', -5.7),
  (7, 'Squirtle', '1993/04/02', 3, 'False', -12.13),
  (8, 'Angemon', '2005/06/12', 1, 'True', -45),
  (9, 'Boarmon', '2005/06/07', 7, 'True', 20.4),
  (10, 'Blossom', '1998/10/13', 3, 'True', 17),
  (11, 'Ditto', '2022/05/14', 4, 'True', 22);

INSERT INTO owners (full_name, age)
VALUES
('Sam Smith', 34),
('Jennifer Orwell', 19),
('Bob', 45),
('Melody Pond', 77),
('Dean Winchester', 14),
('Jodie Whittaker', 38);

INSERT INTO species (name)
VALUES
('Pokemon'),
('Digimon');

UPDATE animals SET species_id = 1 WHERE name LIKE '%mon';
UPDATE animals SET species_id = 2 WHERE name NOT LIKE '%mon';

UPDATE animals SET owner_id = 1 WHERE name IN ('Agumon');
UPDATE animals SET owner_id = 2 WHERE name IN ('Gabumon','Pikachu');
UPDATE animals SET owner_id = 3 WHERE name IN ('Devimon','Plantmon');
UPDATE animals SET owner_id = 4 WHERE name IN ('Charmander','Squirtle','Blossom');
UPDATE animals SET owner_id = 5 WHERE name IN ('Angemon','Boarmon');