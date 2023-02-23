/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    name varchar(100),
    id INT PRIMARY KEY NOT NULL IDENTITY(1,1),
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg DECIMAL,
    species VARCHAR(100),
    ALTER TABLE animals ADD species varchar(255);
);
