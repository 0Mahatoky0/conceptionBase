-- ETAPE 1 : VERIFICATION
SELECT * FROM public.plat ORDER BY prix;

-- ETAPE 2 : VERIFICATION
SELECT c.libelle,count(id_plat) FROM categories c LEFT JOIN plat p ON c.id_categorie = p.id_categorie GROUP BY c.id_categorie;