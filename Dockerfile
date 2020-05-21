FROM python:slim

WORKDIR /services/ms-fastapi-demo

COPY Pipfile Pipfile.lock ./

RUN pip install pipenv && \
    pipenv install --system

COPY . .

USER www-data
EXPOSE 8000

CMD ["uvicorn", "app.main:app", "--reload", "--host", "0.0.0.0", "--port", "8000"]