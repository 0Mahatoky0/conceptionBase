-- ETAPE 1 : VERIFICATION
SELECT * FROM public.plat ORDER BY prix;

-- ETAPE 2 : VERIFICATION
SELECT c.libelle,count(id_plat) FROM categories c LEFT JOIN plat p ON c.id_categorie = p.id_categorie GROUP BY c.id_categorie;

-- ETAPE 3 : VERIFICATION 
SELECT c."date" , sum(p.prix) montant FROM public.commandes c JOIN public.commande_plats cp ON c.id_commande = cp.id_commande JOIN public.plat p ON cp.id_plat = p.id_plat GROUP BY c.id_commande;

SELECT c."date" , p.libelle , p.prix FROM public.commandes c JOIN public.commande_plats cp ON c.id_commande = cp.id_commande JOIN public.plat p ON cp.id_plat = p.id_plat ;

-- ETAPE 4 : VERIFICATION
SELECT c.id_commande , c."date" , CASE WHEN cl.id_client IS NULL THEN 'Client de passage' ELSE cl.nom END AS client FROM commandes c LEFT JOIN client cl ON c.id_client = cl.id_client;

-- ETAPE 5 : VERIFICATION 
CREATE VIEW v_chiffre_affaire_serveur AS (
SELECT s.id_serveur,s.nom , sum(p.prix)  chiffre_affaire FROM commande_plats cp JOIN commandes c on cp.id_commande = c.id_commande JOIN plat p on cp.id_plat = p.id_plat RIGHT JOIN serveurs s ON c.id_serveur = s.id_serveur GROUP BY s.id_serveur
)

CREATE VIEW v_nb_commande_par_serveur AS (
SELECT  s.id_serveur ,s.nom,COUNT(c.id_commande) nb_commande FROM serveurs s LEFT JOIN commandes c ON s.id_serveur = c.id_serveur GROUP BY s.id_serveur;
);

SELECT * FROM v_chiffre_affaire_serveur vc JOIN v_nb_commande_par_serveur vn ON vc.id_serveur = vn.id_serveur;