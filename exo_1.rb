# ## Exo 1 - Le palindrone
# Le script Ruby permettra de saisir un mot et de vérifier que ce mot est un palindrome.
# Le retour de code se fera comme suit :
# Le mot mot saisie est un palindrome
# Le mot mot saisie n’est pas un palindrome

# je prepare la methode palindrome qui attend une string
def palindrome(string)
    # si la string est egal a la sring inverser
    if string == string.reverse
        # la string est bien un palindrome 
      puts " #{string}est un palindrome"
    else
        # sinon la string n'est pas un palindrome 
      puts "#{string} n’est pas un palindrome"
    end
   end
   palindrome(gets.chomp)