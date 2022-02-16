FROM python:3.7-slim-buster
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
VOLUME ["/home/KniazV/code]
CMD ["python", "bash", "./datasets/download_cut_dataset.sh", "grumpifycat", "train.py", "--dataroot ./datasets/grumpifycat --name grumpycat_CUT --CUT_mode"]
