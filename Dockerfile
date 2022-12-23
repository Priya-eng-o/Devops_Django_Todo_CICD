FROM python:3.10
MAINTAINER priyabratit1992@gmail.com
RUN apt-get update
RUN pip install django==3.2
COPY . .
RUN python3 manage.py migrate
CMD ["python","manage.py","runserver","0.0.0.0:8002"]
