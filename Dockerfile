FROM nginx:alpine

# Default-Konfiguration entfernen
RUN rm /etc/nginx/conf.d/default.conf

# Eigene Konfiguration kopieren
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Alle MP3-Dateien aus dem Repo-Root kopieren
COPY *.mp3 /usr/share/nginx/html/

EXPOSE 8080
