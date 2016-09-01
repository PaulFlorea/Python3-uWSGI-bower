# Python3-uWSGI

To setup your application: put your requirements.txt file in the ./src directory, your uwsgi.ini file in the ./uwsgi directory, and include this Dockerfile in the project root.


```
FROM paulflorea/python3-uswgi:latest

# install my packages
ADD . /var/www/app/
RUN pip install -r /var/www/app/src/requirements.txt

CMD uwsgi --ini /var/www/app/uwsgi/uwsgi.ini --callable app
```
