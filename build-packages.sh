#!/bin/bash

# usage:
# build-packages.sh <version>
#
# e.g.:
# build-packages.sh 1.10.5 1

if [[ $1 == "" ]]; then
    echo "Please enter the version to build."
    exit
fi

if [[ $2 == "" ]]; then
    echo "Please enter the release number."
    exit
fi

VERSION=$1
RELEASE=$2
NAME=jello
DESCRIPTION="Filter JSON and JSON Lines data with Python syntax"
URL="https://github.com/kellyjonbrazil/${NAME}"
MAINTAINER="kellyjonbrazil@gmail.com"
RAW_URL="https://raw.githubusercontent.com/kellyjonbrazil/${NAME}"
BIN_PATH="${HOME}/dist/${NAME}-${VERSION}-linux-x86_64.tar.gz"
RPM_NAME="${NAME}-${VERSION}-${RELEASE}.x86_64.rpm"
DEB_NAME="${NAME}_${VERSION}-${RELEASE}_amd64.deb"

rm "dist/${NAME}-${VERSION}-${RELEASE}*"
rm -rf linux/*

# move binary to build directory
mkdir -p linux/usr/local/bin
cp "${BIN_PATH}" linux/usr/local/bin
tar -xvf "linux/usr/local/bin/${NAME}-${VERSION}-linux-x86_64.tar.gz" -C linux/usr/local/bin/
rm linux/usr/local/bin/*.tar.gz
chmod +x "linux/usr/local/bin/${NAME}"

# download man page for this version (version must be tagged in github)
mkdir -p linux/usr/share/man/man1
curl -f -o "linux/usr/share/man/man1/${NAME}.1" "${RAW_URL}/v${VERSION}/man/${NAME}.1" || { echo 'curl download failed' ; exit 1; }

fpm \
    --verbose \
    -t rpm \
    -s dir \
    -C linux/ \
    --prefix / \
    -n "${NAME}" \
    -v "${VERSION}" \
    --iteration "${RELEASE}" \
    -m "${MAINTAINER}" \
    --description "${DESCRIPTION}" \
    --url "${URL}" \
    --license MIT \
    --vendor "${MAINTAINER}" \
    -a x86_64 \
    --rpm-os linux \
    -p "dist/${RPM_NAME}" \
    -n "${NAME}"

fpm \
    --verbose \
    -t deb \
    -s dir \
    -C linux/ \
    --prefix / \
    -n "${NAME}" \
    -v "${VERSION}" \
    --iteration "${RELEASE}" \
    -m "${MAINTAINER}" \
    --description "${DESCRIPTION}" \
    --url "${URL}" \
    --license MIT \
    --vendor "${MAINTAINER}" \
    -a x86_64 \
    -p "dist/${DEB_NAME}" \
    -n "${NAME}"


echo "RPM info:"
rpm -q -i -p "dist/${RPM_NAME}"
echo
echo "included files:"
rpm -q -l -p "dist/${RPM_NAME}"
shasum -a 256 "dist/${RPM_NAME}" > "dist/${RPM_NAME}.sha256"
echo

echo "DEB info:"
dpkg --info "dist/${DEB_NAME}"
echo "included files:"
dpkg --contents "dist/${DEB_NAME}"
shasum -a 256 "dist/${DEB_NAME}" > "dist/${DEB_NAME}.sha256"
echo
