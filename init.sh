set -ex
repo init -u git+ssh://git@bitbucket.com/sdsgmbh/manifest #  -g base,soe \
repo sync --no-clone-bundle
