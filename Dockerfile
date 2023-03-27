# Container image that runs your code
FROM python:3.11-slim-bullseye

# Install littlefs-python using pip3
RUN pip3 install littlefs-python

# Install Git and curl
RUN apt-get update && apt-get install -y git curl

# Get dir2uf2
RUN zipball=$(curl -X GET https://api.github.com/repos/Gadgetoid/dir2uf2/releases/latest | python3 -c "import sys,json; print json.load(sys.stdin)['zipball_url']") \
    && curl -L -o dir2uf2.zip "$zipball"

RUN unzip dir2uf2.zip -d /usr/src/dir2uf2
RUN rm dir2uf2.zip

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
