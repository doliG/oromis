# 42 Correct

L'idée de ce repo est d'avoir une foule de test "automatisé" sur tous les trucs un peu chiants qu'il faut tester à chaque fois dans les projets pre-stages comme par exemple la norme, les leaks, etc...

## Fonctionnement
On va être ici dans un script step by step. Je voudrais que toutes les informations qui s'affichent à l'écran soient également enregistrées dans un fichier de log, au cas où.

Je pense tester dans l'ordre :
1. Fichier Auteur
2. Norme
3. Opérateurs en fin de ligne
3. Makefile
	- Relink ?
	- avec -j
4. Protection des mallocs (et fonction de la libft qui peuvent retourner null)
5. Leaks avec leaks
6. Leaks avec valgrind

Ensuite, je voudrais faire des sous-fichiers avec des tests pour chaque projet.
Éviedemment, cela ne serait possible que pour les projets que j'ai déjà fait moi-même.

Pour les autres, je peux imaginer faire

Note importante: Je pense mettre en GROS la dernière mise a jour des tests personnalisés par projet, car les projets changent et les tests ne sont pas forcément à jour.
Je pense également adopter la philosophie Linux : on ne print pas si tout c'est bien passé.
