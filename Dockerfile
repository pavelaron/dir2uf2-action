# Container image that runs your code
FROM python:3.11-slim-bullseye

# Install littlefs-python using pip
RUN pip install littlefs-python

# Install dir2uf2 from repository
RUN git clone https://github.com/dir2uf2/dir2uf2.git

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
