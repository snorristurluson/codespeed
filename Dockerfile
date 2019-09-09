FROM python:3
RUN pip install codespeed
RUN pip install psycopg2-binary
COPY codespeed/ /codespeed
COPY sample_project/ /sample_project
COPY manage.py /
ENTRYPOINT python manage.py runserver 0.0.0.0:8000