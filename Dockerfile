FROM jenkins/jenkins
ENV PYTHONUNBUFFERED=1
WORKDIR /django
COPY requirements.txt requirements.
USER root
RUN apt-get update
RUN curl -sSL https://get.docker.com/|sh
RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose