# ## exo 2 - Table de multiplication
# L’utilisateur devrait renseigne un nombre de 1 chiffre
# Le résultat affichera :
#  La table de multiplication du chiffre ##chiffre saisie## est :
# 1 * chiffre saisie = chiffre saisie * 1
# 2 * …
# 3 *
# …
# 10 *


# je demande a l'utilisateur un nombre
nb = gets.to_i
# je parcour table de 0 à 10
for table in  1...10
    table = table + 1 
    # Puis je multiplie le nombre * la table 
    puts "#{table} * #{nb} = #{table * nb}"
end