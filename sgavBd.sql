CREATE TABLE cities (
 id_city int NOT NULL AUTO_INCREMENT,
 name_city varchar(50) NOT NULL,
 CONSTRAINT pk_cities PRIMARY KEY (id_city)
 );
CREATE TABLE countries(
 id_country int NOT NULL AUTO_INCREMENT,
 name_country varchar(50) NOT NULL,
 id_city int(11),
 CONSTRAINT pk_countries PRIMARY KEY(id_country),
 CONSTRAINT fk_countriesRegion FOREIGN 
 KEY (id_city)REFERENCES cities(id_city)

 );
CREATE TABLE regions(
    id_region int NOT NULL AUTO_INCREMENT,
    name_region varchar(50) NOT NULL,
    id_country int(11),
    CONSTRAINT pk_regions PRIMARY KEY  (id_region),
    CONSTRAINT fk_countriesReg FOREIGN KEY (id_country
    
    )REFERENCES countries(id_country)
    
 );
CREATE TABLE persons(
    id_person varchar(15),
    fistname_person varchar(25),
    lastname_person varchar(25),
    birthdate_person date,
    id_city int NOT NULL AUTO_INCREMENT,
    CONSTRAINT pk_persons PRIMARY KEY (id_person),
    CONSTRAINT fk_personCity FOREIGN KEY (id_city) REFERENCES cities(id_city)
);




CREATE TABLE living_place(
    id_living INT NOT NULL AUTO_INCREMENT,
    id_person VARCHAR(20) NOT NULL,
    id_city INT NOT NULL,
    rooms_living INT NOT NULL,
    bathrooms_living INT NOT NULL,
    kitchen_living INT NOT NULL,
    tvroom_living INT NOT NULL,
    patio_living INT NOT NULL,
    pool_living INT NOT NULL,
    barbecue_living INT NOT NULL,
    image_living VARCHAR(60) NOT NULL,
    id_typehouse INT NOT NULL,
    CONSTRAINT pk_living_place PRIMARY KEY (id_living),
        CONSTRAINT fk_living_place_person PRIMARY KEy (id_person) REFERENCES persons(id_person),
    CONSTRAINT fk_living_place_city FOREIGN KEY (id_city) REFERENCES cities(id_city),
    CONSTRAINT fk_living_place_housetype FOREIGN KEY (id_typehouse) REFERENCES housetype(id_hausetype)
);

 
 
CREATE TABLE housetype(
    id_hausetype INT NOT NULL AUTO_INCREMENT,
    name_hausetype VARCHAR(50),
    CONSTRAINT pk_housetype PRIMARY KEY (id_hausetype),
    CONSTRAINT uk_housetype_name UNIQUE (name_hausetype)
);

CREATE TABLE cities (
    id_city SERIAL PRIMARY KEY,
    name_city VARCHAR(50) NOT NULL
);

CREATE TABLE countries (
    id_country SERIAL PRIMARY KEY,
    name_country VARCHAR(50) NOT NULL,
    id_city INT,
    CONSTRAINT fk_countries_city FOREIGN KEY (id_city) REFERENCES cities(id_city)
);

CREATE TABLE regions (
    id_region SERIAL PRIMARY KEY,
    name_region VARCHAR(50) NOT NULL,
    id_country INT,
    CONSTRAINT fk_regions_country FOREIGN KEY (id_country) REFERENCES countries(id_country)
);

CREATE TABLE persons (
    id_person VARCHAR(15) PRIMARY KEY,
    firstname_person VARCHAR(25),
    lastname_person VARCHAR(25),
    birthdate_person DATE,
    id_city INT NOT NULL,
    CONSTRAINT fk_persons_city FOREIGN KEY (id_city) REFERENCES cities(id_city)
);

CREATE TABLE housetype (
    id_hausetype SERIAL PRIMARY KEY,
    name_hausetype VARCHAR(50),
    CONSTRAINT uk_housetype_name UNIQUE (name_hausetype)
);


CREATE TABLE living_place (
    id_living SERIAL PRIMARY KEY,
    id_person VARCHAR(20) NOT NULL,
    id_city INT NOT NULL,
    rooms_living INT NOT NULL,
    bathrooms_living INT NOT NULL,
    kitchen_living INT NOT NULL,
    tvroom_living INT NOT NULL,
    patio_living INT NOT NULL,
    pool_living INT NOT NULL,
    barbecue_living INT NOT NULL,
    image_living VARCHAR(60) NOT NULL,
    id_typehouse INT NOT NULL,
    CONSTRAINT fk_living_place_person FOREIGN KEY (id_person) REFERENCES persons(id_person),
    CONSTRAINT fk_living_place_city FOREIGN KEY (id_city) REFERENCES cities(id_city),
    CONSTRAINT fk_living_place_housetype FOREIGN KEY (id_typehouse) REFERENCES housetype(id_hausetype)
);




