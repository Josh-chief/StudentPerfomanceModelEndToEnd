
from python:3.8-slim-buster
WORKDIR /app
COPY . /app


RUN apt-get update && apt get install awscli -y

RUN pip install -r requirements.txt
CMD ["python3", "app.py"]