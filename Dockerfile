# Docker File Build using Ubuntu and installing boto3

FROM ubuntu:latest

WORKDIR /Docker-Mastery

COPY . /Docker-Mastery

RUN apt-get update \
	&& apt-get install python3 -y \
	&& apt-get install python3-boto3 -y

EXPOSE 80

ENTRYPOINT ["tail", "-f", "/dev/null"]

CMD ["echo", "Welcome to LUIT! This is Ubuntu with Boto3 and Python!", "sleep 100000"]


