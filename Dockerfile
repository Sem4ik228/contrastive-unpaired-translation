FROM python:3.6-slim-buster
WORKDIR /app
COPY requrements.txt
RUN pip install -r requirements.txt
CMD["python", "/train.py"]
