# see https://hub.docker.com/_/python for slimmer version if needed
FROM python:3

#add non root user/group
RUN adduser -system --uid 1000 --group -D -h /usr/app 

# set workdir to folder
WORKDIR /usr/app

# copy/install requirements + files
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

# set owner to app files
RUN chown -R 1000:1000 /usr/app

# activate none root user
USER 1000:1000

CMD [ "python", "./src/main.py" ]