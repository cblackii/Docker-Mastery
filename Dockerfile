## Docker File Build using Ubuntu and installing boto3

FROM ubuntu:latest

RUN apt-get update \
	&& apt-get install python3 -y \
	&& apt-get install python3-boto3 -y

WORKDIR /Docker-Mastery

ENTRYPOINT ["tail", "-f", "/dev/null"]

EXPOSE 80

CMD ["echo", "Welcome to LUIT! This is Ubuntu with Boto3 and Python!", "sleep 100000"]


