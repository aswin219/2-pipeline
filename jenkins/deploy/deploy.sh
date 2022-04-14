#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -o StrictHostKeyChecking=no /tmp/.auth ec2-user@3.108.249.112:/tmp/.auth 
scp -o StrictHostKeyChecking=no ./jenkins/deploy/publish ec2-user@3.108.249.112:/tmp/publish 
ssh -o StrictHostKeyChecking=no ec2-user@3.108.249.112 "/tmp/publish" 
