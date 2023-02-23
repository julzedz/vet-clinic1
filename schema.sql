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
CREATE TABLE owners(
id INT NOT NULL GENERATED ALWAYS AS IDENTITY,
full_name VARCHAR(100),
age INT,
PRIMARY KEY(id)
);
CREATE TABLE species(
id INT NOT NULL GENERATED ALWAYS AS IDENTITY,
name VARCHAR(100),
PRIMARY KEY(id)
);

ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD COLUMN species_id INTEGER REFERENCES species(id);
ALTER TABLE animals ADD COLUMN owner_id INT REFERENCES owners(id);