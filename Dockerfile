FROM python:3.8
RUN apt-get update && \
    apt-get -y install mariadb-client
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt