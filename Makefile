.PHONY: dev-local
.SILENT: 

IMAGE_TAG ?= latest

dev-local:
	pipenv run uvicorn app.main:app --reload

run:
	docker run evinoca/ms-fastapi-demo:${IMAGE_TAG} .

build:
	docker build -t evinoca/ms-fastapi-demo:${IMAGE_TAG} .