#!/bin/bash
# $1 -> Job workspace
cd $1/test

# Get running port
XMLRPC_PORT=$(docker port im-grycap 8899 | awk -F "[:]" '{print $2}')
# Set running port
sed -i "s/TEST_PORT = 8899/TEST_PORT = $XMLRPC_PORT/g" QuickTestIM.py

# Get running port
REST_PORT=$(docker port im-grycap 8800 | awk -F "[:]" '{print $2}')
# Set running port
sed -i "s/TEST_PORT = 8800/TEST_PORT = $REST_PORT/g" TestREST.py
