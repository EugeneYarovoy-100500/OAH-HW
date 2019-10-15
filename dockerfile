FROM python:3.6
EXPOSE 80:80
ADD . /app
WORKDIR /app
CMD ["/bin/bash","startup.sh"]
