FROM paulflorea/python3-uwsgi:latest-alpine

# install bower
RUN apk add nodejs
RUN npm install -g bower