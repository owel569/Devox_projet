# Utiliser l'image officielle de Python comme base
FROM python:3.9-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier requirements.txt dans le conteneur pour installer les dépendances
COPY requirements.txt /app/

# Installer les dépendances à partir de requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copier tout le code de l'application dans le conteneur
COPY . /app/

# Exposer le port 8000 pour que Django soit accessible depuis l'extérieur
EXPOSE 8000

# Définir la commande par défaut pour démarrer le serveur Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
