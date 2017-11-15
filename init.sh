repo init \
  --repo-url git+ssh://git@bitbucket.com/sdsgmbh/android_repo \
  - m manifest.yml \
  -b master
#  -g base,soe \
repo sync --no-clone-bundle
