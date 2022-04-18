#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp /tmp/.auth ec2-user@3.110.175.111:/tmp/.auth
scp ./jenkins/deploy/publish ec2-user@3.110.175.111:/tmp/publish
ssh ec2-user@3.110.175.111 "/tmp/publish"

