FROM python:3.9

WORKDIR /app
COPY . .

# install requirements
RUN apt-get update
RUN apt-get install netcat-traditional
RUN pip install -r requirements.txt

COPY ./entrypoint.sh .
RUN chmod +x /app/entrypoint.sh
ENTRYPOINT ["/app/entrypoint.sh"]
# migrations
#RUN python manage.py makemigrations content
#RUN python manage.py migrate
# static
#RUN python manage.py collectstatic --noinput
