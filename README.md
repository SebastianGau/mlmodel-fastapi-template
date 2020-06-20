# Template for a Python Model based on FastAPI

This repo is a fork from https://github.com/eightBEC/fastapi-ml-skeleton. This repository contains code and instructions on how to deploy a
machine learning model using a production-ready REST API. The template uses FastAPI + Uvicorn to serve the model which creates automatic documentation using OpenAPI (Swagger) and ReDoc. The Dockerfile is included if you would like to containerize the application.


## Deploying and Running using Docker

Within the repo root, execute
```console
docker build -t mlapi .
```
to build the image. To run the image, execute
```console
docker run -p 80:80 mlapi
``` 




## Invoking the API and read the Docs

You can invoke the api under

```console
base=51.136.48.41:8000
curl --location --request POST $base'/predict' \
--header 'Content-Type: text/plain' \
--data-raw '{
  "satisfaction_level": 0.38,
  "last_evaluation": 0.53,
  "number_project": 2,
  "average_montly_hours": 150,
  "time_spend_company": 3,
  "Work_accident": 0,
  "promotion_last_5years": 1,
  "sales": "accounting",
  "salary": "low"
}'
```

The docs are available under $base'/docs'

