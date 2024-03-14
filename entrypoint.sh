#!/bin/sh

while ! nc -z db 5432; do
	sleep 0.1
	done

python manage.py makemigrations content
python manage.py migrate
python manage.py collectstatic --noinput

exec "$@"
