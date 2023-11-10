#!/bin/bash
#this will excute the previous one
sudo mvn clean install
sudo cp /root/.buildkite-agent/builds/Devops-1/devops1/first-build/target * /home/sachit/project/