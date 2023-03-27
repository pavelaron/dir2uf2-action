# Container image that runs your code
FROM python:3.11-slim-bullseye

# Install littlefs-python using pip3
RUN pip3 install littlefs-python

# Install Git
RUN apt-get update && apt-get install -y git

# Get dir2uf2
RUN ./dir2uf2-install.sh

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
