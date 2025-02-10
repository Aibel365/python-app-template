FROM ghcr.io/prefix-dev/pixi:0.40.3 AS build

# copy source code, pixi.toml and pixi.lock to the container
WORKDIR /usr/app
COPY . .
# install dependencies to `/app/.pixi/envs/prod`
# use `--locked` to ensure the lockfile is up to date with pixi.toml
RUN pixi install --locked -e prod
# create the shell-hook bash script to activate the environment
RUN pixi shell-hook -e prod -s bash > /shell-hook
RUN echo "#!/bin/bash" > /usr/app/entrypoint.sh
RUN cat /shell-hook >> /usr/app/entrypoint.sh
# extend the shell-hook script to run the command passed to the container
RUN echo 'exec "$@"' >> /usr/app/entrypoint.sh

# see https://hub.docker.com/_/python for slimmer version if needed
FROM ubuntu:24.04 AS production
WORKDIR /usr/app
# only copy the production environment into prod container
# please note that the "prefix" (path) needs to stay the same as in the build container
COPY --from=build /usr/app/.pixi/envs/prod /usr/app/.pixi/envs/prod
COPY --from=build --chmod=0755 /usr/app/entrypoint.sh /usr/app/entrypoint.sh
# copy your project code into the container as well
COPY ./src /usr/app/
#add non root user/group (1000 exists on most systems)
#RUN useradd -m -u 1000 -g 1000 -d /usr/app -s /bin/bash appuser

# set owner to app files
RUN chown -R 1000:1000 /usr/app

# activate none root user
USER 1000:1000

ENTRYPOINT [ "/usr/app/entrypoint.sh" ]
# run your app inside the pixi environment
CMD [ "python", "main.py" ]