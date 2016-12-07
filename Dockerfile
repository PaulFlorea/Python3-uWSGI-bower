FROM paulflorea/python3-uwsgi:alpine

# install bower
RUN apk add nodejs
RUN npm install -g bower