FROM python:3
# see https://hub.docker.com/_/python for slimmer version if needed

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./main.py" ]