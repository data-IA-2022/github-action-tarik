FROM python:3-alpine

# Installation de la bibliothèque 'requests' pour bonus
RUN pip install requests pgrep
# Copier le script Python dans le container
COPY app.py /nom_prenom.py

ARG NOM PRENOM
ENV NOM=$NOM PRENOM=$PRENOM

# Healthcheck pour vérifier que le processus Python est en cours d'exécution
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
  CMD curl -f http://localhost/ || exit 1

# Exécuter le script Python lorsque le container démarre
CMD ["python", "/nom_prenom.py"]
