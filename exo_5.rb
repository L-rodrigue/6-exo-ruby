# ## exo 5 Le poids des mots
# À la saisie d’un mot ou d’un groupe de mot séparé par un espace.
# Le script devra retourner le poids total du mot ou groupe de mot.
# Le principe a = 1 , b = 2, c = 3 … z = 26
# Un espace comptera pour 0
# Il n’y a pas de différence entre un « A » et un « a » , ils feront tous les 2 un poids de 1
# Le nombre sera ramené à un nombre de 1 chiffre
# Exemple Z = 26 = 2+6 = 8
# Z vaut d’office 8
# Quelques soit les lettres autour.
# Example complet :
# D A V I D  =
# 4_1_22_9_4 =
# 4 + (2+2) + 9 + 4 =
# 21
def word
    alphabet =' abcdefghijklmnopqrstuvwxyz'
    wor = gets.chomp.to_s
    sum = 0
    wor.split(//).each do |i|
        letter = alphabet.index(i)
        if letter > 9 
            result = letter.to_s
            sum += reuslt[0].to_i+result[1].to_i
        else
            sum += letter
        end
    end
    puts "Le poids du mot est de : #{sum}"
end
word()