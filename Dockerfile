FROM python:3.12 as base

RUN pip install pipenv
ADD Pipfile /app/Pipfile
ADD Pipfile.lock /app/Pipfile.lock
WORKDIR /app
RUN pipenv install --system

