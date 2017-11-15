repo init \
  --repo-url ssh://coderepo.dev2.cloud.local:29418/opsvcs/android_repo \
  -u ssh://coderepo.dev2.cloud.local:29418/opsvcs/ansible/manifest \
  -g base,soe \
  -b master
repo sync --no-clone-bundle
