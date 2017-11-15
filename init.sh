./convert.rb -f manifest.yml -m y2x > manifest.xml
repo init --repo-url git+ssh://git@bitbucket.com/sdsgmbh/android_repo -m ./manifest.yml \
  -u git+ssh://git@bitbucket.com/sdsgmbh/repo \
  -b master
#  -g base,soe \
repo sync --no-clone-bundle
