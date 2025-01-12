set -eu
export PYTHONUNBUFFERED=true
VIRTUALENV=.venv
if [! -d $VIRTUALENV ]; then
  python3 -m venv $VIRTUALENV
fi
if [ ! -d $VIRTUALENV/bin/pip ]; then
  curl --silent -- show-error --retry 5 https://bootstrap.pypa.io/get-pip.py | $VIRTUALENV/bin/python3
  fi
# $VIRTUALENV/bin/python3 install -r
$VIRTUALENV/bin/python3 manage.py runserver