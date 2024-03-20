FROM python:3.10-bullseye

COPY . /app
WORKDIR /app

RUN python3 -m venv /opt/venv

RUN /opt/venv/bin/pip install

RUN chmod +x entrypoint.sh

CMD [ "entrypoint.sh"]