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