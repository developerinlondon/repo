set -ex
repo init -u git+ssh://git@bitbucket.com/sdsgmbh/manifest -b refs/tags/v0.1.1 #  -g base,soe \
repo sync --no-clone-bundle
