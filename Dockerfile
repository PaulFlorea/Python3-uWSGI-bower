FROM paulflorea/python3-uwsgi:alpine

# Install Node.js
RUN apk update && apk upgrade && apk add --no-cache --update \
        nodejs

# Safely updates NPM
RUN npm install -g npm --prefix=/usr/local
RUN ln -s -f /usr/local/bin/npm /usr/bin/npm 

# Bower needs git installed
RUN apk add git
RUN npm install -g bower
