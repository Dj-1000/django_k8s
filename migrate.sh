!#bin/bash
SUPERUSER_EMAIL = ${DJANGO_SUPERUSER_EMAIL:-"djsharma1000@gmail.com"}
cd /app/
/opt/venv/bin/python manage.py migrate --noinput
/opt/venv/bin/python manage.py createsupeuser --email $SUPERUSER_EMAIL --noinput || true