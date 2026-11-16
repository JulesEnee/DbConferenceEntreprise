CREATE TABLE Entreprise(
   Id INT,
   Nom VARCHAR(50),
   Secteur VARCHAR(50),
   Stand VARCHAR(50),
   PRIMARY KEY(Id)
);

CREATE TABLE Conference(
   Id INT,
   Titre VARCHAR(50),
   Salle VARCHAR(50),
   Horaire VARCHAR(50),
   EntrepriseId INT NOT NULL,
   PRIMARY KEY(Id),
   FOREIGN KEY(EntrepriseId) REFERENCES Entreprise(Id)
);

CREATE TABLE Etudiant(
   Id INT,
   Nom VARCHAR(50),
   Prenom VARCHAR(50),
   EntrepriseId INT NOT NULL,
   PRIMARY KEY(Id),
   UNIQUE(EntrepriseId),
   FOREIGN KEY(EntrepriseId) REFERENCES Entreprise(Id)
);

CREATE TABLE Assister(
   EtudiantId INT,
   ConferenceId INT,
   PRIMARY KEY(EtudiantId, ConferenceId),
   FOREIGN KEY(EtudiantId) REFERENCES Etudiant(Id),
   FOREIGN KEY(ConferenceId) REFERENCES Conference(Id)
);

CREATE TABLE Rencontrer(
   EtudiantId INT,
   EntrepriseId INT,
   PRIMARY KEY(EtudiantId, EntrepriseId),
   FOREIGN KEY(EtudiantId) REFERENCES Etudiant(Id),
   FOREIGN KEY(EntrepriseId) REFERENCES Entreprise(Id)
);