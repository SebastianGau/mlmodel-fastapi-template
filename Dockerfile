FROM tiangolo/uvicorn-gunicorn-fastapi:python3.6 

WORKDIR /app

# Copy and install requirements
COPY requirements.txt /app
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install pandas
EXPOSE 80

# Copy contents from your local to your docker container
COPY ./app /app
