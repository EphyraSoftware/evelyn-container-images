#!/bin/bash

pushd "$JAVA_HOME/lib/security" || exit

keytool -import -cacerts -storepass changeit -alias evelyn-ca -no-prompt -file /tmp/ca.pem
keytool -import -cacerts -storepass changeit -alias evelyn-int -file /tmp/ca-int.pem

popd || exit
