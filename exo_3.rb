# ## exo 3 - Ecrire une méthode qui prendra 2 paramètres nom et surnom qui affichera
# Hello  surnom     # si seul le surnom est fourni
# Bonjour  nom #   si seul le nom est fourni
# Bonjour Nom # *ET QUE* si les 2 sont fournis


# je defini deux paramètres dans une methode
def user(name, username)
    # je demande a l'utilisateur d'entrer un nom
    # name = gets.chomp
    # je demande a l'utilisateur d'entrer un prenom
    # username = gets.chomp
    # Si l'utilisateur n'entre qu'un nom il n'affiche pas le prenom
    if username == nil
        puts "Bonjour #{name}"
        # Si l'utilisateur n'entre qu'un prenom il n'affiche pas le nom
    elsif name == nil
        puts"Bonjour #{username}"
        # Si l'utilisateur entre les deux parametres leux sont afficher 
    else 
        puts "Bonjour #{name} #{username}"
    end
end
user(gets.chomp, gets.chomp)
