FROM httpd:latest

RUN apt-get update && apt-get install -y \
    netcat-traditional \
    curl \
    vim \
    && apt-get clean

COPY index.html /usr/local/apache2/htdocs/index.html