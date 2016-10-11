#!/bin/sh
echo "inside oracle folder"
unzip instantclient-basic-linux.x64-12.1.0.2.0.zip -d /opt/oracle
unzip instantclient-sdk-linux.x64-12.1.0.2.0.zip -d /opt/oracle
mv /opt/oracle/instantclient_12_1 /opt/oracle/instantclient
cd /opt/oracle/instantclient
ln -s libclntsh.so.12.1 libclntsh.so
ln -s libocci.so.12.1 libocci.so

export ORACLE_HOME=/opt/oracle/instantclient
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ORACLE_HOME

export OCI_HOME="/opt/oracle/instantclient"
export OCI_LIB_DIR="/opt/oracle/instantclient"
export OCI_INCLUDE_DIR="/opt/oracle/instantclient/sdk/include"

npm i -g nrm
nrm add valudio http://npm.valudio.com
nrm use valudio
#npm i -g oracledb
