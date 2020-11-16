# ## exo 6 - Le chiffre est bon, consonne
# Dans le cadre de son activité, la société de crédit *PAIETONPRET* a besoin de contrôler le numéro de SIRET
#  des sociétés clientes de leur solution.
# Pour cela, elle a, au moment de la saisie par un membre de l’équipe, besoin de contrôler que le membre a
#  bien saisie le numéro de SIRET sans saisir d’erreur de frappe ou d’audition.
# Pour cela nous allons utiliser l’algorithme de Luhn.
# Votre mission si vous l’acceptez (c’est pas une question) sera de  créer le code qui permettra de vérifier
#  le numéro de SIRET
# Le code devra simplement renvoyer  si c’est bon ou pas.
# Ce message ne s’auto-détruira pas dans 24h...

# 1ere etape : Recupérer un chiffre
# 2e etape : Reverse le chiffre
# 3e etape : Parcourir
# 4e etape : Tous les deux chiffres, multiplier par deux, si le chiffre est supérieur a 9, je soustrait 9, sinon je l'ajoute au tableau
# 5e etape : Faire la somme du nouveau tableau, modulo 10. Si le reste est égal a zéro, is good, else loose

def Luhn
    # je defini une valeur
    nb = gets.chomp
    # je retourne la saisie puis je la separe 
    bn = nb.reverse.split(//)
    # je defini un tableau vide
    bnnew=[]
    i = 0
    # je parcour bn avec la boucle table
    for table in  bn
        # je dit qu'il doit tout convertir en entier 
        table = table.to_i
        # si le modulo de i n'est pas 0
        if i%2 != 0
            # Je le multiplie 
            table = table*2
            # si le chiffre est superieur a 9
            if table > 9 
                # je lui retir 9 
                result = table-9
                # je l'ajoute au tableau bnnew
                bnnew << result
            else
                # si le chiffre a un modulo de 0 je l'entre directement dans le tableau bnnew
                bnnew << table
            end
        else
            bnnew << table
        end
        i += 1
    end
    #  je prend la somme de mon tableau et je le divise si le modulo est de 0 il envoie Bon 
    if bnnew.sum%10 ==0
        puts "Bon"
    else
         #  je prend la somme de mon tableau et je le divise si le modulo n'est pas 0 il envoie Pas bon
        puts "Pas bon "
    end
end
Luhn()

