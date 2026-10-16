# etape 1 : La carte
## Demande : 
Je veux la liste des plats avec leur prix
## Reponse :
### Travail :
- Plat (**id_plat**,libelle,prix)
### Piege
- Je choisi un type NUMERIC
  - car il y a eu l indication les montants sont en ariary  , sans centime , utiliser les entier
- Je choisi int
  - car c est sufisant pour stoquer des milier de plas

# etape 2 : Les categories
## Demande : 
 Je range mes plats par catégorie : plats malagasy, plats chinois, soupes, desserts, boissons.
 ### Travail :
*Nouveau* : Categories(**id_categorie**,libelle)
*Modification* : Plat (**id_plat**,libelle,prix,#id_categorie)
### Piege :
- Pour eviter la repetition de taper a chaque nouveau plat , le nom de sont categorie

# etape 3 : Les commandes
### Demande :
J'enregistre les commandes : la date, quels plats, et combien de chaque.
## Travail :
- Categories(**id_categorie**,libelle)
- Plat (**id_plat**,libelle,prix,#id_categorie)
- *Nouveau* : Commandes(**id_commande**,date)
- *Nouveau* : Coommande_plats(**id_commande_plat**,#id_commande,#id_plat)
## Piege :
Pour le moment je ne place pas de colonne quantite, je peut pa calculer facilement.

# etape 4 : Les habitues
Certains clients sont des habitués, je veux les reconnaître. Mais la plupart sont de passage et je
ne leur demande rien.
### Demande :
Certains clients sont des habitués, je veux les reconnaître. Mais la plupart sont de passage et je
ne leur demande rien.
### Travail :
- *Nouveau* : Client(**id_client**,nom)
- *Modification* : Commandes(**id_commande**,date,id_client)
### Piege :
Utiliser left ou rigth join en fonction du requete .

# etape 5 : Serveurs et tables
Je veux savoir quel serveur a pris la commande et à quelle table. Pour les plats à emporter, il n'y
a pas de table.
### Travail :
- *Nouveau* : Serveur(**id_serveur**,nom)
- *Nouveau* : notables (**id_table**,num)
- *Modification* : Commandes(**id_commande**,date,id_client,id_serveur)
### Piege :
- le nom table pose probleme ,car il sagit d un identificateur sql