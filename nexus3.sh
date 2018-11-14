
##Download latest artifact from NEXUS3.

#!/bin/sh

wget https://nexus.gcnp.local/repository/maven-snapshots/com/kpmg/cycl/web_client/maven-metadata.xml -O baseVersion.xml

TEMP_VERSION=`grep \<version\> ./baseVersion.xml `
echo ">>>>>$TEMP_VERSION<<<<<"

BASE_VERSION=$(echo "${TEMP_VERSION}" | sed -e 's/<version>\(.*\)<\/version>/\1/' | sed -e 's/ //g')
echo ">>>$BASE_VERSION<<<"

wget 'https://nexus.gcnp.local/repository/maven-snapshots/com/kpmg/cycl/web_client/'${BASE_VERSION}'/maven-metadata.xml' -O artifactVersion.xml

TEMP_VERSION=`grep -m 1 \<value\> ./artifactVersion.xml`
echo ">>>>>$TEMP_VERSION<<<<"

FINAL_VERSION=$(echo "${TEMP_VERSION}" | sed -e 's/<value>\(.*\)<\/value>/\1/' | sed -e 's/ //g')
echo ">>>>>$FINAL_VERSION<<<<"

wget 'https://nexus.gcnp.local/repository/maven-snapshots/com/kpmg/cycl/web_client/'${BASE_VERSION}'/web_client-'${FINAL_VERSION}'.war' -O  demo.war
