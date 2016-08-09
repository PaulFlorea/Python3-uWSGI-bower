# Python3-uWSGI

To setup your application, put your requirements.txt file in the ./src directory and include this Dockerfile in the project root.


```
FROM paulflorea/python3-uswgi:latest

# install my packages
ADD . /home/docker/app/
RUN pip install -r /home/docker/app/src/requirements.txt

CMD ["uwsgi", "--ini /home/docker/app/uwsgi/uwsgi.ini"]
```
