# app.py
import os
from time import sleep


# Bonus
nom = os.getenv('NOM', 'MEDJAHED')
prenom = os.getenv('PRENOM', 'Tarik')
# #bonus boucle
# while True:
#   print(f"Nom: {nom}")
#   print(f"Prénom: {prenom}")
#   sleep(1)
print(f"Nom: {nom}")
print(f"Prénom: {prenom}")
