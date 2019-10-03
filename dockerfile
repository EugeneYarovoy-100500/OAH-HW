FROM python:3.6
EXPOSE 5472:80
ADD . /app
WORKDIR /app
RUN pip install Flask gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:80", "app"]
