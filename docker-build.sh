#!/bin/bash
# abort on errors
set -e

version="$1"

if [[ "$version" == "" ]]; then
	echo "./please designated docker image version"
	exit 0
fi

mvn clean package

echo "exec : docker build . -t loroxxx/jpress:"${version}
docker build . -t loroxxx/jpress:${version}


echo "exec : docker push loroxxx/jpress:"${version}
docker push loroxxx/jpress:${version}






