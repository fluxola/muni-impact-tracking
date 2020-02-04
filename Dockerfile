FROM python:3

WORKDIR /usr/src/app

RUN mkdir data

RUN mkdir outputs

RUN apt-get update

RUN apt-get install -y python3-tk ghostscript

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY data/* data/

COPY init.py ./

CMD [ "python", "init.py" ]