# Container image that runs your code
FROM python:3.11-slim-bullseye

# Install littlefs-python using pip3
RUN pip3 install littlefs-python --root-user-action=ignore

# Install Git, unzip and curl
RUN apt-get update && apt-get install -y git unzip curl

# Get dir2uf2
RUN curl -L -o dir2uf2.zip https://api.github.com/repos/Gadgetoid/dir2uf2/zipball
RUN unzip dir2uf2.zip -d .
RUN mv $(ls . | grep "^Gadgetoid-dir2uf2-")/dir2uf2 /usr/local/bin/dir2uf2

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
