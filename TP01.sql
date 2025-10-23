drop database if EXISTS compta;

create DATABASE compta;
use compta;

CREATE table Fournisseur(
    ID int (11) primary KEY,
    Nom varchar(25)
    );
    
CREATE table article(
    id int(11) primary KEY, 
    REF varchar (13),
    designation varchar (255),
    prix decimal (7,2),
    ID_FOU int(11)
    );
    
CREATE table compo(
    id int (11) AUTO_INCREMENT primary key,
    id_ART int (11),
    id_bon int (11),
    QTE int (11)
    );
   
CREATE table bon (
    id int (11) primary key,
    Numero int (11),
    Date_CMDE datetime,
    Delai int (11),
    ID_fOU int(11)
    );

ALTER TABLE article ADD CONSTRAINT FOREIGN KEY (id_fou) REFERENCES fournisseur (id);
ALTER TABLE bon ADD CONSTRAINT FOREIGN KEY (id_fou) REFERENCES fournisseur (id);
ALTER TABLE compo ADD CONSTRAINT FOREIGN KEY (id_art) REFERENCES article (id);
ALTER TABLE compo ADD CONSTRAINT FOREIGN KEY (id_bon) REFERENCES bon (id);