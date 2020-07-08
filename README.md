# Gestion-des-etudiants
une simple application JEE qui permet des opérations avec la base de données <b>```MYSQL```</b> via <b>```JDBC```</b>. 

Technologie utilisée : <b>```JEE```</b> </br>
Serveur d'application : <b>```TOMCAT```</b>
## Architecture de l'application
 l'application est découpée en couches qui correspondent à nos packages. Nous avons  4 packages :
<ul>
  <li><b>Dao : </b> contient les classes entité ou model de l'application</li>
  <li><b>Method</b> : contient les classes qui nous permettent de communiquer avec notre base de données. 
  <li><b>servlets : </b>les classes de cette couche sont les controlleurs. Ils permettent de lier le model et la vue.</li>
  <li><b>Exception : </b> sert à la gestion des exceptions.</li>
</ul>


## NB
 vous trouverez un script ```Etudiant.sql``` pour créer la base de données
 Nom de la base de Données : etudiant
 

Pour ouvrir la page d'accueil., démarrez le serveur d'application et sur votre navigateur tapez :

```
http://localhost:8080/GestionEtudiants/home.jsp
```

 
