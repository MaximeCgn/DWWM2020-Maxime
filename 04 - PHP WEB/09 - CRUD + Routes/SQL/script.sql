CREATE TABLE categories
(
    idCategorie int(11) not null auto_increment PRIMARY KEY,
    libelleCategorie varchar(50) not null
)ENGINE=INNODB, CHARSET=UTF8;

ALTER TABLE produits ADD idCategorie int(11) not null;
ALTER TABLE produits ADD FK_produits_categories FOREIGN KEY (idCategorie) REFERENCES categories(idCategorie);