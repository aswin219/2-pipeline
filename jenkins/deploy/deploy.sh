#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo aswin@219 >> /tmp/.auth

scp -i /opt/id_rsa /tmp/.auth ec2-user@3.108.249.112:/tmp/.auth 
scp -i /opt/id_rsa ./jenkins/deploy/publish ec2-user@3.108.249.112:/tmp/publish 
ssh -i /opt/id_rsa ec2-user@3.108.249.112 "/tmp/publish" 
