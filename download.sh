#! /bin/bash

if [ "$1" != "-d" ]; then
    echo "Read the source Luke..."
    exit 1
fi

set -e

base="http://pkg.jenkins-ci.org/debian/binary"

# prepare directories
mkdir -p "work"
cd "work"

# download
jenkins="1.470"
wget "$base/jenkins_${jenkins}_all.deb"
