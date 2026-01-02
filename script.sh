#!/bin/sh

python manage.py migrate --no-input
gunicorn saas.wsgi:application --bind [::]:8000
