SELECT Entreprise.nom, Etudiant.Nom 
FROM Entreprise
INNER JOIN Etudiant
ON Entreprise.Id = Etudiant.EntrepriseId;

SELECT Conference.Titre , Conference.EntrepriseId 
FROM Conference
INNER JOIN Entreprise
ON Conference.Id = Entreprise.Id 

SELECT Conference.Titre, Etudiant.Nom
FROM Conference
INNER JOIN Etudiant
ON Conference.Id = Etudiant.Id 