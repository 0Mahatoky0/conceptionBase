-- ETAPE 1 : VERIFICATION
SELECT * FROM public.plat ORDER BY prix;

-- ETAPE 2 : VERIFICATION
SELECT c.libelle,count(id_plat) FROM categories c LEFT JOIN plat p ON c.id_categorie = p.id_categorie GROUP BY c.id_categorie;

-- ETAPE 3 : VERIFICATION 
SELECT c."date" , sum(p.prix) montant FROM public.commandes c JOIN public.commande_plats cp ON c.id_commande = cp.id_commande JOIN public.plat p ON cp.id_plat = p.id_plat GROUP BY c.id_commande;

SELECT c."date" , p.libelle , p.prix FROM public.commandes c JOIN public.commande_plats cp ON c.id_commande = cp.id_commande JOIN public.plat p ON cp.id_plat = p.id_plat ;