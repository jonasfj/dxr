#!/bin/sh
# Kicks off the Jenkins tests.

/opt/vagrant/bin/vagrant up
/opt/vagrant/bin/vagrant ssh -c 'cd /home/vagrant/dxr && make clean && make test'
RESULT=$?
/opt/vagrant/bin/vagrant destroy --force || exit $?
exit $RESULT