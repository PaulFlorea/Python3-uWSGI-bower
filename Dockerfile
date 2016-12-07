FROM paulflorea/python3-uwsgi:alpine

# Install Node.js
RUN apk add nodejs

# Bower needs git installed
RUN apk add git
RUN npm install -g bower
