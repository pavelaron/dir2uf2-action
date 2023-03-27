#!/bin/sh -l

zipball=$(curl -X GET https://api.github.com/repos/Gadgetoid/dir2uf2/releases/latest | python3 -c "import sys,json; print json.load(sys.stdin)['zipball_url']")
curl -L -o dir2uf2.zip "$zipball"
unzip dir2uf2.zip -d /usr/src/dir2uf2
rm dir2uf2.zip
